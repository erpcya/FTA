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

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.util.DB;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 20/01/2014, 09:22:04
 *
 */
public class CalloutCDLReport extends CalloutEngine
{

	/**
	 * Set Print Name of CDL Category Name
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 20/01/2014, 09:22:04
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String cdlCategory (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		//	Parsed Value to Integer
		Integer p_CDL_Category_ID = (Integer) value;
		//	Validation not null not zero
		if(p_CDL_Category_ID == null 
				|| p_CDL_Category_ID == 0)
			return "";
		
		//	Definition sql
		String sql = "SELECT Name FROM FTA_CDL_Category " +
				" WHERE FTA_CDL_Category_ID = ? ";
		
		//	Set variable name
		String name = DB.getSQLValueString(null, sql, p_CDL_Category_ID);
		
		//	Validate name not null, not spaced 
		if(name == null 
				|| name == "")
			return "";
		else
			mTab.setValue("PrintName", name); // Set Print Name with name returned of sql
		
		return "";
	}//	End cdlCategory
	
}
