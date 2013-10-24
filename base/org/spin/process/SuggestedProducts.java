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
import java.util.Properties;

import org.adempiere.exceptions.DBException;
import org.compiere.model.Query;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTAFarming;
import org.spin.model.MFTAProductsToApply;
import org.spin.model.MFTATechnicalFormLine;


/**
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *	<br> Suggested Products
 */
public class SuggestedProducts extends SvrProcess {

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub	
		sql.append("Select \n" 
					+"ts.AD_PInstance_ID, \n" 
					+"ts.T_Selection_ID, \n" 
					+"tsb.SP_QtyDosage, \n" 
					+"tsb.SP_DateFrom, \n" 
					+"tsb.SP_DateTo, \n" 
					+"MP.C_Uom_ID \n" 
					+"From  \n" 
					+"T_Selection ts \n" 
					+"Inner Join (Select  tsb.AD_PInstance_ID, \n" 
										+"tsb.T_Selection_ID,  \n" 
										+"Max(Case When tsb.ColumnName = 'SP_QtyDosage' Then tsb.Value_Number Else Null End) As SP_QtyDosage, \n" 
										+"Max(Case When tsb.ColumnName = 'SP_DateFrom' Then tsb.Value_Date Else Null End) As SP_DateFrom, \n" 
										+"Max(Case When tsb.ColumnName = 'SP_DateTo' Then tsb.Value_Date Else Null End) As SP_DateTo \n" 
								+"From T_Selection_Browse tsb   \n" 
								+"Group By \n" 
								+"tsb.AD_PInstance_ID, \n" 
								+"tsb.T_Selection_ID) tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID \n"  
					+"Inner Join M_Product mp On mp.M_Product_ID = ts.T_Selection_ID ");
		sql.append("Where ts.AD_PInstance_ID=?");
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		return "@Upated@="+addSuggestedProducts();
	}

	private int addSuggestedProducts()
	{

		int updates=0;
		PreparedStatement ps = null;
		ResultSet rs = null;
		MFTATechnicalFormLine tfl = new MFTATechnicalFormLine(getCtx(), getRecord_ID(), get_TrxName());
		MFTAFarming fming = new MFTAFarming(getCtx(), tfl.getFTA_Farming_ID(), get_TrxName());
		
		try {
			ps = DB.prepareStatement(sql.toString(),get_TrxName());
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			
			filter = "FTA_TechnicalFormLine_ID=? And M_Product_ID=?";
			while (rs.next()){
				//Get Product to Apply
				MFTAProductsToApply product = new Query(ctx,MFTAProductsToApply.Table_Name,filter.toString(),get_TrxName())
												.setOnlyActiveRecords(true)
												.setParameters(rs.getInt("T_Selection_ID"),getRecord_ID())
												.firstOnly();
				if (product==null){
					product = new MFTAProductsToApply(getCtx(), 0, get_TrxName());
					product.setFTA_TechnicalForm_ID(tfl.getFTA_TechnicalForm_ID());
					product.setFTA_TechnicalFormLine_ID(tfl.getFTA_TechnicalFormLine_ID());
					product.setM_Product_ID(rs.getInt("T_Selection_ID"));
					product.setDateFrom(rs.getTimestamp("SP_DateFrom"));
					product.setDateTo(rs.getTimestamp("SP_DateTo"));
					product.setQtySuggested(rs.getBigDecimal("SP_QtyDosage"));
					product.setSuggested_Uom_ID(rs.getInt("C_Uom_ID"));
					product.setQtyDosage(rs.getBigDecimal("SP_QtyDosage").multiply(fming.getArea()));
					product.setDosage_Uom_ID(rs.getInt("C_Uom_ID"));
					product.setQty(product.getQtyDosage());
					product.setC_UOM_ID(product.getDosage_Uom_ID());
				}
				else{
					product.setDateFrom(rs.getTimestamp("SP_DateFrom"));
					product.setDateTo(rs.getTimestamp("SP_DateTo"));
					product.setQtySuggested(rs.getBigDecimal("SP_QtyDosage"));
					product.setSuggested_Uom_ID(rs.getInt("C_Uom_ID"));
					product.setQtyDosage(rs.getBigDecimal("SP_QtyDosage").multiply(fming.getArea()));
					product.setDosage_Uom_ID(rs.getInt("C_Uom_ID"));
					product.setQty(product.getQtyDosage());
					product.setC_UOM_ID(product.getDosage_Uom_ID());
				}
				
				if (product!=null)
					product.saveEx(get_TrxName());
				
				updates++;
			}
			ps.close();
			rs.close();
		}catch (SQLException e){
			log.severe(e.getMessage());
			throw new DBException(e, sql.toString());      
		}
		finally{
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}
		
		return updates;
	}
	
	
	private CLogger log = CLogger.getCLogger(SuggestedProducts.class);
	
	/** Sql Filter	 */
	private String filter = new String();
	
	/** Sql **/
	private StringBuffer sql = new StringBuffer();
	
	/** Context	 */
	private Properties ctx = Env.getCtx();
	
}//SuggestedProducts
