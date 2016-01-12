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
public class MFTAEntryTicket extends X_FTA_EntryTicket implements DocAction, DocOptions {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5809775234403142390L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/08/2013, 14:43:32
	 * @param ctx
	 * @param FTA_EntryTicket_ID
	 * @param trxName
	 */
	public MFTAEntryTicket(Properties ctx, int FTA_EntryTicket_ID,
			String trxName) {
		super(ctx, FTA_EntryTicket_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/08/2013, 14:43:32
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAEntryTicket(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/** Lines					*/
	private MFTAEntryTicketGuide[]		m_lines = null;
	
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
		if (!MPeriod.isOpen(getCtx(), getDateDoc(), dt.getDocBaseType(), getAD_Org_ID())) {
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
	 * 	Get Lines
	 *	@param requery requery
	 *	@return lines
	 */
	public MFTAEntryTicketGuide[] getLines (boolean requery)
	{
		if (m_lines != null && !requery)
		{
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		List<MFTAEntryTicketGuide> list = new Query(getCtx(), MFTAEntryTicketGuide.Table_Name, "FTA_EntryTicket_ID=?", get_TrxName())
		.setParameters(getFTA_EntryTicket_ID())
		.list();

		m_lines = new MFTAEntryTicketGuide[list.size ()];
		list.toArray (m_lines);
		return m_lines;
	}	//	getLines
	
	/**
	 * Get RecordWeight from Entry Ticket
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Feb 11, 2015, 5:55:07 PM
	 * @param whereClause
	 * @return
	 * @return MFTARecordWeight[]
	 */
	public MFTARecordWeight[] getRecordWeight(String whereClause) {
		List<MFTARecordWeight> list = new Query(getCtx(), 
				I_FTA_RecordWeight.Table_Name, "FTA_EntryTicket_ID=?" 
						+ (whereClause != null && whereClause.length() != 0? " AND " + whereClause: ""), get_TrxName())
		.setParameters(getFTA_EntryTicket_ID())
		.list();

		MFTARecordWeight[] m_rw = new MFTARecordWeight[list.size ()];
		list.toArray (m_rw);
		return m_rw;
	}	//	getRecordWeight
	

	/**
	 * Get Quality Analysis from Entry Ticket
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Feb 11, 2015, 5:56:35 PM
	 * @param whereClause
	 * @return
	 * @return MFTAQualityAnalysis[]
	 */
	public MFTAQualityAnalysis[] getQualityAnalysis(String whereClause) {
		List<MFTAQualityAnalysis> list = new Query(getCtx(), 
				I_FTA_QualityAnalysis.Table_Name, "FTA_EntryTicket_ID=?"
						+ (whereClause != null && whereClause.length() != 0? " AND " + whereClause: ""), get_TrxName())
		.setParameters(getFTA_EntryTicket_ID())
		.list();

		MFTAQualityAnalysis[] m_qa = new MFTAQualityAnalysis[list.size ()];
		list.toArray (m_qa);
		return m_qa;
	}	//	getQualityAnalysis

	
	/**
	 * Get Load Order from Entry Ticket
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Feb 11, 2015, 5:59:10 PM
	 * @param whereClause
	 * @return
	 * @return MFTALoadOrder[]
	 */
	public MFTALoadOrder[] getLoadOrder(String whereClause) {
		List<MFTALoadOrder> list = new Query(getCtx(), 
				I_FTA_LoadOrder.Table_Name, "FTA_EntryTicket_ID=?"
						+ (whereClause != null && whereClause.length() != 0? " AND " + whereClause: ""), get_TrxName())
		.setParameters(getFTA_EntryTicket_ID())
		.list();

		MFTALoadOrder[] m_lo = new MFTALoadOrder[list.size ()];
		list.toArray (m_lo);
		return m_lo;
	}	//	getQualityAnalysis
	
	
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
        int noLine = DB.executeUpdateEx("UPDATE FTA_EntryTicketGuide " +
        		"SET Processed=? " +
        		"WHERE FTA_EntryTicket_ID=?",
        		new Object[]{processed, get_ID()},
        		get_TrxName());
        m_lines = null;
        log.fine("setProcessed - " + processed + " - Lines=" + noLine);
    }   //  setProcessed
    
	
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
		//	Valid QualityAnalysis Completed
		m_processMsg = validQAReference();
		if(m_processMsg != null)
			return false;
		//	Valid Record Weight Completed
		m_processMsg = validRWReference();
		if(m_processMsg != null)
			return false;
		//	Valid Load Order Completed
		if(getOperationType().equals(OPERATIONTYPE_DeliveryBulkMaterial)
				|| getOperationType().equals(OPERATIONTYPE_DeliveryFinishedProduct)
				|| getOperationType().equals(OPERATIONTYPE_MaterialOutputMovement)){
			m_processMsg = validLOReference();
			if(m_processMsg != null)
				return false;
		}
		//	
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
	 * Valid Reference in Quality Analysis
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/09/2013, 16:05:21
	 * @return
	 * @return String
	 */
	private String validQAReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(qa.DocumentNo) " +
				"FROM FTA_QualityAnalysis qa " +
				"WHERE qa.DocStatus IN('CO', 'CL') " +
				"AND qa.FTA_EntryTicket_ID = ?", getFTA_EntryTicket_ID());
		if(m_ReferenceNo != null) 
			return "@SQLErrorReferenced@ @FTA_QualityAnalysis_ID@: " + m_ReferenceNo;
		return null;
	}
	
	/**
	 * Valid Reference in Record Weight
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/01/2014, 11:57:13
	 * @return
	 * @return String
	 */
	private String validRWReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(rw.DocumentNo) " +
				"FROM FTA_RecordWeight rw " +
				"WHERE rw.DocStatus IN('CO', 'CL') " +
				"AND rw.FTA_EntryTicket_ID = ?", getFTA_EntryTicket_ID());
		if(m_ReferenceNo != null) 
			return "@SQLErrorReferenced@ @FTA_RecordWeight_ID@: " + m_ReferenceNo;
		return null;
	}
	
