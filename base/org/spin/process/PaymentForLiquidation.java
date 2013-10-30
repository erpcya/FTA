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

import java.util.Properties;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
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
		}
		
		
		sql.append("Select \n" 
				+"ts.AD_PInstance_ID, \n" 
				+"ts.T_Selection_ID, \n" 
				+"tsb.Amt, \n"
				+"liquidationavailable(fl.FTA_FarmerLiquidation_ID) AvailableAmt, \n"
				+"From  \n" 
				+"T_Selection ts \n" 
				+"Inner Join (Select  tsb.AD_PInstance_ID, \n" 
									+"tsb.T_Selection_ID,  \n" 
									+"Max(Case When tsb.ColumnName = 'LFP_Amt' Then tsb.Value_Number Else Null End) As Amt \n"  
							+"From T_Selection_Browse tsb   \n" 
							+"Group By \n" 
							+"tsb.AD_PInstance_ID, \n" 
							+"tsb.T_Selection_ID) tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID \n"
				+"Inner Join FTA_FarmerLiquidation fl On fl.FTA_FarmerLiquidation_ID = ts.T_Selection_ID \n"
				+"Left Join (Select Sum() FTA_)"
							);

	sql.append("Where ts.AD_PInstance_ID=?");
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	/** Log */
	private CLogger log = CLogger.getCLogger(PaymentForLiquidation.class);
	
	/** Sql **/
	private StringBuffer sql = new StringBuffer();
	
	/** Context	 */
	private Properties ctx = Env.getCtx();
	
	/** Charge */
	private int m_C_Charge_ID=0;
}
