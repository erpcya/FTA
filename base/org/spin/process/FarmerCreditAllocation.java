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
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTAFarmerCredit;


/**
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *	<br> Allocate Farmer Credit to Credit act
 */
public class FarmerCreditAllocation extends SvrProcess {

	@Override
	protected void prepare() {
		sql.append("Select \n"+ 
				"ts.AD_PInstance_ID , \n"+
				"ts.T_Selection_ID AS FTA_FarmerCredit_ID, \n"+
				"tsb.ApprovedQty, \n"+
				"tsb.ApprovedAmt \n"+
				"From   \n"+
				"T_Selection ts \n"+ 
				"Inner Join (Select  tsb.AD_PInstance_ID, \n"+
				"	tsb.T_Selection_ID, \n"+
				"	Max(Case When tsb.ColumnName = 'ACA_ApprovedQty' Then tsb.Value_Number Else Null End) As ApprovedQty, \n"+ 
				"	Max(Case When tsb.ColumnName = 'ACA_ApprovedAmt' Then tsb.Value_Number Else Null End) As ApprovedAmt  \n"+
				"	From T_Selection_Browse tsb  \n"+
				"	Group By \n"+
				"	tsb.AD_PInstance_ID, \n"+
				"	tsb.T_Selection_ID)  \n"+
				"tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID ");
		sql.append("Where ts.AD_PInstance_ID=?");
		log.fine(sql.toString());
		// TODO Auto-generated method stub		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		String result="";
		m_FTA_CreditAct_ID = getRecord_ID();
		PreparedStatement ps=null;
		ResultSet rs =null;
		
		try{
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			
			while(rs.next()){
				MFTAFarmerCredit fc = new MFTAFarmerCredit(getCtx(), rs.getInt("FTA_FarmerCredit_ID"), get_TrxName());
				if(fc.getFTA_CreditAct_ID()==0){
					fc.setFTA_CreditAct_ID(m_FTA_CreditAct_ID);
					fc.setApprovedAmt(rs.getBigDecimal("ApprovedAmt"));
					fc.setApprovedQty(rs.getBigDecimal("ApprovedQty"));
				}
				else{
					fc.setFTA_CreditAct_ID(0);
					fc.setApprovedAmt(Env.ZERO);
					fc.setApprovedQty(Env.ZERO);
				}
				m_Updated++;
				fc.save(get_TrxName());
			}
			result ="@Updated@="+m_Updated;
		}
		catch (SQLException e){
			result = e.getMessage();
		}
		finally{
    		DB.close(rs, ps);
    		rs = null; ps= null;
    	}
		
		return result;
	}
	
	/** credit	 */
	private int m_FTA_CreditAct_ID =0;
	
	/** Logger	 */
	private CLogger log = CLogger.getCLogger(FarmerCreditAllocation.class);
	
	/** Sql Filter	 */
	private StringBuffer sql = new StringBuffer();

	
	/** Records Updated	 */
	private int m_Updated=0;
}//FarmingAllocation
