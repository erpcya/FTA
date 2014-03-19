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

import java.math.BigDecimal;
import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MDocType;
import org.compiere.model.MProduct;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutFarmerCredit extends CalloutEngine {

	/**
	 * Set Credit Type from DocBaseType
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/09/2013, 11:47:15
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String docType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_C_DocType_ID = (Integer)value;
		if (m_C_DocType_ID == null || m_C_DocType_ID.intValue() == 0)
			return "";
		
		MDocType m_DocType = MDocType.get(ctx, m_C_DocType_ID.intValue());
		//	Set Context
		Env.setContext(ctx, WindowNo, "DocBaseType", m_DocType.getDocBaseType());
		//	Set Credit Type
		String m_CreditType = m_DocType.getDocBaseType().substring(2);
		mTab.setValue("CreditType", m_CreditType);
		return "";
	}
	
	/**
	 * Change PArent Farmer Credit
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/10/2013, 09:38:20
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String bpartner (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_C_BPartner_ID = (Integer)value;
		if (m_C_BPartner_ID == null || m_C_BPartner_ID.intValue() == 0)
			return "";
		//	
		mTab.setValue("Parent_FarmerCredit_ID", null);
		return "";
	}
	/**
	 * Set UOM of Product
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_M_Product_ID = (Integer)value;
		if (m_M_Product_ID == null || m_M_Product_ID.intValue() == 0)
			return "";
		//	
		MProduct m_M_Product = MProduct.get(ctx, m_M_Product_ID);
		mTab.setValue("C_UOM_ID", m_M_Product.getC_UOM_ID());
		return "";
	}
	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 19/03/2014, 16:04:56
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String qty (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		BigDecimal p_Qty = (BigDecimal)value;
		if (p_Qty== null || p_Qty.intValue() == 0)
			return "";
		//	
		String sql = "SELECT Amt FROM FTA_CreditDefinition WHERE FTA_CreditDefinition_ID = ?"; 
		int i =  (Integer) mTab.getValue("FTA_CreditDefinition_ID");
		 
		BigDecimal amount = DB.getSQLValueBD(null, sql, i );
		mTab.setValue("Amt", amount);
		return "";
	}

}
