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
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.eevolution.model.MDDOrderLine;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CalloutLoadOrder extends CalloutEngine {

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
		String name = mField.getColumnName();
		Integer m_OrderLine_ID = (Integer)value;
		//	Set Product to (null)
		if(m_OrderLine_ID == null
				|| m_OrderLine_ID.intValue() == 0){
			mTab.setValue("M_Product_ID", null);
			return "";
		}
		//	Get Product from Order Line
		int m_M_Product_ID = 0;
		int m_MBPartner_ID = 0;
		
		if(name.equals("C_OrderLine_ID")){
			MOrderLine oLine = new MOrderLine(ctx, m_OrderLine_ID, null);
			m_M_Product_ID = oLine.getM_Product_ID();
		} else if(name.equals("DD_OrderLine_ID")){
			MDDOrderLine oLine = new MDDOrderLine(ctx, m_OrderLine_ID, null);
			m_M_Product_ID = oLine.getM_Product_ID();
		}
		//	Valid Product 
		if (m_M_Product_ID == 0)
			return "";
		
		mTab.setValue("M_Product_ID", m_M_Product_ID);		
		
		//	Search Business Partner
		String sql = "SELECT o.C_BPartner_ID FROM C_Order o" +
				" INNER JOIN  C_OrderLine ol ON (o.C_Order_ID = ol.C_Order_ID)" +
				" WHERE ol.C_OrderLine_ID = "+m_OrderLine_ID;
		System.out.println(sql);
		m_MBPartner_ID = DB.getSQLValue(null, sql);
		System.out.println(m_MBPartner_ID);
		//	Valid Business Partner
		if (m_MBPartner_ID == 0)
			return "";
		//	Set Business Partner
		mTab.setValue("C_BPartner_ID", m_MBPartner_ID);		
				
		return "";
		
	}
	
	/**
	 * Calculate Weight and Volume
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 20/12/2013, 15:18:42
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String qty (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		//	Get Product
		Integer m_M_Product_ID = (Integer) mTab.getValue("M_Product_ID");
		if (m_M_Product_ID == null || m_M_Product_ID.intValue() == 0)
			return "";
		//	Instance Product
		MProduct product = MProduct.get(ctx, m_M_Product_ID);
		//	Get Weight and Volume
		BigDecimal m_Weight = product.getWeight();
		if(m_Weight == null)
			m_Weight = Env.ZERO;
		BigDecimal m_Volume = product.getVolume();
		if(m_Volume == null)
			m_Volume = Env.ZERO;
		//	Quantity
		BigDecimal m_Qty = (BigDecimal) mTab.getValue("Qty");
		if(m_Qty == null)
			m_Qty = Env.ZERO;
		//	Calculate
		mTab.setValue("Weight", m_Qty.multiply(m_Weight));
		mTab.setValue("Volume", m_Qty.multiply(m_Volume));
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
	 * Set values Shiper, Vehicle and Driver of Entri Ticket
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
		if (m_EntriTicket_ID == null || m_EntriTicket_ID.intValue() == 0){
			mTab.setValue("M_Shipper_ID", -1);
			//	Vehicle
			mTab.setValue("FTA_Vehicle_ID", -1);
			//	Driver
			mTab.setValue("FTA_Driver_ID", -1);
			//	Load Capacity
			mTab.setValue("LoadCapacity", Env.ZERO);
			//	Volume Capacity
			mTab.setValue("VolumeCapacity", Env.ZERO);

			return "";
		}
		//	Instance Entry Ticket
		MFTAEntryTicket m_EntryTicket = new MFTAEntryTicket(ctx, m_EntriTicket_ID.intValue(), null);
		
		//	Set Shipper
		mTab.setValue("M_Shipper_ID", m_EntryTicket.getM_Shipper_ID());
		//	Set Vehicle
		mTab.setValue("FTA_Vehicle_ID", m_EntryTicket.getFTA_Vehicle_ID());
		//	Set Driver
		mTab.setValue("FTA_Driver_ID", m_EntryTicket.getFTA_Driver_ID());
		
		return "";
	}

	/**
	 * Set values Load Capacity and Volume Capacity of Vehicle Type
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 20/11/2013, 14:26:18
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String vehicleType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		
		Integer m_VehicleType_ID = (Integer)value;
		if (m_VehicleType_ID == null || m_VehicleType_ID.intValue() == 0){
			Env.setContext(ctx, WindowNo, "FTA_VehicleType_ID", 0);
			return "";
		}
		
		//	Instance Vehicle Type
		MFTAVehicleType m_VehicleType = new MFTAVehicleType(ctx, m_VehicleType_ID.intValue(), null);

		//	Set Load Capacity
		mTab.setValue("LoadCapacity", m_VehicleType.getLoadCapacity());

		//	Set Volume Capacity				
		mTab.setValue("VolumeCapacity", m_VehicleType.getVolumeCapacity());
		
		return "";
	}

	/**
	 * Set values Load Capacity and Volume Capacity of Vehicle
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/12/2013, 09:55:46
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String vehicle (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		
		Integer m_Vehicle_ID = (Integer)value;
		if (m_Vehicle_ID == null || m_Vehicle_ID.intValue() == 0)
			return "";
		//	Instance Vehicle
		MFTAVehicle m_Vehicle = new MFTAVehicle(ctx, m_Vehicle_ID.intValue(), null);

		//	Set Load Capacity
		mTab.setValue("LoadCapacity", m_Vehicle.getLoadCapacity());

		//	Set Volume Capacity
		mTab.setValue("VolumeCapacity", m_Vehicle.getVolumeCapacity());
		
		return "";
	}

}
