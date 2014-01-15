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

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MAttribute;
import org.compiere.model.X_M_Attribute;
import org.compiere.util.DB;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutCategoryCalcFilter extends CalloutEngine {
	
	/**
	 * Set attribute type
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 14/01/2014, 21:16:14
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String attribute (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value) {
		Integer m_M_Attribute_ID = (Integer)value;
		if (m_M_Attribute_ID == null || m_M_Attribute_ID.intValue() == 0)
			return "";
		
		//	Dixon Martinez 2014-01-15
		//	Set Attribute Value Type of Attribute Selected.
		
		//	Select Value Attribute Type Attribute depending.
		String sql = "SELECT AttributeValueType FROM M_Attribute WHERE M_Attribute_ID = ?";
		
		//	Save value returned for sql
		String attributeValueType = DB.getSQLValueString(null,sql , m_M_Attribute_ID);
		
		//	If the value of the type attribute is null or empty
		//	Returns empty if not sets the value		
		if(attributeValueType == null
				|| attributeValueType.equals("")){
			return "";
		}else 
			mTab.setValue("AttributeValueType", attributeValueType);
		
		//	End Dixon Martinez
		return "";
	}
}
