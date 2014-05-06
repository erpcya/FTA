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
import org.compiere.model.MAttributeSet;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CalloutFTAAttributesReport extends CalloutEngine {
	
	public String attributeSet (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){		
		Integer p_M_AttributeSet_ID = (Integer) value;
		String printName = null;
		
		if (p_M_AttributeSet_ID == null 
				|| p_M_AttributeSet_ID.intValue() == 0)
			return "";
		
		MAttributeSet m_MAttributeSet = 
				new MAttributeSet(ctx, p_M_AttributeSet_ID, null);
		
		//	Get PrintName 
		printName = mTab.get_ValueAsString("PrintName").trim();
		
		if(printName.length() > 0)
			printName += "_";
			
		printName += m_MAttributeSet.getName();
		
		//	
		mTab.setValue("PrintName", printName);
		
		return "";
	}
	
	public String attribute (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){		
		Integer p_M_Attribute_ID = (Integer) value;
		String printName = null;
		MAttribute m_MAttribute = null;
		
		if (p_M_Attribute_ID == null 
				|| p_M_Attribute_ID.intValue() == 0)
			return "";
		
		m_MAttribute = 
				new MAttribute(ctx, p_M_Attribute_ID, null);
		
		//	Get PrintName 
		printName = mTab.get_ValueAsString("PrintName").trim();
		
		if(printName.length() > 0)
			printName += "_";
		
		printName += m_MAttribute.getName();
		//	
		mTab.setValue("PrintName", printName);
		
		return "";
	}
}
