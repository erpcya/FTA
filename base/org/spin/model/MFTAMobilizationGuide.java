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

import org.compiere.model.MClientInfo;
import org.compiere.model.MDocType;
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
public class MFTAMobilizationGuide extends X_FTA_MobilizationGuide implements DocAction, DocOptions {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2057588336894788596L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 16:59:53
	 * @param ctx
	 * @param FTA_MobilizationGuide_ID
	 * @param trxName
	 */
	public MFTAMobilizationGuide(Properties ctx, int FTA_MobilizationGuide_ID,
			String trxName) {
		super(ctx, FTA_MobilizationGuide_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 16:59:53
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAMobilizationGuide(Properties ctx, ResultSet rs, String trxName) {
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
		//setIsApproved(true);
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		//setIsApproved(false);
		return true;
	}	//	rejectIt
	public void ValidRecordWeight()
	{
		
		String sql ;
		int p_FTA_RecordWeight_ID = 0;
		
		sql = "SELECT rw.FTA_RecordWeight_ID"
				+ " FROM FTA_RecordWeight rw"
				+ " WHERE"
				+ "		rw.DocStatus IN('IP', 'DR')"
				+ "		AND rw.FTA_LoadOrder_ID = ?"; 
		
		p_FTA_RecordWeight_ID = DB.getSQLValue(get_TrxName(), 
				sql,getFTA_LoadOrder_ID());
		setFTA_RecordWeight_ID(p_FTA_RecordWeight_ID);
		saveEx();
			if(p_FTA_RecordWeight_ID<0)
			{
				m_processMsg = "@FTA_RecordWeight_ID@ @NotFound@";
			}
			
			
	}
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
		
		//	Valid Qty
		m_processMsg = validQtyToDeliver();
		if(m_processMsg != null)
			return DocAction.STATUS_Invalid;
		//	Verify Mandatory References
		if(getFTA_VehicleType_ID() == 0)
			m_processMsg = "@FTA_LoadOrder_ID@ @NotFound@";
		if(isSOTrx()) {
			if(getFTA_LoadOrder_ID() == 0)
				m_processMsg = "@FTA_LoadOrder_ID@ @NotFound@";
			else if(getFTA_RecordWeight_ID() == 0) {
				MFTALoadOrder loadOrder = new MFTALoadOrder(getCtx(), getFTA_LoadOrder_ID(), get_TrxName());
				if(loadOrder.isHandleRecordWeight())
					ValidRecordWeight();
			} else 
				m_processMsg = validMGReference();
		} else {
			if(getFTA_Farming_ID() == 0)
				m_processMsg = "@FTA_Farming_ID@ @NotFound@";
		}
		//	Return
		if(m_processMsg != null)
			return DocAction.STATUS_Invalid;
		//	Implicit Approval
		//if (!isApproved())
			//approveIt();
		log.info(toString());
		//
		
		//	Dixon Martinez 03/06/2014 08:58:00
		//	Add Support to complete exists guide outside
		if(isSOTrx()
				&& getExt_Guide() == null){
			m_processMsg = "@Ext_Guide@ @NotFound@";
			return DOCACTION_Invalidate;
		}
		
		//	End Dixon Martinez
		
		
		
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
		//setQtyToDeliver(Env.ZERO);

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
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(et.DocumentNo) " +
				"FROM FTA_EntryTicket et " +
				"WHERE et.DocStatus NOT IN('VO', 'IP') " +
				"AND et.FTA_MobilizationGuide_ID = ?", getFTA_MobilizationGuide_ID());
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @FTA_EntryTicket_ID@: " + m_ReferenceNo;
		return null;
	}
	
