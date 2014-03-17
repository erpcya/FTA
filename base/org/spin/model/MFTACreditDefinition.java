/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTACreditDefinition extends X_FTA_CreditDefinition implements DocAction, DocOptions {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 623897637132792938L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 16:54:14
	 * @param ctx
	 * @param FTA_CreditDefinition_ID
	 * @param trxName
	 */
	public MFTACreditDefinition(Properties ctx, int FTA_CreditDefinition_ID,
			String trxName) {
		super(ctx, FTA_CreditDefinition_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 16:54:14
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTACreditDefinition(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/** Lines					*/
	private MFTACreditDefinitionLine[]		m_lines 	 = null;
	/**	Product List Approved	*/
	private MFTAProductListApproved[]		m_PLA_Lines  = null;
	/** Credit Lines			*/
	private MFTAFarmerCredit[]				m_credits 	 = null;
	/** Credit Act			*/
	private MFTACreditAct[]					m_creditAct  = null;
	
	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		return getDocumentNo();
	}	//	getDocumentInfo

	@Override
	public File createPDF() {
		try
		{
			File temp = File.createTempFile(get_TableName()+get_ID()+"_", ".pdf");
			return temp;
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}
	
	/**************************************************************************
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	public boolean processIt (String processAction)
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	process

	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;

	/**
	 * 	Unlock Document.
	 * 	@return true if success
	 */
	public boolean unlockIt()
	{
		log.info("unlockIt - " + toString());
		return true;
	}	//	unlockIt

	/**
	 * 	Invalidate Document
	 * 	@return true if success
	 */
	public boolean invalidateIt()
	{
		log.info("invalidateIt - " + toString());
		return true;
	}	//	invalidateIt

	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid)
	 */
	public String prepareIt()
	{
		log.info(toString());
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());

		//	Std Period open?
		if (!MPeriod.isOpen(getCtx(), getDateDoc(), dt.getDocBaseType(), getAD_Org_ID()))
		{
			m_processMsg = "@PeriodClosed@";
			return DocAction.STATUS_Invalid;
		}
		
		MFTACreditDefinitionLine[] lines = getLines(false);
		if (lines.length == 0)
		{
			m_processMsg = "@NoLines@";
			return DocAction.STATUS_Invalid;
		}

        // Updates Amount
		setAmt(getTotalAmount());

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		m_justPrepared = true;
		return DocAction.STATUS_InProgress;
	}	//	prepareIt

	/**
	 * 	Approve Document
	 * 	@return true if success
	 */
	public boolean  approveIt()
	{
		log.info("approveIt - " + toString());
		setIsApproved(true);
		return true;
	}	//	approveIt

	/**
	 * 	Reject Approval
	 * 	@return true if success
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		setIsApproved(false);
		return true;
	}	//	rejectIt

	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
		//	Re-Check
		if (!m_justPrepared)
		{
			String status = prepareIt();
			if (!DocAction.STATUS_InProgress.equals(status))
				return status;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		//	Implicit Approval
		if (!isApproved())
			approveIt();
		log.info("completeIt - " + toString());

		//	Update balance the all children
		updateChildren();
		
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null)
		{
			m_processMsg = valid;
			return DocAction.STATUS_Invalid;
		}
		//
		setProcessed(true);
		setDocAction(DOCACTION_Close);
		return DocAction.STATUS_Completed;
	}	//	completeIt

	/**
	 * 	Void Document.
	 * 	@return true if success
	 */
	public boolean voidIt()
	{
		log.info("voidIt - " + toString());
		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;

		m_processMsg = validReference();
		if(m_processMsg != null)
			return false;
		
		MFTACreditDefinitionLine lines[] = getLines(true);
		// Set Qty and Amt on all lines to be Zero
		for (MFTACreditDefinitionLine creditLine : lines)
		{
		    creditLine.addDescription(Msg.getMsg(getCtx(), "Voided") + " (" + creditLine.getQty() + ")");
		    creditLine.setQty(Env.ZERO);
		    creditLine.setAmt(Env.ZERO);
		    creditLine.saveEx();
		}

		addDescription(Msg.getMsg(getCtx(), "Voided"));
		setAmt(Env.ZERO);

		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;

		setDefiniteDocumentNo();
		setProcessed(true);
        setDocAction(DOCACTION_None);
		return true;
	}	//	voidIt
	

	/**
	 * Valid Reference in another record with Bill of Exchange
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/09/2013, 16:05:21
	 * @return
	 * @return String
	 */
	/*private String validReferenceBoE(){
		int m_Reference_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(fc.FTA_FarmerCredit_ID) " +
				"FROM FTA_FarmerCredit fc " +
				"INNER JOIN FTA_BillOfExchange be ON(be.FTA_FarmerCredit_ID = fc.FTA_FarmerCredit_ID) " +
				"WHERE be.DocStatus NOT IN('VO', 'RE') " +
				"AND fc.FTA_CreditDefinition_ID = ?", getFTA_CreditDefinition_ID());
		if(m_Reference_ID != 0)
			return "@SQLErrorReferenced@ @FTA_BillOfExchange_ID@ @completed@";
		return null;
	}*/
	
	/**
	 * Valid Reference in Farmer Credit
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/11/2013, 21:36:35
	 * @return
	 * @return String
	 */
	private String validReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(fc.DocumentNo) " +
				"FROM FTA_FarmerCredit fc " +
				"WHERE fc.DocStatus NOT IN('VO', 'RE') " +
				"AND fc.FTA_CreditDefinition_ID = ?", getFTA_CreditDefinition_ID());
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @FTA_FarmerCredit_ID@: " + m_ReferenceNo + " @completed@";
		return null;
	}
	
	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		super.afterSave(newRecord, success);
		//	Create Default Lines
		if(newRecord
				&& success){
			MFTACDLCategory category = null;
			MFTACreditDefinitionLine line = null;
			int nLine = 0;
			if(!getCreditType().equals(X_FTA_CreditDefinition.CREDITTYPE_Loan)){

				//	For Category
				category = MFTACDLCategory
						.getDefDistibutionCategory(getCtx(), MFTACDLCategory.T_CATEGORY, get_TrxName());
				if(category == null)
					return false;
				nLine = 10;
				line = new MFTACreditDefinitionLine(getCtx(), 0, get_TrxName());
				line.setFTA_CreditDefinition_ID(getFTA_CreditDefinition_ID());
				line.setFTA_CDL_Category_ID(category.getFTA_CDL_Category_ID());
				MProduct product = MProduct.get(getCtx(), getCategory_ID());
				line.setM_Product_ID(product.getM_Product_ID());
				line.setC_UOM_ID(product.getC_UOM_ID());
				line.setQty(Env.ZERO);
				line.setPrice(Env.ZERO);
				line.setAmt(Env.ZERO);
				line.setIsDistributionLine(false);
				line.setIsExceedCreditLimit(true);
				line.setLine(nLine);
				line.saveEx();
			}
			//	For Distribution
			category = MFTACDLCategory.getDefDistibutionCategory(getCtx(), MFTACDLCategory.T_DISTRIBUTION, get_TrxName());
			line = new MFTACreditDefinitionLine(getCtx(), 0, get_TrxName());
			line.setFTA_CreditDefinition_ID(getFTA_CreditDefinition_ID());
			line.setFTA_CDL_Category_ID(category.getFTA_CDL_Category_ID());
			line.setC_UOM_ID(100);
			line.setQty(Env.ZERO);
			line.setPrice(Env.ZERO);
			line.setAmt(Env.ZERO);
			line.setIsDistributionLine(true);
			line.setIsExceedCreditLimit(true);
			line.setLine(nLine + 10);
			line.saveEx();
		}
		return true;
	}

	/**
	 * 	Set the definite document number after completed
	 */
	private void setDefiniteDocumentNo() {
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
		if (dt.isOverwriteDateOnComplete()) {
			setDateDoc(new Timestamp (System.currentTimeMillis()));
		}
		if (dt.isOverwriteSeqOnComplete()) {
			String value = null;
			int index = p_info.getColumnIndex("C_DocType_ID");
			if (index == -1)
				index = p_info.getColumnIndex("C_DocTypeTarget_ID");
			if (index != -1)		//	get based on Doc Type (might return null)
				value = DB.getDocumentNo(get_ValueAsInt(index), get_TrxName(), true);
			if (value != null) {
				setDocumentNo(value);
			}
		}
	}
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success
	 */
	public boolean closeIt()
	{
		log.info("closeIt - " + toString());
		// Before Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_CLOSE);
		if (m_processMsg != null)
			return false;
		// After Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_CLOSE);
		if (m_processMsg != null)
			return false;

		return true;
	}	//	closeIt

	/**
	 * 	Reverse Correction
	 * 	@return true if success
	 */
	public boolean reverseCorrectIt()
	{
		log.info("reverseCorrectIt - " + toString());
		// Before reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSECORRECT);
		if (m_processMsg != null)
			return false;
		//	Void It
		voidIt();
		// After reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSECORRECT);
		if (m_processMsg != null)
			return false;

		return false;
	}	//	reverseCorrectionIt

	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success
	 */
	public boolean reverseAccrualIt()
	{
		log.info("reverseAccrualIt - " + toString());
		// Before reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;
		//	Void It
		voidIt();
		// After reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;

		return false;
	}	//	reverseAccrualIt

	/**
	 * 	Re-activate
	 * 	@return true if success
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());
		// Before reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;

		//m_processMsg = validReferenceBoE();
		//if(m_processMsg != null)
			//return false;
		
		// After reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;
		
		setDocAction(DOCACTION_Complete);
		setProcessed(false);
		return true;
	}	//	reActivateIt

    /**
     *  Set Processed.
     *  Propagate to Lines
     *  @param processed processed
     */
    public void setProcessed (boolean processed)
    {
        super.setProcessed (processed);
        if (get_ID() <= 0)
            return;
        int noLine = DB.executeUpdateEx("UPDATE FTA_CreditDefinitionLine " +
        		"SET Processed=? " +
        		"WHERE FTA_CreditDefinition_ID=?",
        		new Object[]{processed, get_ID()},
        		get_TrxName());
        log.fine("setProcessed - Credit Definition Line" + processed + " - Lines=" + noLine);
        //	Product List Approved
        noLine = DB.executeUpdateEx("UPDATE FTA_ProductListApproved " +
        		"SET Processed=? " +
        		"WHERE FTA_CreditDefinition_ID=?",
        		new Object[]{processed, get_ID()},
        		get_TrxName());
        
        m_lines = null;
        log.fine("setProcessed - Product List Approved" + processed + " - Lines=" + noLine);
    }   //  setProcessed

    /**
     *  Add to Description
     *  @param description text
     */
    public void addDescription (String description)
    {
        String desc = getDescription();
        if (desc == null)
            setDescription(description);
        else
            setDescription(desc + " | " + description);
    }   //  addDescription

    /**
     * Get the total amount based on the lines
     * @return Total Amount
     */
    public BigDecimal getTotalAmount()
    {
    	MFTACreditDefinitionLine lines[] = this.getLines(true);

        BigDecimal amt = Env.ZERO;

        for (MFTACreditDefinitionLine line : lines)
        {
            amt = amt.add(line.getAmt());
        }

        return amt;
    }

    /**
     * Updates the amount on the document
     */
    public void updateAmount()
    {
        setAmt(getTotalAmount());
    }

	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		StringBuffer sb = new StringBuffer();
		sb.append(getDocumentNo());
		//	: Total Lines = 123.00 (#1)
		sb.append(": ").
			append(Msg.translate(getCtx(),"Amt")).append("=").append(getAmt())
			.append(" (#").append(getLines(false).length).append(")");
		//	 - Description
		if (getDescription() != null && getDescription().length() > 0)
			sb.append(" - ").append(getDescription());
		return sb.toString();
	}	//	getSummary
	
	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg()
	{
		return m_processMsg;
	}	//	getProcessMsg

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return getAmt();
	}	//	getApprovalAmt

	/**
	 * 	Document Status is Complete or Closed
	 *	@return true if CO, CL or RE
	 */
	public boolean isComplete()
	{
		String ds = getDocStatus();
		return DOCSTATUS_Completed.equals(ds)
			|| DOCSTATUS_Closed.equals(ds)
			|| DOCSTATUS_Reversed.equals(ds);
	}	//	isComplete
	
	/**
	 * 	Get Lines
	 *	@param requery requery
	 *	@return lines
	 */
	public MFTACreditDefinitionLine[] getLines (boolean requery)
	{
		if (m_lines != null && !requery)
		{
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		List<MFTACreditDefinitionLine> list = new Query(getCtx(), I_FTA_CreditDefinitionLine.Table_Name, 
				"FTA_CreditDefinition_ID=?", get_TrxName())
				.setParameters(getFTA_CreditDefinition_ID())
				.setOrderBy(MFTACreditDefinitionLine.COLUMNNAME_Line)
		.list();

		m_lines = new MFTACreditDefinitionLine[list.size ()];
		list.toArray (m_lines);
		return m_lines;
	}	//	getLines
	
	
	/**
	 * Get Line Equivalent from other line
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 12/02/2014, 14:07:31
	 * @param fromLine
	 * @return
	 * @return MFTACreditDefinitionLine
	 */
	public MFTACreditDefinitionLine getEquivalentLine(MFTACreditDefinitionLine fromLine){
		//	not null
		if(fromLine == null)
			return null;
		//	Get Lines
		getLines(false);
		//	Loop
		for(MFTACreditDefinitionLine line : m_lines){
			//	Only 
			if(line.getFTA_CDL_Category_ID() != fromLine.getFTA_CDL_Category_ID())
				continue;
			//	Distribution Line
			if(fromLine.isDistributionLine()
					&& line.isDistributionLine())
				return line;
			//	Production Line
			else if(line.getM_Product_ID() == getCategory_ID())
				return line;
			//	Any
			if(line.getM_Product_ID() == fromLine.getM_Product_ID()
					|| line.getM_Product_Category_ID() == fromLine.getM_Product_Category_ID()
					|| line.getC_Charge_ID() == fromLine.getC_Charge_ID()
					|| line.getC_ChargeType_ID() == fromLine.getC_ChargeType_ID())
				return line;
		}
		return null;
	}

	/**
	 * Get Lines, Farmer Credits
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/11/2013, 13:44:19
	 * @param requery
	 * @return
	 * @return MFTAFarmerCredit[]
	 */
	public MFTAFarmerCredit[] getFarmerCredits (boolean requery)
	{
		if (m_credits != null && !requery)
		{
			set_TrxName(m_credits, get_TrxName());
			return m_credits;
		}
		List<MFTAFarmerCredit> list = new Query(getCtx(), I_FTA_FarmerCredit.Table_Name, "FTA_CreditDefinition_ID=?", get_TrxName())
		.setParameters(getFTA_CreditDefinition_ID())
		.list();

		m_credits = new MFTAFarmerCredit[list.size ()];
		list.toArray (m_credits);
		return m_credits;
	}	//	getFarmerCredits
	
	/**
	 * Get Credit Acts
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/11/2013, 14:37:31
	 * @param requery
	 * @return
	 * @return MFTAFarmerCredit[]
	 */
	public MFTACreditAct[] getCreditActs (boolean requery)
	{
		if (m_creditAct != null && !requery)
		{
			set_TrxName(m_creditAct, get_TrxName());
			return m_creditAct;
		}
		List<MFTACreditAct> list = new Query(getCtx(), I_FTA_CreditAct.Table_Name, 
				"EXISTS(SELECT 1 FROM FTA_FarmerCredit fc " +
				"		WHERE fc.FTA_CreditAct_ID = FTA_CreditAct.FTA_CreditAct_ID " +
				"		AND fc.FTA_CreditDefinition_ID=?)", get_TrxName())
		.setParameters(getFTA_CreditDefinition_ID())
		.list();

		m_creditAct = new MFTACreditAct[list.size ()];
		list.toArray (m_creditAct);
		return m_creditAct;
	}	//	getFarmerCredits
	
	/**
	 * Update Balance Children
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/11/2013, 20:25:48
	 * @return
	 * @return void
	 */
	private void updateChildren(){
		SimpleDateFormat format = DisplayType.getDateFormat(DisplayType.Date);
		//	Get Farmer Credit
		getFarmerCredits(false);
		//	Process Farmer Credit
		for(MFTAFarmerCredit credit : m_credits){
			//	Just Completed or In Process
			if(credit.getDocStatus().equals(X_FTA_FarmerCredit.DOCSTATUS_Voided)
				|| credit.getDocStatus().equals(X_FTA_FarmerCredit.DOCSTATUS_Reversed)
				|| credit.getDocStatus().equals(X_FTA_FarmerCredit.DOCSTATUS_Closed))
				continue;
			//	
			if(credit.getCreditType().equals(X_FTA_FarmerCredit.CREDITTYPE_Credit)
					|| credit.getCreditType().equals(X_FTA_FarmerCredit.CREDITTYPE_Extension)){
				BigDecimal m_Qty = credit.getQty();
				BigDecimal m_ApprovedQty = credit.getApprovedQty();
				BigDecimal m_Amt_Old = credit.getAmt();
				BigDecimal m_ApprovedAmt_Old = credit.getApprovedAmt();
				BigDecimal m_Amt_New = m_Qty.multiply(getAmt());
				BigDecimal m_ApprovedAmt_New = m_ApprovedQty.multiply(getAmt());
				//	Valid if yet updated
				if(m_Amt_New.doubleValue() != m_Amt_Old.doubleValue()
						|| m_ApprovedAmt_New.doubleValue() != m_ApprovedAmt_Old.doubleValue()){
					credit.setAmt(m_Amt_New);
					credit.setApprovedAmt(m_ApprovedAmt_New);
					//	Set Description
					credit.addDescription(Msg.parseTranslation(getCtx(), 
							"@FTA_CreditDefinition_ID@ @Updated@ @to@ " + getAmt() + " @Updated@: " + format.format(getDateDoc())));
					credit.saveEx();
					//	Log
					log.info("Farmer Credit: " + credit.getDocumentNo() 
							+ " Amt Updated to: " + credit.getAmt() 
							+ " Approved Amt to: " + credit.getApprovedAmt());	
				}
			}
		}
		//	Get Credit Act
		getCreditActs(false);
		//	Process Credit Act
		for(MFTACreditAct creditAct : m_creditAct){
			//	Just Completed or In Process
			if(creditAct.getDocStatus().equals(X_FTA_FarmerCredit.DOCSTATUS_Voided)
				|| creditAct.getDocStatus().equals(X_FTA_FarmerCredit.DOCSTATUS_Reversed)
				|| creditAct.getDocStatus().equals(X_FTA_FarmerCredit.DOCSTATUS_Closed))
				continue;
			//	Valid if yet updated
			if(creditAct.updateBalance()){
				//	Set Description
				creditAct.addDescription(Msg.parseTranslation(getCtx(), 
						"@FTA_CreditDefinition_ID@ @Updated@ @to@ " + getAmt() + " @Updated@: " + format.format(getDateDoc())));
				creditAct.saveEx();
				//	Log
				log.info("Credit Act: " + creditAct.getDocumentNo() 
						+ " Approved Amt to: " + creditAct.getApprovedAmt());	
			}
		}
	}
	
	@Override
	public int getDoc_User_ID() {
		return 0;
	}

	@Override
	public int getC_Currency_ID() {
		return 0;
	}
	
	@Override
	public int customizeValidActions(String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID,
			String[] docAction, String[] options, int index) {
		//	Valid Document Action
		if (AD_Table_ID == Table_ID){
			if (docStatus.equals(DocumentEngine.STATUS_Drafted)
					|| docStatus.equals(DocumentEngine.STATUS_InProgress)
					|| docStatus.equals(DocumentEngine.STATUS_Invalid))
				{
					options[index++] = DocumentEngine.ACTION_Prepare;
				}
				//	Complete                    ..  CO
				else if (docStatus.equals(DocumentEngine.STATUS_Completed))
				{
					options[index++] = DocumentEngine.ACTION_Void;
					options[index++] = DocumentEngine.ACTION_ReActivate;
				}
		}
		
		return index;
	}
		
	/**
	 * Copy Lines and Products From Credit Definition
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 22/01/2014, 16:13:42
	 * @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/01/2014, 08:32:42
	 * @param fromCreditDefinition
	 * @param fromCreditDefinitionTo
	 * @return
	 * @return int
	 */
	public int copyLinesFrom (MFTACreditDefinition fromCreditDefinition,MFTACreditDefinition fromCreditDefinitionTo)
	{
				
		MFTACreditDefinitionLine[] fromLines = fromCreditDefinition.getLines(false);
		
		int count = 0;
		//	Loop in line
		for (MFTACreditDefinitionLine mftaCreditDefinitionLine : fromLines)
		{
			MFTACreditDefinitionLine line = new MFTACreditDefinitionLine(getCtx(), 0, get_TrxName());
			//	Valid Category
		 	MFTACDLCategory m_FTA_CDL_Category = MFTACDLCategory.get(getCtx(), mftaCreditDefinitionLine.getFTA_CDL_Category_ID());
		 	
		 	if(m_FTA_CDL_Category.getValue().equals(MFTACDLCategory.T_CATEGORY)
		 			|| m_FTA_CDL_Category.getValue().equals(MFTACDLCategory.T_DISTRIBUTION)){
		 			continue;
		 	}else{
		 		PO.copyValues(mftaCreditDefinitionLine, line, line.getAD_Client_ID(), line.getAD_Org_ID());

		 		line.setFTA_CreditDefinition_ID(getFTA_CreditDefinition_ID());
		 		
		 		//
		 		line.setProcessed(false);
		 		line.saveEx();
		 			count++;
		 	}		 	
		}
		
		if (fromLines.length != count)
			log.log(Level.INFO, "Line difference - From=" + fromLines.length + " <> Saved=" + count);
		return count;
	}	//	copyLinesFrom


	
	/**
	 * Copy Lines and Products From Credit Definition
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 22/01/2014, 16:13:42
	 * @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/01/2014, 08:32:42
	 * @param from
	 * @param To
	 * @return
	 * @return int
	 */
	public int copyProductsFrom (MFTACreditDefinition from,MFTACreditDefinition To)
	{
		
		int countProduct = 0;

		MFTAProductListApproved listProduct [] = from.getProductLines(true, null);
		for (MFTAProductListApproved mftaProductListApproved : listProduct)
		{
			MFTAProductListApproved product = new MFTAProductListApproved(getCtx(), 0, get_TrxName());
			product.set_ValueOfColumn("AD_Client_ID", To.getAD_Client_ID());
			product.set_ValueOfColumn("AD_Org_ID", To.getAD_Org_ID());
			product.setFTA_CreditDefinition_ID(getFTA_CreditDefinition_ID());
			product.setM_Product_ID(mftaProductListApproved.get_ValueAsInt("M_Product_ID"));
			if(mftaProductListApproved.get_ValueAsInt("Substitute_ID") > 0)
				product.setSubstitute_ID(mftaProductListApproved.get_ValueAsInt("Substitute_ID"));
			else
				product.setSubstitute_ID(0);
			
			product.setProcessed(false);
			product.setIsActive(true);
			product.setApprovedQty((BigDecimal)mftaProductListApproved.get_Value("ApprovedQty"));
			
			product.saveEx();
			countProduct++;
		}
		
		if (listProduct.length != countProduct)
			log.log(Level.INFO, "Product Approved difference - From=" + listProduct.length + " <> Saved=" + countProduct);
		return countProduct;
	}	//	copyProductsFrom


	
	
	/**
	 * Get Product List Approved
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/01/2014, 09:59:29
	 * @param requery
	 * @param whereClause
	 * @return
	 * @return MFTAProductListApproved[]
	 */
	public MFTAProductListApproved[] getProductLines (boolean requery, String whereClause)
	{
		if (m_PLA_Lines != null && !requery)
		{
			set_TrxName(m_PLA_Lines, get_TrxName());
			return m_PLA_Lines;
		}
		List<MFTAProductListApproved> list = new Query(getCtx(), MFTAProductListApproved.Table_Name, "FTA_CreditDefinition_ID=?"
				+ (whereClause != null && whereClause.length() != 0? " AND " + whereClause: ""), get_TrxName())
		.setParameters(getFTA_CreditDefinition_ID())
		.list();

		m_PLA_Lines = new MFTAProductListApproved[list.size ()];
		list.toArray (m_PLA_Lines);
		return m_PLA_Lines;
	}	//	getLines


}

