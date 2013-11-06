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
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.util.DB;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTACDLCategory extends X_FTA_CDL_Category {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3637334844358239481L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/10/2013, 15:20:40
	 * @param ctx
	 * @param FTA_CDL_Category_ID
	 * @param trxName
	 */
	public MFTACDLCategory(Properties ctx, int FTA_CDL_Category_ID,
			String trxName) {
		super(ctx, FTA_CDL_Category_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/10/2013, 15:20:40
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTACDLCategory(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	public static String T_DISTRIBUTION = "DD";
	public static String T_CATEGORY = "DC";
	/**
	 * Get Default Distribution Category or Create
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/11/2013, 15:07:49
	 * @param ctx
	 * @param trxName
	 * @return
	 * @return MFTACDLCategory
	 */
	public static MFTACDLCategory getDefDistibutionCategory(Properties ctx, String type, String trxName){
		if(type == null
				|| type.length() == 0)
			return null;
		//	
		int m_FTA_CDL_Category_ID = DB.getSQLValue(trxName, "SELECT FTA_CDL_Category_ID "
				+ "FROM FTA_CDL_Category "
				+ "WHERE Value=?", type);
		//	
		if(m_FTA_CDL_Category_ID > 0)
			return new MFTACDLCategory(ctx, m_FTA_CDL_Category_ID, trxName);
		else {
			MFTACDLCategory category = new MFTACDLCategory(ctx, 0, trxName);
			if(type.equals(T_DISTRIBUTION)){
				category.setValue(T_DISTRIBUTION);
				category.setName(Msg.translate(ctx, "IsDistributionLine"));
			} else {
				category.setValue(T_CATEGORY);
				category.setName(Msg.translate(ctx, "M_Production_ID"));
			}
			//	
			category.saveEx();
			return category;
		}
	}

}