	/**
	 * Valid Reference in Load Order
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/01/2014, 12:01:48
	 * @return
	 * @return String
	 */
	private String validLOReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(lo.FTA_LoadOrder_ID) " +
				"FROM FTA_LoadOrder lo " +
				"WHERE lo.DocStatus NOT IN('VO', 'RE') " +
				"AND lo.FTA_EntryTicket_ID = ?", getFTA_EntryTicket_ID());
		if(m_ReferenceNo != null) 
			return "@SQLErrorReferenced@ @FTA_LoadOrder_ID@: " + m_ReferenceNo;
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
		//	Dixon Martinez 2016-01-12
		//	Add support for validate period is open?
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());

		//	Std Period open?
		if (!MPeriod.isOpen(getCtx(), getDateDoc(), dt.getDocBaseType(), getAD_Org_ID()))	{
			m_processMsg = "@PeriodClosed@";
			return false;
		}
		//	End Dixon Martinez
		
		m_processMsg = validQAReference();
		if(m_processMsg != null)
			return false;
		
		//	Valid QualityAnalysis Completed
		m_processMsg = validQAReference();
		if(m_processMsg != null)
			return false;
		//	Valid Record Weight Completed
		m_processMsg = validRWReference();
		if(m_processMsg != null)//TEARA-3534
			return false;
		//	Valid Load Order Completed
		if(getOperationType().equals(OPERATIONTYPE_DeliveryBulkMaterial)
				|| getOperationType().equals(OPERATIONTYPE_DeliveryFinishedProduct)
				|| getOperationType().equals(OPERATIONTYPE_MaterialOutputMovement)){
			m_processMsg = validLOReference();
			if(m_processMsg != null)
				return false;
		}
		
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
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		if(newRecord)
			setIsPrinted(false);		
	
		//	Dixon Martinez 20/12/2013 09:29
		//	Adding Validation to try to save the record weight not allow it if the ticket entry, 
		//	Mobilization Guide, external guide, the business partner, the order or order of quality are null. 
			
		String msg = null;
		
		//	Yamel Senih 2013-12-19: 17:04:02
		//	Valid Operation Type
		if(getOperationType() == null)
			msg = "@FTA_EntryTicket_ID@ @NotFound@";
		//	End Yamel Senih
		
		if(getOperationType()
				.equals(X_FTA_EntryTicket.OPERATIONTYPE_RawMaterialReceipt)){
			
			if(getFTA_MobilizationGuide_ID() == 0)
				msg= "@FTA_MobilizationGuide_ID@ @NotFound@";
			
			else if(getExt_Guide().equals(Env.ZERO))
				msg = "@Ext_Guide@ @NotFound@";
			
			else if(getC_BPartner_ID() == 0)
				msg = "@C_BPartner_ID@ @NotFound@";
			
		}else if(getOperationType()
				.equals(X_FTA_EntryTicket.OPERATIONTYPE_MaterialInputMovement)){
			
			if(getFTA_LoadOrder_ID() == 0)
				msg = "@FTA_LoadOrder_ID@ @NotFound@";
			
		}else if(getOperationType()
				.equals(X_FTA_EntryTicket.OPERATIONTYPE_ProductBulkReceipt)
					|| getOperationType()
							.equals(X_FTA_EntryTicket.OPERATIONTYPE_ReceiptMoreThanOneProduct)){
			
			if(getC_Order_ID() == 0)
				msg = "@C_Order_ID@ @NotFound@";
			
			else if(getC_BPartner_ID() == 0)
				msg = "@C_BPartner_ID@ @NotFound@";
		}
		if(msg != null)
			throw new AdempiereException(msg);
		//	End Dixon Martinez
		return true;
	}
	
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
}
