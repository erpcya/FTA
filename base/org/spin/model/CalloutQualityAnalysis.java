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
import org.compiere.util.DB;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutQualityAnalysis extends CalloutEngine {

	
	public String entryTicket (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_FTA_EntryTicket_ID = (Integer)value;
		if (m_FTA_EntryTicket_ID == null || m_FTA_EntryTicket_ID.intValue() == 0)
			return "";
		
		//	get Mobilization Guide
		String sql = new String("SELECT fg.Category_ID " +
				"FROM FTA_Farming fg " +
				"INNER JOIN FTA_MobilizationGuide mg ON(mg.FTA_Farming_ID = fg.FTA_Farming_ID) " +
				"INNER JOIN FTA_EntryTicket et ON(et.FTA_MobilizationGuide_ID = mg.FTA_MobilizationGuide_ID) " +
				"WHERE et.FTA_EntryTicket_ID = ?");
		//
		int m_Category_ID = DB.getSQLValue(null, sql, m_FTA_EntryTicket_ID);
		//	Set Business Partner
		mTab.setValue("M_Product_ID", m_Category_ID);

		
		
		return "";
	}
}
