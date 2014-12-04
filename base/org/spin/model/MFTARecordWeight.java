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
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados, C.A.               *
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
import org.compiere.model.MAttributeSetInstance;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MLot;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.MUOMConversion;
import org.compiere.model.MWarehouse;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.model.X_M_InOut;
import org.compiere.model.X_M_Movement;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.eevolution.model.MDDOrder;
import org.eevolution.model.MDDOrderLine;

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

	/**	Current Business Partner				*/
	private int 		m_Current_BPartner_ID 	= 	0;
	/**	Current Movement						*/
	private MMovement 	m_Current_Movement 		= 	null;
	/**	Current Distribution Order				*/
	private int 		m_Current_DDOrder_ID	= 	0;
	/**	Distribution Order						*/
	private MDDOrder 	m_DD_Order 				= null;
	/** Created Records							*/
	private int 		m_Created 				= 0;
	
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
	/**	Chute Quality Analysis			*/
	private MFTAQualityAnalysis m_ChuteQualityAnalysis = null;
	/**	Event Type					*/
	private final String EVENTTYPE_RECEIPT 	= "EW";
	private final String EVENTTYPE_SHIPMENT = "OW";
	
	private BigDecimal m_Valideight = null;
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
		
		//	Valid Weight
		boolean isValidWeight = true;
		if(getNetWeight() == null
				|| getNetWeight().doubleValue() == 0)
				isValidWeight = false;
		
		//	Implicit Approval
		if (!isApproved())
			approveIt();
		
		//	Dixon Martinez 09/01/2014
		//	Adding Validation to not complete if no quality analysis chute
		//  Carlos Parada 2014-01-19 
		//  Adding Exlude Validation for Import Records
		if(getOperationType().equals(OPERATIONTYPE_RawMaterialReceipt) &&  !isI_IsImported() && isValidWeight){
			m_processMsg = validateChuteQualityAnalysis();
			if(m_processMsg != null) 
				return DocAction.STATUS_Invalid;
		}
		//	End Dixon Martinez
		//Carlos Parada 2014-01-16
		if ((getOperationType().equals(OPERATIONTYPE_RawMaterialReceipt)
				|| getOperationType().equals(OPERATIONTYPE_DeliveryBulkMaterial))
				&& isValidWeight)
			m_processMsg = calculatePayWeight();
		//End Carlos Parada
		
		if(m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		log.info(toString());
		if((getOperationType().equals(OPERATIONTYPE_RawMaterialReceipt) 
				|| getOperationType().equals(OPERATIONTYPE_DeliveryBulkMaterial)
				|| getOperationType().equals(OPERATIONTYPE_DeliveryFinishedProduct)
				|| getOperationType().equals(OPERATIONTYPE_ProductBulkReceipt))
				&& isValidWeight){
			//	Generate Material Receipt
			String msg = createInOut();
			if(m_processMsg != null)
				return DocAction.STATUS_Invalid;
			else
				m_processMsg = msg;
		}
		
		//	Dixon Martinez 2014-12-01
		//	Add support for generating inventory movements
		else if(getOperationType().equals(OPERATIONTYPE_MaterialOutputMovement)) {
			String msg = createMovement();
			if(m_processMsg != null)
				return DocAction.STATUS_Invalid;
			else
				m_processMsg = msg;
		}
		//	End Dixon Martinez
		
		//	Dixon Martinez 30/05/2014
		//	Add Support complete record weight with Shipment Guide
		if((getOperationType().equals(OPERATIONTYPE_DeliveryBulkMaterial)
				|| getOperationType().equals(OPERATIONTYPE_DeliveryFinishedProduct))
				&& isValidWeight){
			m_processMsg = validateShipmentGuide();
			if(m_processMsg != null) 
				return DocAction.STATUS_InProgress;
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
	 * Add Support complete record weight with Shipment Guide
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/05/2014, 15:21:38
	 * @return
	 * @return String
	 */
	private String validateShipmentGuide() {
		String sql = "SELECT mg.FTA_MobilizationGuide_ID"
				+ "	FROM FTA_RecordWeight rw"
				+ "	INNER JOIN FTA_MobilizationGuide mg ON (rw.FTA_LoadOrder_ID = mg.FTA_LoadOrder_ID)"
				+ "	WHERE"
				+ "		mg.DocStatus IN ('CO','CL')"
				+ "		AND mg.IsSotrx = 'Y'"
				+ "		AND rw.FTA_RecordWeight_ID=?;";
		
		int shipmentGuide_ID = DB.getSQLValue(get_TrxName(), sql, get_ID());
		if(shipmentGuide_ID > 0)
			return null;
		else
			return "@FTA_MobilizationGuide_ID@ @NotFound@";
	}

	/**
	 * Return Quality Analysis
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 09/01/2014, 18:33:07
	 * @param fta_RecordWeight_ID
	 * @return
	 * @return String
	 */
	private String validateChuteQualityAnalysis()
	{
		//	Yamel Senih 2014-01-10, 14:34:40
		//	Fixed error with Chute Quality Analysis
		MFTAQualityAnalysis cCQuality = getCurrentChuteQA(true);
		//	Valid Chute Quality Analysis
		if(cCQuality == null)			
			return "@FTA_QualityAnalysis_ID@ (@FTA_Chute_ID@) @NotFound@";
		//	End Yamel Senih
		return null;
	}

	/**
	 * Caluculate Payment Weight
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/10/2013, 11:54:02
	 * @return
	 * @return String
	 */
	private String calculatePayWeight(){
		MFTAQualityAnalysis qa = getQualityAnalysis();
		// Carlos Parada Valid When Quality Analysis is Null
		if (qa !=null)
		{
			//	
			MFTACategoryCalc [] m_CCArray = MFTACategoryCalc.getList(getCtx(), qa.getM_Product_ID(), 
					(isSOTrx()? EVENTTYPE_SHIPMENT: EVENTTYPE_RECEIPT), 
					get_TrxName());
			//	
			MAttributeSetInstance att = qa.getAttributeSetInstance();
			//	Valid Attribute Set Instance
			if(att == null)
				return "@M_AttributeSetInstance_ID@ @NotFound@";
			//	Valid Category Calc
			if(m_CCArray == null)
				return "@FTA_CategoryCalc_ID@ @NotFound@";
			
			//	Set Pay Weight to 0
			setPayWeight(Env.ZERO);
			
			//	Delete old
			DB.executeUpdate("DELETE FROM " 
								+ I_FTA_RecordWeightDetail.Table_Name 
								+ " WHERE " + I_FTA_RecordWeightDetail.COLUMNNAME_FTA_RecordWeight_ID 
								+ "=" + getFTA_RecordWeight_ID(), get_TrxName());
			//	Iterate
			int line = 10;
			for(MFTACategoryCalc m_CC : m_CCArray){
				//	Calculate Pay Weight
				BigDecimal m_PayWeight = m_CC.getPaidWeight(getNetWeight(), att,get_TrxName());
				//	Set to header
				if(m_CC.isPayWeight()){
					setPayWeight(m_PayWeight);
				} else {
					//	Set to Detail
					MFTARecordWeightDetail detail = new MFTARecordWeightDetail(getCtx(), 0, get_TrxName());
					detail.setFTA_RecordWeight_ID(getFTA_RecordWeight_ID());
					detail.setFTA_CategoryCalc_ID(m_CC.getFTA_CategoryCalc_ID());
					detail.setWeight(m_PayWeight);
					detail.setLine(line);
					detail.setProcessed(true);
					detail.saveEx();
					//	Add Line
					line += 10;
				}	
			}
		}
		else{
			setPayWeight(getNetWeight());
		}//
		return null;
	}
	
	/**
	 * Get Quality Analysis
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/10/2013, 10:44:52
	 * @param reQuery
	 * @return
	 * @return MFTAQualityAnalysis
	 */
	public MFTAQualityAnalysis getQualityAnalysis(){
		if(getOperationType().equals(OPERATIONTYPE_RawMaterialReceipt) 
				|| getOperationType().equals(OPERATIONTYPE_ProductBulkReceipt)) {
			if(getFTA_QualityAnalysis_ID() != 0)
				m_QualityAnalysis = new MFTAQualityAnalysis(getCtx(), getFTA_QualityAnalysis_ID(), get_TrxName());
			else
				m_QualityAnalysis = null;
		}
		else if (getOperationType().equals(OPERATIONTYPE_DeliveryBulkMaterial)){
			m_QualityAnalysis = new Query(getCtx(),MFTAQualityAnalysis.Table_Name, "FTA_RecordWeight_ID=? AND DocStatus IN (?,?)", get_TrxName()).setParameters(getFTA_RecordWeight_ID(),DOCSTATUS_Completed,DOCSTATUS_Closed).first(); 
		}
		//	Return
		return m_QualityAnalysis;
	}
	
	/**
	 * Get Chute Quality Analysis
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/01/2014, 11:23:49
	 * @param reQuery
	 * @return
	 * @return MFTAQualityAnalysis
	 */
	public MFTAQualityAnalysis getCurrentChuteQA(boolean reQuery){
		if(reQuery
				|| m_ChuteQualityAnalysis == null) {
			int m_ChuteQualityAnalysis_ID = DB.getSQLValue(get_TrxName(), "SELECT qa.FTA_QualityAnalysis_ID " +
					"FROM FTA_QualityAnalysis qa " +
					"WHERE qa.AnalysisType = '" + X_FTA_QualityAnalysis.ANALYSISTYPE_ChuteAnalysis + "' " + 
					"AND qa.FTA_RecordWeight_ID = ? " +
					"AND qa.Orig_QualityAnalysis_ID = " + getFTA_QualityAnalysis_ID() + " " +  
					"AND qa.DocStatus IN('CO', 'CL')", getFTA_RecordWeight_ID());
			if(m_ChuteQualityAnalysis_ID > 0)
				m_ChuteQualityAnalysis = new MFTAQualityAnalysis(getCtx(), m_ChuteQualityAnalysis_ID, get_TrxName());
			else
				m_ChuteQualityAnalysis = null;
		}
		//	Return
		return m_ChuteQualityAnalysis;
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
		//	
		if(getOperationType().equals(OPERATIONTYPE_DeliveryBulkMaterial)
				|| getOperationType().equals(OPERATIONTYPE_DeliveryFinishedProduct)
				|| getOperationType().equals(OPERATIONTYPE_MaterialOutputMovement)){
			//	Valid QualityAnalysis Reference
			m_processMsg = validQAReference();
			if (m_processMsg != null)
				return false;
			//	Valid Mobilization Guide Reference
			m_processMsg = validMGReference();
			if (m_processMsg != null)
				return false;
		} else if(getOperationType().equals(OPERATIONTYPE_RawMaterialReceipt)){
			//	Valid QualityAnalysis Reference
			m_processMsg = validQAReference();
			if (m_processMsg != null)
				return false;
		}
		//	Reverse only M_InOut record
		if(!getOperationType().equals(OPERATIONTYPE_MaterialInputMovement)
				&& !getOperationType().equals(OPERATIONTYPE_MaterialOutputMovement)
				&& !getOperationType().equals(OPERATIONTYPE_OtherRecordWeight)){
			//	Reverse In/Out
			m_processMsg = reverseInOut();
			if (m_processMsg != null)
				return false;
		}//	Dixon Martinez 2014-12-02
		//	Add support for reactivate Movement
		else if(getOperationType().equals(OPERATIONTYPE_MaterialOutputMovement)){
			//	Reverse Movement
			m_processMsg = reverseMovement();
			if (m_processMsg != null)
				return false;
		}
		//	End Dixon Martinez
		
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
		//	Dixon Martinez 23/04/2014 09:51:00
		//	Add Support for closed Load Order 
		
		setProcessed(true);
		setDocAction(DOCACTION_None);
		
		//	End Dixon Martinez

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
		//m_processMsg = validReference();
		//if(m_processMsg != null)
			//return false;
		
		//	Dixon Martinez 2014-02-20 16:57:40
		//	Validate referenced in Material Imput/Output Movement
		
		//	
		//	Reverse only M_InOut record
		if(!getOperationType().equals(OPERATIONTYPE_MaterialInputMovement)
				&& !getOperationType().equals(OPERATIONTYPE_MaterialOutputMovement)
				&& !getOperationType().equals(OPERATIONTYPE_OtherRecordWeight)){
			//	Reverse In/Out
			//m_processMsg = validInOutReference();
			//if (m_processMsg != null)
				//return false;
			m_processMsg = reverseInOut();
			if (m_processMsg != null)
				return false;
		}

		//	End Dixon Martinez
		//	Dixon Martinez 2014-12-02
		//	Add support for reactivate Movement
		else if(getOperationType().equals(OPERATIONTYPE_MaterialOutputMovement)){
			//	Reverse Movement
			m_processMsg = reverseMovement();
			if (m_processMsg != null)
				return false;
		}
		//	End Dixon Martinez
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
	private String validInOutReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(re.DocumentNo) " +
				"FROM M_InOut re " +
				"WHERE re.DocStatus NOT IN('VO', 'RE') " +
				"AND re.FTA_RecordWeight_ID = ?", getFTA_RecordWeight_ID());
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @M_InOut_ID@: " + m_ReferenceNo;
		return null;
	}
	
	
	/**
	 * Valid Mobilization Guide reference
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/01/2014, 18:40:22
	 * @return
	 * @return String
	 */
	private String validMGReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(mg.DocumentNo) " +
				"FROM FTA_MobilizationGuide mg " +
				"WHERE mg.DocStatus NOT IN('VO', 'RE') " +
				"AND mg.FTA_RecordWeight_ID = ?", getFTA_RecordWeight_ID());
		if(m_ReferenceNo != null) 
			return "@SQLErrorReferenced@ @FTA_MobilizationGuide_ID@: " + m_ReferenceNo;
		return null;
	}
	
	/**
	 * Valid Reference in Quality Analysis
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/01/2014, 12:13:56
	 * @return
	 * @return String
	 */
	private String validQAReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(qa.DocumentNo) " +
				"FROM FTA_QualityAnalysis qa " +
				"WHERE qa.DocStatus NOT IN('VO', 'RE') " +
				"AND qa.FTA_RecordWeight_ID = ?", getFTA_RecordWeight_ID());
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @FTA_QualityAnalysis_ID@: " + m_ReferenceNo;
		return null;
	}
	
	/**
	 * Reverse Receipt / Delivery
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/10/2013, 20:00:37
	 * @return
	 * @return String
	 */
	private String reverseInOut(){
		//	List 
		List<MInOut> list = new Query(getCtx(), MInOut.Table_Name, "FTA_RecordWeight_ID=? AND DocStatus IN('CO', 'CL')", get_TrxName())
		.setParameters(getFTA_RecordWeight_ID())
		.setOrderBy("DocStatus")
		.list();
		//	
		for (MInOut mInOut : list) {
			if(mInOut.getDocStatus().equals(X_M_InOut.DOCSTATUS_Closed))
				return "@M_InOut_ID@ @Closed@";
			mInOut.setDocAction(X_M_InOut.DOCACTION_Reverse_Correct);
			mInOut.processIt(X_M_InOut.DOCACTION_Reverse_Correct);
			mInOut.saveEx();
		}
		//	
		return null;
	}
	
	/**
	 * Reverse movement
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 2/12/2014, 20:11:23
	 * @return
	 * @return String
	 */
	private String reverseMovement(){
		//	List 
		List<MMovement> lists = new Query(getCtx(), MMovement.Table_Name, "FTA_RecordWeight_ID = ? AND DocStatus IN ('CO','CL')" , get_TrxName())
		.setParameters(getFTA_RecordWeight_ID())
		.setOrderBy("DocStatus")
		.list();
	
		for (MMovement mMovement : lists) {
			
			if(mMovement.getDocStatus().equals(X_M_Movement.DOCSTATUS_Closed))
				throw new AdempiereException("@FTA_RecordWeight_ID@ @Referenced@ --> @M_Movement_ID@ " + mMovement.getDocumentNo() + 
						"@DocStatus@ " + X_M_Movement.DOCSTATUS_Closed);
			mMovement.set_ValueOfColumn("FTA_RecordWeight_ID", null);
			mMovement.setDocAction(X_M_Movement.DOCACTION_Reverse_Correct);
			mMovement.processIt(X_M_Movement.DOCACTION_Reverse_Correct);
			mMovement.saveEx();
		}
		//	
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
					//	Dixon Martinez 23/04/2014 09:51:00
					//	Add Support for closed Record Weight

					//	options[index++] = DocumentEngine.ACTION_Void;
					//	options[index++] = DocumentEngine.ACTION_ReActivate;
					
					options[index++] = DocumentEngine.ACTION_Void;
					options[index++] = DocumentEngine.ACTION_ReActivate;
					options[index++] = DocumentEngine.ACTION_Close;
					
				}else if (docStatus.equals(DocumentEngine.STATUS_Closed))
					options[index++] = DocumentEngine.ACTION_None;
					
				//	End Dixon Martinez
			
		}
		
		return index;
	}
	
	@Override
	
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		if(newRecord)
			setIsPrinted(false);
		//	Dixon Martinez 20/12/2013 09:29
		//	Add validation for trying to save the registry do not allow weight if the load order or the analysis of quality are null. 
		
		// Msg  display 
		String msg = null;
		
		//	Yamel Senih 2013-12-19: 17:04:02
		//	Valid Operation Type
		if(getOperationType() == null)
			msg = "@FTA_EntryTicket_ID@ @NotFound@";
		//	End Yamel Senih
		
		//	Waditza Rivas 2014-05-08 17:07:02
		//	Valid Entry ticket 
		if(getFTA_EntryTicket() != null)
		{
			msg = validETReference();
		    if(msg != null)
			throw new AdempiereException(msg);
		}
		//	End Waditza Rivas	
		if(getOperationType()
				.equals(X_FTA_EntryTicket.OPERATIONTYPE_DeliveryBulkMaterial)
				||	getOperationType()
						.equals(X_FTA_EntryTicket.OPERATIONTYPE_DeliveryFinishedProduct)
						||	getOperationType()
								.equals(X_FTA_EntryTicket.OPERATIONTYPE_MaterialOutputMovement)){//	If Operation Type In Delivery Bulk Material, 
																								 //	Delivery Finished Product Or Material Output 
																								 //	Movement and Load Order equals 0 view msg 
																								 //	Load Order not found.
			if(getFTA_LoadOrder_ID() == 0)
				msg = "@FTA_LoadOrder_ID@ @NotFound@";
		}else if(//2014-01-16 Carlos Parada 
				 //Comment Validation For Operation Tipe Product Bulk Receipt
				/*getOperationType()
					.equals(X_FTA_EntryTicket.OPERATIONTYPE_ProductBulkReceipt)
					|| */getOperationType()
							.equals(X_FTA_EntryTicket.OPERATIONTYPE_RawMaterialReceipt)){//	Id Operation Type In Product Bulk Receipt and Raw Material
			// Receipt and Load Order equals 0 view msg Quality Analysis not found.
			if(getFTA_QualityAnalysis_ID() == 0)
				msg = "@FTA_QualityAnalysis_ID@ @NotFound@";
		}
		
		//	If msg is distinct of null display Adempiere Exception with msg
		if(msg != null)
			throw new AdempiereException(msg);
		//	End Dixon Martinez
		
		//	Set Sales Transaction
		if(getOperationType().equals(X_FTA_EntryTicket.OPERATIONTYPE_RawMaterialReceipt)
				|| getOperationType().equals(X_FTA_EntryTicket.OPERATIONTYPE_ProductBulkReceipt)
				|| getOperationType().equals(X_FTA_EntryTicket.OPERATIONTYPE_ReceiptMoreThanOneProduct)
				|| getOperationType().equals(X_FTA_EntryTicket.OPERATIONTYPE_MaterialInputMovement))
			setIsSOTrx(false);
		else if(getOperationType().equals(X_FTA_EntryTicket.OPERATIONTYPE_DeliveryBulkMaterial)
				|| getOperationType().equals(X_FTA_EntryTicket.OPERATIONTYPE_DeliveryFinishedProduct)
				|| getOperationType().equals(X_FTA_EntryTicket.OPERATIONTYPE_MaterialOutputMovement))
			setIsSOTrx(true);
		//	
		return true;
	}
	/**
	 * Add support for generating inventory movements
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 2/12/2014, 20:01:07
	 * @return
	 * @return String
	 */
	private String createMovement() {
		StringBuffer msg = new StringBuffer();
		// Get Orders From Load Order
		MFTALoadOrder lo = null;
		lo = (MFTALoadOrder) getFTA_LoadOrder();
		
		if (lo == null){
			m_processMsg = "@FTA_LoadOrder_ID@ @NotFound@";
			return null;
		}
		// Get Lines from Load Order
		MFTALoadOrderLine[] lol = lo.getLines(true);
		// Create Movements
		for (int i=0; i <lol.length;i++) {
			//Get Order and Line
			MProduct m_Product = null;
			if (lol[i].getDD_OrderLine_ID()!=0){
				m_DD_Order =(MDDOrder) lol[i].getDD_OrderLine().getDD_Order();
				m_Product = (MProduct)lol[i].getDD_OrderLine().getM_Product();
			}
			MDDOrderLine m_DD_OrderLine = (MDDOrderLine) lol[i].getDD_OrderLine();
			if(m_DD_Order == null){
				m_processMsg = "@DD_Order_ID@ @NotFound@";
				return null;
			}
			if (m_Product==null){
				m_processMsg = "@M_Product_ID@ @NotFound@";
				return null;
			}
			if(m_DD_OrderLine == null) {
				m_processMsg = "@DD_OrderLine_ID@ @NotFound@";
				return null;
			}
			if(m_Current_BPartner_ID != m_DD_Order.getC_BPartner_ID()
					|| m_Current_DDOrder_ID != m_DD_Order.get_ID()){
				//	Complete Previous Movements
				completeMovement();
				m_Current_BPartner_ID = m_DD_Order.getC_BPartner_ID();
				m_Current_DDOrder_ID = m_DD_Order.get_ID();
				//	Create Movement
				m_Current_Movement = new MMovement(getCtx(), 0, get_TrxName());
				m_Current_Movement.setDateReceived(getDateDoc());
				//	Set Organization
				m_Current_Movement.setAD_Org_ID(getAD_Org_ID());
				m_Current_Movement.setDD_Order_ID(m_DD_Order.get_ID());
				if(m_DD_Order.getC_BPartner_ID() > 0){
					m_Current_Movement.setC_BPartner_ID(m_DD_Order.getC_BPartner_ID());
					m_Current_Movement.setC_BPartner_Location_ID(m_DD_Order.getC_BPartner_Location_ID());
					m_Current_Movement.saveEx();
				}
				m_Current_Movement.set_ValueOfColumn("FTA_RecordWeight_ID", getFTA_RecordWeight_ID());
				m_Current_Movement.saveEx();
				
				MDocType m_DocType = (MDocType) m_Current_Movement.getC_DocType();
				if(m_DocType.get_ValueAsBoolean("IsInTransit")) {
					m_Current_Movement.setIsInTransit(true);
					m_Current_Movement.saveEx();
				}
				
				//	Initialize Message
				if(msg.length() > 0)
					msg.append(" - " + m_Current_Movement.getDocumentNo());
				else
					msg.append(m_Current_Movement.getDocumentNo());
			}
			//	Valid exist Movement
			if(m_Current_Movement != null){
				//	Create Line
				MMovementLine m_MovementLine = new MMovementLine(m_Current_Movement);
				//	Set Product
				m_MovementLine.setM_Product_ID(m_Product.getM_Product_ID());
				m_MovementLine.setM_Locator_ID(m_DD_OrderLine.getM_Locator_ID());
				m_MovementLine.setM_LocatorTo_ID(m_DD_OrderLine.getM_LocatorTo_ID());
				if(m_DD_OrderLine.getM_AttributeSetInstance_ID() > 0)
					m_MovementLine.setM_AttributeSetInstance_ID(m_DD_OrderLine.getM_AttributeSetInstance_ID());
				if(m_DD_OrderLine.getM_AttributeSetInstanceTo_ID() > 0)
					m_MovementLine.setM_AttributeSetInstanceTo_ID(m_DD_OrderLine.getM_AttributeSetInstanceTo_ID());
				m_MovementLine.setMovementQty(m_DD_OrderLine.getQtyEntered());
				m_MovementLine.setDD_OrderLine_ID(m_DD_OrderLine.get_ID());
				m_MovementLine.setM_Movement_ID(m_Current_Movement.get_ID());
				m_MovementLine.saveEx();
				lol[i].setM_MovementLine_ID(m_MovementLine.get_ID());
				lol[i].saveEx();
			}
			
		}// Create 
		//	Complete Movement
		completeMovement();
		lo.setIsWeightRegister(true);
		lo.save(get_TrxName());
		return "@Created@ " + m_Created + msg.toString();
	}

	/**
	 * Complete Document
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martine</a> 21/11/2014, 11:09:54
	 * @return void
	 */
	private void completeMovement(){
		if(m_Current_Movement != null) {
				if(m_Current_Movement.getDocStatus().equals(X_M_Movement.DOCSTATUS_Drafted)) {
					m_Current_Movement.setDocAction(X_M_Movement.DOCACTION_Complete);
					if(!m_Current_Movement.processIt(X_M_Movement.DOCACTION_Complete))
						throw new AdempiereException(m_Current_Movement.getProcessMsg());
					m_Current_Movement.saveEx();
					//	Created
					m_Created ++;
				}
		}
	}
	
	/**
	 * Create a Material Receipt from the Record Weight
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/09/2013, 11:02:53
	 * @param order
	 * @return
	 * @return String
	 */
	
	private String createInOut() {
		//	this yet generated
		if(validInOutReference() != null)
			return "";
		//	
		
		//DocumentNo 
		String l_DocumentNo = ""; 
		//	Carlos Parada 2014-01-16
		//	Create Material Receipt or Shipment by Operation Type
		if (getOperationType().equals(OPERATIONTYPE_RawMaterialReceipt))
		{
			int m_FTA_Farming_ID = DB.getSQLValue(get_TrxName(), "SELECT fr.FTA_Farming_ID " +
					"FROM FTA_Farming fr " +
					"INNER JOIN FTA_MobilizationGuide mg ON(mg.FTA_Farming_ID = fr.FTA_Farming_ID) " +
					"INNER JOIN FTA_EntryTicket et ON(et.FTA_MobilizationGuide_ID = mg.FTA_MobilizationGuide_ID) " +
					"WHERE et.FTA_EntryTicket_ID=?", getFTA_EntryTicket_ID());
			
			MFTAFarming m_Farming = new MFTAFarming(getCtx(), m_FTA_Farming_ID, get_TrxName());
			//	Get Order and Line
			MOrderLine oLine = (MOrderLine) m_Farming.getC_OrderLine();
			MOrder order = oLine.getParent();
			
			if(order == null){
				m_processMsg = "@C_Order_ID@ @NotFound@";
				return null;
			}
			
			MDocType m_DocType = MDocType.get(getCtx(), order.getC_DocType_ID());
			
			if(m_DocType.getC_DocTypeShipment_ID() == 0){
				m_processMsg = "@C_DocTypeShipment_ID@ @NotFound@";
				return null;
			}
			//	Create Receipt
			MInOut m_Receipt = new MInOut (order, m_DocType.getC_DocTypeShipment_ID(), getDateForDocument());			
			m_Receipt.setDateAcct(getDateForDocument());
			//	Set New Organization and warehouse
			m_Receipt.setAD_Org_ID(getAD_Org_ID());
			m_Receipt.setAD_OrgTrx_ID(getAD_Org_ID());
			//	Get Chute
			MFTAChute chute = null;
			int m_M_Warehouse_ID = 0;
			int m_M_Locator_ID = 0;
			//	Get Chute from Table or Default
			if(getFTA_Chute_ID() != 0)
				chute = new MFTAChute(getCtx(), getFTA_Chute_ID(), get_TableName());
			else {
				int m_FTA_Chute_ID = DB.getSQLValue(get_TrxName(), "SELECT c.FTA_Chute_ID " +
						"FROM FTA_Chute c " +
						"WHERE AD_Org_ID = ? " +
						"ORDER BY IsDefault DESC",getAD_Org_ID());
				//	Search Chute
				if(m_FTA_Chute_ID > 0)
					chute = new MFTAChute(getCtx(), m_FTA_Chute_ID, get_TableName());
			}
			//	Set Warehouse and Locator
			if(chute != null) {
				m_M_Warehouse_ID = chute.getM_Warehouse_ID();
				m_M_Locator_ID = chute.getM_Locator_ID();
			}
			else { 
				m_M_Warehouse_ID = Env.getContextAsInt(getCtx(), "#M_Warehouse_ID");
			}
			//	Set Warehouse
			m_Receipt.setM_Warehouse_ID(m_M_Warehouse_ID);
			//	Set Farmer Credit and Record Weight
			int m_FTA_FarmerCredit_ID = m_Farming.getFTA_FarmerCredit_ID();
			if(m_FTA_FarmerCredit_ID == 0) {
				m_processMsg = "@FTA_FarmerCredit_ID@ @NotFound@";
				return null;
			}
				
			m_Receipt.set_ValueOfColumn("FTA_FarmerCredit_ID", m_Farming.getFTA_FarmerCredit_ID());
			m_Receipt.set_ValueOfColumn("FTA_RecordWeight_ID", getFTA_RecordWeight_ID());
			//	Save
			m_Receipt.saveEx(get_TrxName());
			//
			MInOutLine ioLine = new MInOutLine(m_Receipt);
			
			MProduct product = MProduct.get(getCtx(), oLine.getM_Product_ID());
			//	Rate Convert
			BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
					product.getM_Product_ID(), getC_UOM_ID());
			
			if(rate == null){
				m_processMsg = "@NoUOMConversion@";
				return null;
			}
			
			//	Carlos Parada Change for Get Valid Weight
			//	BigDecimal m_MovementQty = getNetWeight().multiply(rate);
			BigDecimal m_MovementQty = getValidWeight(false).multiply(rate);
			//	End Carlos Parada
			
			//	Set Product
			ioLine.setProduct(product);
			//	Set Quality Analysis
			MFTAQualityAnalysis qa = getQualityAnalysis();
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
			if(m_M_Locator_ID != 0)
				ioLine.setM_Locator_ID(m_M_Locator_ID);
			else
				ioLine.setM_Locator_ID(m_MovementQty);
			//	Set Quantity
			ioLine.setQty(m_MovementQty);
			ioLine.saveEx(get_TrxName());
			//	Manually Process Shipment
			m_Receipt.processIt(DocAction.ACTION_Complete);
			m_Receipt.saveEx(get_TrxName());
			
			l_DocumentNo ="@M_InOut_ID@: " + m_Receipt.getDocumentNo();
		}
		//	Product Bulk Receipt
		else if (getOperationType().equals(OPERATIONTYPE_ProductBulkReceipt))
		{
			//	Get Order and Line
			MOrder order = null;
			MAttributeSetInstance asi = null;
			MProduct product = (MProduct)getM_Product();
			MFTAEntryTicket et = new MFTAEntryTicket(getCtx(), getFTA_EntryTicket_ID(), get_TableName());
			if (et.getC_Order_ID()!=0)
				order =(MOrder) et.getC_Order();
			
			if(order == null){
				m_processMsg = "@C_Order_ID@ @NotFound@";
				return null;
			}
			
			if (product==null){
				m_processMsg = "@M_Product_ID@ @NotFound@";
				return null;
			}
			
			MDocType m_DocType = MDocType.get(getCtx(), order.getC_DocType_ID());
			
			if(m_DocType.getC_DocTypeShipment_ID() == 0)
			{
				m_processMsg = "@C_DocTypeShipment_ID@ @NotFound@";
				return null;
			}
			//	Create Receipt
			MInOut m_Receipt = new MInOut (order, m_DocType.getC_DocTypeShipment_ID(), getDateForDocument());
			m_Receipt.setDateAcct(getDateForDocument());
			//	Set New Organization and warehouse
			m_Receipt.setAD_Org_ID(getAD_Org_ID());
			m_Receipt.setAD_OrgTrx_ID(getAD_Org_ID());
			//	Set Warehouse
			m_Receipt.setM_Warehouse_ID(order.getM_Warehouse_ID());
			//	Set Farmer Credit and Record Weight
			m_Receipt.set_ValueOfColumn("FTA_RecordWeight_ID", getFTA_RecordWeight_ID());
			//	Save
			m_Receipt.saveEx(get_TrxName());
			//
			MInOutLine ioLine = new MInOutLine(m_Receipt);
			
			//	Rate Convert
			BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
					product.getM_Product_ID(), getC_UOM_ID());
			
			if(rate == null){
				m_processMsg = "@NoUOMConversion@";
				return null;
			}
			
			//	Carlos Parada Change for Get Valid Weight
			//	BigDecimal m_MovementQty = getNetWeight().multiply(rate);
			BigDecimal m_MovementQty = getValidWeight(false).multiply(rate);
			//End Carlos Parada
			//	Set Product
			ioLine.setProduct(product);
			//	Set Quality Analysis
			MFTAQualityAnalysis qa = getQualityAnalysis();
			//	Set Instance
			if (qa != null)
				asi = new MAttributeSetInstance(getCtx(), qa.getQualityAnalysis_ID(), get_TrxName());

			if (asi != null)
				ioLine.setM_AttributeSetInstance_ID(asi.getM_AttributeSetInstance_ID());
			ioLine.setM_Locator_ID(m_MovementQty);
			MOrderLine[] orderLines = order.getLines("AND M_Product_ID=" + product.getM_Product_ID(), "");
			for (int i=0; i > orderLines.length;i++)
				ioLine.setC_OrderLine_ID(orderLines[i].getC_OrderLine_ID());
			//	Set Quantity
			ioLine.setQty(m_MovementQty);
			ioLine.saveEx(get_TrxName());
			//	Manually Process Shipment
			m_Receipt.processIt(DocAction.ACTION_Complete);
			m_Receipt.saveEx(get_TrxName());
			
			l_DocumentNo = "@M_InOut_ID@: " + m_Receipt.getDocumentNo();
		}
		//	Delivery Bulk Material
		else if (getOperationType().equals(OPERATIONTYPE_DeliveryBulkMaterial))
		{
			// Get Orders From Load Order
			MFTALoadOrder lo = null;
			lo = (MFTALoadOrder) getFTA_LoadOrder();
			
			if (lo == null){
				m_processMsg = "@FTA_LoadOrder_ID@ @NotFound@";
				return null;
			}
			// Get Lines from Load Order
			MFTALoadOrderLine[] lol = lo.getLines(true);
			
			BigDecimal m_AcumWeight = Env.ZERO;
			BigDecimal m_TotalWeight = Env.ZERO;
			// Create Shipments
			for (int i=0; i <lol.length;i++){
				
				if (m_AcumWeight.compareTo(m_TotalWeight) == 1)
					break;
				//Get Order and Line
				MOrder order = null;
				MAttributeSetInstance asi = null;
				MProduct product = null;
				if (lol[i].getC_OrderLine_ID()!=0){
					order =(MOrder) lol[i].getC_OrderLine().getC_Order();
					product = (MProduct)lol[i].getC_OrderLine().getM_Product();
				}
				if(order == null){
					m_processMsg = "@C_Order_ID@ @NotFound@";
					return null;
				}
				
				if (product==null){
					m_processMsg = "@M_Product_ID@ @NotFound@";
					return null;
				}
				
				MDocType m_DocType = MDocType.get(getCtx(), order.getC_DocType_ID());
				
				if(m_DocType.getC_DocTypeShipment_ID() == 0){
					m_processMsg = "@C_DocTypeShipment_ID@ @NotFound@";
					return null;
				}
				
				//	Create Receipt
				MInOut m_Receipt = new MInOut (order, m_DocType.getC_DocTypeShipment_ID(), getDateForDocument());
				m_Receipt.setDateAcct(getDateForDocument());
				//	Set New Organization and warehouse
				m_Receipt.setAD_Org_ID(getAD_Org_ID());
				m_Receipt.setAD_OrgTrx_ID(getAD_Org_ID());
				//	Set Warehouse
				m_Receipt.setM_Warehouse_ID(order.getM_Warehouse_ID());
				//	Set Farmer Credit and Record Weight
				m_Receipt.set_ValueOfColumn("FTA_RecordWeight_ID", getFTA_RecordWeight_ID());
				//	Save
				m_Receipt.saveEx(get_TrxName());
				//
				MInOutLine ioLine = new MInOutLine(m_Receipt);
				
				//	Rate Convert
				BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
						product.getM_Product_ID(), getC_UOM_ID());
				
				if(rate == null){
					m_processMsg = "@NoUOMConversion@";
					return null;
				}

				if (m_TotalWeight == Env.ZERO)
					m_TotalWeight = getValidWeight(false).multiply(rate);
					
				//BigDecimal m_MovementQty = (!getPayWeight().equals(Env.ZERO)?getPayWeight().multiply(rate):getNetWeight().multiply(rate));
				BigDecimal m_MovementQty =lol[i].getQty().multiply(rate);
				
				if (lol.length == 1)
					m_MovementQty = getValidWeight(false).multiply(rate);
				else{
					m_AcumWeight = m_AcumWeight.add(m_MovementQty);
					if (m_AcumWeight.compareTo(getValidWeight(false).multiply(rate)) == 1)
						m_MovementQty = m_MovementQty.subtract(m_AcumWeight.subtract(getValidWeight(false).multiply(rate)));
					else if (m_AcumWeight.compareTo(getValidWeight(false).multiply(rate)) == -1)
						m_MovementQty = m_MovementQty.add(getValidWeight(false).multiply(rate).subtract(m_AcumWeight));
				}
				
				
				//	Set Product
				ioLine.setProduct(product);
				//	Set Quality Analysis
				
				MFTAQualityAnalysis qa = getQualityAnalysis();
				//	Set Instance
				if (qa != null)
					asi = new MAttributeSetInstance(getCtx(), qa.getQualityAnalysis_ID(), get_TrxName());

				if (asi != null)
					ioLine.setM_AttributeSetInstance_ID(asi.getM_AttributeSetInstance_ID());
				
				ioLine.setM_Locator_ID(m_MovementQty);
				ioLine.setC_OrderLine_ID(lol[i].getC_OrderLine_ID());
				
				//	Set Quantity
				ioLine.setQty(m_MovementQty);
				ioLine.saveEx(get_TrxName());
				//	Manually Process Shipment
				m_Receipt.processIt(DocAction.ACTION_Complete);
				m_Receipt.saveEx(get_TrxName());
				
				lol[i].setConfirmedQty(m_MovementQty);
				lol[i].setConfirmedWeight(getValidWeight(false));
				lol[i].setM_InOutLine_ID(ioLine.getM_InOutLine_ID());
				lol[i].saveEx(get_TrxName());
				
				l_DocumentNo = " - " + l_DocumentNo + "@M_InOut_ID@: " + m_Receipt.getDocumentNo();

			}// Create Shipments
			
			//Carlos Parada Set Delivered And Weight Registered
			
			lo.setIsDelivered(true);
			lo.setIsWeightRegister(true);
			lo.save(get_TrxName());
			// End Carlos Parada
				
		}
		//	Delivery Finished Product
		else if (getOperationType().equals(OPERATIONTYPE_DeliveryFinishedProduct)) {
			//	Crate Shipments
			l_DocumentNo = createShipments();
		}
		return l_DocumentNo;
	}	//	createMaterialReceipt
	
	/**
	 * Create Shipment from Record Weight
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 2/12/2014, 20:18:42
	 * @return
	 * @return String
	 */
	private String createShipments(){
		// Get Orders From Load Order
		MFTALoadOrder lo = (MFTALoadOrder) getFTA_LoadOrder();
		//	
		if (lo == null){
			m_processMsg = "@FTA_LoadOrder_ID@ @NotFound@";
			return null;
		}
		// Get Lines from Load Order
		MFTALoadOrderLine[] lines = lo.getLinesForInOut();
		//	Current Values
		int m_Current_BPartner_ID = 0;
		int m_Current_Warehouse_ID = 0;
		MInOut m_Current_Shipment = null;
		StringBuffer msg = new StringBuffer();
		int m_Created = 0;
		//	
		for(MFTALoadOrderLine line: lines) {
			//	Valid Document Order and Business Partner
			MOrderLine oLine = (MOrderLine) line.getC_OrderLine();
			//	
			if (m_Current_BPartner_ID != oLine.getC_BPartner_ID()
					|| m_Current_Warehouse_ID != oLine.getM_Warehouse_ID()) {
				//	Complete Previous Shipment
				completeShipment(m_Current_Shipment);
				//	Initialize Order and 
				m_Current_Warehouse_ID 	= oLine.getM_Warehouse_ID();
				m_Current_BPartner_ID 	= oLine.getC_BPartner_ID();
				//	Get Warehouse
				MWarehouse warehouse = MWarehouse.get(getCtx(), m_Current_Warehouse_ID, get_TrxName());
				//	Valid Purchase Order and Business Partner
				if(oLine.getC_Order_ID() == 0)
					throw new AdempiereException("@C_Order_ID@ @NotFound@");
				if(m_Current_BPartner_ID == 0)
					throw new AdempiereException("@C_BPartner_ID@ @NotFound@");
				//	Create Order
				MOrder order = new MOrder(getCtx(), oLine.getC_Order_ID(), get_TrxName());
				//Create Shipment From Order
				m_Current_Shipment = new MInOut(order, 0, getDateForDocument());
				m_Current_Shipment.setDateAcct(getDateForDocument());
				m_Current_Shipment.setAD_Org_ID(warehouse.getAD_Org_ID());
				m_Current_Shipment.setAD_OrgTrx_ID(warehouse.getAD_Org_ID());
				m_Current_Shipment.setC_BPartner_ID(m_Current_BPartner_ID);
				//	Set Warehouse
				m_Current_Shipment.setM_Warehouse_ID(m_Current_Warehouse_ID);
				m_Current_Shipment.setDocStatus(X_M_InOut.DOCSTATUS_Drafted);
				m_Current_Shipment.saveEx(get_TrxName());
				//	Add to Counter
				m_Created++;
				//	Initialize Message
				if(msg.length() > 0)
					msg.append(" - " + m_Current_Shipment.getDocumentNo());
				else
					msg.append(m_Current_Shipment.getDocumentNo());					
			}
			//	Shipment Created?
			if (m_Current_Shipment != null) {
				//	Get Values from Result Set
				BigDecimal m_Qty = line.getQty();
				//	Valid Null
				if(m_Qty == null)
					m_Qty = Env.ZERO;
				//	Create Shipment Line
				MInOutLine shipmentLine = 
						new MInOutLine(getCtx(), 0, get_TrxName());
				//	Instance MProduct
				MProduct product = MProduct.get(getCtx(), line.getM_Product_ID());
				//	Rate Convert
				BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
						product.getM_Product_ID(), product.getC_UOM_ID());
				//	Validate Rate equals null
				if(rate == null){
					throw new AdempiereException("@NoUOMConversion@");
				}
				//	Set Values for Lines
				shipmentLine.setAD_Org_ID(m_Current_Shipment.getAD_Org_ID());
				shipmentLine.setM_InOut_ID(m_Current_Shipment.getM_InOut_ID());
				//	Quantity and Product
				shipmentLine.setM_Product_ID(product.getM_Product_ID());
				BigDecimal m_MovementQty = m_Qty.multiply(rate);
				shipmentLine.setM_Warehouse_ID(m_Current_Shipment.getM_Warehouse_ID());
				shipmentLine.setC_UOM_ID(product.getC_UOM_ID());
				shipmentLine.setQty(line.getQty());
				//	References
				shipmentLine.setM_Locator_ID(m_MovementQty);
				shipmentLine.setC_OrderLine_ID(line.getC_OrderLine_ID());
				//	Save Line
				shipmentLine.saveEx(get_TrxName());
				
				//	Manually Process Shipment
				line.setConfirmedQty(m_MovementQty);
				line.setM_InOutLine_ID(shipmentLine.get_ID());
				line.saveEx();
				//	Set true Is Delivered and Is Weight Register
				lo.setIsDelivered(true);
				lo.setIsWeightRegister(true);
				//	Save
				lo.saveEx(get_TrxName());
				
			}	//End Invoice Line Created
		}	//	End Invoice Generated
		//	Complete Shipment
		completeShipment(m_Current_Shipment);
		//	Commit Transaction
		//	Info
		return "@M_InOut_ID@ @Created@ = "+ m_Created + " [" + msg.toString() + "]";
	}
	
	/**
	 * Complete Shipment
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 2/12/2014, 20:00:19
	 * @param m_Current_Shipment
	 * @return void
	 */
	private void completeShipment(MInOut m_Current_Shipment){
		if(m_Current_Shipment != null
				&& m_Current_Shipment.getDocStatus().equals(X_M_InOut.DOCSTATUS_Drafted)) {
			m_Current_Shipment.setDocAction(X_M_InOut.DOCACTION_Complete);
			m_Current_Shipment.processIt(X_M_InOut.DOCACTION_Complete);
			m_Current_Shipment.saveEx();
		}
	}
	
	
	/**
	 * Reference entry ticket in another sing of weight
	 * @author <a href="mailto:waditzar.c@gmail.com">Waditza Rivas</a> 08/05/2014, 17:02:58
	 * @return
	 * @return String
	 */
	private String validETReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT DocumentNo " +
				"FROM FTA_RecordWeight rw " +
				"WHERE  rw.FTA_EntryTicket_ID= ? AND rw.FTA_RecordWeight_ID != ? AND rw.DocStatus IN ('CO','CL')", getFTA_EntryTicket_ID(),getFTA_RecordWeight_ID());
		String m_ReferenceNoET = DB.getSQLValueString(get_TrxName(), "SELECT et.documentno "
				+ "FROM FTA_EntryTicket et "
				+ "WHERE et.FTA_EntryTicket_ID= ? ", getFTA_EntryTicket_ID());
		if(m_ReferenceNo != null) 
			return "@SQLErrorReferenced@ @FTA_RecordWeight_ID@: " + m_ReferenceNo + " @Generate@ @from@ @FTA_EntryTicket_ID@: " +m_ReferenceNoET;
		return null;		
	}
	
	/**
	 * Get Valid Weight For Shipment or Receipt
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 07/03/2014, 15:24:55
	 * @param reload
	 * @return
	 * @return BigDecimal
	 */
	private BigDecimal getValidWeight(boolean reload){
		if (!reload && m_Valideight != null)
			return m_Valideight;
		
		if (MSysConfig.getBooleanValue("FTA_IS_PAY_WEIGHT_RECEIPT_QTY", false))
			return getPayWeight();
		else
			return getNetWeight();
	}
	
	/**
	 * Get Date for transaction like delivery or receipt from record weight
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/11/2014, 18:31:57
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getDateForDocument() {
		//	Get Date for Receipt
		//	I = In Date (InDate)
		//	O = Out Date (OutDate)
		String fta_date_for_inout = MSysConfig.getValue("FTA_DATE_FOR_IN_OUT", getAD_Client_ID());
		//	
		Timestamp m_InOutDate = getDateDoc();
		//	
		if(fta_date_for_inout != null) {
			if(fta_date_for_inout.equals("I")) {
				m_InOutDate = getInDate();
			} else if(fta_date_for_inout.equals("O")) {
				m_InOutDate = getOutDate();
			}
			//	Valid null
			if(m_InOutDate == null)
				m_InOutDate = getDateDoc();
		}
		//	Return
		return m_InOutDate;
	}
	
	@Override
	public BigDecimal getPayWeight() {
		String selectionWeight = getSelectionWeight();
		//	If null
		if(selectionWeight == null)
			selectionWeight = SELECTIONWEIGHT_PaymentWeight;
		//	choice weight
		if(selectionWeight.equals(SELECTIONWEIGHT_ImportWeight))
			return super.getImportWeight();
		//	Payment Weight
		return super.getPayWeight();
	}

}
