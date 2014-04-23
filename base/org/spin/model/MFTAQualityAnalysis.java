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
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttribute;
import org.compiere.model.MAttributeInstance;
import org.compiere.model.MAttributeSetInstance;
import org.compiere.model.MAttributeValue;
import org.compiere.model.MDocType;
import org.compiere.model.MPeriod;
import org.compiere.model.MSysConfig;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTAQualityAnalysis extends X_FTA_QualityAnalysis implements DocAction, DocOptions {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1146658451902706949L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/08/2013, 14:46:39
	 * @param ctx
	 * @param FTA_QualityAnalysis_ID
	 * @param trxName
	 */
	public MFTAQualityAnalysis(Properties ctx, int FTA_QualityAnalysis_ID,
			String trxName) {
		super(ctx, FTA_QualityAnalysis_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/08/2013, 14:46:39
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAQualityAnalysis(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
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
		//	Verify Attribute
		if (getQualityAnalysis_ID() == 0)
		{
			m_processMsg = "@QualityAnalysis_ID@ @NotFound@";
			return DocAction.STATUS_Invalid;
		} else {
			if(getOperationType().equals(OPERATIONTYPE_RawMaterialReceipt)) {
				String m_Owner = DB.getSQLValueString(get_TrxName(), "SELECT attv.Value " +
						"FROM FTA_MobilizationGuide mg " +
						"INNER JOIN M_AttributeValue attv ON(attv.M_AttributeValue_ID = mg.Owner_ID) " +
						"INNER JOIN FTA_EntryTicket et ON(et.FTA_MobilizationGuide_ID = mg.FTA_MobilizationGuide_ID) " +
						"WHERE et.FTA_EntryTicket_ID = ?", getFTA_EntryTicket_ID());
				if(m_Owner != null){
					String attName = MSysConfig.getValue("ATTRIBUTE_OWNER");
					if(attName != null){
						MAttributeSetInstance asi = getAttributeSetInstance();
						MAttributeInstance ai = setAttribute(asi, attName, m_Owner, get_TrxName());
						if(ai != null){
							ai.saveEx(get_TrxName());
							asi.setDescription();
							asi.save(get_TrxName());
						}
					} else {
						m_processMsg = "@M_Attribute_ID@ \"ATTRIBUTE_OWNER\" @NotFound@";
						return DocAction.STATUS_Invalid;
					}
				} else {
					m_processMsg = "@M_Attribute_ID@ @Owner_ID@ @NotFound@";
					return DocAction.STATUS_Invalid;
				}
			}
		}
		
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

	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		if(newRecord)
			setIsPrinted(false);
	
		//	Dixon Martinez 20/12/2013 09:29
		//	Adding Validation to try to save the record weight not do so if the ticket allows entry or registration weight is zero, 

		String msg = null;
		//	Yamel Senih 2013-12-19: 17:04:02
		//	Valid Operation Type
		if(getOperationType() == null)
			msg = "@FTA_EntryTicket_ID@ @NotFound@";
		//	End Yamel Senih
		
		if(getOperationType()
				.equals(X_FTA_EntryTicket.OPERATIONTYPE_DeliveryBulkMaterial)
				|| getOperationType()
						.equals(X_FTA_EntryTicket.OPERATIONTYPE_ProductBulkReceipt)
					|| getOperationType()
							.equals(X_FTA_EntryTicket.OPERATIONTYPE_RawMaterialReceipt)
						|| getOperationType()
								.equals(X_FTA_EntryTicket.OPERATIONTYPE_ReceiptMoreThanOneProduct)){
			if(getFTA_EntryTicket_ID() == 0)
				msg = "@FTA_EntryTicket_ID@ @NotFound@";
		}

		if(getOperationType()
				.equals(X_FTA_EntryTicket.OPERATIONTYPE_DeliveryBulkMaterial)
				|| getOperationType()
					.equals(X_FTA_EntryTicket.OPERATIONTYPE_ReceiptMoreThanOneProduct)){
			if(getFTA_RecordWeight_ID() == 0)
				msg = "@FTA_RecordWeight_ID@ @NotFound@";
		}
		
		if(msg != null)
			throw new AdempiereException(msg);
		
		return true;	
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
		//	Valid Reference
		if(getOperationType().equals(OPERATIONTYPE_RawMaterialReceipt)
				|| getOperationType().equals(OPERATIONTYPE_ProductBulkReceipt)
				|| getOperationType().equals(OPERATIONTYPE_ReceiptMoreThanOneProduct)
				|| getOperationType().equals(OPERATIONTYPE_MaterialInputMovement)){
			//	Chute Analysis
			m_processMsg = validCAReference();
			if(m_processMsg != null)
				return false;
			//	Record Weight
			m_processMsg = validRWReference();
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
	 * Valid Reference in another record
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/09/2013, 16:05:21
	 * @return
	 * @return String
	 */
	private String validCAReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(qa.DocumentNo) " +
				"FROM FTA_QualityAnalysis qa " +
				"WHERE qa.DocStatus NOT IN('VO', 'RE') " +
				"AND qa.Orig_QualityAnalysis_ID = ?", getFTA_QualityAnalysis_ID());
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @FTA_QualityAnalysis_ID@: " + m_ReferenceNo;
		return null;		
	}
	
	/**
	 * Valid Record Weight Reference
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/01/2014, 12:39:26
	 * @return
	 * @return String
	 */
	private String validRWReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(rw.DocumentNo) " +
				"FROM FTA_RecordWeight rw " +
				"WHERE rw.DocStatus IN('CO', 'CL') " +
				"AND rw.FTA_QualityAnalysis_ID = ?", getFTA_QualityAnalysis_ID());
		if(m_ReferenceNo != null) 
			return "@SQLErrorReferenced@ @FTA_RecordWeight_ID@: " + m_ReferenceNo;
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
		if(getOperationType().equals(OPERATIONTYPE_RawMaterialReceipt)
				|| getOperationType().equals(OPERATIONTYPE_ProductBulkReceipt)
				|| getOperationType().equals(OPERATIONTYPE_MaterialInputMovement)){
			//	Record Weight
			m_processMsg = validRWReference();
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
					//	Dixon Martinez 23/04/2014 09:51:00
					//	Add Support for closed Quality Analysis

					//	options[index++] = DocumentEngine.ACTION_Void;
					//	options[index++] = DocumentEngine.ACTION_ReActivate;
					
					options[index++] = DocumentEngine.ACTION_Void;
					options[index++] = DocumentEngine.ACTION_ReActivate;
					options[index++] = DocumentEngine.ACTION_Close;
				}else if (docStatus.equals(DocumentEngine.STATUS_Closed))
					options[index++] = DocumentEngine.ACTION_None;
			
				//	End Dixon Martinez
			
			// After Close
			
			
		}
		
		return index;
	}
	
	/**
	 * Get Attribute Set Instance
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/10/2013, 10:55:18
	 * @return
	 * @return MAttributeSetInstance
	 */
	public MAttributeSetInstance getAttributeSetInstance(){
		if(getQualityAnalysis_ID() != 0)
			return new MAttributeSetInstance(getCtx(), getQualityAnalysis_ID(), get_TrxName());
		else 
			return null;
	}
	
	/**
	 * Set AttributeSet
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 19/10/2013, 02:33:51
	 * @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 2014-01-13, 11:20:00
	 * <br> Add support to update Attribue Instance
	 * @param asi
	 * @param col
	 * @param val
	 * @param ai
	 * @return void
	 */
	public static MAttributeInstance setAttribute(MAttributeSetInstance asi, String col, String val, String trxName)
	{
		
		MAttributeInstance ai=null;
		MAttribute atr= new Query(Env.getCtx(),MAttribute.Table_Name,"Name=?",trxName)
		.setOnlyActiveRecords(true)
		.setParameters(col)
		.firstOnly();
		if (atr!=null){
			ai = new Query(Env.getCtx(),MAttributeInstance.Table_Name,"M_AttributeSetInstance_ID = ? AND M_Attribute_ID = ?",trxName)
			.setParameters(asi.getM_AttributeSetInstance_ID(), atr.getM_Attribute_ID())
			.firstOnly();
			//Create List Value Attribute instance
			if (atr.getAttributeValueType().equals("L")){
				MAttributeValue atrv= new Query(Env.getCtx(),MAttributeValue.Table_Name,"Value=? And M_Attribute_ID=?",trxName)
				.setOnlyActiveRecords(true)
				.setParameters(val,atr.getM_Attribute_ID())
				.firstOnly();
				if (atrv!=null){
					if(ai != null){
						ai.setM_AttributeValue_ID(atrv.getM_AttributeValue_ID());
						ai.setValue(atrv.getName());
					}
					else
						ai = new MAttributeInstance(Env.getCtx(), atr.getM_Attribute_ID(), 
								 asi.getM_AttributeSetInstance_ID(), atrv.getM_AttributeValue_ID(), val, trxName);
				}
			}
			//Create String Value Attribute instance
			else if (atr.getAttributeValueType().equals("S")){
				if(ai != null)
					ai.setValue(val);
				else
					ai = new MAttributeInstance(Env.getCtx(), atr.getM_Attribute_ID(), asi.getM_AttributeSetInstance_ID(), val, trxName);
			}
			else if (atr.getAttributeValueType().equals("N")){
				try{
					BigDecimal value = new BigDecimal(val);
					if(ai != null)
						ai.setValueNumber(value);
					else
						ai = new MAttributeInstance(Env.getCtx(), atr.getM_Attribute_ID(),asi.getM_AttributeSetInstance_ID(), value, trxName);
				}
				catch (NumberFormatException e){
					new AdempiereUserError(val +" " +e.getMessage());
				}
			}
		}
		return ai;
	}	
}
