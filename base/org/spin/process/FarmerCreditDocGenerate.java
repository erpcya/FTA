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
import java.sql.Timestamp;

import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.X_C_Invoice;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.Env;
import org.spin.model.MFTAFarmerCredit;
import org.spin.model.X_FTA_FarmerCredit;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FarmerCreditDocGenerate extends SvrProcess {

	/**	Organization						*/
	private int 		p_AD_Org_ID = 0;
	/**	Document Type Target AP Credit Memo	*/
	private int 		p_C_DocTypeInvoice_ARI_ID = 0;
	/**	Document Type Target AP Invoice		*/
	private int 		p_C_DocTypeInvoice_API_ID = 0;
	/**	Document Date						*/
	private Timestamp 	p_DateDoc = null;
	/**	Farmer Credit						*/
	private int 		p_FTA_FarmerCredit_ID = 0;
	/**	Document Base Type					*/
	//private String 		p_DocBaseType = null;
	/**	Charge								*/
	private int 		p_C_Charge_ID = 0;
	/**	Amount								*/
	private BigDecimal	p_Amt = null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			/*else if(name.equals("DocBaseType"))
				p_DocBaseType = (String) para.getParameter();*/
			else if(name.equals("FTA_FarmerCredit_ID"))
				p_FTA_FarmerCredit_ID = para.getParameterAsInt();
			else if(name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeInvoice_ARI_ID = para.getParameterAsInt();
			else if(name.equals("C_DocTypeInvoice_ID"))
				p_C_DocTypeInvoice_API_ID = para.getParameterAsInt();
			else if(name.equals("C_Charge_ID"))
				p_C_Charge_ID = para.getParameterAsInt();
			else if(name.equals("Amt"))
				p_Amt = (BigDecimal)para.getParameter();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
		}
		//	Get Technical From Identifier
		if(p_FTA_FarmerCredit_ID == 0)
			p_FTA_FarmerCredit_ID = getRecord_ID();

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
	
		MFTAFarmerCredit m_FTA_FarmerCredit = new MFTAFarmerCredit(getCtx(), p_FTA_FarmerCredit_ID, get_TrxName());
		//	Valid AP Invoice
		if(m_FTA_FarmerCredit.getBeneficiary_ID() != 0
				&& m_FTA_FarmerCredit.getCreditType()
					.equals(X_FTA_FarmerCredit.CREDITTYPE_Loan)
				&& p_C_DocTypeInvoice_API_ID == 0)
			throw new AdempiereUserError("@C_DocTypeInvoice_ID@ @NotFound@");
		
		if(m_FTA_FarmerCredit.isProcessing()
				&& m_FTA_FarmerCredit.getCreditType()
					.equals(X_FTA_FarmerCredit.CREDITTYPE_Loan))
			return "";
		
		//	Generated
		int generated = 0;
		MInvoice m_ARInvoice = new MInvoice(getCtx(), 0, get_TrxName());
		m_ARInvoice.setAD_Org_ID(p_AD_Org_ID);
		m_ARInvoice.setDateInvoiced(p_DateDoc);
		m_ARInvoice.setIsSOTrx(true);
		m_ARInvoice.setC_DocTypeTarget_ID(p_C_DocTypeInvoice_ARI_ID);
		//	Set Business PArtner
		MBPartner bpartner = MBPartner.get(getCtx(), m_FTA_FarmerCredit.getC_BPartner_ID());
		m_ARInvoice.setBPartner(bpartner);
		//	Set Farmer Credit
		m_ARInvoice.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
		m_ARInvoice.saveEx();
		//	Create Line
		MInvoiceLine m_ARinvoiceLine = new MInvoiceLine(m_ARInvoice);
		//	Set Charge
		if(p_C_Charge_ID == 0)
			p_C_Charge_ID = m_FTA_FarmerCredit.getC_Charge_ID();
		
		m_ARinvoiceLine.setC_Charge_ID(p_C_Charge_ID);
		m_ARinvoiceLine.setQty(Env.ONE);
		//	Each
		m_ARinvoiceLine.setC_UOM_ID(100);
		//	Set Amount
		if(p_Amt == null)
			p_Amt = m_FTA_FarmerCredit.getAmt();
		m_ARinvoiceLine.setPrice(p_Amt);
		//	
		m_ARinvoiceLine.setTaxAmt();
		m_ARinvoiceLine.saveEx();
		
		m_ARInvoice.setDocAction(X_C_Invoice.DOCACTION_Complete);
		m_ARInvoice.processIt(X_C_Invoice.DOCACTION_Complete);
		//	Add Log
		addLog("@DocumentNo@ " + m_ARInvoice.getDocumentNo() 
				+ " - @GrandTotal@ = " + m_ARInvoice.getGrandTotal() 
				+ " @OK@");
		//	Set Generated
		generated++;
		
		if(m_FTA_FarmerCredit.getBeneficiary_ID() != 0){
			MInvoice m_APInvoice = new MInvoice(getCtx(), 0, get_TrxName());
			m_APInvoice.setAD_Org_ID(p_AD_Org_ID);
			m_APInvoice.setDateInvoiced(p_DateDoc);
			m_APInvoice.setIsSOTrx(false);
			m_APInvoice.setC_DocTypeTarget_ID(p_C_DocTypeInvoice_API_ID);
			//	Set Business PArtner
			bpartner = MBPartner.get(getCtx(), m_FTA_FarmerCredit.getBeneficiary_ID());
			m_APInvoice.setBPartner(bpartner);
			//	Set Farmer Credit
			m_APInvoice.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
			m_APInvoice.saveEx();
			//	Create Line
			MInvoiceLine m_APIinvoiceLine = new MInvoiceLine(m_APInvoice);
			m_APIinvoiceLine.setC_Charge_ID(m_FTA_FarmerCredit.getC_Charge_ID());
			m_APIinvoiceLine.setQty(Env.ONE);
			//	Each
			m_APIinvoiceLine.setC_UOM_ID(100);
			m_APIinvoiceLine.setPrice(m_FTA_FarmerCredit.getAmt());
			m_APIinvoiceLine.setTaxAmt();
			m_APIinvoiceLine.saveEx();
			
			m_APInvoice.setDocAction(X_C_Invoice.DOCACTION_Complete);
			m_APInvoice.processIt(X_C_Invoice.DOCACTION_Complete);
			//	Add Log
			addLog("@DocumentNo@ " + m_APInvoice.getDocumentNo() 
					+ " - @GrandTotal@ = " + m_APInvoice.getGrandTotal() 
					+ " @OK@");
			//	Set Generated
			generated++;
		}
		//	Set Generated
		m_FTA_FarmerCredit.setProcessing(true);
		m_FTA_FarmerCredit.saveEx();
		
		return "@Generated@ = " + generated;
	}

}
