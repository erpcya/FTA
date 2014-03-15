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

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CalloutMobilizationGuide extends CalloutEngine
{
	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 25/01/2014, 12:10:35
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String loadOrder (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		//	Set parameter Load Order ID returned of Window
		Integer p_LoadOrder_ID = (Integer)value;
		
		//	Validate parameter Load Order ID if equals 0 return empty
		if(p_LoadOrder_ID == null
				|| p_LoadOrder_ID.intValue() == 0)
		{
			return "";
		}
		
		//	New instance Load Order 
		MFTALoadOrder m_FTA_LoadOrder = new MFTALoadOrder(ctx, p_LoadOrder_ID, null);
		
		//	Validate instance of Load Order distinct of null set Vehicle Type
		if(m_FTA_LoadOrder != null)
			mTab.setValue("FTA_VehicleType_ID", m_FTA_LoadOrder.getFTA_VehicleType_ID());		

		return "";
	}//	End loadOrder			
}
