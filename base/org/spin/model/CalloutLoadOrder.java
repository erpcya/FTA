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
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CalloutLoadOrder extends CalloutEngine {

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 15/11/2013, 10:59:20
	 */
	public CalloutLoadOrder() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 15/11/2013, 11:05:11
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		String sql;
		String name = mField.getColumnName();
		name = name.substring(0, mField.getColumnName().length() -3 );
		
		Integer m_OrderLine_ID = (Integer)value;
		if (m_OrderLine_ID== null || m_OrderLine_ID.intValue() == 0){
			mTab.setValue("M_Product_ID", null);
			return "";
		}
		
		sql =	" SELECT l.M_Product_ID " +
				" FROM "+ name + " l " +
				" WHERE l." + mField.getColumnName() + " = ?";
		 
		Integer m_M_Product_ID = DB.getSQLValue(null, sql, m_OrderLine_ID);
		if (m_M_Product_ID == null || m_M_Product_ID.intValue() == 0)
			return "";
		
		mTab.setValue("M_Product_ID", m_M_Product_ID);		
		return "";
	}
	
}
