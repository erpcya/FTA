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
import java.math.MathContext;
import java.sql.Timestamp;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MCurrency;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTABillOfExchange;
import org.spin.model.MFTACreditAct;
import org.spin.model.MFTAFCPaySchedule;
import org.spin.model.MFTAFarmerCredit;
import org.spin.model.X_FTA_BillOfExchange;
import org.spin.model.X_FTA_FarmerCredit;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FarmerCreditBEGenerate extends SvrProcess {

	/**	Organization			*/
	private int 		p_AD_Org_ID = 0;
	/**	Warehouse				*/
	private int 		p_C_BPartner_Location_ID = 0;
	/**	Credit Act				*/
	private int 		p_FTA_CreditAct_ID = 0;
	/**	Document Type Target	*/
	private int 		p_C_DocTypeTarget_ID = 0;
	/**	Document Date			*/
	private Timestamp	p_DateDoc = null;
	/**	Valid To				*/
	private Timestamp	p_ValidTo = null;
	/**	Farmer Credit			*/
	private int 		p_FTA_FarmerCredit_ID = 0;
	/**	Quantity				*/
	private int 		p_Qty = 0;
	/**	Created					*/
	private int 		m_Created = 0;
	/**	Precision							*/
	private int 		precision = 0;

	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("C_BPartner_Location_ID"))
				p_C_BPartner_Location_ID = para.getParameterAsInt();
			else if(name.equals("FTA_CreditAct_ID"))
				p_FTA_CreditAct_ID = para.getParameterAsInt();
			else if(name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
			else if (name.equals("ValidTo"))
				p_ValidTo = (Timestamp)para.getParameter();
			else if(name.equals("Qty"))
				p_Qty = para.getParameterAsInt();
		}
		//	Get Technical From Identifier
		if(p_FTA_FarmerCredit_ID == 0
				&& getTable_ID() == MFTAFarmerCredit.Table_ID)
			p_FTA_FarmerCredit_ID = getRecord_ID();
		//	
		if(p_FTA_CreditAct_ID == 0
				&& getTable_ID() == MFTACreditAct.Table_ID)
			p_FTA_CreditAct_ID = getRecord_ID();

	}


	@Override
	protected String doIt() throws Exception {
		//	Organization
		if(p_AD_Org_ID == 0)
			throw new AdempiereUserError("@AD_Org_ID@ @NotFount@");
		//	Valid Document Type Target
		if(p_C_DocTypeTarget_ID == 0)
			throw new AdempiereUserError("@C_DocTypeTarget_ID@ @NotFount@");
		//	Valid Document Date
		if(p_DateDoc == null)
			throw new AdempiereUserError("@DateDoc@ @NotFount@");
		//	Valid Quantity
		if(p_Qty <= 0)		
			p_Qty = 1;

		//	Get Precision
		precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));

		if(p_FTA_FarmerCredit_ID != 0){
			MFTAFarmerCredit m_FTA_FarmerCredit = new MFTAFarmerCredit(getCtx(), p_FTA_FarmerCredit_ID, get_TrxName());
			if(!m_FTA_FarmerCredit.getCreditType()
					.equals(X_FTA_FarmerCredit.CREDITTYPE_ReceptionAgreement)){//	Acuerdo de Recepcion
				validateBillOfExchange(m_FTA_FarmerCredit);
			}
		} else if(p_FTA_CreditAct_ID != 0) {
			MFTACreditAct m_CredtAct = new MFTACreditAct(getCtx(), p_FTA_CreditAct_ID, get_TrxName());
			MFTAFarmerCredit [] m_credits = m_CredtAct.getLines(true, "DocStatus = 'CO' AND CreditType <> 'R' ");
			//	Create Bill of Exchange
			for (MFTAFarmerCredit m_FarmerCredit : m_credits) {
				validateBillOfExchange(m_FarmerCredit);
			}
		}
		
		return "@Created@=" + m_Created;
	}
 
	
	private void validateBillOfExchange(MFTAFarmerCredit m_FTA_FarmerCredit) {
		// If is Generated
		int billOfExchange_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(be.FTA_BillOfExchange_ID) " +
				"FROM FTA_BillOfExchange be " +
				"WHERE be.DocStatus NOT IN('VO', 'RE') " +
				"AND be.FTA_FarmerCredit_ID = ?", m_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
		//	
		if(billOfExchange_ID == 0)
			validateCredit(m_FTA_FarmerCredit);		
	}


	private void validateCredit( MFTAFarmerCredit m_FTA_FarmerCredit) {
		if(m_FTA_FarmerCredit.isManagesPaymentProgram()){
			MFTAFCPaySchedule [] paySchedule = m_FTA_FarmerCredit.getPaySchedule(true, null);
			BigDecimal amt = null ;
			String msg = "@Generate@ @From@ @FTA_FC_PaySchedule_ID@";
			for (MFTAFCPaySchedule m_FTA_FC_PaySchedule : paySchedule) {
				amt = m_FTA_FC_PaySchedule.getDueAmt();
				if(amt == null
						|| amt.equals(Env.ZERO))
					continue;

				addBillOfExchange(m_FTA_FarmerCredit,m_FTA_FC_PaySchedule.get_ID(),amt,msg);
			}
		}else{
			BigDecimal approvedAmt = m_FTA_FarmerCredit.getApprovedAmt();
			if(approvedAmt == null
					|| approvedAmt.equals(Env.ZERO))
				return;
			BigDecimal amt = approvedAmt.divide(new BigDecimal(p_Qty), MathContext.DECIMAL128);
			String msg = "";
			for(int i = 0; i < p_Qty; i ++){
				addBillOfExchange(m_FTA_FarmerCredit,0,amt,msg);
			}
		}
		
		

	}


	/**
	 * Add Bill of Exchange
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 22/10/2013, 21:30:36
	 * @param p_FTA_FarmerCredit
	 * @return void
	 */
	private void addBillOfExchange(MFTAFarmerCredit p_FTA_FarmerCredit,int m_FTA_FC_PaySchedule,BigDecimal amt,String msg){
	
		//	
		MFTABillOfExchange m_FTA_BillOfExchange = new MFTABillOfExchange(getCtx(), 0, get_TrxName());
		//	Organization
		if(p_AD_Org_ID == 0)
			p_AD_Org_ID = p_FTA_FarmerCredit.getAD_Org_ID();

		m_FTA_BillOfExchange.setAD_Org_ID(p_AD_Org_ID);
		m_FTA_BillOfExchange.setC_DocType_ID(p_C_DocTypeTarget_ID);
		m_FTA_BillOfExchange.setDateDoc(p_DateDoc);
		m_FTA_BillOfExchange.setC_BPartner_ID(p_FTA_FarmerCredit.getC_BPartner_ID());
		//	
		m_FTA_BillOfExchange.setAmt(amt.setScale(precision, BigDecimal.ROUND_HALF_UP));
		m_FTA_BillOfExchange.setFTA_FarmerCredit_ID(p_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
		//	Set Location from farming
		if(p_C_BPartner_Location_ID == 0)
			p_C_BPartner_Location_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(fr.C_BPartner_Location_ID) " +
					"FROM FTA_Farm fr " +
					"INNER JOIN FTA_FarmDivision fd ON(fd.FTA_Farm_ID = fr.FTA_Farm_ID) " +
					"INNER JOIN FTA_Farming fm ON(fm.FTA_FarmDivision_ID = fd.FTA_FarmDivision_ID) " +
					"WHERE fm.FTA_FarmerCredit_ID = ?", p_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
		//	Set Location from any farm  own farmer
		if(p_C_BPartner_Location_ID == 0)
			p_C_BPartner_Location_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(fr.C_BPartner_Location_ID) " +
					"FROM FTA_Farm fr " +
					"WHERE fr.C_BPartner_ID = ?", p_FTA_FarmerCredit.getC_BPartner_ID());
		//	Is not Farmer
		if(p_C_BPartner_Location_ID == 0)
			throw new AdempiereException("@C_BPartner_Location_ID@ @from@ @FTA_Farm_ID@ @NotFount@");
		//	
		m_FTA_BillOfExchange.setC_BPartner_Location_ID(p_C_BPartner_Location_ID);
		if(p_ValidTo != null)
			m_FTA_BillOfExchange.setValidTo(p_ValidTo);

		m_FTA_BillOfExchange.setStatus(X_FTA_BillOfExchange.STATUS_Generated);
		
		if(p_FTA_FarmerCredit.isManagesPaymentProgram()
				&& m_FTA_FC_PaySchedule > 0)
			m_FTA_BillOfExchange.setFTA_FC_PaySchedule_ID(m_FTA_FC_PaySchedule);
		
		//	
		m_FTA_BillOfExchange.saveEx();

		//	Process Bill of Exchange
		m_FTA_BillOfExchange.setDocAction(X_FTA_BillOfExchange.DOCACTION_Complete);
		m_FTA_BillOfExchange.processIt(X_FTA_BillOfExchange.DOCACTION_Complete);
		m_FTA_BillOfExchange.saveEx();

		msg = msg.length() > 0 ? msg : "";
		
		
		addLog( msg + " @FTA_BillOfExchange_ID@: " + m_FTA_BillOfExchange.getDocumentNo() + 
				" - @Amt@ = " + m_FTA_BillOfExchange.getAmt().doubleValue());
		//	
		m_Created ++;
	}

}
