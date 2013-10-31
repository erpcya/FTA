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

import org.compiere.model.MCurrency;
import org.compiere.model.MSysConfig;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.spin.model.MFTAFarmerCredit;
import org.spin.model.MFTAInterestRate;
import org.spin.model.MFTAInterestType;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FarmerCreditInterestGenerate extends SvrProcess {

	/**	Organization						*/
	private int 		p_AD_Org_ID = 0;
	/**	Document Date						*/
	private Timestamp 	p_DateDoc = null;
	/**	Business Partner					*/
	private int			p_C_BPartner_ID = 0;
	/**	Farmer Credit						*/
	private int 		p_FTA_FarmerCredit_ID = 0;
	/**	Interest Type						*/
	private int			p_FTA_InterestType_ID = 0;
	private String 			trxName = null;
	private Trx 			trx = null;
	
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para.getParameterAsInt();
			else if(name.equals("FTA_FarmerCredit_ID"))
				p_FTA_FarmerCredit_ID = para.getParameterAsInt();
			else if(name.equals("FTA_InterestType_ID"))
				p_FTA_InterestType_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
		}
		//	Get Technical From Identifier
		if(p_FTA_FarmerCredit_ID == 0)
			p_FTA_FarmerCredit_ID = getRecord_ID();
		
		trxName = Trx.createTrxName("FCIG");
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
		//	Valid Farmer
		if(p_C_BPartner_ID == 0)
			throw new AdempiereUserError("@C_BPartner_ID@ @NotFound@");
		//	Valid Farmer Credit
		if(p_FTA_FarmerCredit_ID == 0)
			throw new AdempiereUserError("@FTA_FarmerCredit_ID@ @NotFound@");
		//	Valid Interes Type
		if(p_FTA_InterestType_ID == 0)
			throw new AdempiereUserError("@FTA_InterestType_ID@ @NotFound@");
		//	Get Precision
		int precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		//	Get Year Days
		int yearDays = MSysConfig.getIntValue("FTA_DAYS_FOR_CALCULATE_INTEREST", 0, Env.getAD_Client_ID(Env.getCtx()));

		//	Interest Type
		MFTAInterestType m_InterestType = new MFTAInterestType(getCtx(), p_FTA_InterestType_ID, trxName);
		//	Farmer Credit
		MFTAFarmerCredit m_FarmerCredit = new MFTAFarmerCredit(getCtx(), p_FTA_FarmerCredit_ID, trxName);
		//	
		BigDecimal openAmt = DB.getSQLValueBD(trxName, "SELECT SUM(ft.Amt) Amt " +
				"FROM FTA_Fact ft " +
				"INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinitionLine_ID = ft.FTA_CreditDefinitionLine_ID) " +
				"INNER JOIN FTA_CDL_Category cdlc ON(cdlc.FTA_CDL_Category_ID = cdl.FTA_CDL_Category_ID) " +
				"INNER JOIN FTA_CDL_CategoryInterest cdli ON(cdli.FTA_CDL_Category_ID = cdlc.FTA_CDL_Category_ID) " +
				"INNER JOIN FTA_InterestType it ON(it.FTA_InterestType_ID = cdli.FTA_InterestType_ID) " +
				"WHERE ft.C_BPartner_ID = " + m_FarmerCredit.getC_BPartner_ID() + " " +
				"AND ft.FTA_FarmerCredit_ID = " + m_FarmerCredit.getFTA_FarmerCredit_ID() + " " +
				"AND it.FTA_InterestType_ID = ?", m_InterestType.getFTA_InterestType_ID());
		
		if(openAmt == null
				|| openAmt.equals(Env.ZERO))
			return "";
		//	Net Days
		int netDays = 0;//m_InterestType.getNetDays();
		//	Valid Net Days
		if(netDays <= 0)
			return "@NetDays@ <= @0@";
		//	Get Rate
		MFTAInterestRate cdlCategoryRate = m_InterestType.getCurrentInterest(p_DateDoc);
		if(cdlCategoryRate == null)
			return "@FTA_CDL_CategoryRate@ @NotFound@";
		
		BigDecimal rate = cdlCategoryRate.getRate();
		//	Valid Rate
		if(rate == null
				|| rate.equals(Env.ZERO))
			return "@Rate@ = @0@";
		//	Harcode
		BigDecimal rateDays = new BigDecimal(yearDays);
		BigDecimal interestRate = rate.divide(rateDays, precision, BigDecimal.ROUND_HALF_UP);
		//	
		interestRate = interestRate.multiply(new BigDecimal(netDays));
		//	
		BigDecimal interestAmt = openAmt.multiply(interestRate)
										.setScale(precision, BigDecimal.ROUND_HALF_UP);
		//	
		
		/*MInvoice m_ARInvoice = new MInvoice(getCtx(), 0, trxName);
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
		
		//if(m_InterestType)
		//	
		m_ARinvoiceLine.setQty(Env.ONE);
		
		m_ARinvoiceLine.setPrice(interestAmt);
		//	
		m_ARinvoiceLine.setTaxAmt();
		m_ARinvoiceLine.saveEx();*/
		
		return null;
	}

}
