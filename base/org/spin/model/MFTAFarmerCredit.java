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

import org.compiere.model.MBPartner;
import org.compiere.model.MClientInfo;
import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MUOMConversion;
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
 *
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
				|| getCreditType().equals(CREDITTYPE_ReceptionAgreement)){
			if(getFTA_CreditDefinition_ID() == 0){
				m_processMsg = "@FTA_CreditDefinition_ID@";
				return DocAction.STATUS_Invalid;
			}
			//	Very Lines
			MFTAFarming[] lines = getLines(false);
			if (lines.length == 0){
				m_processMsg = "@NoLines@";
				return DocAction.STATUS_Invalid;
			}
			//	Generate Purchase Order
			m_processMsg = createOrder();
			if(m_processMsg != null){
				return DocAction.STATUS_Invalid;
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
		setDefiniteDocumentNo();

		setProcessed(true);
		setDocAction(DOCACTION_Close);
		return DocAction.STATUS_Completed;
	}	//	completeIt
	
	/**
	 * Create Purchase Order From Farmer Credit
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/09/2013, 11:39:05
	 * @return
	 * @return String
	 */
	private String createOrder(){
		MDocType m_docType = MDocType.get(getCtx(), getC_DocType_ID());
		
		MOrder po = new MOrder (getCtx(), 0, get_TrxName());
		po.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
		po.setIsSOTrx(false);
		if(m_docType.get_ValueAsInt("C_DocTypeOrder_ID") == 0)
			return "@C_DocTypeOrder_ID@ @NotFound@";
		
		po.setC_DocTypeTarget_ID(m_docType.get_ValueAsInt("C_DocTypeOrder_ID"));
		po.setDateAcct(getDateDoc());
		po.setDateOrdered(getDateDoc());
		//
		po.setDescription(getDescription());
		//po.setSalesRep_ID(getSalesRep_ID());
		//	Set Vendor
		MBPartner vendor = (MBPartner) getC_BPartner();
		po.setBPartner(vendor);
		
		// get default drop ship warehouse
		MOrgInfo orginfo = MOrgInfo.get(getCtx(), po.getAD_Org_ID(), get_TrxName());
		if (orginfo.getM_Warehouse_ID() != 0)
			po.setM_Warehouse_ID(orginfo.getM_Warehouse_ID());
		else
			return "@M_Warehouse_ID@ = @NotFound@";
		
		//	Set Farmer Credit
		po.set_ValueOfColumn("FTA_FarmerCredit_ID", getFTA_FarmerCredit_ID());
		
		po.saveEx();
		
		MProduct product = MProduct.get(getCtx(), getFTA_CreditDefinition().getCategory_ID());
		
		MClientInfo m_ClientInfo = MClientInfo.get(getCtx());
		if(m_ClientInfo.getC_UOM_Weight_ID() == 0)
			return "@C_UOM_Weight_ID@ = @NotFound@";
		
		//	Get Quantity
		BigDecimal m_EstimatedQty = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(fr.EstimatedQty) " +
				"FROM FTA_Farming fr " +
				"WHERE fr.Status = 'A' " +
				"AND fr.FTA_FarmerCredit_ID=?", getFTA_FarmerCredit_ID());
		
		if(m_EstimatedQty == null
				|| m_EstimatedQty.compareTo(Env.ZERO) <= 0)
			return "@EstimatedQty@ <= @0@";
		
		MOrderLine poLine = new MOrderLine (po);
		poLine.setProduct(product);
		poLine.setC_UOM_ID(m_ClientInfo.getC_UOM_Weight_ID());
		//	Rate Convert
		BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
				product.getM_Product_ID(), m_ClientInfo.getC_UOM_Weight_ID());
		
		if(rate == null)
			return "@NoUOMConversion@";
		
		poLine.setPrice();
		
		//	Set Quantity
		poLine.setQty(m_EstimatedQty.multiply(rate));
		poLine.setQtyOrdered(m_EstimatedQty.multiply(rate));
		//
		poLine.saveEx();
		
		po.setDocAction(X_C_Order.DOCACTION_Complete);
		po.processIt(X_C_Order.DOCACTION_Complete);
		po.saveEx();
		
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
		
		m_processMsg = validReference();
		if(m_processMsg != null)
			return false;
		
		unAllocateLines();
		addDescription(Msg.getMsg(getCtx(), "Voided"));
		//setAmt(Env.ZERO);

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
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/09/2013, 15:39:20
	 * @return
	 * @return String
	 */
	private String validReference(){
		int m_Reference_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(et.FTA_EntryTicket_ID) " +
				"FROM FTA_Farming frm " +
				"INNER JOIN FTA_MobilizationGuide mg ON(mg.FTA_Farming_ID = frm.FTA_Farming_ID) " +
				"INNER JOIN FTA_EntryTicket et ON(et.FTA_MobilizationGuide_ID = mg.FTA_MobilizationGuide_ID) " +
				"WHERE frm.FTA_FarmerCredit_ID = ?", getFTA_FarmerCredit_ID());
		if(m_Reference_ID != 0)
			return "@SQLErrorReferenced@";
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
	//	setProcessed(false);
		if (reverseCorrectIt())
			return true;
		return false;
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
	 * 	Get Document no
	 *	@return Document No
	 */
	public String getDocumentNo()
	{
		return "-";
	}	//	getDocumentNo

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
	 *	@return lines
	 */
	public MFTAFarming[] getLines (boolean requery)
	{
		if (m_lines != null && !requery)
		{
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		List<MFTAFarming> list = new Query(getCtx(), MFTAFarming.Table_Name, "FTA_FarmerCredit_ID=?", get_TrxName())
		.setParameters(getFTA_FarmerCredit_ID())
		.list();

		m_lines = new MFTAFarming[list.size ()];
		list.toArray (m_lines);
		return m_lines;
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