	/**
	 * Valid if exists another guide
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/01/2014, 13:53:44
	 * @return
	 * @return String
	 */
	private String validMGReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(mg.DocumentNo) " +
				"FROM FTA_MobilizationGuide mg " +
				//Dixon Martinez 23/04/2014 09:51:00
				//	Add Support for closed Load Order
				//	"WHERE mg.DocStatus NOT IN('VO', 'RE') " +
				"WHERE mg.DocStatus NOT IN('VO', 'RE','CL') " +
				//	End Dixon Martinez				
				"AND mg.FTA_LoadOrder_ID = ? AND mg.FTA_MobilizationGuide_ID != ? ", getFTA_LoadOrder_ID(), getFTA_MobilizationGuide_ID());
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @FTA_MobilizationGuide_ID@: " + m_ReferenceNo + " @Generate@ @from@ @FTA_LoadOrder_ID@";
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
			.append(Msg.translate(getCtx(),"QtyToDeliver")).append("=").append(getQtyToDeliver());
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
	 * Valid Quantity to Deliver
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/08/2013, 18:30:44
	 * @return
	 * @return String
	 */
	private String validQtyToDeliver(){
		if(getQtyToDeliver() == null
				|| getQtyToDeliver().equals(Env.ZERO))
			return "@QtyToDeliver@ = @0@";
		//	Just Farming
		if(getFTA_Farming_ID() == 0)
			return null;
		
		MClientInfo m_ClientInfo = MClientInfo.get(getCtx());
		if(m_ClientInfo.getC_UOM_Weight_ID() == 0)
			return "@C_UOM_Weight_ID@ = @NotFound@";
		
		MFTAFarming m_Farming = new MFTAFarming(getCtx(), getFTA_Farming_ID(), get_TrxName());
		//	Get Category
		MProduct product = MProduct.get(getCtx(), m_Farming.getCategory_ID());
		//	Rate Convert
		BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
				product.getM_Product_ID(), m_ClientInfo.getC_UOM_Weight_ID());
		//	Valid Conversion
		if(rate == null)
			return "@NoUOMConversion@";
		
		if(getQtyToDeliver().multiply(rate)
				.compareTo(getFTA_VehicleType().getLoadCapacity()) > 0) 
			return "@QtyToDeliver@ > @LoadCapacity@ @of@ @FTA_VehicleType_ID@";
		
		//	Max Warehouse Receipt
		BigDecimal m_MaxReceipt = DB.getSQLValueBD(get_TrxName(), "SELECT rc.Qty - SUM(COALESCE(mg.QtyToDeliver, 0)) " +
				"FROM FTA_ReceptionCapacity rc " +
				"LEFT JOIN FTA_MobilizationGuide mg ON(mg.M_Warehouse_ID = rc.M_Warehouse_ID) " +
				"WHERE rc.AD_Org_ID = ? " +
				"AND rc.M_Warehouse_ID = ? " +
				"AND rc.ValidFrom <= ? " +
				"AND rc.IsActive = 'Y' " +
				"AND mg.DateDoc >= rc.ValidFrom " +
				"AND mg.DateDoc<COALESCE((SELECT Min(rcs.ValidFrom) FROM FTA_ReceptionCapacity rcs WHERE rc.M_WareHouse_ID= rcs.M_WareHouse_ID AND rc.AD_Org_ID=rcs.AD_Org_ID AND rcs.ValidFrom > rc.ValidFrom),now()) " +
				"AND (mg.DocStatus IN('CO', 'CL') OR mg.DocStatus IS NULL) " +
				"GROUP BY rc.Qty, rc.ValidFrom " +
				"ORDER BY rc.ValidFrom DESC", getAD_Org_ID(), getM_Warehouse_ID(), getDateDoc());
		
		log.fine("MaxReceipt=" + m_MaxReceipt);
		//	Valid Max Receipt
		if(m_MaxReceipt != null
				&& m_MaxReceipt.compareTo(Env.ZERO) <= 0)
			return "@FTA_ReceptionCapacity_ID@ <= @0@";
		//	Valid Quantity To Deliver
		BigDecimal m_Qty = m_Farming.getQty();
		BigDecimal m_Re_EstimatedQty = m_Farming.getRe_EstimatedQty();
		//	
		if(m_Re_EstimatedQty == null)
			m_Re_EstimatedQty = Env.ZERO;
		if(m_Re_EstimatedQty.compareTo(m_Qty) >= 0)
			m_Re_EstimatedQty = m_Re_EstimatedQty.subtract(m_Qty);
		
		//	Quantity Delivered
		BigDecimal m_QtyDelivered = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(mg.QtyToDeliver) " +
				"FROM FTA_MobilizationGuide mg " +
				"WHERE mg.FTA_Farming_ID = ?" +
				"AND mg.DocStatus IN('CO', 'CL') ", 
				getFTA_Farming_ID());
		
		log.fine("WeightDelivered=" + m_QtyDelivered);
		
		//	Valid Quantity Delivered
		if(m_QtyDelivered == null)
			m_QtyDelivered = Env.ZERO;
		
		//	Max Quantity to Generate
		BigDecimal m_MaxQtyToDeliver = m_Qty.add(m_Re_EstimatedQty)
									.subtract(m_QtyDelivered);
		//	Valid To Deliver
		if(m_MaxQtyToDeliver.compareTo(Env.ZERO) <= 0)
			return "@Qty@ <= @QtyToDeliver@";
		//	Valid the Minimum to Generate
		if(m_MaxReceipt != null
				&& m_MaxReceipt.compareTo(m_MaxQtyToDeliver) <= 0)
			m_MaxQtyToDeliver = m_MaxReceipt;
		//	Verify Quantity to Deliver with Max to Deliver
		if(getQtyToDeliver().compareTo(m_MaxQtyToDeliver) > 0)
			return "@QtyToDeliver@ > (@EstimatedQty@ - @QtyDelivered@):"
					+ " \n@EstimatedQty@=" + m_Qty.doubleValue() 
					+ " \n@QtyDelivered@=" + m_QtyDelivered.doubleValue() 
					+ " \n@QtyToDeliver@=" + getQtyToDeliver().doubleValue();
		return null;
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
	
	@Override
	public String toString() {
		return "DocumentNo=" + getDocumentNo();
	}
	/*
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if(!newRecord
				&& (is_ValueChanged(X_FTA_LoadOrder.COLUMNNAME_FTA_LoadOrder_ID))){
			String sql ;
			int p_C_BPartner_ID = 0;
			
			sql = "SELECT o.C_BPartner_ID"
					+ " FROM C_Order o"
					+ " INNER JOIN C_OrderLine  ol ON (o.C_Order_ID = ol.C_Order_ID) "
					+ " INNER JOIN FTA_LoadOrderLine lol ON (ol.C_OrderLine_ID = lol.C_OrderLine_ID)"
					+ " INNER JOIN FTA_LoadOrder lo ON (lol.FTA_LoadOrder_ID = lo.FTA_LoadOrder_ID)"
					+ " INNER JOIN FTA_MobilizationGuide mg ON (lo.FTA_LoadOrder_ID = mg.FTA_LoadOrder_ID)"
					+ " WHERE"
					+ "		lo.OperationType = 'DBM'"
					+ "		AND mg.FTA_MobilizationGuide_ID = "
					+ this.get_ID(); 
			
			p_C_BPartner_ID = DB.getSQLValue(null, sql);
			
			if(p_C_BPartner_ID > 0)
				setC_BPartner_ID(p_C_BPartner_ID);
		}
		
		if(!newRecord
				|| (is_ValueChanged(X_FTA_Farming.COLUMNNAME_FTA_Farming_ID))){
			String sql ;
			int p_C_BPartner_ID = 0;
			
			sql = "SELECT f.C_BPartner_ID"
					+ " FROM FTA_Farm f"
					+ " INNER JOIN FTA_FarmDivision fd ON (f.FTA_Farm_ID = fd.FTA_Farm_ID)"
					+ " INNER JOIN FTA_Farming fa ON (fd.FTA_FarmDivision_ID = fa.FTA_FarmDivision_ID)"
					+ " INNER JOIN FTA_MobilizationGuide mg ON (fa.FTA_Farming_ID = mg.FTA_Farming_ID)"
					+ " WHERE"
					+ "		mg.FTA_MobilizationGuide_ID = "
					+ this.get_ID(); 
			
			p_C_BPartner_ID = DB.getSQLValue(null, sql);
			
			if(p_C_BPartner_ID > 0)
				setC_BPartner_ID(p_C_BPartner_ID);
		}

		return success;
	}	//	afterSave
*/

	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		boolean ok = super.beforeSave(newRecord);
		if(newRecord
				|| (is_ValueChanged(X_FTA_LoadOrder.COLUMNNAME_FTA_LoadOrder_ID))){
			String sql ;
			int p_C_BPartner_ID = 0;
			
			sql = "SELECT o.C_BPartner_ID"
					+ " FROM C_Order o"
					+ " INNER JOIN C_OrderLine  ol ON (o.C_Order_ID = ol.C_Order_ID) "
					+ " INNER JOIN FTA_LoadOrderLine lol ON (ol.C_OrderLine_ID = lol.C_OrderLine_ID)"
					+ " INNER JOIN FTA_LoadOrder lo ON (lol.FTA_LoadOrder_ID = lo.FTA_LoadOrder_ID)"
					+ " WHERE"
					+ "		lo.OperationType = ?"
					+ "		AND lo.FTA_LoadOrder_ID = "
					+ getFTA_LoadOrder_ID(); 
			
			p_C_BPartner_ID = DB.getSQLValue(get_TrxName(), 
					sql,X_FTA_LoadOrder.OPERATIONTYPE_DeliveryBulkMaterial);
			
			if(p_C_BPartner_ID > 0){
				setC_BPartner_ID(p_C_BPartner_ID);
			}
		}
		
		if(newRecord
				|| (is_ValueChanged(X_FTA_Farming.COLUMNNAME_FTA_Farming_ID))){
			String sql ;
			int p_C_BPartner_ID = 0;
			
			sql = "SELECT f.C_BPartner_ID"
					+ " FROM FTA_Farm f"
					+ " INNER JOIN FTA_FarmDivision fd ON (f.FTA_Farm_ID = fd.FTA_Farm_ID)"
					+ " INNER JOIN FTA_Farming fa ON (fd.FTA_FarmDivision_ID = fa.FTA_FarmDivision_ID)"
					+ " WHERE"
					+ "		fa.FTA_Farming_ID = "
					+ getFTA_Farming_ID(); 
			
			p_C_BPartner_ID = DB.getSQLValue(null, sql);
			
			if(p_C_BPartner_ID > 0){
				setC_BPartner_ID(p_C_BPartner_ID);
			}
		}

		return ok;
	}//	End beforeSave
	
}
