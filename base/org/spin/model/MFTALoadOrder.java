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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
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
public class MFTALoadOrder extends X_FTA_LoadOrder implements DocAction, DocOptions {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2132004667849638705L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/11/2013, 11:35:33
	 * @param ctx
	 * @param FTA_LoadOrder_ID
	 * @param trxName
	 */
	public MFTALoadOrder(Properties ctx, int FTA_LoadOrder_ID, String trxName) {
		super(ctx, FTA_LoadOrder_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/11/2013, 11:35:33
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTALoadOrder(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/** Lines					*/
	private MFTALoadOrderLine[]		m_lines = null;
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
		//Waditza Rivas 15/05/2014
		m_processMsg = validETReference();
	 	if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
	 	//End Waditza Rivas
		//	Implicit Approval
		if (!isApproved())
			approveIt();
		log.info(toString());
		//	Very Lines
		MFTALoadOrderLine[] lines = getLines(false);
		if (lines.length == 0){
			m_processMsg = "@NoLines@";
			return DocAction.STATUS_Invalid;
		} else {
			StringBuffer msgLong = new StringBuffer();
			for(MFTALoadOrderLine line : m_lines){
				//	Evaluate Error
				String msg = line.validLine();
				if(msg != null){
					if(msgLong.length() != 0)
						msgLong
							.append("\n")
							.append("*")
							.append(msg)
							.append("*");
					else
						msgLong
							.append("*")
							.append(msg)
							.append("*");
				}
			}
			//	Verify Error
			if(msgLong.length() != 0){
				m_processMsg = msgLong.toString();
				return DocAction.STATUS_Invalid;
			}
		}
		//	Valid Entry Ticket
		if(getFTA_EntryTicket_ID() == 0
				&& !MFTAWeightScale.isWeightScaleOrg(getAD_Org_ID(), get_TrxName())) {
			m_processMsg = "@FTA_EntryTicket_ID@ @NotFound@";
			return DocAction.STATUS_InProgress;
		}
		//	Valid Weight and Volume
		m_processMsg = validWeightVolume();
		if(m_processMsg != null)
			return DocAction.STATUS_Invalid;
			
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
	 * Validate Weight and Volume
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 23/12/2013, 10:27:23
	 * @return String
	 */
	private String validWeightVolume() {
		//	Validate Weight
		if(getWeight() == null
				|| getWeight().equals(Env.ZERO))
			return "@Weight@ = @0@";
		
		//	and Volume distinct of 0
		if(getVolume() == null
				|| getVolume().equals(Env.ZERO))
			return "@Volume@ = @0@";
		//	Yamel Senih 2014-01-20, 17:21:00
		//	Correct Validation
		if((getLoadCapacity().subtract(getWeight()).doubleValue() < 0))
				return "@Weight@ > @LoadCapacity@";

		if((getVolumeCapacity().subtract(getVolume()).doubleValue() < 0))
			return "@Volume@ > @VolumeCapacity@";
		//	End Yamel Senih
		/*MFTALoadOrderLine[] lines = getLines(true); 
		for (MFTALoadOrderLine m_FTALoadOrderLine : lines) {
			m_FTALoadOrderLine
		}*/

		return null;
	}

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
        int noLine = DB.executeUpdateEx("UPDATE FTA_LoadOrderLine " +
        		"SET Processed=? " +
        		"WHERE FTA_LoadOrder_ID=?",
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
		
		m_processMsg = validReference();
		if(m_processMsg != null)
			return false;
		//	Set Status
		addDescription(Msg.getMsg(getCtx(), "Voided"));
		
		//	Valid Invoice and Delivered Reference
		if(getOperationType().equals(OPERATIONTYPE_DeliveryFinishedProduct)){
			//	Valid Invoice Reference
			m_processMsg = validInvoiceReference();
			if (m_processMsg != null)
				return false;
			
			//	Valid Delivered Reference
			m_processMsg = validDeliveredReference();
			if (m_processMsg != null)
				return false;
			
		} 

		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;

		setProcessed(true);
        setDocAction(DOCACTION_None);
		return true;
	}	//	voidIt

	/**
	 * Valid Invoice reference
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 12/11/2014, 16:56:20
	 * @return
	 * @return String
	 */
	private String validInvoiceReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT i.DocumentNO FROM FTA_LoadOrderLine lol "
				+ " INNER JOIN C_InvoiceLine il ON (lol.C_InvoiceLine_ID = il.C_InvoiceLine_ID )"
				+ " INNER JOIN C_Invoice i ON (il.C_Invoice_ID = i.C_Invoice_ID) "
				+ " WHERE i.DocStatus NOT IN ('VO','RE') AND lol.FTA_LoadOrder_ID = ?", getFTA_LoadOrder_ID());
		if(m_ReferenceNo != null) 
			return "@SQLErrorReferenced@ @C_Invoice_ID@: " + m_ReferenceNo;
		return null;
	}
	
	
	/**
	 * Valid Delivered reference
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 12/11/2014, 16:56:20
	 * @return
	 * @return String
	 */
	private String validDeliveredReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT io.DocumentNO FROM FTA_LoadOrderLine lol "
				+ " INNER JOIN M_InOutLine iol ON (lol.M_InOutLine_ID = iol.M_InOutLine_ID )"
				+ " INNER JOIN M_InOut io ON (iol.M_InOut_ID = io.M_InOut_ID)"
				+ " WHERE io.DocStatus NOT IN ('VO','RE') AND lol.FTA_LoadOrder_ID = ?", getFTA_LoadOrder_ID());
		if(m_ReferenceNo != null) 
			return "@SQLErrorReferenced@ @M_InOut_ID@: " + m_ReferenceNo;
		return null;
	}
	
	/**
	 * Valid Reference in another record
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/09/2013, 16:05:21
	 * @return
	 * @return String
	 */
	private String validReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(rw.DocumentNo) " +
				"FROM FTA_RecordWeight rw " +
				//	Dixon Martinez 23/04/2014 09:51:00
				//	Add Support for closed Load Order
				//	"WHERE rw.DocStatus NOT IN('VO', 'RE') " +
				"WHERE rw.DocStatus NOT IN('VO', 'RE','CL') " +				
				//	End Dixon Martinez		
				"AND rw.FTA_LoadOrder_ID = ?", getFTA_LoadOrder_ID());
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
		//	Dixon Martinez 23/04/2014 09:51:00
		//	Add Support for closed Load Order 

		m_processMsg = validReference();
		if(m_processMsg != null)
			return false;
		//	Set Status

		// After Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_CLOSE);
		if (m_processMsg != null)
			return false;

		setProcessed(true);
		setDocAction(DOCACTION_None);

		//	End Dixon Martinez
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
	public MFTALoadOrderLine[] getLines (boolean requery, String whereClause)
	{
		if (m_lines != null && !requery)
		{
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		List<MFTALoadOrderLine> list = new Query(getCtx(), MFTALoadOrderLine.Table_Name, "FTA_LoadOrder_ID=?"
				+ (whereClause != null && whereClause.length() != 0? " AND " + whereClause: ""), get_TrxName())
		.setParameters(getFTA_LoadOrder_ID())
		.list();

		m_lines = new MFTALoadOrderLine[list.size ()];
		list.toArray (m_lines);
		return m_lines;
	}	//	getLines
	
	/**
	 * Get Lines for Generate In Out
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 2/12/2014, 19:41:32
	 * @return
	 * @return MFTALoadOrderLine[]
	 */
	public MFTALoadOrderLine[] getLinesForInOut() {
		//	SQL
		String sql = new String("SELECT lol.* "
				+ "FROM FTA_LoadOrderLine lol "
				+ "INNER JOIN C_OrderLine ol ON(ol.C_OrderLine_ID = lol.C_OrderLine_ID) "
				+ "WHERE lol.FTA_LoadOrder_ID = ? "
				+ "ORDER BY ol.C_BPartner_ID, ol.M_Warehouse_ID");
		//	Get
		PreparedStatement ps = null;
		ResultSet rs = null;
		//	List
		ArrayList<MFTALoadOrderLine> list = new ArrayList<MFTALoadOrderLine>();
		//	
		try {
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getFTA_LoadOrder_ID());
			rs = ps.executeQuery();
			//	
			while(rs.next()){
				list.add(new MFTALoadOrderLine(getCtx(), rs, get_TrxName()));
			}
		} catch(Exception ex) {
			log.severe("getLinesForInOut() Error: " + ex.getMessage());
		} finally {
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}
		//	Convert
		MFTALoadOrderLine [] lines = new MFTALoadOrderLine[list.size ()];
		list.toArray(lines);
		return lines;
	}
	
	/**
	 * Get Lines For Movements
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 4/12/2014, 19:55:41
	 * @return
	 * @return MFTALoadOrderLine[]
	 */
	public MFTALoadOrderLine[] getLinesForMovement() {
		//	SQL
		String sql = new String("SELECT lol.* "
				+ "FROM FTA_LoadOrderLine lol "
				+ "INNER JOIN DD_OrderLine ol ON(ol.DD_OrderLine_ID = lol.DD_OrderLine_ID) "
				+ "INNER JOIN DD_Order o ON(o.DD_Order_ID = ol.DD_Order_ID) "
				+ "WHERE lol.FTA_LoadOrder_ID = ? "
				+ "ORDER BY o.C_BPartner_ID");
		//	Get
		PreparedStatement ps = null;
		ResultSet rs = null;
		//	List
		ArrayList<MFTALoadOrderLine> list = new ArrayList<MFTALoadOrderLine>();
		//	
		try {
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getFTA_LoadOrder_ID());
			rs = ps.executeQuery();
			//	
			while(rs.next()){
				list.add(new MFTALoadOrderLine(getCtx(), rs, get_TrxName()));
			}
		} catch(Exception ex) {
			log.severe("getLinesForInOut() Error: " + ex.getMessage());
		} finally {
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}
		//	Convert
		MFTALoadOrderLine [] lines = new MFTALoadOrderLine[list.size ()];
		list.toArray(lines);
		return lines;
	}
	
	/**
	 * 
	 * @author <a href="mailto:waditzar.c@gmail.com">Waditza Rivas</a> 09/05/2014, 12:00:53
	 * @return
	 * @return String
	 */
	private String validETReference(){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT FTA_LoadOrder_ID " +
				"FROM FTA_LoadOrder lo " +
				"WHERE  lo.DocStatus IN('CO', 'CL') "
				+ "AND lo.FTA_EntryTicket_ID= ? "
				+ "AND lo.FTA_LoadOrder_ID != ? ", getFTA_EntryTicket_ID(),getFTA_LoadOrder_ID());
		String m_ReferenceNoET = DB.getSQLValueString(get_TrxName(), "SELECT et.documentno "
				+ "FROM FTA_EntryTicket et "
				+ "WHERE et.FTA_EntryTicket_ID= ? ", getFTA_EntryTicket_ID());
		if(m_ReferenceNo != null) 
			return "@SQLErrorReferenced@ @FTA_LoadOrder_ID@: " + m_ReferenceNo + " @Generate@ @from@ @FTA_EntryTicket_ID@:" +m_ReferenceNoET;
		return null;		
	}
	
	/**
	 * Get Lines
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/10/2013, 12:30:09
	 * @param requery
	 * @return
	 * @return MFTALoadOrderLine[]
	 */
	public MFTALoadOrderLine[] getLines (boolean requery)
	{
		return getLines(requery, null);
	}	//	getLines
	
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
					options[index++] = DocumentEngine.ACTION_Close;
					options[index++] = DocumentEngine.ACTION_Complete;
				}

			//Dixon Martinez 23/04/2014 09:51:00
			//	Add Support for closed Load Order
			//	Complete                    ..  CO			
			/*else if (docStatus.equals(DocumentEngine.STATUS_Completed))
			{
				options[index++] = DocumentEngine.ACTION_Void;
			}*/
			else if(docStatus.equals(DocumentEngine.STATUS_Completed)){
				options[index++] = DocumentEngine.ACTION_Close;
				options[index++] = DocumentEngine.ACTION_Void;
			}else
				options[index++] = DocumentEngine.ACTION_None;
			//	End Dixon Martinez
		}
		
		return index;
	}
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		//	Dixon Martinez 20/12/2013 09:29
		//	Add validation for trying to save the charge by not permitted to do so if the vehicle type is null. 
			
		String msg = null;
		
		//	Yamel Senih 2013-12-19: 17:04:02
		//	Valid Operation Type
		if(getOperationType() == null)
			msg = "@FTA_VehicleType_ID@ @NotFound@";
		//	End Yamel Senih
	
		if(getVolumeCapacity().compareTo(getVolume()) < 0)
			msg = "@VolumeCapacity@ < @0@";
		
		if(getLoadCapacity().compareTo(getWeight()) < 0)
			msg = "@LoadCapacity@ < @0@";
		
		if(msg != null)
			throw new AdempiereException(msg);
		//	End Dixon Martinez
		
		//	Set if Handle Record Weight
		setIsHandleRecordWeight();
		return true;
	}//	End beforeSave
	
	/**
	 * Set Handle Record Weight from the config Record Weight
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/01/2014, 12:45:58
	 * @return void
	 */
	public void setIsHandleRecordWeight() {
		int m_Reference_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(ws.FTA_WeightScale_ID) " +
				"FROM FTA_WeightScale ws " +
				"WHERE ws.AD_Org_ID = ? "
				+ " OR ws.AD_Org_ID = 0 ", getAD_Org_ID());
		//	set Handle Record Weight
		setIsHandleRecordWeight(m_Reference_ID > 0);
	}
}
