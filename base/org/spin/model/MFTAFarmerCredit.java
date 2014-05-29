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

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.model.MPeriod;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.model.X_C_Order;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * <ol> Add amount when the type of credit is credit or Extension
 */
public class MFTAFarmerCredit extends X_FTA_FarmerCredit implements DocAction, DocOptions {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1598715547742531997L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 16:09:01
	 * @param ctx
	 * @param FTA_FarmerCredit_ID
	 * @param trxName
	 */
	public MFTAFarmerCredit(Properties ctx, int FTA_FarmerCredit_ID,
			String trxName) {
		super(ctx, FTA_FarmerCredit_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 16:09:01
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAFarmerCredit(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/** Lines					*/
	private MFTAFarming[]		m_lines = null;

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
		
		//	Implicit Approval
		if (!isApproved())
			approveIt();
		log.info(toString());
		//
		if(getCreditType().equals(CREDITTYPE_Credit)
				|| getCreditType().equals(CREDITTYPE_ReceptionAgreement)
				|| getCreditType().equals(CREDITTYPE_Extension)){
			if(getFTA_CreditDefinition_ID() == 0){
				m_processMsg = "@FTA_CreditDefinition_ID@ @NotFound@";
				return DocAction.STATUS_Invalid;
			}
			/*//	Very Lines
			MFTAFarming[] lines = getLines(false);
			if (lines.length == 0){
				m_processMsg = "@NoLines@";
				return DocAction.STATUS_Invalid;
			}*/
			//	Valid Credit Act
			if(getFTA_CreditAct_ID() == 0){
				m_processMsg = "@FTA_CreditAct_ID@ @NotFound@";
				return DocAction.STATUS_InProgress;
			} else if(!getFTA_CreditAct().getDocStatus()
								.equals(X_FTA_CreditAct.DOCSTATUS_Completed)){
				m_processMsg = "@FTA_CreditAct_ID@ @No@ @completed@";
				return DocAction.STATUS_InProgress;
			}
		} else if(getCreditType().equals(CREDITTYPE_Loan)) {
			//if(getM_Product_ID() == 0
					//&& getC_Charge_ID() == 0) {
				//m_processMsg = "@C_Charge_ID@ @M_Product_ID@ @NotFound@";
				//return DocAction.STATUS_InProgress;
			//}
			if(getFTA_CreditAct_ID() == 0){
				m_processMsg = "@FTA_CreditAct_ID@ @NotFound@";
				return DocAction.STATUS_InProgress;
			} else if(!getFTA_CreditAct().getDocStatus()
								.equals(X_FTA_CreditAct.DOCSTATUS_Completed)){
				m_processMsg = "@FTA_CreditAct_ID@ @No@ @completed@";
				return DocAction.STATUS_InProgress;
			}
			
		}
		
		//	Valid Amount
		if(getAmt() == null
				|| getAmt().equals(Env.ZERO)){
			m_processMsg = "@Amt@ = @0@";
			return DocAction.STATUS_Invalid;
		}
		
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null)
		{
			m_processMsg = valid;
			return DocAction.STATUS_Invalid;
		}
		//	Dixon Martinez 26/03/2014 17:44:00
		//	Validate if Farmer credit manages payment program
		if(isManagesPaymentProgram())
			if(!isPayScheduleValid())
				return DocAction.STATUS_Invalid;
		//	End Dixon Martinez
		
		
		//	Dixon Martinez 20-05-2014 
		//	Add support for Parent Farmer Credit
		
		if(getParent_FarmerCredit_ID() > 0){
			if(validStatusParentFarmerCredit(getParent_FarmerCredit_ID())){
				m_processMsg = "@Parent_FarmerCredit_ID@ @NotCompleted@ ";
				return DocAction.STATUS_Invalid;
			}
			recalculateFarmerCredit(getParent_FarmerCredit_ID(),true);
		}	
		//	End Dixon Martinez
		
		setDefiniteDocumentNo();

		setProcessed(true);
		setDocAction(DOCACTION_Close);
		return DocAction.STATUS_Completed;
	}	//	completeIt
	
	/**
	 * Valid status Parent Farmer Credit 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 18/05/2014, 00:28:34
	 * @param parent_FarmerCredit
	 * @return
	 * @return boolean
	 */
	private boolean validStatusParentFarmerCredit(
			int parent_FarmerCredit) {
		String sql = "SELECT FTA_FarmerCredit_ID "
				+ " FROM FTA_FarmerCredit "
				+ " WHERE "
				+ "		FTA_FarmerCredit_ID = ? "
				+ "		AND DocStatus IN ('CO') ";
		
		int p_FTA_FarmerCredit_ID = DB.getSQLValue(get_TrxName(), sql, parent_FarmerCredit);
		
		if(p_FTA_FarmerCredit_ID > 0)
			return false;
		
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
		//	Valid Bill of Exchange
		m_processMsg = validReferenceBoE();
		if(m_processMsg != null)
			return false;
		//	Valid Entry Ticket
		m_processMsg = validReferenceET();
		if(m_processMsg != null)
			return false;
		//	Valid Order
		m_processMsg = validReferenceOrder();
		if(m_processMsg != null)
			return false;
		//	Valid Invoice
		m_processMsg = validReferenceInvoice();
		if(m_processMsg != null)
			return false;
		//	Valid Not Allocated to Credit Act
		/*if(getFTA_CreditAct_ID() != 0) {
			m_processMsg = "@FTA_CreditAct_ID@ @IsAllocated@";
			return false;
		}*/
		//	Un Allocate Lines
		unAllocateLines();
		//	
		addDescription(Msg.getMsg(getCtx(), "Voided"));
		//	Update Act
		updateCreditAct();
		//setAmt(Env.ZERO);


		
		//	Dixon Martinez 20-05-2014 
		//	Add support for Parent Farmer Credit
		if(getParent_FarmerCredit_ID() > 0)
			recalculateFarmerCredit(getParent_FarmerCredit_ID(),false);	
		//	End Dixon Martinez
		
		
		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;

		setProcessed(true);
        setDocAction(DOCACTION_None);
		return true;
	}	//	voidIt
	
	/**
	 * Update Credit Act
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/11/2013, 10:24:39
	 * @return
	 * @return void
	 */
	private void updateCreditAct(){
		MFTACreditAct creditAct = MFTACreditAct.get(getCtx(), getFTA_CreditAct_ID());
		creditAct.updateBalance(this);
		creditAct.saveEx();
	}
	
	/**
	 * Valid Reference in Entry Ticket
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/09/2013, 15:39:20
	 * @return
	 * @return String
	 */
	private String validReferenceET(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(et.DocumentNo) " +
				"FROM FTA_Farming frm " +
				"INNER JOIN FTA_MobilizationGuide mg ON(mg.FTA_Farming_ID = frm.FTA_Farming_ID) " +
				"INNER JOIN FTA_EntryTicket et ON(et.FTA_MobilizationGuide_ID = mg.FTA_MobilizationGuide_ID) " +
				"WHERE et.DocStatus NOT IN('VO', 'RE') " +
				"AND frm.FTA_FarmerCredit_ID = ?", getFTA_FarmerCredit_ID());
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @FTA_EntryTicket_ID@: " + m_ReferenceNo + " @completed@";
		return null;
	}
	
