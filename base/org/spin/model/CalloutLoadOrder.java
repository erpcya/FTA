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
import org.compiere.util.DB;
import org.compiere.util.Env;

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
	
	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 18/11/2013, 15:52:19
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String bulk (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		
		if (value == null){
			return "";
		}
		
		if(value.equals(X_FTA_LoadOrder.OPERATIONTYPE_DeliveryBulkMaterial)){
			mTab.setValue("IsBulk", Boolean.TRUE);
		}else{
			mTab.setValue("IsBulk", Boolean.FALSE);
		}
			
		return "";
	}

	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 20/11/2013, 11:58:21
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String entryTicket (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		
		Integer m_EntriTicket_ID = (Integer)value;
		if (m_EntriTicket_ID == null || m_EntriTicket_ID.intValue() == 0)
			return "";
		
		MFTAEntryTicket m_EntryTicket = new MFTAEntryTicket(ctx, m_EntriTicket_ID.intValue(), null);
		
		//	Shipper
		mTab.setValue("M_Shipper_ID", m_EntryTicket.getM_Shipper_ID());
		//	Vehicle
		mTab.setValue("FTA_Vehicle_ID", m_EntryTicket.getFTA_Vehicle_ID());
		//	Driver
		mTab.setValue("FTA_Driver_ID", m_EntryTicket.getFTA_Driver_ID());
		return "";
	}

	public String loadCapacity (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		
		Integer m_VehicleType_ID = (Integer)value;
		if (m_VehicleType_ID == null || m_VehicleType_ID.intValue() == 0)
			return "";
		
		MFTAVehicleType m_VehicleType = new MFTAVehicleType(ctx, m_VehicleType_ID.intValue(), null);
				
		//	Load Capacity
		mTab.setValue("LoadCapacity", m_VehicleType.getLoadCapacity());

		return "";
	}

}
