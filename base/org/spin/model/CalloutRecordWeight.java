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
import java.sql.Timestamp;
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
public class CalloutRecordWeight extends CalloutEngine {

	/**
	 * Set Is SO Trx
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/09/2013, 11:59:50
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
		//	Is SO Trx
		mTab.setValue("IsSOTrx", m_DocType.isSOTrx());
		return "";
	}
	
	/**
	 * Set Default Quality Analysis
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/10/2013, 23:33:40
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
		
		//	get Mobilization Guide
		String sql = new String("SELECT qa.FTA_QualityAnalysis_ID " +
				"FROM FTA_EntryTicket et " +
				"INNER JOIN FTA_QualityAnalysis qa ON(qa.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID) " +
				"WHERE et.FTA_EntryTicket_ID = ? " +
				"AND qa.DocStatus = 'CO' " +
				"ORDER BY qa.DateDoc DESC");
		//
		int m_FTA_QualityAnalysis_ID = DB.getSQLValue(null, sql, m_FTA_EntryTicket_ID);
		//	Set Business Partner
		mTab.setValue("FTA_QualityAnalysis_ID", m_FTA_QualityAnalysis_ID);
		Env.setContext(ctx, WindowNo, "FTA_QualityAnalysis_ID", (m_FTA_QualityAnalysis_ID==-1?0:m_FTA_QualityAnalysis_ID));
		
		//	Dixon Martinez 2014-01-28
		//	Set load order
		
		//	Return Load Order 
		sql = " SELECT FTA_LoadOrder_ID " +
				" FROM FTA_LoadOrder" +
				" WHERE FTA_EntryTicket_ID = ?" +
				" AND FTA_LoadOrder.DocStatus IN ('CO')";
		
		int m_FTA_LoadOrder_ID = DB.getSQLValue(null, sql, m_FTA_EntryTicket_ID);
		//	Set Value Load Order into Record Weight
		mTab.setValue("FTA_LoadOrder_ID", m_FTA_LoadOrder_ID);
		//	End Dixon Martinez
		
		//Carlos Parada Set Product From Entry Ticket
		MFTAEntryTicket et = new MFTAEntryTicket(ctx, m_FTA_EntryTicket_ID, null);
		//	Dixon Martinez 15/03/2014 11:29:00
		//	Set Trailer Plate, Vehicle and driver of Entry Ticket
		if (et != null ){
			if (et.getM_Product_ID()!= 0 )
				mTab.setValue("M_Product_ID", et.getM_Product_ID());
			if(et.getTrailerPlate().length() > 0)
				mTab.setValue("TrailerPlate", et.getTrailerPlate());
			if(et.getFTA_Driver_ID() > 0)
				mTab.setValue("FTA_Driver_ID", et.getFTA_Driver_ID());
			if(et.getFTA_Vehicle_ID() > 0)
				mTab.setValue("FTA_Vehicle_ID", et.getFTA_Vehicle_ID());
			
		}//	End Dixon Martinez
		//End Carlos Parada
		
			
		
		return "";
	}
	
	/**
	 * Set Net Weight and Time (in/out)
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/09/2013, 14:47:40
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String weight (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		BigDecimal tareWeight = (BigDecimal) (mTab.getValue("TareWeight") != null
				? mTab.getValue("TareWeight")
				: Env.ZERO);
	    BigDecimal grossWeight = (BigDecimal) (mTab.getValue("GrossWeight") != null
	    		? mTab.getValue("GrossWeight")
	    		: Env.ZERO);
	    BigDecimal netWeight = grossWeight.subtract(tareWeight);
	    //	Set Net Weight
	    mTab.setValue("NetWeight",netWeight);

	    boolean isSOTrx = mTab.getValueAsBoolean("IsSOTrx");
	    
	    Timestamp today = new Timestamp(System.currentTimeMillis());  
	    //	Set Day
	    if(!isSOTrx){
	    	if(mField.getColumnName().equals("TareWeight")
	    			&& !tareWeight.equals(Env.ZERO)){
	    		mTab.setValue("OutDate", today);
	    	}else if(mField.getColumnName().equals("GrossWeight")
	    			&& !grossWeight.equals(Env.ZERO)){
	    		mTab.setValue("InDate", today);
	    	}
	    	//	Valid Weight Status
	    	if(grossWeight.equals(Env.ZERO))
	    		mTab.setValue("WeightStatus", X_FTA_RecordWeight.WEIGHTSTATUS_WaitingForGrossWeight);
	    	else if(tareWeight.equals(Env.ZERO))
	    		mTab.setValue("WeightStatus", X_FTA_RecordWeight.WEIGHTSTATUS_WaitingForTareWeight);
	    	else
	    		mTab.setValue("WeightStatus", X_FTA_RecordWeight.WEIGHTSTATUS_Completed);	    	
	    } else{
	    	if(mField.getColumnName().equals("TareWeight")
	    			&& !tareWeight.equals(Env.ZERO)){
	    		mTab.setValue("InDate", today);
	    	}else if(mField.getColumnName().equals("GrossWeight")
	    			&& !grossWeight.equals(Env.ZERO)){
	    		mTab.setValue("OutDate", today);
	    	}
	    	//	Valid Weight Status
	    	if(tareWeight.equals(Env.ZERO))
	    		mTab.setValue("WeightStatus", X_FTA_RecordWeight.WEIGHTSTATUS_WaitingForTareWeight);
	    	else if(grossWeight.equals(Env.ZERO))
	    		mTab.setValue("WeightStatus", X_FTA_RecordWeight.WEIGHTSTATUS_WaitingForGrossWeight);
	    	else
	    		mTab.setValue("WeightStatus", X_FTA_RecordWeight.WEIGHTSTATUS_Completed);
	    }    

		return "";
	}

	/**
	 * Set Product From Quality Analysis
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 15/01/2014, 12:07:58
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String product(Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){

		if (value ==null)
			return "";
		
		if (mField.getColumnName().equals("FTA_QualityAnalysis_ID")){
			int l_FTA_QualityAnalysis_ID = (value == null ? 0 : (Integer)value);
			
			if (l_FTA_QualityAnalysis_ID != 0)
			{
				MFTAQualityAnalysis qa = new MFTAQualityAnalysis(ctx, l_FTA_QualityAnalysis_ID, null);
				mTab.setValue("M_Product_ID", qa.getM_Product_ID());
			}
		}
		else if (mField.getColumnName().equals("FTA_LoadOrder_ID")){
			
			int l_FTA_LoadOrder_ID = (value == null ? 0 : (Integer)value);
			
			if (l_FTA_LoadOrder_ID != 0)
			{
				MFTALoadOrder lo = new MFTALoadOrder(ctx, l_FTA_LoadOrder_ID, null);
				MFTALoadOrderLine[] lolines = lo.getLines(true);
				//get First Product From Load Order
				if (lolines.length > 0 )
					mTab.setValue("M_Product_ID", lolines[0].getM_Product_ID());
			}
		}
		
		return "";
	}

}
