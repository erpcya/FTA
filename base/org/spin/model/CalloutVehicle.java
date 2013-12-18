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
import org.python.modules.newmodule;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutVehicle extends CalloutEngine {

	/**
	 * Set Vehicle Name from Brand and Model
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/10/2013, 15:45:27
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String name (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_ID = (Integer)value;
		if (m_ID == null || m_ID.intValue() == 0)
			return "";
		
		String name = mTab.get_ValueAsString("Name");
		
		//	Brand
		Integer m_FTA_VehicleBrand_ID = (Integer) mTab.getValue("FTA_VehicleBrand_ID");
		if (m_FTA_VehicleBrand_ID != null 
				&& m_FTA_VehicleBrand_ID.intValue() != 0){
			MFTAVehicleBrand brand = new MFTAVehicleBrand(ctx, m_FTA_VehicleBrand_ID.intValue(), null);
			name = brand.getName();
		}
		//	Model
		Integer m_FTA_VehicleModel_ID = (Integer) mTab.getValue("FTA_VehicleModel_ID");
		if (m_FTA_VehicleModel_ID != null 
				&& m_FTA_VehicleModel_ID.intValue() != 0){
			MFTAVehicleModel model = new MFTAVehicleModel(ctx, m_FTA_VehicleModel_ID.intValue(), null);
			if(name != null)
				name += " " + model.getName();
			else
				name = model.getName();
		}
		
		mTab.setValue("Name", name);
		
		return "";
	}

	/**
	 * Set value of Volume Capacity.
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 18/12/2013, 17:26:51
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String vehicleType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		//	Set value Vehicle Type
		Integer p_VehicleType_ID = (Integer)value;
		//	p_VehicleType_ID Is Null Or equals 0
		if (p_VehicleType_ID == null || p_VehicleType_ID.intValue() == 0)
			return "";
		
		//	Instance class model MFTAVehicleType
		MFTAVehicleType m_FTA_VehicleType_ID = new MFTAVehicleType(ctx, p_VehicleType_ID, null);
		
		mTab.setValue("VolumeCapacity", m_FTA_VehicleType_ID.get_Value("VolumeCapacity"));
		
		return "";
	}
}

