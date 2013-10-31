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
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MCurrency;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.X_C_Invoice;
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
	/**	Valid From							*/
	private Timestamp	p_ValidFrom = null;
	/**	Valid From To						*/
	private Timestamp	p_ValidFrom_To = null;
	/**	Invoice								*/
	private MInvoice	m_Invoice = null;
	/**	Precision							*/
	private int 		precision = 0;
	
	private MFTAInterestType m_InterestType = null;
	private MFTAFarmerCredit m_FarmerCredit = null;
	private MFTAInterestRate cdlCategoryRate = null;
	
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
			else if (name.equals("ValidFrom")){
				p_ValidFrom = (Timestamp)para.getParameter();
				p_ValidFrom_To = (Timestamp)para.getParameter_To();
			}
		}
		//	Get Technical From Identifier
		if(p_FTA_FarmerCredit_ID == 0)
			p_FTA_FarmerCredit_ID = getRecord_ID();
		
		trxName = Trx.createTrxName("FCDG");
		trx = Trx.get(trxName, true);
	}


	@Override
	protected String doIt() throws Exception {		
		String out = "";
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
		precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		//	Interest Type
		m_InterestType = new MFTAInterestType(getCtx(), p_FTA_InterestType_ID, get_TrxName());
		//	Farmer Credit
		m_FarmerCredit = new MFTAFarmerCredit(getCtx(), p_FTA_FarmerCredit_ID, get_TrxName());
		try {
			if(m_InterestType.getCalculationType()
					.equals(MFTAInterestType.CALCULATIONTYPE_CreditDefinitionCategory))
				out = calculateCDL();
			trx.commit();
		} catch (Exception e) {
			trx.rollback();
			log.log(Level.SEVERE, "Error:", e);
			out = e.getMessage();
		}
		//	Commit
		return out;
	}
	
	/**
	 * Calculate Amount based in Credit Definition Category
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 31/10/2013, 08:56:01
	 * @return
	 * @return String
	 */
	private String calculateCDL() throws Exception {
		//	Get Rate
		cdlCategoryRate = m_InterestType.getCurrentInterest(p_DateDoc);
		if(cdlCategoryRate == null)
			return "@FTA_CDL_CategoryRate@ @NotFound@";
		
		BigDecimal rate = cdlCategoryRate.getRate();
		//	Valid Rate
		if(rate == null
				|| rate.equals(Env.ZERO))
			return "@Rate@ = @0@";
			
		if(m_InterestType.getCalculationType() == null)
			return "@CalculationType@ @NotFound@";
		//	
		BigDecimal openAmt = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(ft.Amt) Amt " +
			"FROM FTA_Fact ft " +
			"INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinitionLine_ID = ft.FTA_CreditDefinitionLine_ID) " +
			"INNER JOIN FTA_CDL_Category cdlc ON(cdlc.FTA_CDL_Category_ID = cdl.FTA_CDL_Category_ID) " +
			"INNER JOIN FTA_CDL_CategoryInterest cdli ON(cdli.FTA_CDL_Category_ID = cdlc.FTA_CDL_Category_ID) " +
			"INNER JOIN FTA_InterestType it ON(it.FTA_InterestType_ID = cdli.FTA_InterestType_ID) " +
			"WHERE ft.AD_Table_ID <> " + MOrder.Table_ID + " " + 
			"AND ft.C_BPartner_ID = " + m_FarmerCredit.getC_BPartner_ID() + " " +
			"AND ft.FTA_FarmerCredit_ID = " + m_FarmerCredit.getFTA_FarmerCredit_ID() + " " +
			"AND it.FTA_InterestType_ID = ?", m_InterestType.getFTA_InterestType_ID());
			
		if(openAmt == null
				|| openAmt.equals(Env.ZERO))
			return "@OpenAmt@ = @0@";
		//	
		rate = rate.divide(Env.ONEHUNDRED);
		BigDecimal interestAmt = openAmt.multiply(rate)
										.setScale(precision, BigDecimal.ROUND_HALF_UP);
		//	Create a Document
		addDocument(interestAmt);
		return "@OK@";
	}
	
	private String calculateCDLforDocument() throws Exception {
		//	Get Rate
		cdlCategoryRate = m_InterestType.getCurrentInterest(p_DateDoc);
		if(cdlCategoryRate == null)
			return "@FTA_CDL_CategoryRate@ @NotFound@";
		
		BigDecimal rate = cdlCategoryRate.getRate();
		//	Valid Rate
		if(rate == null
				|| rate.equals(Env.ZERO))
			return "@Rate@ = @0@";
			
		if(m_InterestType.getCalculationType() == null)
			return "@CalculationType@ @NotFound@";
		
		//	Calculate Rate
		rate = rate.divide(Env.ONEHUNDRED);
		
		String sql = new String("SELECT ft.Record_ID, ft.AD_Table_ID, ft.DateDoc, " +
				"ft.Amt, abs(daysbetween(ft.DateDoc, ?)) DaysDue " +
				"FROM FTA_Fact ft " +
				"INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinitionLine_ID = ft.FTA_CreditDefinitionLine_ID) " +
				"INNER JOIN FTA_CDL_Category cdlc ON(cdlc.FTA_CDL_Category_ID = cdl.FTA_CDL_Category_ID) " +
				"INNER JOIN FTA_CDL_CategoryInterest cdli ON(cdli.FTA_CDL_Category_ID = cdlc.FTA_CDL_Category_ID) " +
				"INNER JOIN FTA_InterestType it ON(it.FTA_InterestType_ID = cdli.FTA_InterestType_ID) " +
				"WHERE ft.AD_Table_ID <> ? " +
				"AND ft.C_BPartner_ID = ? " + 
				"AND ft.FTA_FarmerCredit_ID = ? " + 
				"AND it.FTA_InterestType_ID = ? " +
				"AND ft.DateDoc >= ? AND ft.DateDoc <= ? " +
				"GROUP BY ft.Record_ID, ft.AD_Table_ID, ft.DateDoc, ft.Amt " +
				"ORDER BY ft.DateDoc");
		
		log.fine("SQL=" + sql);
		
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = null;
		//	
		try {
			//	Add Parameters
			int i = 1;
			pstmt.setTimestamp(i++, p_ValidFrom_To);
			pstmt.setInt(i++, MOrder.Table_ID);
			pstmt.setInt(i++, m_FarmerCredit.getC_BPartner_ID());
			pstmt.setInt(i++, m_FarmerCredit.getFTA_FarmerCredit_ID());
			pstmt.setInt(i++, m_InterestType.getFTA_InterestType_ID());
			pstmt.setTimestamp(i++, p_ValidFrom);
			pstmt.setTimestamp(i++, p_ValidFrom_To);
			
			rs = pstmt.executeQuery();
			if(rs != null){
				while(rs.next()){
					int m_Record_ID 		= rs.getInt("Record_ID");
					int m_AD_Table_ID 		= rs.getInt("AD_Table_ID");
					Timestamp m_DateDoc		= rs.getTimestamp("DateDoc");
					BigDecimal m_Amt		= rs.getBigDecimal("Amt");
					int m_DaysDue			= rs.getInt("DaysDue");
					
					if(m_Amt == null
							|| m_Amt.equals(Env.ZERO))
						continue;
					
					if(m_Invoice == null)
						;
					
					BigDecimal interestAmt = m_Amt.multiply(rate)
							.multiply(new BigDecimal(m_DaysDue))
							.setScale(precision, BigDecimal.ROUND_HALF_UP);
					
					
					
				}
			}
			//	Close DB
			DB.close(rs, pstmt);
		} catch (SQLException e) {
			DB.close(rs, pstmt);
			throw new Exception(e);
		}
		//	Create a Document
		addDocument(interestAmt);
		return "@OK@";
	}
	
	/**
	 * Add Document
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 31/10/2013, 11:03:30
	 * @param interestAmt
	 * @return void
	 */
	private void addDocument(BigDecimal interestAmt, int p_DocAffected_ID){
		if(m_Invoice == null)
			createHeader();
		//	Create Line
		MInvoiceLine m_InvoiceLine = new MInvoiceLine(m_Invoice);
		//	Set Charge and Product
		if(m_InterestType.getC_Charge_ID() != 0)
			m_InvoiceLine.setC_Charge_ID(m_InterestType.getC_Charge_ID());
		else if(m_InterestType.getM_Product_ID() != 0)
			m_InvoiceLine.setM_Product_ID(m_InterestType.getM_Product_ID());
		//	
		m_InvoiceLine.setDescription(m_InterestType.getName());
		//	
		m_InvoiceLine.setQty(Env.ONE);
		//	Each
		m_InvoiceLine.setPrice(interestAmt);
		//	Set Document Affected
		if(p_DocAffected_ID != 0)
			m_InvoiceLine.set_ValueOfColumn("DocAffected_ID", p_DocAffected_ID);
		//	
		m_InvoiceLine.setTaxAmt();
		m_InvoiceLine.saveEx();
		//	Complete
		completeDoument(m_Invoice);
	}
	
	/**
	 * Complete Document
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 31/10/2013, 11:03:22
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
	}
	
	/**
	 * Create a Header
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 31/10/2013, 19:01:10
	 * @return void
	 */
	private void createHeader(){
		m_Invoice = new MInvoice(getCtx(), 0, trxName);
		m_Invoice.setAD_Org_ID(p_AD_Org_ID);
		m_Invoice.setDateInvoiced(p_DateDoc);
		m_Invoice.setIsSOTrx(true);
		m_Invoice.setC_DocTypeTarget_ID(m_InterestType.getC_DocTypeTarget_ID());
		//	Set Business PArtner
		MBPartner bpartner = MBPartner.get(getCtx(), p_C_BPartner_ID);
		m_Invoice.setBPartner(bpartner);
		//	Set Farmer Credit
		m_Invoice.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
		m_Invoice.saveEx();
	}
}
