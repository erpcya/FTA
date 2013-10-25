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

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MProduct;
import org.compiere.model.X_C_Invoice;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
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
	private String 		p_GeneratePaySelect = null;
	/**	Charge								*/
	private int 		p_C_Charge_ID = 0;
	/**	Product								*/
	private int 		p_M_Product_ID = 0;
	/**	Amount								*/
	private BigDecimal	p_Amt = null;
	/**	Farmer Credit						*/
	private MFTAFarmerCredit 	m_FTA_FarmerCredit = null;
	/**	Business Partner					*/
	private MBPartner 	bpartner = null;
	
	/**	Generated							*/
	private int 		generated = 0;
	
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
			else if(name.equals("C_Charge_ID"))
				p_C_Charge_ID = para.getParameterAsInt();
			else if(name.equals("M_Product_ID"))
				p_M_Product_ID = para.getParameterAsInt();
			else if(name.equals("Amt"))
				p_Amt = (BigDecimal)para.getParameter();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
			else if(name.equals("GeneratePaySelect"))
				p_GeneratePaySelect = (String) para.getParameter();
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
	
		m_FTA_FarmerCredit = new MFTAFarmerCredit(getCtx(), p_FTA_FarmerCredit_ID, get_TrxName());
		
		//	Valid AP Invoice
		if(m_FTA_FarmerCredit.getBeneficiary_ID() != 0
				&& m_FTA_FarmerCredit.getCreditType()
					.equals(X_FTA_FarmerCredit.CREDITTYPE_Loan)
				&& p_C_DocTypeInvoice_API_ID == 0)
			throw new AdempiereUserError("@C_DocTypeInvoice_ID@ @NotFound@");
		//	Get Business Partner
		bpartner = MBPartner.get(getCtx(), m_FTA_FarmerCredit.getC_BPartner_ID());
		
		int reference_ID = 0;
		if(m_FTA_FarmerCredit.getCreditType()
				.equals(X_FTA_FarmerCredit.CREDITTYPE_Loan))
			reference_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(i.C_Invoice_ID) " +
				"FROM C_Invoice i " +
				"WHERE i.DocStatus NOT IN('VO', 'RE') " +
				"AND i.IsSOTrx = 'Y' " +
				"AND i.FTA_FarmerCredit_ID = ? " +
				"AND i.C_BPartner_ID = " + m_FTA_FarmerCredit.getC_BPartner_ID(), m_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
		//	
		if(reference_ID == 0){
			addCredit();
			if(p_GeneratePaySelect != null
					&& p_GeneratePaySelect.equals("Y"))
				generatePaySelect();
		}
		//	
		if(m_FTA_FarmerCredit.getBeneficiary_ID() != 0){
			reference_ID = 0;
			if(m_FTA_FarmerCredit.getCreditType()
					.equals(X_FTA_FarmerCredit.CREDITTYPE_Loan))
				reference_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(i.C_Invoice_ID) " +
					"FROM C_Invoice i " +
					"WHERE i.DocStatus NOT IN('VO', 'RE') " +
					"AND i.IsSOTrx = 'N' " +
					"AND i.FTA_FarmerCredit_ID = ? " 
					+ "AND i.C_BPartner_ID = " + m_FTA_FarmerCredit.getBeneficiary_ID(), m_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
			//	
			if(reference_ID == 0){
				addDebit();
			}
		}		
		return "@Generated@ = " + generated;
	}
	
	/**
	 * Create Credit Document
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/10/2013, 10:41:25
	 * @return void
	 */
	private void addCredit(){
		MInvoice m_ARInvoice = new MInvoice(getCtx(), 0, get_TrxName());
		m_ARInvoice.setAD_Org_ID(p_AD_Org_ID);
		m_ARInvoice.setDateInvoiced(p_DateDoc);
		m_ARInvoice.setIsSOTrx(true);
		m_ARInvoice.setC_DocTypeTarget_ID(p_C_DocTypeInvoice_ARI_ID);
		//	Set Business PArtner
		
		m_ARInvoice.setBPartner(bpartner);
		//	Set Farmer Credit
		m_ARInvoice.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
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
		m_ARinvoiceLine.setPrice(p_Amt);
		//	
		m_ARinvoiceLine.setTaxAmt();
		m_ARinvoiceLine.saveEx();
		//	Complete
		completeDoument(m_ARInvoice);
	}
	
	/**
	 * Create Debit Document
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/10/2013, 10:42:25
	 * @return void
	 */
	private void addDebit(){
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
		//	Set Charge and Product
		setChargeProduct(m_APIinvoiceLine);
		//	
		m_APIinvoiceLine.setQty(Env.ONE);
		//	Each
		m_APIinvoiceLine.setPrice(m_FTA_FarmerCredit.getAmt());
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
		//	Add Log
		addLog("@DocumentNo@ " + m_Invoice.getDocumentNo() 
				+ " - @GrandTotal@ = " + m_Invoice.getGrandTotal() 
				+ " @OK@");
		//	Set Generated
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
	
	private void generatePaySelect(){
		
	}
}
