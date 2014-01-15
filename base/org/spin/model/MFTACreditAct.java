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
import java.util.List;
import java.util.Properties;

import org.compiere.model.MDocType;
import org.compiere.model.MPeriod;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTACreditAct extends X_FTA_CreditAct implements DocAction, DocOptions {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4834345645611206771L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 03/10/2013, 21:00:31
	 * @param ctx
	 * @param FTA_CreditAct_ID
	 * @param trxName
	 */
	public MFTACreditAct(Properties ctx, int FTA_CreditAct_ID, String trxName) {
		super(ctx, FTA_CreditAct_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 03/10/2013, 21:00:31
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTACreditAct(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/** Lines					*/
	private MFTAFarmerCredit[]		m_lines = null;

	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		MDocType dt = MDocType.get(getCtx(), 0);
		return dt.getName() + " " + getDocumentNo();
	}	//	getDocumentInfo

	/**
	 * 	Create PDF
	 *	@return File or null
	 */
	public File createPDF ()
	{
		try
		{
			File temp = File.createTempFile(get_TableName()+get_ID()+"_", ".pdf");
			return createPDF (temp);
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}	//	getPDF

	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF (File file)
	{
	//	ReportEngine re = ReportEngine.get (getCtx(), ReportEngine.INVOICE, getC_Invoice_ID());
	//	if (re == null)
			return null;
	//	return re.getPDF(file);
	}	//	createPDF

	
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
	}	//	processIt
	
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
	//	setProcessing(false);
		return true;
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt()
	{
		log.info("invalidateIt - " + toString());
	//	setDocAction(DOCACTION_Prepare);
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
		
		//	Add up Amounts
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		m_justPrepared = true;
		if (!DOCACTION_Complete.equals(getDocAction()))
			setDocAction(DOCACTION_Complete);
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
		
		//	Update Values
		updateHeader();
		
		//	Implicit Approval
		if (!isApproved())
			approveIt();
		log.info(toString());
		//
		
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null)
		{
			m_processMsg = valid;
			return DocAction.STATUS_Invalid;
		}
		setDefiniteDocumentNo();

		setProcessed(true);
		setDocAction(DOCACTION_Close);
		
		return DocAction.STATUS_Completed;
	}	//	completeIt
	
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
	 * 	Void Document.
	 * 	Same as Close.
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
		
		addDescription(Msg.getMsg(getCtx(), "Voided"));

		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;

		setProcessed(true);
        setDocAction(DOCACTION_None);
		return true;
	}	//	voidIt
	
	/**
	 * Valid Reference in another record
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/09/2013, 16:05:21
	 * @return
	 * @return String
	 */
	private String validReference(){
		int m_Reference_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(fc.FTA_FarmerCredit_ID) " +
				"FROM FTA_FarmerCredit fc " +
				"WHERE fc.DocStatus IN('CO', 'CL') " +
				"AND fc.FTA_CreditAct_ID = ?", getFTA_CreditAct_ID());
		if(m_Reference_ID != 0)
			return "@SQLErrorReferenced@";
		return null;
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
		/*m_processMsg = validReference();
		if(m_processMsg != null)
			return false;*/
		// After reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;
		
		setDocAction(DOCACTION_Complete);
		setProcessed(false);
		return true;
	}	//	reActivateIt
	
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		StringBuffer sb = new StringBuffer();
		sb.append(getDocumentNo());
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
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID()
	{
	//	return getSalesRep_ID();
		return 0;
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return null;	//getTotalLines();
	}	//	getApprovalAmt
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID()
	{
	//	MPriceList pl = MPriceList.get(getCtx(), getM_PriceList_ID());
	//	return pl.getC_Currency_ID();
		return 0;
	}	//	getC_Currency_ID
	
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
	 * Complete Farmer Credits
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 08/10/2013, 05:35:32
	 * @return
	 * @return int
	 */
	public void setDocStatusFarmerCredit(String p_DocStatus)
	{
		StringBuffer filter=new StringBuffer();
		filter.append("FTA_CreditAct_ID=?");
		
		List<MFTAFarmerCredit> credits = new Query(p_ctx,MFTAFarmerCredit.Table_Name,filter.toString(),get_TrxName())
		.setOnlyActiveRecords(true)
		.setParameters(getFTA_CreditAct_ID())
		.list();

		for (MFTAFarmerCredit credit:credits)
		{
			//Process Farmer Credit
			String l_docStatus = credit.getDocStatus();
			if(((l_docStatus.equals(STATUS_Drafted)
					|| l_docStatus.equals(STATUS_InProgress)
					|| l_docStatus.equals(STATUS_Invalid))
				&&(p_DocStatus.equals(STATUS_Completed)||p_DocStatus.equals(STATUS_Closed)))
				
				||(l_docStatus.equals(STATUS_Completed) && (p_DocStatus.equals(STATUS_Closed) || p_DocStatus.equals(STATUS_Voided) || p_DocStatus.equals(STATUS_InProgress))))
			{
				p_DocStatus= (p_DocStatus==STATUS_InProgress?ACTION_ReActivate:p_DocStatus);
				credit.setDocAction(p_DocStatus);
				credit.processIt(p_DocStatus);
				credit.saveEx(get_TrxName());
			}
		}
	}
	
	/** Carlos Parada Completed After Save Credit Act*/
	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		if (getDocStatus()!=STATUS_Drafted)
			setDocStatusFarmerCredit(getDocStatus());	
		return true;
	}
	
	/**
	 * 	Get Lines
	 *	@param requery requery
	 *	@param whereClause
	 *	@return lines
	 */
	public MFTAFarmerCredit[] getLines (boolean requery, String whereClause)
	{
		if (m_lines != null && !requery)
		{
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		List<MFTAFarmerCredit> list = new Query(getCtx(), MFTAFarmerCredit.Table_Name, "FTA_CreditAct_ID=?"
				+ (whereClause != null && whereClause.length() != 0? " AND " + whereClause: ""), get_TrxName())
		.setParameters(getFTA_CreditAct_ID())
		.list();

		m_lines = new MFTAFarmerCredit[list.size ()];
		list.toArray (m_lines);
		return m_lines;
	}	//	getLines
	
	/**
	 * Update Header Quantity and Amount
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/01/2014, 10:35:51
	 * @return void
	 */
	public void updateHeader(){
		getLines(true);
		BigDecimal m_ApprovedQty = Env.ZERO;
		BigDecimal m_ApprovedAmt = Env.ZERO;
		for(MFTAFarmerCredit credit : m_lines){
			//	Get Approved Quantity and Amount
			if(credit.getApprovedQty() != null
					&& credit.getApprovedAmt() != null){
				m_ApprovedQty = m_ApprovedQty.add(credit.getApprovedQty());
				m_ApprovedAmt = m_ApprovedAmt.add(credit.getApprovedAmt());
			}
		}
		//	Set Values
		setApprovedQty(m_ApprovedQty);
		setApprovedAmt(m_ApprovedAmt);
	}
	
	/**
	 * Get Lines
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/11/2013, 22:28:20
	 * @param requery
	 * @return
	 * @return MFTAFarmerCredit[]
	 */
	public MFTAFarmerCredit[] getLines (boolean requery)
	{
		return getLines(requery, null);
	}	//	getLines
	
	/**
	 * Update Balance when exists changes in lines
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/11/2013, 10:55:29
	 * @param p_Credit
	 * @return
	 * @return boolean
	 */
	public boolean updateBalance(MFTAFarmerCredit p_Credit){
		//	
		BigDecimal m_ApprovedQty_New = Env.ZERO;
		BigDecimal m_ApprovedAmt_New = Env.ZERO;
		for(MFTAFarmerCredit credit : getLines(true)){
			//	Just Completed or In Process
			if(credit.getDocStatus().equals(X_FTA_FarmerCredit.DOCSTATUS_Voided)
				|| credit.getDocStatus().equals(X_FTA_FarmerCredit.DOCSTATUS_Reversed))
				continue;
			//	Add Qty and Amt
			m_ApprovedQty_New = m_ApprovedQty_New.add(credit.getApprovedQty());
			m_ApprovedAmt_New = m_ApprovedAmt_New.add(credit.getApprovedAmt());
		}
		//	Subtract the credit
		if(p_Credit != null){
			m_ApprovedQty_New = m_ApprovedQty_New.subtract(p_Credit.getApprovedQty());
			m_ApprovedAmt_New = m_ApprovedAmt_New.subtract(p_Credit.getApprovedAmt());
		}
		//	Update Credit Act
		BigDecimal m_ApprovedQty_Old = getApprovedQty();
		BigDecimal m_ApprovedAmt_Old = getApprovedAmt();
		//	Valid if yet updated
		if(m_ApprovedQty_New.doubleValue() != m_ApprovedQty_Old.doubleValue()
				|| m_ApprovedAmt_New.doubleValue() != m_ApprovedAmt_Old.doubleValue()){
			setApprovedQty(m_ApprovedQty_New);
			setApprovedAmt(m_ApprovedAmt_New);
			//	Log
			log.info("Credit Act: " + getDocumentNo() 
					+ " Approved Amt to: " + getApprovedAmt());
			return true;
		}
		return false;
	}
	
	/**
	 * Update Balance when exists changes in lines
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/11/2013, 11:00:56
	 * @return
	 * @return boolean
	 */
	public boolean updateBalance(){
		return updateBalance(null);
	}
	
	/**
	 * Get
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/11/2013, 10:22:48
	 * @param ctx
	 * @param FTA_CreditAct_ID
	 * @return
	 * @return MFTACreditAct
	 */
	public static MFTACreditAct get (Properties ctx, int FTA_CreditAct_ID)
	{
		final String whereClause = "FTA_CreditAct_ID=? AND AD_Client_ID=?";
		MFTACreditAct retValue = new Query(ctx,I_FTA_CreditAct.Table_Name,whereClause,null)
		.setParameters(FTA_CreditAct_ID, Env.getAD_Client_ID(ctx))
		.firstOnly();
		return retValue;
	}	//	get
	
}
