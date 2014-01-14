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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados.                    *
 * All Rights Reserved.                                                       *
 * Contributor(s): Carlos Parada www.erpconsultoresyasociados.com             *
 *****************************************************************************/
package org.spin.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.model.MPaySelection;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import org.spin.model.MFTAPaymentRequest;
/**
 * Generate Payment Selection From PayRequest
 * @author <a href="carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class PaySelectionGenerate extends SvrProcess{

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("C_BankAccount_ID"))
				m_C_BankAccount_ID = para.getParameterAsInt();
			else if (name.equals("IsReceipt"))
				m_IsReceipt = para.getParameter().toString().equals("Y");
			else if (name.equals("DateDoc"))
				m_DateDoc = (Timestamp) para.getParameter();
			else if (name.equals("PaymentRule"))
				m_PaymentRule = para.getParameter().toString();
			else if (name.equals("Name"))
				m_Name = para.getParameter().toString();
			
			
			
		}
		sql.append("Select \n" 
				+"ts.AD_PInstance_ID, \n" 
				+"ts.T_Selection_ID As FTA_PaymentRequest_ID, \n" 
				+"tsb.C_BPartner_ID, \n"
				+"tsb.DateDoc, \n"
				+"tsb.FTA_FarmerCredit_ID, \n"
				+"tsb.FTA_FarmerLiquidation_ID, \n"
				+"tsb.Name, \n"
				+"tsb.Description, \n"
				+"tsb.PayAmt, \n"
				+"Case When tsb.FTA_FarmerLiquidation_ID =0 OR tsb.FTA_FarmerLiquidation_ID IS NULL Then 1 Else 2 End PayType, \n"
				+"tsb.C_Charge_ID, \n"
				+"Coalesce(pr.C_BP_BankAccount_ID,0) C_BP_BankAccount_ID \n"
				+"From  \n" 
				+"T_Selection ts \n"
				+"Inner Join FTA_PaymentRequest pr On ts.T_Selection_ID = pr.FTA_PaymentRequest_ID \n"
				+"Inner Join (Select  tsb.AD_PInstance_ID, \n" 
									+"tsb.T_Selection_ID,  \n" 
									+"Max(Case When tsb.ColumnName = 'PRFP_C_BPartner_ID' Then tsb.Value_Number Else Null End) As C_BPartner_ID, \n"  
									+"Max(Case When tsb.ColumnName = 'PRFP_DateDoc' Then tsb.Value_Date Else Null End) As DateDoc, \n"
									+"Max(Case When tsb.ColumnName = 'PRFP_FTA_FarmerCredit_ID' Then tsb.Value_Number Else Null End) As FTA_FarmerCredit_ID, \n"
									+"Max(Case When tsb.ColumnName = 'PRFP_FTA_FarmerLiquidation_ID' Then tsb.Value_Number Else Null End) As FTA_FarmerLiquidation_ID, \n"
									+"Max(Case When tsb.ColumnName = 'PRFP_Name' Then tsb.Value_String Else Null End) As Name, \n"
									+"Max(Case When tsb.ColumnName = 'PRFP_Description' Then tsb.Value_String Else Null End) As Description, \n"
									+"Max(Case When tsb.ColumnName = 'PRFP_PayAmt' Then tsb.Value_Number Else Null End) As PayAmt, \n"
									+"Max(Case When tsb.ColumnName = 'PRFP_C_Charge_ID' Then tsb.Value_Number Else Null End) As C_Charge_ID \n"
							+"From T_Selection_Browse tsb   \n" 
							+"Group By \n" 
							+"tsb.AD_PInstance_ID, \n" 
							+"tsb.T_Selection_ID) tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID \n"
				);

	sql.append(" Where ts.AD_PInstance_ID=? Order By PayType,tsb.C_BPartner_ID,tsb.FTA_FarmerCredit_ID,tsb.FTA_FarmerLiquidation_ID,tsb.C_Charge_ID,pr.C_BP_BankAccount_ID  ");
	
	log.fine(sql.toString());
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		return createPaymentSelection();
	}
	
	
	private String createPaymentSelection()
	{
		
		PreparedStatement ps =null;
		ResultSet rs = null;
		
		try{
			//Create Pay Selection
			MPaySelection paysel = new MPaySelection(getCtx(), 0, get_TrxName());
			paysel.setName(m_Name);
			paysel.setDescription(m_Name);
			paysel.setC_BankAccount_ID(m_C_BankAccount_ID);
			paysel.setPayDate(m_DateDoc);
			paysel.setTotalAmt(m_PayAmt);
			paysel.setIsApproved(true);
			
			paysel.save(get_TrxName());
			
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			
			MPaySelectionCheck payselchek =null;
			
			while (rs.next()){
				
				if (m_C_BPartner_ID!=rs.getInt("C_BPartner_ID") || m_FTA_FarmerCredit_ID!=rs.getInt("FTA_FarmerCredit_ID") || m_PayType!=rs.getInt("PayType") || m_C_Charge_ID!=rs.getInt("C_Charge_ID") || m_C_BP_BankAccount_ID!=rs.getInt("C_BP_BankAccount_ID")){
					m_C_BPartner_ID = rs.getInt("C_BPartner_ID");
					m_FTA_FarmerCredit_ID = rs.getInt("FTA_FarmerCredit_ID");
					m_PayType = rs.getInt("PayType");
					m_C_Charge_ID=rs.getInt("C_Charge_ID");
					m_C_BP_BankAccount_ID= rs.getInt("C_BP_BankAccount_ID");
					
					payselchek = new MPaySelectionCheck(getCtx(), 0, get_TrxName());
					payselchek.setC_PaySelection_ID(paysel.getC_PaySelection_ID());
					payselchek.setC_BPartner_ID(rs.getInt("C_BPartner_ID"));
					payselchek.setPaymentRule(m_PaymentRule);
					payselchek.setQty(Env.ONE.intValue());
					payselchek.setPayAmt(Env.ZERO);
					payselchek.setDiscountAmt(Env.ZERO);
					payselchek.setIsReceipt(m_IsReceipt);
					payselchek.setC_BP_BankAccount_ID(m_C_BP_BankAccount_ID);
					payselchek.setProcessed(true);
				}
				
				payselchek.setPayAmt(payselchek.getPayAmt().add(rs.getBigDecimal("PayAmt")));
				payselchek.save(get_TrxName());
				m_PayAmt=m_PayAmt.add(rs.getBigDecimal("PayAmt"));
				MFTAPaymentRequest pr = new MFTAPaymentRequest(getCtx(), rs.getInt("FTA_PaymentRequest_ID"), get_TrxName());
				pr.setC_PaySelectionCheck_ID(payselchek.getC_PaySelectionCheck_ID());
				pr.save(get_TrxName());
				
			}
			
			m_Created++;
			paysel.setTotalAmt(m_PayAmt);
			paysel.setProcessed(true);
			paysel.save(get_TrxName());
			
			
		}
		catch(Exception ex){
			rollback();
			return ex.getMessage();
		}
		finally{
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}
		
		return "@Created@ "+ m_Created;
	}
	
	/** Log */
	private CLogger log = CLogger.getCLogger(PaySelectionGenerate.class);
	
	/** Sql **/
	private StringBuffer sql = new StringBuffer();
		
	/** Charge */
	private int m_C_BankAccount_ID=0;
	
	/** DocType */
	private boolean m_IsReceipt= false;

	/** DateDoc */
	private Timestamp m_DateDoc;
	
	/** Pay Amt */
	private BigDecimal m_PayAmt = Env.ZERO;
	
	/** Created */
	int m_Created = 0;
	
	/**Payment Rule*/ 
	String m_PaymentRule = new String();
	
	/** Msg Return */
	String msg = "";
	
	String m_Name = "";
	
	/** BPartner*/
	int m_C_BPartner_ID=0;
	
	/** FTA_FarmerCredit_ID */
	int m_FTA_FarmerCredit_ID =0;
	
	/** Farmer Liquidation */
	int m_PayType=0;
	
	/** Charge */
	int m_C_Charge_ID=0;
	
	/** C_BP_BankAccount_ID */
	int m_C_BP_BankAccount_ID = 0;

}
