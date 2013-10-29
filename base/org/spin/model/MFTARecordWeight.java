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

import org.compiere.model.MAttributeSetInstance;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MLot;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MUOMConversion;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
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
public class MFTARecordWeight extends X_FTA_RecordWeight implements DocAction, DocOptions {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5574275427824428940L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/08/2013, 14:47:32
	 * @param ctx
	 * @param FTA_RecordWeight_ID
	 * @param trxName
	 */
	public MFTARecordWeight(Properties ctx, int FTA_RecordWeight_ID,
			String trxName) {
		super(ctx, FTA_RecordWeight_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/08/2013, 14:47:32
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTARecordWeight(Properties ctx, ResultSet rs, String trxName) {
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
	/**	Quality Analysis			*/
	private MFTAQualityAnalysis m_QualityAnalysis = null;
	/**	Event Type					*/
	private final String EVENTTYPE_RECEIPT = "EW";
	private final String EVENTTYPE_SHIPMENT = "OW";
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
		
		//	Valid Weight
		String status = validWeight();
		if(m_processMsg != null)
			return status;
		
		//	Implicit Approval
		if (!isApproved())
			approveIt();
		
		m_processMsg = calculatePayWeight();
		if(m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		log.info(toString());	
		//	Generate Material Receipt
		String msg = createMaterialReceipt();
		if(m_processMsg != null)
			return DocAction.STATUS_Invalid;
		else
			m_processMsg = msg;
		
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
	 * Caluculate Payment Weight
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/10/2013, 11:54:02
	 * @return
	 * @return String
	 */
	private String calculatePayWeight(){
		MFTAQualityAnalysis qa = getQualityAnalysis(true);
		//	
		MFTACategoryCalc m_CC = MFTACategoryCalc.get(getCtx(), qa.getM_Product_ID(), 
				(isSOTrx()? EVENTTYPE_SHIPMENT: EVENTTYPE_RECEIPT), 
				get_TrxName());
		//	
		MAttributeSetInstance att = qa.getAttributeSetInstance();
		//	Valid Attribute Set Instance
		if(att == null)
			return "@M_AttributeSetInstance_ID@ @NotFound@";
		//	Valid Category Calc
		if(m_CC == null)
			return "@FTA_CategoryCalc_ID@ @NotFound@";
			
		BigDecimal m_PayWeight = m_CC.getPaidWeight(getNetWeight(), att);
		setPayWeight(m_PayWeight);
		return null;
	}
	
	/**
	 * Get Quality Analysis
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/10/2013, 10:44:52
	 * @param reQuery
	 * @return
	 * @return MFTAQualityAnalysis
	 */
	public MFTAQualityAnalysis getQualityAnalysis(boolean reQuery){
		if(reQuery
				|| m_QualityAnalysis == null) {
			m_QualityAnalysis = new MFTAQualityAnalysis(getCtx(), getFTA_QualityAnalysis_ID(), get_TrxName());
		}
		//	Return
		return m_QualityAnalysis;
	}
	
	/**
	 * Valid Weight
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/09/2013, 14:27:34
	 * @return
	 * @return String
	 */
	private String validWeight(){
		//	Valid Weight
		if ((getGrossWeight() == null
				|| getGrossWeight().equals(Env.ZERO)) && !isI_IsImported()) {
			m_processMsg = "@GrossWeight@ = @0@";
			return (!isSOTrx()? DocAction.STATUS_Invalid: DocAction.STATUS_InProgress);
		} else if((getTareWeight() == null
				|| getTareWeight().equals(Env.ZERO)) && !isI_IsImported()) {
			m_processMsg = "@TareWeight@ = @0@";
			return (!isSOTrx()? DocAction.STATUS_InProgress: DocAction.STATUS_Invalid);
		} else if(getNetWeight() == null
				|| getNetWeight().equals(Env.ZERO)) {
			m_processMsg = "@NetWeight@ = @0@";
			return DocAction.STATUS_Invalid;
		} else if(getNetWeight().compareTo(Env.ZERO) < 0) {
			m_processMsg = "@NetWeight@ < @0@";
			return DocAction.STATUS_Invalid;
		}
		return null;
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
		m_processMsg = validReference();
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
	
	
	/**
	 * Valid Reference in another record
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/09/2013, 16:05:21
	 * @return
	 * @return String
	 */
	private String validReference(){
		int m_Reference_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(re.M_InOut_ID) " +
				"FROM M_InOut re " +
				"WHERE re.DocStatus NOT IN('VO', 'RE') " +
				"AND re.FTA_RecordWeight_ID = ?", getFTA_RecordWeight_ID());
		if(m_Reference_ID != 0)
			return "@SQLErrorReferenced@";
		return null;
	}
	
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
	 * Create a Material Receipt from the Record Weight
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/09/2013, 11:02:53
	 * @param order
	 * @return
	 * @return String
	 */
	private String createMaterialReceipt() {
		int m_FTA_Farming_ID = DB.getSQLValue(get_TrxName(), "SELECT fr.FTA_Farming_ID " +
				"FROM FTA_Farming fr " +
				"INNER JOIN FTA_MobilizationGuide mg ON(mg.FTA_Farming_ID = fr.FTA_Farming_ID) " +
				"INNER JOIN FTA_EntryTicket et ON(et.FTA_MobilizationGuide_ID = mg.FTA_MobilizationGuide_ID) " +
				"WHERE et.FTA_EntryTicket_ID=?", getFTA_EntryTicket_ID());
		
		MFTAFarming m_Farming = new MFTAFarming(getCtx(), m_FTA_Farming_ID, get_TrxName());
		//	Get Order and Line
		MOrderLine oLine = (MOrderLine) m_Farming.getC_OrderLine();
		MOrder order = oLine.getParent();
		
		if(order == null)
			m_processMsg = "@C_Order_ID@ @NotFound@";
		
		MDocType m_DocType = MDocType.get(getCtx(), order.getC_DocType_ID());
		
		if(m_DocType.getC_DocTypeShipment_ID() == 0)
			m_processMsg = "@C_DocTypeShipment_ID@ @NotFound@";
		
		MInOut m_Receipt = new MInOut (order, m_DocType.getC_DocTypeShipment_ID(), getDateDoc());
		m_Receipt.setDateAcct(getDateDoc());
		//	Set Farmer Credit and Record Weight
		m_Receipt.set_ValueOfColumn("FTA_FarmerCredit_ID", m_FTA_Farming_ID);
		m_Receipt.set_ValueOfColumn("FTA_RecordWeight_ID", getFTA_RecordWeight_ID());
		//	Save
		m_Receipt.saveEx(get_TrxName());
		//
		MInOutLine ioLine = new MInOutLine(m_Receipt);
		
		MProduct product = MProduct.get(getCtx(), oLine.getM_Product_ID());
		//	Rate Convert
		BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
				product.getM_Product_ID(), getC_UOM_ID());
		
		if(rate == null)
			m_processMsg = "@NoUOMConversion@";
		
		BigDecimal m_MovementQty = getNetWeight().multiply(rate);
		//	Set Product
		ioLine.setProduct(product);
		//	Set Quality Analysis
		MFTAQualityAnalysis qa = getQualityAnalysis(true);
		//	Set Instance
		MAttributeSetInstance asi = new MAttributeSetInstance(getCtx(), qa.getQualityAnalysis_ID(), get_TrxName());
		//	Set Lot
		MLot lot = new MLot(getCtx(), m_Farming.getPlantingCycle_ID(), get_TrxName());
		//	
		asi.setM_Lot_ID(m_Farming.getPlantingCycle_ID());
		asi.setLot(lot.getName());
		//	
		asi.setDescription();
		//	Save
		asi.saveEx(get_TrxName());
		ioLine.setM_AttributeSetInstance_ID(asi.getM_AttributeSetInstance_ID());
		ioLine.setC_OrderLine_ID(oLine.getC_OrderLine_ID());
		//	Set Locator
		ioLine.setM_Locator_ID(m_MovementQty);
		//	Set Quantity
		ioLine.setQty(m_MovementQty);
		ioLine.saveEx(get_TrxName());
		//	Manually Process Shipment
		m_Receipt.processIt(DocAction.ACTION_Complete);
		m_Receipt.saveEx(get_TrxName());
		
		return "@M_InOut_ID@: " + m_Receipt.getDocumentNo();
	}	//	createMaterialReceipt
}
