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
import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CallOutEntryTicket extends CalloutEngine {

	/**
	 * Set the Business PArtner in the Entry Ticket
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/09/2013, 10:44:16
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String mobilizationGuide (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_FTA_MobilizationGuide_ID = (Integer)value;
		if (m_FTA_MobilizationGuide_ID == null || m_FTA_MobilizationGuide_ID.intValue() == 0)
			return "";
		
		//	get Mobilization Guide
		String sql = new String("SELECT f.C_BPartner_ID " +
				"FROM FTA_Farm f " +
				"INNER JOIN FTA_FarmDivision fd ON(fd.FTA_Farm_ID = f.FTA_Farm_ID) " +
				"INNER JOIN FTA_Farming fg ON(fg.FTA_FarmDivision_ID = fd.FTA_FarmDivision_ID) " +
				"INNER JOIN FTA_MobilizationGuide mg ON(mg.FTA_Farming_ID = fg.FTA_Farming_ID) " +
				"WHERE mg.FTA_MobilizationGuide_ID = ?");
		//
		int m_C_BPartner_ID = DB.getSQLValue(null, sql, m_FTA_MobilizationGuide_ID);
		//	Set Business Partner
		mTab.setValue("C_BPartner_ID", m_C_BPartner_ID);
		
		return "";
	}
	
	/**
	 * Set Concext Shipper
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/10/2013, 16:19:10
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String shipper (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_M_Shipper_ID = (Integer)value;
		if (m_M_Shipper_ID == null || m_M_Shipper_ID.intValue() == 0)
			Env.setContext(ctx, WindowNo, "M_Shipper_ID", 0);
		
		return "";
	}
	
	/**
	 * Set Business Partner of Order
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 12/12/2013, 11:33:52
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String order (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_Order_ID = (Integer)value;
		if (m_Order_ID == null || m_Order_ID.intValue() == 0)
			return "";
		
		MOrder m_Order = new MOrder(Env.getCtx(), m_Order_ID, null);
		mTab.setValue("C_BPartner_ID", m_Order.getC_BPartner_ID());
		return "";
		
	}
	
	public String isostrx (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		String p_OperationType = (String)value;
		if (p_OperationType  == null || p_OperationType.equals("")){
			Env.setContext(ctx, WindowNo, "IsSOTrx", "");
			return "";
		}
		
		if(p_OperationType.equals(X_FTA_EntryTicket.OPERATIONTYPE_RawMaterialReceipt)
				|| p_OperationType.equals(X_FTA_EntryTicket.OPERATIONTYPE_ProductBulkReceipt)
					|| p_OperationType.equals(X_FTA_EntryTicket.OPERATIONTYPE_ReceiptMoreThanOneProduct)
					|| p_OperationType.equals(X_FTA_EntryTicket.OPERATIONTYPE_MaterialInputMovement)){
			Env.setContext(ctx, WindowNo, "IsSOTrx", "N");
		}else{
			Env.setContext(ctx, WindowNo, "IsSOTrx", "Y");
		}
		
		return "";
	}
}