	/**
	 * Valid Reference in another record with Bill of Exchange
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/09/2013, 16:05:21
	 * @return
	 * @return String
	 */
	private String validReferenceBoE(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(be.DocumentNo) " +
				"FROM FTA_BillOfExchange be " +
				"WHERE be.DocStatus NOT IN('VO', 'RE') " +
				"AND be.FTA_FarmerCredit_ID = ?", getFTA_FarmerCredit_ID());
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @FTA_BillOfExchange_ID@: " + m_ReferenceNo + " @completed@";
		return null;
	}
	
	/**
	 * Valid reference on invoice
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/11/2013, 09:50:20
	 * @return
	 * @return String
	 */
	private String validReferenceInvoice(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(i.DocumentNo) " +
				"FROM C_Invoice i " +
				"WHERE i.DocStatus NOT IN('VO', 'RE') " +
				"AND i.FTA_FarmerCredit_ID = ?", getFTA_FarmerCredit_ID());
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @C_Invoice_ID@: " + m_ReferenceNo + " @completed@";
		return null;
	}
	
	/**
	 * Valid reference in order
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/11/2013, 09:51:18
	 * @return
	 * @return String
	 */
	private String validReferenceOrder(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(o.DocumentNo) " +
				"FROM C_Order o " +
				"WHERE o.DocStatus NOT IN('VO', 'RE') " +
				"AND o.FTA_FarmerCredit_ID = ?", getFTA_FarmerCredit_ID());
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @C_Order_ID@: " + m_ReferenceNo + " @completed@";
		return null;
	}
	
	/**
	 * UnAllocate Lines before Void It
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/09/2013, 10:55:22
	 * @return void
	 */
	private void unAllocateLines(){
		MFTAFarming [] m_Lines = getLines(true);
		for(MFTAFarming m_FTA_Farming : m_Lines){
			m_FTA_Farming.setFTA_FarmerCredit_ID(0);
			m_FTA_Farming.saveEx(get_TrxName());
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
		m_processMsg = validReferenceET();
		if(m_processMsg != null)
			return false;
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
		//	: Total Lines = 123.00 (#1)
		sb.append(": ")
			.append(Msg.translate(getCtx(),"Amt")).append("=").append(getAmt())
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
	
	/**
	 * 	Get Lines
	 *	@param requery requery
	 *	@param whereClause
	 *	@return lines
	 */
	public MFTAFarming[] getLines (boolean requery, String whereClause)
	{
		if (m_lines != null && !requery)
		{
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		List<MFTAFarming> list = new Query(getCtx(), MFTAFarming.Table_Name, "FTA_FarmerCredit_ID=?"
				+ (whereClause != null && whereClause.length() != 0? " AND " + whereClause: ""), get_TrxName())
		.setParameters(getFTA_FarmerCredit_ID())
		.list();

		m_lines = new MFTAFarming[list.size ()];
		list.toArray (m_lines);
		return m_lines;
	}	//	getLines
	
	/**
	 * Get Movement of Farmer Credit
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 12/02/2014, 11:54:42
	 * @param whereClause
	 * @return
	 * @return MFTAFact[]
	 */
	public MFTAFact[] getMovements (String whereClause)
	{
		List<MFTAFact> list = new Query(getCtx(), I_FTA_Fact.Table_Name, "FTA_FarmerCredit_ID=?"
				+ (whereClause != null && whereClause.length() != 0? " AND " + whereClause: ""), get_TrxName())
		.setParameters(getFTA_FarmerCredit_ID())
		.list();

		MFTAFact [] m_facts = new MFTAFact[list.size ()];
		list.toArray (m_facts);
		return m_facts;
	}	//	getLines
	
	/**
	 * Get Lines
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/10/2013, 12:30:09
	 * @param requery
	 * @return
	 * @return MFTAFarming[]
	 */
	public MFTAFarming[] getLines (boolean requery)
	{
		return getLines(requery, null);
	}	//	getLines
	
	/**
	 * Get PurchaseOrder
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/09/2013, 10:41:32
	 * @return
	 * @return MOrder
	 */
	public MOrder getPOGenerated(){
		return new Query(getCtx(), X_C_Order.Table_Name, 
				"FTA_FarmerCredit_ID" + "=? " +
				"AND DocStatus='CO' " +
				"AND IsSOTrx='N'", get_TrxName())
			.setOnlyActiveRecords(true)
			.setParameters(getFTA_FarmerCredit_ID())
			.<MOrder>first();
	}
	
	/**
	 * Valid Area
	 */
	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		/* 	Dixon Martinez
		 *  
		 */
		/*
		 * 12/03/2014
		 * Set null Credit Act
		 * Set Credit Definition from Farmer Credit
		 */
		if(is_new())
			setFTA_CreditAct_ID(0);
		
		if((is_new()
				&& getParent_FarmerCredit_ID() != 0)
					|| is_ValueChanged("Parent_FarmerCredit_ID")){
			//	Search Credit Definition
			String sql = " SELECT fc.FTA_CreditDefinition_ID " +
						 " FROM FTA_FarmerCredit fc " +
						 " WHERE fc.FTA_FarmerCredit_ID = " +
						 " "+getParent_FarmerCredit_ID();
			//	
			int m_FTA_FarmerCredit = DB.getSQLValue(null, sql);

			//	Set Credit Definition
			setFTA_CreditDefinition_ID(m_FTA_FarmerCredit);
		}
		
		/*
		 * 	2/14/2014 09:39:00
		 *  Add mount
		 */
		if(getCreditType().equals(CREDITTYPE_Credit)
				|| getCreditType().equals(CREDITTYPE_Extension)){
			final String wehereClause = I_FTA_CreditDefinition.COLUMNNAME_FTA_CreditDefinition_ID + "=?";
			BigDecimal amt = DB.getSQLValueBD(get_TrxName(), "SELECT Amt FROM FTA_CreditDefinition WHERE " + wehereClause, getFTA_CreditDefinition_ID());
			amt = getQty().multiply(amt);
			setAmt(amt);
		}
		//	Comments not used
		//	Set Default Values
		/*if(newRecord){
			setGenerateOrder("N");
			setFTA_CreditAct_ID(0);
			setQty(Env.ZERO);
			setAmt(Env.ZERO);
		}*/
		
		//	End Dixon Martinez
		//	Dixon Martinez 15/03/2014 09:33:15
		//	Comment for not edit Qty
		/*if(getCreditType().equals(CREDITTYPE_Loan))
			setQty(Env.ONE);
			*/
		if(getQty() == null
				|| getQty().equals(Env.ZERO))
			throw new AdempiereException("@Qty@ = @0@");
		//	
		return true;
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


	/** Lines					*/
	private MFTAFCPaySchedule[]		m_paySchedule = null;

	
	/**
	 * Get Lines Pay Schedule
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 28/03/2014, 09:55:30
	 * @param requery
	 * @param whereClause
	 * @return
	 * @return MFTAFCPaySchedule[]
	 */
	public MFTAFCPaySchedule[] getPaySchedule (boolean requery, String whereClause){
		if(m_paySchedule != null
				&& !requery){
			set_TrxName(m_paySchedule, get_TrxName());
			return m_paySchedule;
		}
			
		List<MFTAFCPaySchedule> payScheduleList = new Query(getCtx(), MFTAFCPaySchedule.Table_Name, "FTA_FarmerCredit_ID=?"
				+ (whereClause != null && whereClause.length() != 0? " AND " + whereClause: ""), get_TrxName())
		.setParameters(getFTA_FarmerCredit_ID())
		.list();
		
		m_paySchedule = new MFTAFCPaySchedule[payScheduleList.size()];
		payScheduleList.toArray(m_paySchedule);
		return m_paySchedule;
	}


	/**
	 * Recalculate Farmer Credit
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 18/05/2014, 01:55:24
	 * @param p_FTA_ParentFarmerCredit_ID
	 * @return void
	 */
	private void recalculateFarmerCredit(int p_FTA_ParentFarmerCredit_ID, boolean add){
		
		MFTAFarmerCredit m_FTAParentFarmerCredit = 
				new MFTAFarmerCredit(getCtx(), p_FTA_ParentFarmerCredit_ID, get_TrxName());
		
	
		if((m_FTAParentFarmerCredit.getPreviousQty() == null
				|| m_FTAParentFarmerCredit.getPreviousQty().intValue() == 0)
					&&	(m_FTAParentFarmerCredit.getPreviousAmt() == null
							|| m_FTAParentFarmerCredit.getPreviousAmt().intValue() == 0)){
			m_FTAParentFarmerCredit.setPreviousQty(m_FTAParentFarmerCredit.getQty());
			m_FTAParentFarmerCredit.setPreviousAmt(m_FTAParentFarmerCredit.getAmt());
			
			m_FTAParentFarmerCredit.saveEx();
		}
		
		if((m_FTAParentFarmerCredit.getPreviousApprovedQty() == null
				|| m_FTAParentFarmerCredit.getPreviousApprovedQty().intValue() == 0)
					&&	(m_FTAParentFarmerCredit.getPreviousApprovedAmt() == null
							|| m_FTAParentFarmerCredit.getPreviousApprovedAmt().intValue() == 0)){
			m_FTAParentFarmerCredit.setPreviousApprovedQty(m_FTAParentFarmerCredit.getApprovedQty());
			m_FTAParentFarmerCredit.setPreviousApprovedAmt(m_FTAParentFarmerCredit.getApprovedAmt());
			
			m_FTAParentFarmerCredit.saveEx();
		}
		
		String sql = null;
		
		sql = "SELECT SUM(fc.Qty) "
				+ " FROM FTA_FarmerCredit fc"
				+ " WHERE fc.Parent_FarmerCredit_ID = ?";
		if(add)
			sql += " AND fc.DocStatus NOT IN ('VO','RE')";
		else
			sql += " AND fc.DocStatus IN ('CO','CL')";
		
		BigDecimal childrenQty = DB.getSQLValueBD(get_TrxName(), sql, m_FTAParentFarmerCredit.get_ID());
		
		if(childrenQty == null)
			childrenQty = Env.ZERO;
		
		if(add)
			m_FTAParentFarmerCredit.setQty(childrenQty.add(m_FTAParentFarmerCredit.getPreviousQty()));
		else
			m_FTAParentFarmerCredit.setQty(m_FTAParentFarmerCredit.getQty().subtract(getQty()));
		
		
		sql = null;
		
		sql = "SELECT SUM(fc.ApprovedQty) "
				+ " FROM FTA_FarmerCredit fc"
				+ " WHERE fc.Parent_FarmerCredit_ID = ?";
		if(add)
			sql += " AND fc.DocStatus NOT IN ('VO','RE')";
		else
			sql += " AND fc.DocStatus IN ('CO','CL')";
		
		BigDecimal childrenQtyApproved = DB.getSQLValueBD(get_TrxName(), sql, m_FTAParentFarmerCredit.get_ID());
		
		if(childrenQtyApproved == null)
			childrenQtyApproved = Env.ZERO;
		
		if(add)
			m_FTAParentFarmerCredit.setApprovedQty(childrenQtyApproved.add(m_FTAParentFarmerCredit.getPreviousApprovedQty()));
		else
			//m_FTAParentFarmerCredit.setApprovedQty(childrenQtyApproved.subtract(m_FTAParentFarmerCredit.getPreviousApprovedQty()));
			m_FTAParentFarmerCredit.setApprovedQty(m_FTAParentFarmerCredit.getApprovedQty().subtract(getApprovedQty()));
		
		/*
		sql = null;
		
		sql = "SELECT SUM(fc.ApprovedAmt) "
				+ " FROM FTA_FarmerCredit fc"
				+ " WHERE fc.Parent_FarmerCredit_ID = ?";
		if(add)
			sql += " AND fc.DocStatus NOT IN ('VO','RE')";
		else
			sql += " AND fc.DocStatus IN ('CO','CL')";
		
		BigDecimal childrenAmtApproved = DB.getSQLValueBD(get_TrxName(), sql, m_FTAParentFarmerCredit.get_ID());
		
		if(childrenAmtApproved == null)
			childrenAmtApproved = Env.ZERO;
		
		if(add)
			m_FTAParentFarmerCredit.setApprovedAmt(childrenAmtApproved.add(m_FTAParentFarmerCredit.getPreviousApprovedAmt()));
		else
			m_FTAParentFarmerCredit.setApprovedAmt(childrenAmtApproved.subtract(m_FTAParentFarmerCredit.getPreviousApprovedAmt()));
		*/
		
		m_FTAParentFarmerCredit.saveEx();
		
	}
}
