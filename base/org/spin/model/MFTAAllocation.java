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
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.I_C_Invoice;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MPeriod;
import org.compiere.model.MPeriodControl;
import org.compiere.model.MTable;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.model.X_C_Invoice;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTAAllocation extends X_FTA_Allocation implements DocAction, DocOptions {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5401196893687712200L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/08/2013, 14:40:59
	 * @param ctx
	 * @param FTA_Allocation_ID
	 * @param trxName
	 */
	public MFTAAllocation(Properties ctx, int FTA_Allocation_ID, String trxName) {
		super(ctx, FTA_Allocation_ID, trxName);
		if (FTA_Allocation_ID == 0)
		{
		//	setDocumentNo (null);
			//setDateDoc (getDateTrx());
			setDocAction (DOCACTION_Complete);	// CO
			setDocStatus (DOCSTATUS_Drafted);	// DR
		//	setC_Currency_ID (0);
			//setAmt (Env.ZERO);
			setIsApproved (false);
			//setIsManual (false);
			//
			setProcessed (false);
		}
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/08/2013, 14:40:59
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAAllocation(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * 	Get Allocations of Payment
	 *	@param ctx context
	 *	@param C_Payment_ID payment
	 *	@return allocations of payment
	 *	@param trxName transaction
	 */
	public static MFTAAllocation[] getOfPayment (Properties ctx, int C_Payment_ID, String trxName)
	{
		String sql = "SELECT * FROM FTA_Allocation h "
			+ "WHERE IsActive='Y'"
			+ " AND EXISTS (SELECT * FROM FTA_AllocationLine l "
				+ "WHERE h.FTA_Allocation_ID=l.FTA_Allocation_ID AND l.C_Payment_ID=?)";
		ArrayList<MFTAAllocation> list = new ArrayList<MFTAAllocation>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trxName);
			pstmt.setInt(1, C_Payment_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
				list.add (new MFTAAllocation(ctx, rs, trxName));
		}
		catch (Exception e)
		{
			s_log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		MFTAAllocation[] retValue = new MFTAAllocation[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getOfPayment

	/**
	 * 	Get Allocations of Invoice
	 *	@param ctx context
	 *	@param C_Invoice_ID payment
	 *	@return allocations of payment
	 *	@param trxName transaction
	 */
	public static MFTAAllocation[] getOfInvoice (Properties ctx, int C_Invoice_ID, String trxName)
	{
		String sql = "SELECT * FROM C_AllocationHdr h "
			+ "WHERE IsActive='Y'"
			+ " AND EXISTS (SELECT * FROM FTA_AllocationLine l "
				+ "WHERE h.FTA_Allocation_ID=l.FTA_Allocation_ID AND l.C_Invoice_ID=?)";
		ArrayList<MFTAAllocation> list = new ArrayList<MFTAAllocation>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trxName);
			pstmt.setInt(1, C_Invoice_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
				list.add (new MFTAAllocation(ctx, rs, trxName));
		}
		catch (Exception e)
		{
			s_log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		MFTAAllocation[] retValue = new MFTAAllocation[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getOfInvoice
	
	//FR [ 1866214 ]
	/**
	 * 	Get Allocations of Cash
	 *	@param ctx context
	 *	@param C_Cash_ID Cash ID
	 *	@return allocations of payment
	 *	@param trxName transaction
	 */
	public static MFTAAllocation[] getOfCash (Properties ctx, int C_Cash_ID, String trxName)
	{
		final String whereClause = "IsActive='Y'"
			+ " AND EXISTS (SELECT 1 FROM C_CashLine cl, FTA_AllocationLine al "
				+ "where cl.C_Cash_ID=? and al.C_CashLine_ID=cl.C_CashLine_ID "
						+ "and FTA_Allocation.FTA_Allocation_ID=al.FTA_Allocation_ID)";
		Query query = MTable.get(ctx, I_FTA_Allocation.Table_ID)
							.createQuery(whereClause, trxName);
		query.setParameters(C_Cash_ID);
		List<MAllocationHdr> list = query.list();
		MFTAAllocation[] retValue = new MFTAAllocation[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getOfCash
	
	/**	Logger						*/
	private static CLogger s_log = CLogger.getCLogger(MFTAAllocation.class);
	

	/**
	 * 	Mandatory New Constructor
	 *	@param ctx context
	 *	@param IsManual manual trx
	 *	@param DateDoc date (if null today)
	 *	@param C_Currency_ID currency
	 *	@param description description
	 *	@param trxName transaction
	 */
	public MFTAAllocation (Properties ctx, boolean IsManual, Timestamp DateDoc, 
		int C_Currency_ID, String description, String trxName)
	{
		this (ctx, 0, trxName);
		//setIsManual(IsManual);
		if (DateDoc != null)
		{
			setDateDoc (DateDoc);
		}
		setC_Currency_ID (C_Currency_ID);
		if (description != null)
			setDescription(description);
	}	//  create Allocation

	/**	Lines						*/
	private MFTAAllocationLine[]	m_lines = null;
	
	/**
	 * 	Get Lines
	 *	@param requery if true requery
	 *	@return lines
	 */
	public MFTAAllocationLine[] getLines (boolean requery)
	{
		if (m_lines != null && m_lines.length != 0 && !requery) {
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		//
		String sql = "SELECT * FROM FTA_AllocationLine WHERE FTA_Allocation_ID=?";
		ArrayList<MFTAAllocationLine> list = new ArrayList<MFTAAllocationLine>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt (1, getFTA_Allocation_ID());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MFTAAllocationLine line = new MFTAAllocationLine(getCtx(), rs, get_TrxName());
				line.setParent(this);
				list.add (line);
			}
		} 
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		//
		m_lines = new MFTAAllocationLine[list.size ()];
		list.toArray (m_lines);
		return m_lines;
	}	//	getLines
	
	/**
	 * Get lines for credit fact
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/03/2014, 10:52:01
	 * @return
	 * @return MFTAAllocationLine[]
	 */
	public MFTAAllocationLine[] getLinesForFact()
	{
		//
		String sql = "SELECT * FROM FTA_AllocationLine " +
				"WHERE FTA_Allocation_ID=? " +
				"ORDER BY FTA_FarmerLiquidation_ID";
		ArrayList<MFTAAllocationLine> list = new ArrayList<MFTAAllocationLine>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt (1, getFTA_Allocation_ID());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MFTAAllocationLine line = new MFTAAllocationLine(getCtx(), rs, get_TrxName());
				line.setParent(this);
				list.add (line);
			}
		} 
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		//
		MFTAAllocationLine [] lines = new MFTAAllocationLine[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines

	/**
	 * 	Set Processed
	 *	@param processed Processed
	 */
	public void setProcessed (boolean processed)
	{
		super.setProcessed (processed);
		if (get_ID() == 0)
			return;
		String sql = "UPDATE FTA_Allocation SET Processed='"
			+ (processed ? "Y" : "N")
			+ "' WHERE FTA_Allocation_ID=" + getFTA_Allocation_ID();
		int no = DB.executeUpdate(sql, get_TrxName());
		m_lines = null;
		log.fine(processed + " - #" + no);
	}	//	setProcessed
	
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord
	 *	@return save
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		//	Changed from Not to Active
		if (!newRecord && is_ValueChanged("IsActive") && isActive())
		{
			log.severe ("Cannot Re-Activate deactivated Allocations");
			return false;
		}
		return true;
	}	//	beforeSave

	/**
	 * 	Before Delete.
	 *	@return true if acct was deleted
	 */
	protected boolean beforeDelete ()
	{
		String trxName = get_TrxName();
		if (trxName == null || trxName.length() == 0)
			log.warning ("No transaction");
		/*if (isPosted())
		{
			MPeriod.testPeriodOpen(getCtx(), getDateTrx(), MDocType.DOCBASETYPE_PaymentAllocation, getAD_Org_ID());
			setPosted(false);
			MFactAcct.deleteEx (Table_ID, get_ID(), trxName);
		}*/
		//	Mark as Inactive
		setIsActive(false);		//	updated DB for line delete/process
		String sql = "UPDATE FTA_Allocation SET IsActive='N' WHERE FTA_Allocation_ID=?";
		DB.executeUpdate(sql, getFTA_Allocation_ID(), trxName);
		
		//	Unlink
		getLines(true);
		HashSet<Integer> bps = new HashSet<Integer>();
		for (int i = 0; i < m_lines.length; i++)
		{
			MFTAAllocationLine line = m_lines[i];
			bps.add(new Integer(line.getC_BPartner_ID()));
			line.deleteEx(true, trxName);
		}
		updateBP(bps);
		return true;
	}	//	beforeDelete

	/**
	 * 	After Save
	 *	@param newRecord
	 *	@param success
	 *	@return success
	 */
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		return success;
	}	//	afterSave
	
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
		log.info(toString());
		return true;
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt()
	{
		log.info(toString());
		setDocAction(DOCACTION_Prepare);
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

		//	Std Period open?
		MPeriod.testPeriodOpen(getCtx(), getDateDoc(), MDocType.DOCBASETYPE_PaymentAllocation, getAD_Org_ID());
		getLines(false);
		if (m_lines.length == 0)
		{
			m_processMsg = "@NoLines@";
			return DocAction.STATUS_Invalid;
		}
		
		// Stop the Document Workflow if invoice to allocate is as paid
		for (MFTAAllocationLine line :m_lines)
		{	
			if (line.getC_Invoice_ID() != 0)
			{
				final String whereClause = I_C_Invoice.COLUMNNAME_C_Invoice_ID + "=? AND " 
								   + I_C_Invoice.COLUMNNAME_IsPaid + "=? AND "
								   + I_C_Invoice.COLUMNNAME_DocStatus + " NOT IN (?,?)";
				boolean InvoiceIsPaid = new Query(getCtx(), I_C_Invoice.Table_Name, whereClause, get_TrxName())
				.setClient_ID()
				.setParameters(line.getC_Invoice_ID(), "Y", X_C_Invoice.DOCSTATUS_Voided, X_C_Invoice.DOCSTATUS_Reversed)
				.match();
				if(InvoiceIsPaid)
					throw new  AdempiereException("@ValidationError@ @C_Invoice_ID@ @IsPaid@");
			}
		}	
		
		//	Add up Amounts & validate
		BigDecimal approval = Env.ZERO;
		for (int i = 0; i < m_lines.length; i++)
		{
			MFTAAllocationLine line = m_lines[i];
			approval = approval.add(line.getWriteOffAmt()).add(line.getDiscountAmt());
			//	Make sure there is BP
			if (line.getC_BPartner_ID() == 0)
			{
				m_processMsg = "No Business Partner";
				return DocAction.STATUS_Invalid;
			}
		}
		setApprovalAmt(approval);
		//
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
		log.info(toString());
		setIsApproved(true);
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt()
	{
		log.info(toString());
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
		
		//	Create Fact
		m_processMsg = MFTAFact.createFact(Env.getCtx(), this, getDateDoc(), Env.ZERO, Env.ONE, get_TrxName());
		if (m_processMsg != null)
			return DocAction.STATUS_InProgress;
		
		//	Link
		getLines(false);
		HashSet<Integer> bps = new HashSet<Integer>();
		for (int i = 0; i < m_lines.length; i++)
		{
			MFTAAllocationLine line = m_lines[i];
			bps.add(new Integer(line.processIt(false)));	//	not reverse
		}
		//	
		updateBP(bps);

		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null)
		{
			m_processMsg = valid;
			return DocAction.STATUS_Invalid;
		}

		setProcessed(true);
		setDocAction(DOCACTION_Close);
		return DocAction.STATUS_Completed;
	}	//	completeIt
	
	/**
	 * 	Void Document.
	 * 	Same as Close.
	 * 	@return true if success 
	 */
	public boolean voidIt()
	{
		log.info(toString());

		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;

		boolean retValue = reverseIt();

		//	Delete Fact
		MFTAFact.deleteFact(Table_ID, getFTA_Allocation_ID(), true, get_TrxName());
		
		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;
		
		setDocAction(DOCACTION_None);

		return retValue;
	}	//	voidIt
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success 
	 */
	public boolean closeIt()
	{
		log.info(toString());
		// Before Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_CLOSE);
		if (m_processMsg != null)
			return false;

		setDocAction(DOCACTION_None);

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
		log.info(toString());
		// Before reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSECORRECT);
		if (m_processMsg != null)
			return false;
		
		boolean retValue = reverseIt();

		// After reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSECORRECT);
		if (m_processMsg != null)
			return false;
		
		setDocAction(DOCACTION_None);
		return retValue;
	}	//	reverseCorrectionIt
	
	/**
	 * 	Reverse Accrual - none
	 * 	@return false 
	 */
	public boolean reverseAccrualIt()
	{
		log.info(toString());
		// Before reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;
		
		boolean retValue = reverseIt();

		// After reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;
		
		setDocAction(DOCACTION_None);
		return retValue;
	}	//	reverseAccrualIt
	
	/** 
	 * 	Re-activate
	 * 	@return false 
	 */
	public boolean reActivateIt()
	{
		log.info(toString());
		// Before reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;	
		
		// After reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;
		
		return false;
	}	//	reActivateIt

	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("MAllocationHdr[");
		sb.append(get_ID()).append("-").append(getSummary()).append ("]");
		return sb.toString ();
	}	//	toString

	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		return Msg.getElement(getCtx(), "C_AllocationHdr_ID") + " " + getDocumentNo();
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
			//.append(Msg.translate(getCtx(),"ApprovalAmt")).append("=").append(getApprovalAmt())
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
		return getCreatedBy();
	}	//	getDoc_User_ID

	
	/**************************************************************************
	 * 	Reverse Allocation.
	 * 	Period needs to be open
	 *	@return true if reversed
	 */
	private boolean reverseIt() 
	{
		if (!isActive())
			throw new IllegalStateException("Allocation already reversed (not active)");

		//	Can we delete posting
		MPeriod.testPeriodOpen(getCtx(), getDateDoc(), MPeriodControl.DOCBASETYPE_PaymentAllocation, getAD_Org_ID());

		//	Set Inactive
		setIsActive (false);
		setDocumentNo(getDocumentNo()+"^");
		setDocStatus(DOCSTATUS_Reversed);	//	for direct calls
		if (!save() || isActive())
			throw new IllegalStateException("Cannot de-activate allocation");
			
		//	Delete Posting
		//MFactAcct.deleteEx(MAllocationHdr.Table_ID, getC_AllocationHdr_ID(), get_TrxName());
		
		//	Unlink Invoices
		getLines(true);
		HashSet<Integer> bps = new HashSet<Integer>();
		for (int i = 0; i < m_lines.length; i++)
		{
			MFTAAllocationLine line = m_lines[i];
			line.setIsActive(false);
			line.save();
			bps.add(new Integer(line.processIt(true)));	//	reverse
		}
		updateBP(bps);
		return true;
	}	//	reverse

	
	/**
	 * 	Update Open Balance of BP's
	 *	@param bps list of business partners
	 */
	private void updateBP(HashSet<Integer> bps)
	{
		log.info("#" + bps.size());
		Iterator<Integer> it = bps.iterator();
		while (it.hasNext())
		{
			int C_BPartner_ID = it.next();
			MBPartner bp = new MBPartner(getCtx(), C_BPartner_ID, get_TrxName());
			bp.setTotalOpenBalance();		//	recalculates from scratch
		//	bp.setSOCreditStatus();			//	called automatically
			if (bp.save())
				log.fine(bp.toString());
			else
				log.log(Level.SEVERE, "BP not updated - " + bp);
		}
	}	//	updateBP

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
				}
		}
		
		return index;
	}

	@Override
	public int getC_Currency_ID() {
		return 0;
	}

	@Override
	public BigDecimal getApprovalAmt() {
		return null;
	}
}
