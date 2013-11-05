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


import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
/**
 * 
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class InvoiceGenerate extends SvrProcess{

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("C_DocType_ID"))
				m_C_DocType_ID = para.getParameterAsInt();
			else if (name.equals("DocumentNo"))
				m_DocumentNo = para.getParameter().toString();
			else if (name.equals("ControlNo"))
				m_ControlNo =  para.getParameter().toString();
		}
		
		sql.append("Select \n" 
				+"ts.AD_PInstance_ID, \n" 
				+"ts.T_Selection_ID As FTA_FarmerLiquidation_ID, \n"
				+"tsb.C_BPartner_ID, \n"
				+"tsb.FTA_FarmerCredit_ID, \n"
				+"tsb.DateDoc, \n"
				+"tsb.M_Product_ID, \n"
				+"tsb.AvailableAmt \n"
				
				+"From  \n" 
				+"T_Selection ts \n" 
				+"Inner Join (Select  tsb.AD_PInstance_ID, \n" 
									+"tsb.T_Selection_ID,  \n" 
									+"Max(Case When tsb.ColumnName = 'LFI_C_BPartner_ID' Then tsb.Value_Number Else Null End) As C_BPartner_ID, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_FTA_FarmerCredit_ID' Then tsb.Value_Number Else Null End) As FTA_FarmerCredit_ID, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_DateDoc' Then tsb.Value_Date Else Null End) As DateDoc, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_M_Product_ID' Then tsb.Value_Number Else Null End) As M_Product_ID, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_Amt' Then tsb.Value_Number Else Null End) As Amt, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_AvailableAmt' Then tsb.Value_Number Else Null End) As AvailableAmt \n"
							+"From T_Selection_Browse tsb   \n" 
							+"Group By \n" 
							+"tsb.AD_PInstance_ID, \n" 
							+"tsb.T_Selection_ID) tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID \n"
				);

	sql.append(" Where ts.AD_PInstance_ID=? Order By ");
	
	log.fine(sql.toString());

	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		return createInvoices();
	}

	/**
	 * Create Invoice From Liquidations
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 03/11/2013, 18:59:49
	 * @return
	 * @return String
	 */
	private String createInvoices(){
		return "";
	}
	
	
	/** Document Type*/
	private int m_C_DocType_ID = 0;
	
	/** Document No*/
	private String m_DocumentNo = null;
	
	/** Control No*/
	private String m_ControlNo = null;
	
	/** Sql*/
	private StringBuffer sql = new StringBuffer();
	
	
}
