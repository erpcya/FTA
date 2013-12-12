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
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutQualityAnalysis extends CalloutEngine {

	/**
	 * Set Product from Entry Ticket
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/09/2013, 11:43:33
	 * @contributor <a href="mailto:dixon.22ma@gmail.com">Dixon Martinez</a> 12/12/2013, 16:00:01
	 * 	<li> Add Validation Operation Type </li>
	 * 	<li> Set Record Weight </li>
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String entryTicket (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_FTA_EntryTicket_ID = (Integer)value;
		if (m_FTA_EntryTicket_ID == null || m_FTA_EntryTicket_ID.intValue() == 0)
			return "";
		
		if	(mField.get_ValueAsString("OperationType")
				.equals(X_FTA_QualityAnalysis.OPERATIONTYPE_DeliveryBulkMaterial)
				|| mField.get_ValueAsString("OperationType")
					.equals(X_FTA_QualityAnalysis.OPERATIONTYPE_ReceiptMoreThanOneProduct)){
			String sql = new String(" SELECT MAX(FTA_RecordWeight_ID)" +
									" FROM FTA_RecordWeight " +
									" WHERE FTA_EntryTicket_ID = ?"
					);
			
			mTab.setValue("FTA_RecordWeight_ID", DB.getSQLValue(null, sql, m_FTA_EntryTicket_ID));
			return "";
		}
			
		if (!mField.get_ValueAsString("OperationType")
				.equals(X_FTA_QualityAnalysis.OPERATIONTYPE_RawMaterialReceipt))
			return "";
		
		//	get Mobilization Guide
		String sql = new String("SELECT fg.Category_ID " +
				"FROM FTA_Farming fg " +
				"INNER JOIN FTA_MobilizationGuide mg ON(mg.FTA_Farming_ID = fg.FTA_Farming_ID) " +
				"INNER JOIN FTA_EntryTicket et ON(et.FTA_MobilizationGuide_ID = mg.FTA_MobilizationGuide_ID) " +
				"WHERE et.FTA_EntryTicket_ID = ?");
		//
		int m_Category_ID = DB.getSQLValue(null, sql, m_FTA_EntryTicket_ID);
		mTab.setValue("M_Product_ID", m_Category_ID);
		
		//	Get Analysis Type
		String m_AnalysisType = (String) mTab.getValue("AnalysisType");
		//	
		if(m_AnalysisType != null
				&& m_AnalysisType.equals("CA")){
			//	
			sql = "SELECT qa.FTA_QualityAnalysis_ID " +
					"FROM FTA_EntryTicket et " +
					"INNER JOIN FTA_QualityAnalysis qa ON(qa.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID) " +
					"WHERE et.FTA_EntryTicket_ID = ?";
			//	
			int m_Orig_QualityAnalysis_ID = DB.getSQLValue(null, sql, m_FTA_EntryTicket_ID);
			
			mTab.setValue("Orig_QualityAnalysis_ID", m_Orig_QualityAnalysis_ID);	
		
		}
		return "";
	}
	
	/**
	 * Set Original Analysis from DocBaseType
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/09/2013, 11:48:17
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
		//	Set Analysis Type
		String m_AnalysisType = m_DocType.getDocBaseType().substring(1);
		
		mTab.setValue("AnalysisType", m_AnalysisType);
		return "";
	}

	/**
	 * Set Product of Load Order and Operation Type is Delivery Bulk Material.
	 * @author <a href="mailto:dixon.22ma@gmail.com">Dixon Martinez</a> 12/12/2013, 16:00:01
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer p_FTA_RecordWeight = (Integer) value;
		if	(p_FTA_RecordWeight == null || p_FTA_RecordWeight.intValue() == 0)
			return "";

		//	Create Record Weight Object
		MFTARecordWeight m_FTA_RecordWeight = new MFTARecordWeight(Env.getCtx(), p_FTA_RecordWeight, null);
		
		//	Create Load Order Object
		MFTALoadOrder m_FTA_LoadOrder = new MFTALoadOrder(Env.getCtx(), m_FTA_RecordWeight.getFTA_LoadOrder_ID(), null);
		
		//	Set Product of Load Order
		if	(mField.get_ValueAsString("OperationType")
				.equals(X_FTA_QualityAnalysis.OPERATIONTYPE_DeliveryBulkMaterial))
			mTab.setValue("M_Product_ID", m_FTA_LoadOrder.getM_Product_ID());
		
		return "";
	}
}
