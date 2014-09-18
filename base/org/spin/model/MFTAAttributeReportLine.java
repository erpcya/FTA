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
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;


/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class MFTAAttributeReportLine extends X_FTA_AttributeReportLine {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5986963582987351529L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 05/05/2014, 08:18:12
	 * @param ctx
	 * @param FTA_AttributesReportLine_ID
	 * @param trxName
	 */
	public MFTAAttributeReportLine(Properties ctx,
			int FTA_AttributeReportLine_ID, String trxName) {
		super(ctx, FTA_AttributeReportLine_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 05/05/2014, 08:18:12
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAAttributeReportLine(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		/*String name,sql;
		
		if(//newRecord ||
				is_ValueChanged(X_FTA_AttributeReportLine.COLUMNNAME_M_AttributeSet_ID)){
			sql = "SELECT Name FROM M_AttributeSet WHERE M_AttributeSet_ID = ?";
			
			name = DB.getSQLValueString(get_TrxName(), sql, getM_AttributeSet_ID());
			
			if(name != null)
				if(getPrintName() == null){
					setPrintName(name);
					return true;
				}else{ 
					setPrintName(getPrintName() + " " + name);
					return true;
				}
		}else if(//newRecord ||
					is_ValueChanged(X_FTA_AttributeReportLine.COLUMNNAME_M_Attribute_ID)){
			sql = "SELECT Name FROM M_Attribute WHERE M_Attribute_ID = ?";
			
			name = DB.getSQLValueString(get_TrxName(), sql, getM_Attribute_ID());
			
			if(name != null)
				if(getPrintName() == null){
					setPrintName(name);
					return true;
				}else{ 
					setPrintName(getPrintName() + " " + name);
					return true;
				}
		}else if(//newRecord ||
					is_ValueChanged(X_FTA_AttributeReportLine.COLUMNNAME_FTA_CategoryCalcGroup_ID)){
			sql = "SELECT Name FROM FTA_CategoryCalcGroup WHERE FTA_CategoryCalcGroup_ID = ?";
			
			name = DB.getSQLValueString(get_TrxName(), sql, getFTA_CategoryCalcGroup_ID());
			
			if(name != null)
				if(getPrintName() == null){
					setPrintName(name);
					return true;
				}else{ 
					setPrintName(getPrintName() + " " + name);
					return true;
				}
		}else if(//newRecord ||
					is_ValueChanged(X_FTA_AttributeReportLine.COLUMNNAME_FTA_CategoryCalc_ID)){
			sql = "SELECT Name FROM FTA_CategoryCalc  WHERE FTA_CategoryCalc_ID = ?";
			
			name = DB.getSQLValueString(get_TrxName(), sql, getFTA_CategoryCalc_ID());
			
			if(name != null)
				if(getPrintName() == null){
					setPrintName(name);
					return true;
				}else{ 
					setPrintName(getPrintName() + " " + name);
					return true;
				}
		}
			*/
		return true;
	}

}
