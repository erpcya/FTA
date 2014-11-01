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
package org.spin.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MBPartner;
import org.compiere.model.MCurrency;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MProduct;
import org.compiere.model.MRefList;
import org.compiere.model.X_C_DocType;
import org.compiere.model.X_C_Invoice;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.spin.model.MFTAFact;
import org.spin.model.MFTAFarmerCredit;
import org.spin.model.MFTAPaymentRequest;
import org.spin.model.X_FTA_FarmerCredit;
import org.spin.model.X_FTA_PaymentRequest;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FarmerCreditDocGenerate extends SvrProcess {

	/**	Organization						*/
	private int 				p_AD_Org_ID = 0;
	/**	Document Type Target AP Credit Memo	*/
	/**	Current Business Partner			*/
	private int 				m_Current_C_BPartner_ID 	= 0;
	private int 				p_C_DocTypeInvoice_ARI_ID = 0;
	/**	Document Type Target AP Invoice		*/
	private int 				p_C_DocTypeInvoice_API_ID = 0;
	/**	Counter Document Type  AP Invoice		*/
	private int 				p_C_DocTypeCounter_API_ID = 0;
	/**	Document Date						*/
	private Timestamp 			p_DateDoc = null;
	/**	Document No						*/
	private String 			p_DocumentNo = null;
	/**	Farmer Credit						*/
	private int 				p_FTA_FarmerCredit_ID = 0;
	/**	Payment Request						*/
	private String 				p_GeneratePayRequest = null;
	/**	Generate Invoice						*/
	private String 				p_GenerateInvoice = null;
	/**	Document for Payment Request		*/
	private int 				p_C_DocTypePayRequest_ID = 0;
	/**	Charge								*/
	private int 				p_C_Charge_ID = 0;
	/**	Product								*/
	private int 				p_M_Product_ID = 0;	
	/**	Current Allocation					*/
	private MAllocationHdr 		m_Current_Alloc			= null;
	/**	Amount								*/
	private BigDecimal			p_Amt = null;
	/**	Description							*/
	private String				p_Description = null;
	/**	Current Invoice						*/
	private int					m_Current_C_Invoice_ID = 0;
	/**	ID Invoice API						*/
	private int					m_C_Invoice_ID_API = 0;
	/**	Counter Document Invoice API						*/
	private int					m_C_Invoice_ID_CAPI = 0;
	/**	Farmer Credit						*/
	private MFTAFarmerCredit 	m_FTA_FarmerCredit = null;
	/**	Current Multiplier Invoice Doc		*/
	private BigDecimal			invoice_Mlp		= Env.ZERO;
	/**	Business Partner					*/
	private MBPartner 			bpartner = null;
	/**	Generated							*/
	private int 				generated = 0;
	/**	Precision							*/
	private int 				precision = 0;
	
	private String 				trxName = null;
	private Trx 				trx = null;
	
	/** Document is In Dispute*/
	private boolean				p_IsIndispute =false;
	
	/** Business Partner Bank Account		*/
	private int 				p_C_BP_BankAccount_ID = 0;
	
	/** Sql*/
	private StringBuffer sql = new StringBuffer();
	
	/** Credit Distribution 				*/
	private HashMap<Integer, BigDecimal> m_dist = new HashMap<Integer, BigDecimal>();
	
	/**Process From Browse					*/
	private boolean processFromBrowse = false;
	
	/** Message Return 						*/
	private String m_MsgReturn = new String(""); 
	@Override
	protected void prepare() {
		
		
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("FTA_FarmerCredit_ID"))
				p_FTA_FarmerCredit_ID = para.getParameterAsInt();
			else if(name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeInvoice_ARI_ID = para.getParameterAsInt();
			else if(name.equals("C_DocTypeInvoice_ID"))
				p_C_DocTypeInvoice_API_ID = para.getParameterAsInt();
			else if(name.equals("C_DocTypeCounter_API_ID"))
				p_C_DocTypeCounter_API_ID = para.getParameterAsInt();
			else if(name.equals("C_Charge_ID"))
				p_C_Charge_ID = para.getParameterAsInt();
			else if(name.equals("M_Product_ID"))
				p_M_Product_ID = para.getParameterAsInt();
			else if(name.equals("Amt"))
				p_Amt = (BigDecimal)para.getParameter();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
			else if (name.equals("DocumentNo"))
				p_DocumentNo = (String)para.getParameter();
			else if(name.equals("GeneratePayRequest"))
				p_GeneratePayRequest = (String) para.getParameter();
			else if(name.equals("GenerateInvoice"))
				p_GenerateInvoice = (String) para.getParameter();
			else if(name.equals("C_DocTypePayRequest_ID"))
				p_C_DocTypePayRequest_ID = para.getParameterAsInt();
			else if(name.equals("IsInDispute"))
				p_IsIndispute = para.getParameterAsBoolean();
			else if(name.equals("C_BP_BankAccount_ID"))
				p_C_BP_BankAccount_ID = para.getParameterAsInt();
			else if(name.equals("Description"))
				p_Description = (String) para.getParameter();
			
		}
		
		//2014-02-12 Add Support to SmartBrowse
		
		PreparedStatement ps = null ;
		ResultSet rs = null;
		sql.append("Select " +
					"ts.AD_PInstance_ID, " + 
					"ts.T_Selection_ID As FTA_FarmerCreditLine_ID, " + 
					"tsb.FTA_FarmerCredit_ID, " +
					"tsb.Amt, " +
					"tsb.NetAmt " +
					"From " +   
					"T_Selection ts " + 
					"Inner Join (Select  tsb.AD_PInstance_ID, " + 
					"tsb.T_Selection_ID, " + 
					"Max(Case When tsb.ColumnName = 'CBC_FTA_FarmerCredit_ID' Then tsb.Value_Number Else Null End) As FTA_FarmerCredit_ID, " + 
					"Max(Case When tsb.ColumnName = 'CBC_Amt' Then tsb.Value_Number Else Null End) As Amt, " +  
					"(Select Sum(Case When tsbs.ColumnName = 'CBC_Amt' Then tsbs.Value_Number Else Null End) From T_Selection_Browse tsbs Where tsbs.AD_PInstance_ID=tsb.AD_PInstance_ID) As NetAmt " +
					"From T_Selection_Browse tsb " +  
					"Group By " + 
					"tsb.AD_PInstance_ID, " + 
					"tsb.T_Selection_ID) " +  
					"tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID " );
		sql.append("Where ts.AD_PInstance_ID=?");
		try{
			ps = DB.prepareStatement(sql.toString(), null);
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			while (rs.next()){
				//Set Farmer Credit From Selection
				if (p_FTA_FarmerCredit_ID == 0)
					p_FTA_FarmerCredit_ID = rs.getInt("FTA_FarmerCredit_ID");
					processFromBrowse = true;
				//Set Amount From Selection
				if (p_Amt == null)
					p_Amt = rs.getBigDecimal("NetAmt");
				
				m_dist.put(rs.getInt("FTA_FarmerCreditLine_ID"), rs.getBigDecimal("Amt"));
				
			}
		}
		catch (SQLException ex){
			new AdempiereException(ex.getMessage());
		}
		finally{
			DB.close(rs, ps);
			rs=null; ps=null;
		}
		//End Carlos Parada
		
		//	Get Technical From Identifier
		if(p_FTA_FarmerCredit_ID == 0)
			p_FTA_FarmerCredit_ID = getRecord_ID();
		
		trxName = Trx.createTrxName("FCDG");
		trx = Trx.get(trxName, true);

	}

	@Override
	protected String doIt() throws Exception {
		
		//	Valid Organization
		if(p_AD_Org_ID == 0)
			throw new AdempiereUserError("@AD_Org_ID@ @NotFound@");
		//	Valid Document Date
		if(p_DateDoc == null)
			throw new AdempiereUserError("@DateDoc@ @NotFound@");
		//	Valid AR Invoice
		if(p_C_DocTypeInvoice_ARI_ID == 0)
			throw new AdempiereUserError("@C_DocTypeTarget_ID@ @NotFound@");
		
		//	Get Precision
		precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		
		String out = "";
		try {
			m_FTA_FarmerCredit = new MFTAFarmerCredit(getCtx(), p_FTA_FarmerCredit_ID, trxName);
			//	Valid AP Invoice
			if(m_FTA_FarmerCredit.getBeneficiary_ID() != 0
					&& m_FTA_FarmerCredit.getCreditType()
						.equals(X_FTA_FarmerCredit.CREDITTYPE_Loan)
					&& p_C_DocTypeInvoice_API_ID == 0)
				throw new AdempiereUserError("@C_DocTypeInvoice_ID@ @NotFound@");
			//	Get Business Partner
			bpartner = MBPartner.get(getCtx(), m_FTA_FarmerCredit.getC_BPartner_ID());
			//	Reference
			int reference_ID = 0;
			if(reference_ID <= 0){
				addDocument();
				if(p_GeneratePayRequest != null
						&& p_GeneratePayRequest.equals("Y"))
					generatePayRequest();
				if(p_GenerateInvoice != null
						&& p_GenerateInvoice.equals("Y"))
				{
					addDocumentAPI();
					addDocumentAPIC();
					addAllocationDoc();
				}
			}
			//	
			
			if(m_FTA_FarmerCredit.getBeneficiary_ID() != 0){
				reference_ID = 0;
				if(m_FTA_FarmerCredit.getCreditType()
						.equals(X_FTA_FarmerCredit.CREDITTYPE_Loan))
					reference_ID = DB.getSQLValue(trxName, "SELECT MAX(i.C_Invoice_ID) " +
						"FROM C_Invoice i " +
						"WHERE i.DocStatus NOT IN('VO', 'RE') " +
						"AND i.IsSOTrx = 'N' " +
						"AND i.FTA_FarmerCredit_ID = ? " 
						+ "AND i.C_BPartner_ID = " + m_FTA_FarmerCredit.getBeneficiary_ID(), m_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
				//	
				if(reference_ID <= 0){
					addCounterDocument();
				}
			}
			
			//2014-02-13 Carlos Parada Add Allocation Credit Document
			if (m_Current_C_Invoice_ID!=0 && processFromBrowse)
				allocateInvoice(m_Current_C_Invoice_ID);
			//End Carlos Parada
			
			out = "@Generated@ = " + generated;
			trx.commit();
		} catch (Exception e) {
			trx.rollback();
			log.log(Level.SEVERE, "Error:", e);
			out = e.getMessage();
		}
		return out + " " + (processFromBrowse ? m_MsgReturn : "");

	}
	
	/**
	 * Create Credit Document
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/10/2013, 10:41:25
	 * @return void
	 */
	
	private void addAllocationDoc(){
		//Create Allocation Document After Complete Farmer Credit Allocation When Allocation Documents are only invoices 
				m_Current_Alloc = new MAllocationHdr(Env.getCtx(), true,	//	manual
						p_DateDoc, m_C_Invoice_ID_API, Env.getContext(Env.getCtx(), "#AD_User_Name"), get_TrxName());
				m_Current_Alloc.setAD_Org_ID(p_AD_Org_ID);
				m_Current_Alloc.saveEx();
				MAllocationLine aLine = new MAllocationLine (m_Current_Alloc, p_Amt, 
						Env.ZERO, Env.ZERO, p_Amt);
				aLine.setDocInfo(m_C_Invoice_ID_CAPI,0,m_Current_C_BPartner_ID);
				aLine.saveEx();
				
	}
	private void addDocument(){
		MInvoice m_ARInvoice = new MInvoice(getCtx(), 0, trxName);
		m_ARInvoice.setAD_Org_ID(p_AD_Org_ID);
		m_ARInvoice.setDateInvoiced(p_DateDoc);
		m_ARInvoice.setIsSOTrx(true);
		m_ARInvoice.setC_DocTypeTarget_ID(p_C_DocTypeInvoice_ARI_ID);
		
		//Set in Dispute
		m_ARInvoice.setIsInDispute(p_IsIndispute);
		
		//	Set Business Partner
		
		m_ARInvoice.setBPartner(bpartner);
		//	Set Farmer Credit
		m_ARInvoice.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
		//	Description
		if(p_Description != null)
			m_ARInvoice.setDescription(p_Description);
		m_ARInvoice.saveEx();
		//	Create Line
		MInvoiceLine m_ARinvoiceLine = new MInvoiceLine(m_ARInvoice);
		//	Set Charge and Product
		setChargeProduct(m_ARinvoiceLine);
		//	
		m_ARinvoiceLine.setQty(Env.ONE);
		//	Set Amount
		if(p_Amt == null)
			p_Amt = m_FTA_FarmerCredit.getAmt();
		m_ARinvoiceLine.setPrice(p_Amt.setScale(precision, BigDecimal.ROUND_HALF_UP));
		//	Description
		if(p_Description != null)
			m_ARinvoiceLine.setDescription(p_Description);
		//	
		m_ARinvoiceLine.setTaxAmt();
		m_ARinvoiceLine.saveEx();
		//	Add Invoice
		m_Current_C_Invoice_ID = m_ARInvoice.getC_Invoice_ID();
		//	Complete
		completeDoument(m_ARInvoice);
	}
	
	private void addDocumentAPI(){
		MInvoice m_ARInvoice = new MInvoice(getCtx(), 0, trxName);
		m_ARInvoice.setAD_Org_ID(p_AD_Org_ID);
		m_ARInvoice.setDateInvoiced(p_DateDoc);
		m_ARInvoice.setDocumentNo(p_DocumentNo);
		m_ARInvoice.setIsSOTrx(false);
		m_ARInvoice.setC_DocTypeTarget_ID(p_C_DocTypeInvoice_API_ID);
		
		//Set in Dispute
		m_ARInvoice.setIsInDispute(p_IsIndispute);
		
		//	Set Business Partner
		
		m_ARInvoice.setBPartner(bpartner);
		//	Set Farmer Credit
		m_ARInvoice.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
		//	Description
		if(p_Description != null)
			m_ARInvoice.setDescription(p_Description);
		m_ARInvoice.saveEx();
		//	Create Line
		MInvoiceLine m_ARinvoiceLine = new MInvoiceLine(m_ARInvoice);
		//	Set Charge and Product
		setChargeProduct(m_ARinvoiceLine);
		//	
		m_ARinvoiceLine.setQty(Env.ONE);
		//	Set Amount
		if(p_Amt == null)
			p_Amt = m_FTA_FarmerCredit.getAmt();
		m_ARinvoiceLine.setPrice(p_Amt.setScale(precision, BigDecimal.ROUND_HALF_UP));
		//	Description
		if(p_Description != null)
			m_ARinvoiceLine.setDescription(p_Description);
		//	
		m_ARinvoiceLine.setTaxAmt();
		m_ARinvoiceLine.saveEx();
		//	Add Invoice
		m_Current_C_BPartner_ID=m_ARInvoice.getC_BPartner_ID();
		m_C_Invoice_ID_API = m_ARInvoice.getC_Invoice_ID();
		//	Complete
		completeDoument(m_ARInvoice);
	}
	private void addDocumentAPIC(){
		MInvoice m_ARInvoice = new MInvoice(getCtx(), 0, trxName);
		m_ARInvoice.setAD_Org_ID(p_AD_Org_ID);
		m_ARInvoice.setDateInvoiced(p_DateDoc);
		m_ARInvoice.setIsSOTrx(false);
		m_ARInvoice.setC_DocTypeTarget_ID(p_C_DocTypeCounter_API_ID);
		
		//Set in Dispute
		m_ARInvoice.setIsInDispute(p_IsIndispute);
		
		//	Set Business Partner
		
		m_ARInvoice.setBPartner(bpartner);
		//	Set Farmer Credit
		m_ARInvoice.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
		//	Description
		if(p_Description != null)
			m_ARInvoice.setDescription(p_Description);
		m_ARInvoice.saveEx();
		//	Create Line
		MInvoiceLine m_ARinvoiceLine = new MInvoiceLine(m_ARInvoice);
		//	Set Charge and Product
		setChargeProduct(m_ARinvoiceLine);
		//	
		m_ARinvoiceLine.setQty(Env.ONE);
		//	Set Amount
		if(p_Amt == null)
			p_Amt = m_FTA_FarmerCredit.getAmt();
		m_ARinvoiceLine.setPrice(p_Amt.setScale(precision, BigDecimal.ROUND_HALF_UP));
		//	Description
		if(p_Description != null)
			m_ARinvoiceLine.setDescription(p_Description);
		//	
		m_ARinvoiceLine.setTaxAmt();
		m_ARinvoiceLine.saveEx();
		//	Add Invoice
		m_Current_C_BPartner_ID=m_ARInvoice.getC_BPartner_ID();
		m_C_Invoice_ID_CAPI = m_ARInvoice.getC_Invoice_ID();
		//	Complete
		completeDoument(m_ARInvoice);
		System.out.println(m_C_Invoice_ID_CAPI);
	}
	
	/**
	 * Create Debit Document
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/10/2013, 10:42:25
	 * @return void
	 */
	private void addCounterDocument(){
		MInvoice m_APInvoice = new MInvoice(getCtx(), 0, trxName);
		m_APInvoice.setAD_Org_ID(p_AD_Org_ID);
		m_APInvoice.setDateInvoiced(p_DateDoc);
		m_APInvoice.setIsSOTrx(false);
		m_APInvoice.setC_DocTypeTarget_ID(p_C_DocTypeInvoice_API_ID);
		//Set in Dispute
		m_APInvoice.setIsInDispute(p_IsIndispute);
		//	Set Business PArtner
		bpartner = MBPartner.get(getCtx(), m_FTA_FarmerCredit.getBeneficiary_ID());
		m_APInvoice.setBPartner(bpartner);
		//	Set Farmer Credit
		m_APInvoice.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
		//	Description
		if(p_Description != null)
			m_APInvoice.setDescription(p_Description);
		m_APInvoice.saveEx();
		//	Create Line
		MInvoiceLine m_APIinvoiceLine = new MInvoiceLine(m_APInvoice);
		//	Set Charge and Product
		setChargeProduct(m_APIinvoiceLine);
		//	
		m_APIinvoiceLine.setQty(Env.ONE);
		//	Each
		m_APIinvoiceLine.setPrice(m_FTA_FarmerCredit.getAmt());
		//	Description
		if(p_Description != null)
			m_APIinvoiceLine.setDescription(p_Description);

		m_APIinvoiceLine.setTaxAmt();
		//	Complete
		completeDoument(m_APInvoice);
	}

	/**
	 * Complete Document
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/10/2013, 10:38:34
	 * @param m_Invoice
	 * @return void
	 */
	private void completeDoument(MInvoice m_Invoice){
		m_Invoice.setDocAction(X_C_Invoice.DOCACTION_Complete);
		m_Invoice.processIt(X_C_Invoice.DOCACTION_Complete);
		m_Invoice.saveEx();
		String msg = m_Invoice.getProcessMsg();
		//	Add Log
		addLog("@DocumentNo@ " + m_Invoice.getDocumentNo() 
				+ " - @GrandTotal@ = " + m_Invoice.getGrandTotal() 
				+ " - @DocStatus@ = " + MRefList.getListName(getCtx(), 
							X_C_Invoice.DOCSTATUS_AD_Reference_ID, m_Invoice.getDocStatus())
				+ (msg == null? " @OK@": " @Error@:" + msg));
		//	Set Generated
		
		//
		m_MsgReturn+="@DocumentNo@ " + m_Invoice.getDocumentNo() 
				+ " - @GrandTotal@ = " + m_Invoice.getGrandTotal() 
				+ " - @DocStatus@ = " + MRefList.getListName(getCtx(),X_C_Invoice.DOCSTATUS_AD_Reference_ID, m_Invoice.getDocStatus());
		
		generated++;
	}
	
	/**
	 * Set Charge or Product
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/10/2013, 10:45:52
	 * @param line
	 * @return void
	 */
	private void setChargeProduct(MInvoiceLine line){
		if(p_C_Charge_ID == 0
				&& p_M_Product_ID == 0){
			p_C_Charge_ID = m_FTA_FarmerCredit.getC_Charge_ID();
			p_M_Product_ID = m_FTA_FarmerCredit.getM_Product_ID();
		}
		
		if(p_C_Charge_ID != 0){
			line.setC_Charge_ID(p_C_Charge_ID);
			line.setC_UOM_ID(100);
		} else if(p_M_Product_ID != 0) { 
			line.setM_Product_ID(p_M_Product_ID);
			if(m_FTA_FarmerCredit.getM_Product_ID() != 0)
				line.setC_UOM_ID(m_FTA_FarmerCredit.getC_UOM_ID());
			else {
				MProduct product =  MProduct.get(getCtx(), p_M_Product_ID);
				line.setC_UOM_ID(product.getC_UOM_ID());
			}
		} else
			throw new AdempiereException("@C_Charge_ID@ / @M_Product_ID@ @NotFound@");
	}
	
	/**
	 * Generate Payment Request
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/10/2013, 00:22:13
	 * @return void
	 */
	private void generatePayRequest(){
		MFTAPaymentRequest paymentRequest = new MFTAPaymentRequest(getCtx(), 0, trxName);
		paymentRequest.setAD_Org_ID(p_AD_Org_ID);
		paymentRequest.setC_DocType_ID(p_C_DocTypePayRequest_ID);
		paymentRequest.setDateDoc(p_DateDoc);
		paymentRequest.setFTA_FarmerCredit_ID(m_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
		paymentRequest.setC_BPartner_ID(m_FTA_FarmerCredit.getC_BPartner_ID());
		paymentRequest.setPayAmt(p_Amt.setScale(precision, BigDecimal.ROUND_HALF_UP));
		paymentRequest.setC_Invoice_ID(m_Current_C_Invoice_ID);
		paymentRequest.setC_BP_BankAccount_ID(p_C_BP_BankAccount_ID);
		paymentRequest.setName(Msg.parseTranslation(getCtx(), "@FTA_PaymentRequest_ID@ @to@") 
				+ ": " + bpartner.getName());
		if(p_C_Charge_ID != 0)
			paymentRequest.setC_Charge_ID(p_C_Charge_ID);
		else if(p_M_Product_ID != 0)
			paymentRequest.setM_Product_ID(p_M_Product_ID);
		//	Description
		if(p_Description != null)
			paymentRequest.setDescription(p_Description);
		//	
		paymentRequest.setDocAction(X_FTA_PaymentRequest.DOCACTION_Complete);
		paymentRequest.processIt(X_FTA_PaymentRequest.DOCACTION_Complete);
		paymentRequest.saveEx();
		String msg = paymentRequest.getProcessMsg();
		//	Add Log
		addLog("@FTA_PaymentRequest_ID@ @DocumentNo@ " + paymentRequest.getDocumentNo() 
				+ " - @PayAmt@ = " + paymentRequest.getPayAmt() 
				+ " - @DocStatus@ = " + MRefList.getListName(getCtx(), 
							X_FTA_PaymentRequest.DOCSTATUS_AD_Reference_ID, paymentRequest.getDocStatus())
				+ (msg == null? " @OK@": " @Error@:" + msg));
		//	Set Generated
		
		m_MsgReturn += " " +"@FTA_PaymentRequest_ID@ @DocumentNo@ " + paymentRequest.getDocumentNo() 
				+ " - @PayAmt@ = " + paymentRequest.getPayAmt() 
				+ " - @DocStatus@ = " + MRefList.getListName(getCtx(), 
							X_FTA_PaymentRequest.DOCSTATUS_AD_Reference_ID, paymentRequest.getDocStatus());
		generated++;
	}
	
	/**
	 * Allocation Credit Invoice
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> Feb 13, 2014, 9:34:04 AM
	 * @param p_C_Invoice_ID
	 * @return void
	 */
	private void allocateInvoice(int p_C_Invoice_ID){
		
		Iterator<?> it =  m_dist.entrySet().iterator();
		MInvoice inv = new MInvoice(getCtx(), p_C_Invoice_ID, trxName);
		
		//	Dixon Martinez 29/03/2014 14:20:00
		//	Add support for Multiplier of Doc Type 
		MDocType docType = MDocType.get(Env.getCtx(), inv.getC_DocType_ID());
		BigDecimal multiplier = Env.ONE;
		if(docType.getDocBaseType().equals(X_C_DocType.DOCBASETYPE_ARCreditMemo))
			multiplier = multiplier.negate();
				
		MFTAFact.deleteFact(MInvoice.Table_ID, inv.getC_Invoice_ID(), true, trxName);
		while (it.hasNext()){
			Entry<?, ?> selection = (Entry<?, ?>) it.next();
			
			MFTAFact fact=  new MFTAFact(getCtx(), 0, trxName);
			
			fact.setAD_Table_ID(MInvoice.Table_ID);
			fact.setAmt((BigDecimal)selection.getValue());
			fact.setC_BPartner_ID(inv.getC_BPartner_ID());
			fact.setFTA_CreditDefinitionLine_ID((Integer)selection.getKey());
			fact.setFTA_CreditDefinition_ID(fact.getFTA_CreditDefinitionLine().getFTA_CreditDefinition_ID());
			fact.setFTA_FarmerCredit_ID(p_FTA_FarmerCredit_ID);
			fact.setIsCreditFactManual(true);
			fact.setMultiplier(multiplier);
			fact.setRecord_ID(inv.getC_Invoice_ID());
			fact.setDateDoc(inv.getDateInvoiced());
			fact.setDescription(inv.getDescription());
			fact.saveEx(trxName);
		}
		inv.set_ValueOfColumn("IsCreditFactManual", true);
		inv.save(trxName);
		//	End Dixon Martinez
	}
}
