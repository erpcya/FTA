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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.spin.model.MFTAPaymentRequest;

/**
 * Generate Payment Request From Liquidation
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class PaymentForLiquidation extends SvrProcess{
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("C_Charge_ID"))
				m_C_Charge_ID = para.getParameterAsInt();
			else if (name.equals("C_DocType_ID"))
				m_C_DocType_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc"))
				m_DateDoc = (Timestamp) para.getParameter();
			else if (name.equals("DocAction"))
				m_DocAction = para.getParameter().toString();
			
		}
		
		sql.append("Select \n" 
				+"ts.AD_PInstance_ID, \n" 
				+"ts.T_Selection_ID As FTA_FarmerLiquidation_ID, \n" 
				+"tsb.Amt, \n"
				+"tsb.AvailableAmt, \n"
				+"tsb.PayAmt, \n"
				+"tsb.C_BPartner_ID, \n"
				+"tsb.FTA_FarmerCredit_ID \n"
				+"From  \n" 
				+"T_Selection ts \n" 
				+"Inner Join (Select  tsb.AD_PInstance_ID, \n" 
									+"tsb.T_Selection_ID,  \n" 
									+"Max(Case When tsb.ColumnName = 'LFP_Amt' Then tsb.Value_Number Else Null End) As Amt, \n"  
									+"Max(Case When tsb.ColumnName = 'LFP_PayAmt' Then tsb.Value_Number Else Null End) As PayAmt, \n"
									+"Max(Case When tsb.ColumnName = 'LFP_AvailableAmt' Then tsb.Value_Number Else Null End) As AvailableAmt, \n"
									+"Max(Case When tsb.ColumnName = 'LFP_C_BPartner_ID' Then tsb.Value_Number Else Null End) As C_BPartner_ID, \n"
									+"Max(Case When tsb.ColumnName = 'LFP_FTA_FarmerCredit_ID' Then tsb.Value_Number Else Null End) As FTA_FarmerCredit_ID \n"
							+"From T_Selection_Browse tsb   \n" 
							+"Group By \n" 
							+"tsb.AD_PInstance_ID, \n" 
							+"tsb.T_Selection_ID) tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID \n"
				);

	sql.append("Where ts.AD_PInstance_ID=?");
	log.fine(sql.toString());
	
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		return createPaymentRequest();
	}
	
	/**
	 * Create Payment Request
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 30/10/2013, 16:38:07
	 * @return
	 * @return String
	 */
	private String createPaymentRequest()
	{
		
		PreparedStatement ps =null;
		ResultSet rs = null;
		
		try{
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			
			while (rs.next()){
				MFTAPaymentRequest pr = new MFTAPaymentRequest(getCtx(), 0, get_TrxName());
				pr.setC_DocType_ID(m_C_DocType_ID);
				pr.setDateDoc(m_DateDoc);
				pr.setC_BPartner_ID(rs.getInt("C_BPartner_ID"));
				pr.setFTA_FarmerCredit_ID(rs.getInt("FTA_FarmerCredit_ID"));
				pr.setFTA_FarmerLiquidation_ID(rs.getInt("FTA_FarmerLiquidation_ID"));
				pr.setPayAmt(rs.getBigDecimal("PayAmt"));
				pr.setC_Charge_ID(m_C_Charge_ID);
				pr.save(get_TrxName());
				
				if (m_DocAction != null && m_DocAction.length() > 0)
				{
					pr.setDocAction(m_DocAction);
					pr.processIt (m_DocAction);
					pr.save(get_TrxName());
				}
				m_Created++;
			}
			
		}
		catch(SQLException ex){
			return ex.getMessage();
		}
		finally{
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}
	
		return "@Created@ "+ m_Created;
	}

	/** Log */
	private CLogger log = CLogger.getCLogger(PaymentForLiquidation.class);
	
	/** Sql **/
	private StringBuffer sql = new StringBuffer();
		
	/** Charge */
	private int m_C_Charge_ID=0;
	
	/** DocType */
	private int m_C_DocType_ID=0;

	/** DateDoc */
	private Timestamp m_DateDoc;
	
	/** Created */
	int m_Created = 0;

	String m_DocAction ="";
	/** Msg Return */
	String msg = "";
}
