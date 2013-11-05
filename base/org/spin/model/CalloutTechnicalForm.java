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

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutTechnicalForm extends CalloutEngine {
	
	/**
	 * Set Quantity to Ordered
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/08/2013, 16:44:46
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String qty (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		BigDecimal m_QtyDosage = (BigDecimal)value;
		if (m_QtyDosage == null)
			return "";
		//	Set Quantity
		mTab.setValue("Qty", m_QtyDosage);
		return "";
	}
	
	/**
	 * Set Orderf UOM ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/08/2013, 16:49:56
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String uom (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_Dosage_Uom_ID = (Integer)value;
		if (m_Dosage_Uom_ID == null 
				|| m_Dosage_Uom_ID.intValue() == 0)
			return "";
		//	Set Quantity
		mTab.setValue("C_UOM_ID", m_Dosage_Uom_ID);
		return "";
	}
}
