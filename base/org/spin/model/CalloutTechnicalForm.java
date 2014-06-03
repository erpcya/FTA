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
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.util.DB;
import org.compiere.util.Env;

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
	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 29/04/2014, 09:56:05
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		if(MSysConfig.getBooleanValue("VALID_QTY_ON_HAND_IN_TECHNICAL_FORM", false)){

			Integer M_Product_ID = (Integer) mTab.getValue("M_Product_ID");
			Integer p_M_Warehouse_ID = (Integer) mTab.getValue("M_Warehouse_ID");
			BigDecimal qty = (BigDecimal) mTab.getValue("Qty");
			
			if(qty == null
					|| qty.equals(Env.ZERO))
				return "";
			
			if (M_Product_ID == null 
					|| M_Product_ID.intValue() == 0)
				return "";
				
			MProduct product = 
					MProduct.get (ctx, M_Product_ID.intValue());
			
			if(product.isStocked()){
				
				StringBuffer sql = new StringBuffer(" SELECT SUM(QtyOnHand - QtyReserved) QtyOnHand "
						+ " FROM M_Storage "
						+ " WHERE M_Product_ID = ?");
				
				//	Warehouse
				if(p_M_Warehouse_ID != null 
						&& p_M_Warehouse_ID.intValue() != 0)
					sql.append("AND EXISTS(SELECT 1 " +
							"FROM M_Locator l " +
							"WHERE l.M_Locator_ID = M_Storage.M_Locator_ID " +
							"AND l.M_Warehouse_ID = ").append(p_M_Warehouse_ID).append(") ");
				
						
				BigDecimal qtyOnHand = DB.getSQLValueBD(null, sql.toString(), product.get_ID());
				
				if(qtyOnHand == null)
					qtyOnHand = Env.ZERO;
				
				if(qtyOnHand.compareTo(qty) < 0){
					mTab.fireDataStatusEEvent ("InsufficientQtyAvailable", qtyOnHand.toString(), false);
					return "";
				}
			}

		}
		
		return "";
	}
}
