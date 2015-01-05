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
package org.spin.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;

import javax.swing.table.DefaultTableModel;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.minigrid.IMiniTable;
import org.compiere.minigrid.MiniTable;
import org.compiere.model.MRefList;
import org.compiere.model.MRole;
import org.compiere.model.MUOM;
import org.compiere.model.MUOMConversion;
import org.compiere.model.X_C_Order;
import org.compiere.swing.CComboBox;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Util;
import org.spin.model.MFTALoadOrder;
import org.spin.model.MFTALoadOrderLine;
import org.spin.model.MFTAVehicle;
import org.spin.model.MFTAVehicleType;
import org.spin.model.MFTAWeightScale;
import org.spin.model.X_FTA_LoadOrder;
import org.spin.util.BufferTableSelect;
import org.spin.util.StringNamePair;

/**
 * @author Yamel Senih 24/06/2011, 12:57
 *
 */
public class LoadOrder {

	/**	Logger			*/
	public static CLogger log = CLogger.getCLogger(LoadOrder.class);
	
	public final int OL_SO_LOC 					= 6;
	public final int SELECT 					= 0;
	public final int ORDER 						= 2;
	public final int ORDER_LINE 				= 2;
	public final int OL_PRODUCT 				= 3;
	public final int OL_UOM 					= 4;
	public final int OL_QTY_ONDHAND 			= 5;
	public final int OL_QTY_ORDERED 			= 6;
	public final int OL_UOM_CONVERSION 			= 7;
	public final int OL_QTY_RESERVERD 			= 8;
	public final int OL_QTY_INVOICED 			= 9;
	public final int OL_QTY_DELIVERED 			= 10;
	public final int OL_QTY_LOAD_ORDER_LINE 	= 11;
	public final int OL_QTY 					= 12;
	public final int OL_QTY_UOM 				= 13;
	public final int OL_WEIGHT 					= 14;
	public final int OL_VOLUME 					= 15;
	public final int OL_SEQNO 					= 16;
	public final int OL_DELIVERY_RULE 			= 17;
	
	//	
	public final int SW_PRODUCT 				= 0;
	public final int SW_UOM 					= 1;
	public final int SW_QTYONHAND 				= 2;
	public final int SW_QTYSET 					= 3;
	public final int SW_QTYAVAILABLE 			= 4;
	
	/**	Buffer				*/
	public Vector<BufferTableSelect> m_BufferSelect = null;
	
	public StringBuffer 		m_Symmary = new StringBuffer();
	public StringBuffer 		m_QueryAdd = new StringBuffer();
	
	/**	Client				*/
	protected int 				m_AD_Client_ID = 0;
	/**	Organization		*/
	protected int 				m_AD_Org_ID = 0;
	/**	Warehouse			*/
	protected int 				m_C_SalesRegion_ID = 0;
	/**	Sales Rep			*/
	protected int 				m_SalesRep_ID = 0;
	/**	Warehouse			*/
	protected int 				m_M_Warehouse_ID = 0;
	/**	Operation Type		*/
	protected String 			m_OperationType = null;
	/**	Document Type 		*/
	protected int 				m_C_DocType_ID = 0;
	/**	Document Type Target*/
	protected int 				m_C_DocTypeTarget_ID = 0;
	/**	Invoice Rule		*/
	protected String 			m_InvoiceRule = null;
	/**	Delivery Rule		*/
	protected String 			m_DeliveryRule = null;
	/**	Vehicle Type		*/
	protected int 				m_FTA_VehicleType_ID = 0;
	/**	Document Date		*/
	protected Timestamp			m_DateDoc = null;
	/**	Shipment Date		*/
	protected Timestamp			m_ShipDate = null;
	/**	Entry Ticket		*/
	protected int 				m_FTA_EntryTicket_ID = 0;
	/**	Shipper				*/
	protected int 				m_M_Shipper_ID = 0;
	/**	Driver				*/
	protected int 				m_FTA_Driver_ID = 0;
	/**	Vehicle				*/
	protected int 				m_FTA_Vehicle_ID = 0;
	/**	Load Capacity		*/
	protected BigDecimal 		m_LoadCapacity = Env.ZERO;
	/**	Volume Capacity		*/
	protected BigDecimal 		m_VolumeCapacity = Env.ZERO;
	/**	Weight Unit Measure	*/
	protected int 				m_C_UOM_Weight_ID = 0;
	/**	Volume Unit Measure	*/
	protected int 				m_C_UOM_Volume_ID = 0;
	/**	Weight Precision	*/
	protected int 				m_WeightPrecision = 0;
	/**	Volume Precision	*/
	protected int 				m_VolumePrecision = 0;
	/**	Rows Selected		*/
	protected int				m_RowsSelected = 0;
	/**	Is Bulk Product		*/
	protected boolean			m_IsBulk = false;
	/**	UOM Weight Symbol	*/
	protected String 			m_UOM_Weight_Symbol = null;
	/**	UOM Volume Symbol	*/
	protected String 			m_UOM_Volume_Symbol = null;
	/**	Product				*/
	protected int				m_M_Product_ID = 0;
	/**	Business Partner	*/
	protected int				m_C_BPartner_ID = 0;
	
	/**	Total Weight		*/
	protected BigDecimal		totalWeight = Env.ZERO;
	/**	Total Volume		*/
	protected BigDecimal		totalVolume = Env.ZERO;
	
	/**	Max Sequence		*/
	protected int				m_MaxSeqNo = 0;
	
	/**	Order Table			*/
	protected MiniTable 		orderTable = new MiniTable();
	/**	Order Line Table	*/
	protected MiniTable 		orderLineTable = new MiniTable();
	/**	Stock Table			*/
	protected MiniTable			stockTable = new MiniTable();
	protected DefaultTableModel stockModel = null;
	
	
	/**
	 * Get Order data from parameters
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/12/2013, 14:10:10
	 * @return Vector<Vector<Object>>
	 */
	protected Vector<Vector<Object>> getOrderData(IMiniTable orderTable, String p_OperationType) {
		
		/**
		 * 2014-12-02 Carlos Parada Add Support to DD_Order
		 */
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuffer sql = null;
		if (p_OperationType.equals(X_FTA_LoadOrder.OPERATIONTYPE_MaterialOutputMovement)) {
			//Query for Material Movement
			sql = new StringBuffer("SELECT " +
					"wr.Name Warehouse, ord.DD_Order_ID, ord.DocumentNo, " +	//	1..3
					"ord.DateOrdered, ord.DatePromised, ord.Weight, ord.Volume, sr.Name SalesRep, " +	//	4..8
					"cp.Name Partner, bploc.Name, " +	//	9..10
					"reg.Name, cit.Name, loc.Address1, loc.Address2, loc.Address3, loc.Address4, ord.C_BPartner_Location_ID " +	//	11..17
					"FROM DD_Order ord " +
					"INNER JOIN DD_OrderLine lord ON(lord.DD_Order_ID = ord.DD_Order_ID) " +
					"INNER JOIN M_Product pr ON(pr.M_Product_ID = lord.M_Product_ID) " +
					"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = ord.C_BPartner_ID) " +
					"INNER JOIN AD_User sr ON(sr.AD_User_ID = ord.SalesRep_ID) " +
					"INNER JOIN M_Warehouse wr ON(wr.M_Warehouse_ID = ord.M_Warehouse_ID) " +
					"INNER JOIN C_BPartner_Location bploc ON(bploc.C_BPartner_Location_ID = ord.C_BPartner_Location_ID) " +
					"INNER JOIN C_Location loc ON(loc.C_Location_ID = bploc.C_Location_ID) " +
					"LEFT JOIN C_Region reg ON(reg.C_Region_ID = loc.C_Region_ID) " +
					"LEFT JOIN C_City cit ON(cit.C_City_ID = loc.C_City_ID) " +
					"LEFT JOIN (SELECT lord.DD_OrderLine_ID, " +
					"	(COALESCE(lord.QtyOrdered, 0) - " +
					"		SUM(" +
					"				CASE WHEN (c.DocStatus NOT IN('VO', 'RE', 'CL') OR c.DocStatus IS NULL) " +
					"						THEN COALESCE(lc.ConfirmedQty, lc.Qty, 0) " +
					"						ELSE 0 " +
					"				END" +
					"			)" +
					"	) QtyAvailable " +
					"	FROM DD_OrderLine lord " +
					"	LEFT JOIN FTA_LoadOrderLine lc ON(lc.DD_OrderLine_ID = lord.DD_OrderLine_ID) " +
					"	LEFT JOIN FTA_LoadOrder c ON(c.FTA_LoadOrder_ID = lc.FTA_LoadOrder_ID) " +
					"	WHERE lord.M_Product_ID IS NOT NULL " +
					"	GROUP BY lord.DD_Order_ID, lord.DD_OrderLine_ID, lord.QtyOrdered " +
					"	ORDER BY lord.DD_OrderLine_ID ASC) qafl " +
					"	ON(qafl.DD_OrderLine_ID = lord.DD_OrderLine_ID) " +
					"WHERE  wr.IsActive = 'Y' " +
					"AND ord.DocStatus = 'CO' " +
					"AND pr.IsStocked = 'Y' " +
					"AND COALESCE(qafl.QtyAvailable, 0) > 0 " +
					"AND ord.AD_Client_ID=? ");
			if (m_AD_Org_ID != 0)
				sql.append("AND lord.AD_Org_ID=? ");
			if (m_M_Warehouse_ID != 0 )
				sql.append("AND lord.M_Warehouse_ID=? ");
			if (m_C_SalesRegion_ID != 0 )
				sql.append("AND bploc.C_SalesRegion_ID=? ");
			if (m_SalesRep_ID != 0 )
				sql.append("AND ord.SalesRep_ID=? ");
			if (m_C_DocType_ID != 0 )
				sql.append("AND ord.C_DocType_ID=? ");
			if(m_IsBulk) {
				sql.append("AND lord.M_Product_ID=? ");
				sql.append("AND ord.C_BPartner_ID=? ");
			}
			
			//	Group By
			sql.append("GROUP BY wr.Name, ord.DD_Order_ID, ord.DocumentNo, ord.DateOrdered, " +
					"ord.DatePromised, ord.Weight, ord.Volume, sr.Name, cp.Name, bploc.Name, " +
					"reg.Name, cit.Name, loc.Address1, loc.Address2, loc.Address3, loc.Address4, ord.C_BPartner_Location_ID ");
		
			//	Having
			sql.append("HAVING (SUM(COALESCE(lord.QtyOrdered, 0)) - SUM(COALESCE(lord.QtyDelivered, 0))) > 0 ");
			
			
			//	Order By
			sql.append("ORDER BY ord.DD_Order_ID ASC");
			
			// role security
		} else {//Query for Sales Order
			sql = new StringBuffer("SELECT " +
					"wr.Name Warehouse, ord.C_Order_ID, ord.DocumentNo, " +	//	1..3
					"ord.DateOrdered, ord.DatePromised, ord.Weight, ord.Volume, sr.Name SalesRep, " +	//	4..8
					"cp.Name Partner, bploc.Name, " +	//	9..10
					"reg.Name, cit.Name, loc.Address1, loc.Address2, loc.Address3, loc.Address4, ord.C_BPartner_Location_ID " +	//	11..17
					"FROM C_Order ord " +
					"INNER JOIN C_OrderLine lord ON(lord.C_Order_ID = ord.C_Order_ID) " +
					"INNER JOIN M_Product pr ON(pr.M_Product_ID = lord.M_Product_ID) " +
					"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = ord.C_BPartner_ID) " +
					"INNER JOIN AD_User sr ON(sr.AD_User_ID = ord.SalesRep_ID) " +
					"INNER JOIN M_Warehouse wr ON(wr.M_Warehouse_ID = ord.M_Warehouse_ID) " +
					"INNER JOIN C_BPartner_Location bploc ON(bploc.C_BPartner_Location_ID = ord.C_BPartner_Location_ID) " +
					"INNER JOIN C_Location loc ON(loc.C_Location_ID = bploc.C_Location_ID) " +
					"LEFT JOIN C_Region reg ON(reg.C_Region_ID = loc.C_Region_ID) " +
					"LEFT JOIN C_City cit ON(cit.C_City_ID = loc.C_City_ID) " +
					"LEFT JOIN (SELECT lord.C_OrderLine_ID, " +
					"	(COALESCE(lord.QtyOrdered, 0) - " +
					"		SUM(" +
					"				CASE WHEN (c.DocStatus NOT IN('VO', 'RE', 'CL') OR c.DocStatus IS NULL) " +
					"						THEN COALESCE(lc.ConfirmedQty, lc.Qty, 0) " +
					"						ELSE 0 " +
					"				END" +
					"			)" +
					"	) QtyAvailable " +
					"	FROM C_OrderLine lord " +
					"	LEFT JOIN FTA_LoadOrderLine lc ON(lc.C_OrderLine_ID = lord.C_OrderLine_ID) " +
					"	LEFT JOIN FTA_LoadOrder c ON(c.FTA_LoadOrder_ID = lc.FTA_LoadOrder_ID) " +
					"	WHERE lord.M_Product_ID IS NOT NULL " +
					"	GROUP BY lord.C_Order_ID, lord.C_OrderLine_ID, lord.QtyOrdered " +
					"	ORDER BY lord.C_OrderLine_ID ASC) qafl " +
					"	ON(qafl.C_OrderLine_ID = lord.C_OrderLine_ID) " +
					"WHERE ord.IsSOTrx = 'Y' " +
					"AND wr.IsActive = 'Y' " +
					"AND ord.DocStatus = 'CO' " +
					"AND pr.IsStocked = 'Y' " +
					"AND COALESCE(qafl.QtyAvailable, 0) > 0 " +
					"AND ord.AD_Client_ID=? ");
			if (m_AD_Org_ID != 0)
				sql.append("AND lord.AD_Org_ID=? ");
			if (m_M_Warehouse_ID != 0 )
				sql.append("AND lord.M_Warehouse_ID=? ");
			if (m_C_SalesRegion_ID != 0 )
				sql.append("AND bploc.C_SalesRegion_ID=? ");
			if (m_SalesRep_ID != 0 )
				sql.append("AND ord.SalesRep_ID=? ");
			if (m_C_DocType_ID != 0 )
				sql.append("AND ord.C_DocType_ID=? ");
			if(m_IsBulk) {
				sql.append("AND lord.M_Product_ID=? ");
				sql.append("AND ord.C_BPartner_ID=? ");
			}
			
			//	Group By
			sql.append("GROUP BY wr.Name, ord.C_Order_ID, ord.DocumentNo, ord.DateOrdered, " +
					"ord.DatePromised, ord.Weight, ord.Volume, sr.Name, cp.Name, bploc.Name, " +
					"reg.Name, cit.Name, loc.Address1, loc.Address2, loc.Address3, loc.Address4, ord.C_BPartner_Location_ID ");
		
			//	Having
			sql.append("HAVING (SUM(COALESCE(lord.QtyOrdered, 0)) - SUM(COALESCE(lord.QtyDelivered, 0))) > 0 ");
			
			
			//	Order By
			sql.append("ORDER BY ord.C_Order_ID ASC");
			
			// role security
		}
		
		/** End Carlos Parada **/
		log.fine("LoadOrderSQL=" + sql.toString());
		//	
		try {
			//	
			int param = 1;
			int column = 1;
			
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			
			pstmt.setInt(param++, Env.getAD_Client_ID(Env.getCtx()));
			
			if (m_AD_Org_ID != 0)
				pstmt.setInt(param++, m_AD_Org_ID);
			if (m_M_Warehouse_ID != 0 )
				pstmt.setInt(param++, m_M_Warehouse_ID);
			if (m_C_SalesRegion_ID != 0 )
				pstmt.setInt(param++, m_C_SalesRegion_ID);
			if (m_SalesRep_ID != 0 )
				pstmt.setInt(param++, m_SalesRep_ID);
			if (m_C_DocType_ID != 0 )
				pstmt.setInt(param++, m_C_DocType_ID);
			if(m_IsBulk) {
				pstmt.setInt(param++, m_M_Product_ID);
				pstmt.setInt(param++, m_C_BPartner_ID);
			}
			
			log.fine("AD_Org_ID=" + m_AD_Org_ID);
			log.fine("M_Warehouse_ID=" + m_M_Warehouse_ID);
			log.fine("SalesRep_ID=" + m_SalesRep_ID);
			log.fine("C_DocType_ID=" + m_C_DocType_ID);
			log.fine("IsBulk=" + m_IsBulk);
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				column = 1;
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));       		//  0-Selection
				line.add(rs.getString(column++));       	//  1-Warehouse
				KeyNamePair pp = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(pp);				       			//  2-DocumentNo
				line.add(rs.getTimestamp(column++));      	//  3-DateOrdered
				line.add(rs.getTimestamp(column++));      	//  4-DatePromised
				line.add(rs.getBigDecimal(column++));		//	5-Weight
				line.add(rs.getBigDecimal(column++));		//	6-Volume
				line.add(rs.getString(column++));			//	7-Sales Representative
				line.add(rs.getString(column++));			//	8-Business Partner
				line.add(rs.getString(column++));			//	9-Location
				line.add(rs.getString(column++));			//	10-Region
				line.add(rs.getString(column++));			//	11-City
				line.add(rs.getString(column++));			//	12-Address 1
				line.add(rs.getString(column++));			//	13-Address 2
				line.add(rs.getString(column++));			//	14-Address 3
				line.add(rs.getString(column++));			//	15-Address 4
				//
				data.add(line);
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			log.log(Level.SEVERE, sql.toString(), e);
		}
		
		return data;
	}
	
	/**
	 * Get Order Line Data
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/12/2013, 14:11:36
	 * @param orderTable
	 * @return
	 * @return StringBuffer
	 */
	protected StringBuffer getQueryLine(IMiniTable orderTable,String p_OperationType) {
		StringBuffer sql = null;
				
		log.config("getQueryLine");
		
		/** 2014-12-02 Carlos Parada Add Support to DD_OrderLine */ 
		if (p_OperationType.equals(X_FTA_LoadOrder.OPERATIONTYPE_MaterialOutputMovement)) {
			int rows = orderTable.getRowCount();
			m_RowsSelected = 0;
			StringBuffer sqlWhere = new StringBuffer("ord.DD_Order_ID IN(0"); 
			for (int i = 0; i < rows; i++) {
				if (((Boolean)orderTable.getValueAt(i, 0)).booleanValue()) {
					int ID = ((KeyNamePair)orderTable.getValueAt(i, ORDER)).getKey();
					sqlWhere.append(",");
					sqlWhere.append(ID);
					m_RowsSelected ++;
				}
			}
			sqlWhere.append(")");
			
			sql = new StringBuffer("SELECT ord.M_Warehouse_ID, alm.Name Warehouse, lord.DD_OrderLine_ID, ord.DocumentNo, lord.M_Product_ID, pro.Name Product, " +
					"pro.C_UOM_ID, uomp.UOMSymbol, s.QtyOnHand, " +
					"lord.QtyOrdered, lord.C_UOM_ID, uom.UOMSymbol, lord.QtyReserved, 0 QtyInvoiced, lord.QtyDelivered, " +
					"SUM(" +
					"		CASE " +
					"			WHEN c.IsDelivered = 'N' AND (c.DocStatus NOT IN('VO', 'RE', 'CL') OR c.DocStatus IS NULL) " +
					"			THEN lc.Qty " +
					"			ELSE 0 " +
					"		END" +
					") QtyLoc, " +
					"(COALESCE(lord.QtyOrdered, 0) - COALESCE(lord.QtyDelivered, 0) - " +
					"	SUM(" +
					"			CASE " +
					"				WHEN c.IsDelivered = 'N' AND (c.DocStatus NOT IN('VO', 'RE', 'CL') OR c.DocStatus IS NULL) " +
					"				THEN lc.Qty " +
					"				ELSE 0 " +
					"			END" +
					"		)" +
					") Qty, " +
					"pro.Weight, pro.Volume, ord.DeliveryRule " +
					"FROM DD_Order ord " +
					"INNER JOIN DD_OrderLine lord ON(lord.DD_Order_ID = ord.DD_Order_ID) " +
					"INNER JOIN M_Locator l ON(l.M_Locator_ID = lord.M_Locator_ID) " + 
					"INNER JOIN M_Warehouse alm ON(alm.M_Warehouse_ID = l.M_Warehouse_ID) " +
					"INNER JOIN M_Product pro ON(pro.M_Product_ID = lord.M_Product_ID) " +
					"INNER JOIN C_UOM uom ON(uom.C_UOM_ID = lord.C_UOM_ID) " +
					"INNER JOIN C_UOM uomp ON(uomp.C_UOM_ID = pro.C_UOM_ID) " +
					"LEFT JOIN FTA_LoadOrderLine lc ON(lc.DD_OrderLine_ID = lord.DD_OrderLine_ID) " +
					"LEFT JOIN FTA_LoadOrder c ON(c.FTA_LoadOrder_ID = lc.FTA_LoadOrder_ID) " +
					"LEFT JOIN (" +
					"				SELECT l.M_Warehouse_ID, st.M_Product_ID, " +
					"					COALESCE(SUM(st.QtyOnHand), 0) QtyOnHand, " +
					"					COALESCE(st.M_AttributeSetInstance_ID, 0) M_AttributeSetInstance_ID " +
					"				FROM M_Storage st " +
					"				INNER JOIN M_Locator l ON(l.M_Locator_ID = st.M_Locator_ID) " +
					"			GROUP BY l.M_Warehouse_ID, st.M_Product_ID, st.M_AttributeSetInstance_ID) s " +
					"														ON(s.M_Product_ID = lord.M_Product_ID " +
					"																AND s.M_Warehouse_ID = l.M_Warehouse_ID " +
					"																AND lord.M_AttributeSetInstance_ID = s.M_AttributeSetInstance_ID) ")
					.append("WHERE pro.IsStocked = 'Y' ")
					.append("AND ")
					.append(sqlWhere).append(" ");
			//	Add Where
			if(m_IsBulk)
				sql.append("AND lord.M_Product_ID = ?").append(" ");
			//	Group By
			sql.append("GROUP BY ord.M_Warehouse_ID, lord.DD_Order_ID, lord.DD_OrderLine_ID, " +
					"alm.Name, ord.DocumentNo, lord.M_Product_ID, pro.Name, lord.C_UOM_ID, uom.UOMSymbol, lord.QtyEntered, " +
					"pro.C_UOM_ID, uomp.UOMSymbol, lord.QtyOrdered, lord.QtyReserved, " +
					"lord.QtyDelivered, pro.Weight, pro.Volume, ord.DeliveryRule, s.QtyOnHand").append(" ");
			//	Having
			sql.append("HAVING (COALESCE(lord.QtyOrdered, 0) - SUM(CASE " +
					"													WHEN (c.DocStatus NOT IN('VO', 'RE', 'CL') OR c.DocStatus IS NULL) " +
					"														THEN COALESCE(lc.ConfirmedQty, lc.Qty, 0) " +
					"													ELSE 0 " +
					"												END" +
					"											)" +
					"			) > 0").append(" ");
			//	Order By
			sql.append("ORDER BY lord.DD_Order_ID ASC");
			
		}
		else{

			int rows = orderTable.getRowCount();
			m_RowsSelected = 0;
			StringBuffer sqlWhere = new StringBuffer("ord.C_Order_ID IN(0"); 
			for (int i = 0; i < rows; i++) {
				if (((Boolean)orderTable.getValueAt(i, 0)).booleanValue()) {
					int ID = ((KeyNamePair)orderTable.getValueAt(i, ORDER)).getKey();
					sqlWhere.append(",");
					sqlWhere.append(ID);
					m_RowsSelected ++;
				}
			}
			sqlWhere.append(")");
			
			sql = new StringBuffer("SELECT lord.M_Warehouse_ID, alm.Name Warehouse, lord.C_OrderLine_ID, ord.DocumentNo, lord.M_Product_ID, pro.Name Product, " +
					"pro.C_UOM_ID, uomp.UOMSymbol, s.QtyOnHand, " +
					"lord.QtyOrdered, lord.C_UOM_ID, uom.UOMSymbol, lord.QtyReserved, lord.QtyInvoiced, lord.QtyDelivered, " +
					"SUM(" +
					"		CASE " +
					"			WHEN c.IsDelivered = 'N' AND (c.DocStatus NOT IN('VO', 'RE', 'CL') OR c.DocStatus IS NULL) " +
					"			THEN lc.Qty " +
					"			ELSE 0 " +
					"		END" +
					") QtyLoc, " +
					"(COALESCE(lord.QtyOrdered, 0) - COALESCE(lord.QtyDelivered, 0) - " +
					"	SUM(" +
					"			CASE " +
					"				WHEN c.IsDelivered = 'N' AND (c.DocStatus NOT IN('VO', 'RE', 'CL') OR c.DocStatus IS NULL) " +
					"				THEN lc.Qty " +
					"				ELSE 0 " +
					"			END" +
					"		)" +
					") Qty, " +
					"pro.Weight, pro.Volume, ord.DeliveryRule " +
					"FROM C_Order ord " +
					"INNER JOIN C_OrderLine lord ON(lord.C_Order_ID = ord.C_Order_ID) " +
					"INNER JOIN M_Warehouse alm ON(alm.M_Warehouse_ID = lord.M_Warehouse_ID) " +
					"INNER JOIN M_Product pro ON(pro.M_Product_ID = lord.M_Product_ID) " +
					"INNER JOIN C_UOM uom ON(uom.C_UOM_ID = lord.C_UOM_ID) " +
					"INNER JOIN C_UOM uomp ON(uomp.C_UOM_ID = pro.C_UOM_ID) " +
					"LEFT JOIN FTA_LoadOrderLine lc ON(lc.C_OrderLine_ID = lord.C_OrderLine_ID) " +
					"LEFT JOIN FTA_LoadOrder c ON(c.FTA_LoadOrder_ID = lc.FTA_LoadOrder_ID) " +
					"LEFT JOIN (" +
					"				SELECT l.M_Warehouse_ID, st.M_Product_ID, " +
					"					COALESCE(SUM(st.QtyOnHand), 0) QtyOnHand, " +
					"					COALESCE(st.M_AttributeSetInstance_ID, 0) M_AttributeSetInstance_ID " +
					"				FROM M_Storage st " +
					"				INNER JOIN M_Locator l ON(l.M_Locator_ID = st.M_Locator_ID) " +
					"			GROUP BY l.M_Warehouse_ID, st.M_Product_ID, st.M_AttributeSetInstance_ID) s " +
					"														ON(s.M_Product_ID = lord.M_Product_ID " +
					"																AND s.M_Warehouse_ID = lord.M_Warehouse_ID " +
					"																AND lord.M_AttributeSetInstance_ID = s.M_AttributeSetInstance_ID) ")
					.append("WHERE pro.IsStocked = 'Y' ")
					.append("AND ")
					.append(sqlWhere).append(" ");
			//	Add Where
			if(m_IsBulk)
				sql.append("AND lord.M_Product_ID = ?").append(" ");
			//	Group By
			sql.append("GROUP BY lord.M_Warehouse_ID, lord.C_Order_ID, lord.C_OrderLine_ID, " +
					"alm.Name, ord.DocumentNo, lord.M_Product_ID, pro.Name, lord.C_UOM_ID, uom.UOMSymbol, lord.QtyEntered, " +
					"pro.C_UOM_ID, uomp.UOMSymbol, lord.QtyOrdered, lord.QtyReserved, " + 
					"lord.QtyDelivered, lord.QtyInvoiced, pro.Weight, pro.Volume, ord.DeliveryRule, s.QtyOnHand").append(" ");
			//	Having
			sql.append("HAVING (COALESCE(lord.QtyOrdered, 0) - SUM(CASE " +
					"													WHEN (c.DocStatus NOT IN('VO', 'RE', 'CL') OR c.DocStatus IS NULL) " +
					"														THEN COALESCE(lc.ConfirmedQty, lc.Qty, 0) " +
					"													ELSE 0 " +
					"												END" +
					"											)" +
					"			) > 0").append(" ");
			//	Order By
			sql.append("ORDER BY lord.C_Order_ID ASC");
			
		}
		//	
		log.fine("SQL Line Order=" + sql.toString());
		//	Return
		return sql;
	}
	
	/**
	 * Get Order Column Names
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/12/2013, 14:25:26
	 * @return
	 * @return Vector<String>
	 */
	protected Vector<String> getOrderColumnNames() {	
		//  Header Info
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.translate(Env.getCtx(), "M_Warehouse_ID"));
		columnNames.add(Util.cleanAmp(Msg.translate(Env.getCtx(), "DocumentNo")));
		columnNames.add(Msg.translate(Env.getCtx(), "DateOrdered"));
		columnNames.add(Msg.translate(Env.getCtx(), "DatePromised"));
		columnNames.add(Msg.translate(Env.getCtx(), "Weight"));
		columnNames.add(Msg.translate(Env.getCtx(), "Volume"));
		columnNames.add(Msg.translate(Env.getCtx(), "SalesRep_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_Location_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_Region_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_City_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "Address1"));
		columnNames.add(Msg.translate(Env.getCtx(), "Address2"));
		columnNames.add(Msg.getElement(Env.getCtx(), "Address3"));
		columnNames.add(Msg.getElement(Env.getCtx(), "Address4"));
		//	
		return columnNames;
	}
	
	/**
	 * Set Order Column Class on Table
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/12/2013, 14:25:11
	 * @param orderTable
	 * @return void
	 */
	protected void setOrderColumnClass(IMiniTable orderTable) {
		int i = 0;
		orderTable.setColumnClass(i++, Boolean.class, false);		//  0-Selection
		orderTable.setColumnClass(i++, String.class, true);			//  1-Warehouse
		orderTable.setColumnClass(i++, String.class, true);			//  2-DocumentNo
		orderTable.setColumnClass(i++, Timestamp.class, true);		//  3-DateOrdered
		orderTable.setColumnClass(i++, Timestamp.class, true);		//  4-DatePromiset
		orderTable.setColumnClass(i++, BigDecimal.class, true);		//  5-Weight
		orderTable.setColumnClass(i++, BigDecimal.class, true);		//  6-Volume
		orderTable.setColumnClass(i++, String.class, true);			//  7-Sales Representative
		orderTable.setColumnClass(i++, String.class, true);			//  8-Business Partner
		orderTable.setColumnClass(i++, String.class, true);			//  9-Location
		orderTable.setColumnClass(i++, String.class, true);			//  10-Region
		orderTable.setColumnClass(i++, String.class, true);			//  11-City
		orderTable.setColumnClass(i++, String.class, true);			//  12-Address 1
		orderTable.setColumnClass(i++, String.class, true);			//  13-Address 2
		orderTable.setColumnClass(i++, String.class, true);			//  14-Address 3
		orderTable.setColumnClass(i++, String.class, true);			//  15-Address 4
		//	
		//  Table UI
		orderTable.autoSize();
	}
	
	/**
	 * Get Order Line Data
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/12/2013, 14:24:58
	 * @param orderLineTable
	 * @param sqlPrep
	 * @return
	 * @return Vector<Vector<Object>>
	 */
	protected Vector<Vector<Object>> getOrderLineData(IMiniTable orderLineTable, StringBuffer sqlPrep) {
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		
		log.fine("LoadOrderLineSQL=" + sqlPrep.toString());
		try {
			
			PreparedStatement pstmt = DB.prepareStatement(sqlPrep.toString(), null);
			//	Parameter
			int param = 1;
			//	
			if(m_IsBulk)
				pstmt.setInt(param++, m_M_Product_ID);
			//	
			ResultSet rs = pstmt.executeQuery();
			int column = 1;
			//BigDecimal rate = Env.ZERO;
			BigDecimal qty = Env.ZERO;
			BigDecimal qtyOnHand = Env.ZERO;
			BigDecimal diff = Env.ZERO;
			int precision = 0;
			//	
			while (rs.next()) {
				column = 1;
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));       	//  0-Selection
				KeyNamePair wr = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(wr);       					//  1-Warehouse
				KeyNamePair lo = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(lo);				       		//  2-DocumentNo
				KeyNamePair pr = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(pr);				      		//  3-Product
				KeyNamePair uop = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(uop);				      		//  4-Unit Product
				//	Get Precision
				precision = MUOM.getPrecision(Env.getCtx(), uop.getKey());
				//	
				qtyOnHand = rs.getBigDecimal(column++);
				//	Valid Null
				if(qtyOnHand == null)
					qtyOnHand = Env.ZERO;
				line.add(qtyOnHand);  					//  5-QtyOnHand
				line.add(rs.getBigDecimal(column++));  	//  6-QtyOrdered
				KeyNamePair uo = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(uo);				      		//  7-Unit Conversion
				line.add(rs.getBigDecimal(column++)); 	//  8-QtyReserved
				line.add(rs.getBigDecimal(column++));  	//  9-QtyInvoiced
				line.add(rs.getBigDecimal(column++));	//  10-QtyDelivered
				line.add(rs.getBigDecimal(column++));	//  11-QtyLoc
				//	Set Quantity
				qty = rs.getBigDecimal(column++);
				BigDecimal weight = rs.getBigDecimal(column++);
				BigDecimal volume = rs.getBigDecimal(column++);
				String m_DeliveryRuleKey = rs.getString(column++);
				//	Delivery Rule
				StringNamePair m_DeliveryRule = new StringNamePair(m_DeliveryRuleKey, 
						MRefList.getListName(Env.getCtx(), X_C_Order.DELIVERYRULE_AD_Reference_ID, m_DeliveryRuleKey));
				if(m_DeliveryRule.getID() == null)
					m_DeliveryRule.setKey(X_C_Order.DELIVERYRULE_Availability);
				//	Valid Quantity On Hand
				if(m_DeliveryRule.getID().equals(X_C_Order.DELIVERYRULE_Availability)) {
					diff = qtyOnHand.subtract(qty).setScale(precision, BigDecimal.ROUND_HALF_UP);
					//	Set Quantity
					if(diff.doubleValue() < 0) {
						qty = qty
							.subtract(diff.abs())
							.setScale(precision, BigDecimal.ROUND_HALF_UP);
					}
					//	Valid Zero
					if(qty.doubleValue() <= 0)
						continue;
				}
				//					
				line.add(qty);							//  12-Quantity
				line.add(uop);				      		//  13-Unit Product
				line.add(weight.multiply(qty));			//	14-Weight
				line.add(volume.multiply(qty));			//	15-Volume
				line.add(Env.ZERO);						//	16-SeqNo
				line.add(m_DeliveryRule);				//	17-Delivery Rule
				//	Add Data
				data.add(line);
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			log.log(Level.SEVERE, sqlPrep.toString(), e);
		}
		//	
		return data;
	}
	
	/**
	 * Get Column Name on Order Line
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/12/2013, 14:24:10
	 * @return
	 * @return Vector<String>
	 */
	protected Vector<String> getOrderLineColumnNames() {	
		//  Header Info
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.translate(Env.getCtx(), "M_Warehouse_ID"));
		columnNames.add(Util.cleanAmp(Msg.translate(Env.getCtx(), "DocumentNo")));
		columnNames.add(Msg.translate(Env.getCtx(), "M_Product_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_UOM_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyOnHand"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyOrdered"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_UOM_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyReserved"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyInvoiced"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyDelivered"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyInTransit"));
		columnNames.add(Msg.translate(Env.getCtx(), "Qty"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_UOM_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "Weight")
				+ " (" + m_UOM_Weight_Symbol + ")");
		columnNames.add(Msg.translate(Env.getCtx(), "Volume")
				+ " (" + m_UOM_Volume_Symbol + ")");
		columnNames.add(Msg.translate(Env.getCtx(), "LoadSeq"));
		columnNames.add(Msg.translate(Env.getCtx(), "DeliveryRule"));
		return columnNames;
	}
	
	/**
	 * Get Stock Column Names
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/12/2013, 14:23:45
	 * @return
	 * @return Vector<String>
	 */
	protected Vector<String> getStockColumnNames() {	
		//  Header Info
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.translate(Env.getCtx(), "M_Product_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_UOM_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyOnHand"));
		columnNames.add(Msg.translate(Env.getCtx(), "Qty"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyAvailable"));
		return columnNames;
	}

	/**
	 * Set Stock Column Class
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/12/2014, 10:29:04
	 * @param stockTable
	 * @return void
	 */
	protected void setStockColumnClass(IMiniTable stockTable) {
		int i = 0;
		stockTable.setColumnClass(i++, String.class, true);			//  1-Product
		stockTable.setColumnClass(i++, String.class, true);			//  2-Unit of Measure
		stockTable.setColumnClass(i++, BigDecimal.class, true);		//  3-Quantity On Hand
		stockTable.setColumnClass(i++, BigDecimal.class, true);		//  4-Quantity Set
		stockTable.setColumnClass(i++, BigDecimal.class, true);		//  5-Quantity Available
		//  Table UI
//		stockTable.autoSize();
	}
	
	
	/**
	 * Set Order Line Class on Table
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/12/2013, 14:23:21
	 * @param orderLineTable
	 * @return void
	 */
	protected void setOrderLineColumnClass(IMiniTable orderLineTable) {
		int i = 0;
		orderLineTable.setColumnClass(i++, Boolean.class, false);		//  0-Selection
		orderLineTable.setColumnClass(i++, String.class, true);			//  1-Warehouse
		orderLineTable.setColumnClass(i++, String.class, true);			//  2-DocumentNo
		orderLineTable.setColumnClass(i++, String.class, true);			//  3-Product
		orderLineTable.setColumnClass(i++, String.class, true);			//  4-Unit Measure Product
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  5-QtyOnHand
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  6-QtyOrdered
		orderLineTable.setColumnClass(i++, String.class, true);			//  7-Unit Measure Conversion
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  8-QtyReserved
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  9-QtyInvoiced
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  10-QtyDelivered
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//	11-QtyLoc
		orderLineTable.setColumnClass(i++, BigDecimal.class, false);	//  12-Quantity
		orderLineTable.setColumnClass(i++, String.class, true);			//  13-Unit Measure Product
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  14-Weight
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  15-Volume
		orderLineTable.setColumnClass(i++, Integer.class, false);		//  16-Sequence No
		orderLineTable.setColumnClass(i++, String.class, true);			//  17-Delivery Rule
		//  Table UI
//		orderLineTable.autoSize();
	}
	
	/**
	 * Generate Load Order
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/12/2013, 11:34:33
	 * @param trxName
	 * @return
	 * @return String
	 */
	protected String generateLoadOrder(String trxName) {
		int m_gen = 0;
		int rows = orderLineTable.getRowCount();
		MFTALoadOrder loadOrder = new MFTALoadOrder(Env.getCtx(), 0, trxName);
		MFTALoadOrderLine lorder = null;
		//	
		BigDecimal totalWeight = Env.ZERO;
		BigDecimal totalVolume = Env.ZERO;
		//	
		loadOrder.setAD_Org_ID(m_AD_Org_ID);
		loadOrder.setOperationType(m_OperationType);
		loadOrder.setFTA_VehicleType_ID(m_FTA_VehicleType_ID);
		loadOrder.setDateDoc(m_DateDoc);
		loadOrder.setShipDate(m_ShipDate);
		loadOrder.setC_DocType_ID(m_C_DocTypeTarget_ID);
		loadOrder.setLoadCapacity(m_LoadCapacity);
		loadOrder.setVolumeCapacity(m_VolumeCapacity);
		loadOrder.setC_UOM_Weight_ID(m_C_UOM_Weight_ID);
		loadOrder.setC_UOM_Volume_ID(m_C_UOM_Volume_ID);
		//	Set Is Weight Register
		loadOrder.setIsWeightRegister(MFTAWeightScale.isWeightScaleOrg(m_AD_Org_ID, trxName));
		//	Set Warehouse
		if(m_M_Warehouse_ID != 0)
			loadOrder.setM_Warehouse_ID(m_M_Warehouse_ID);
		//	Invoice Rule
		if(m_InvoiceRule != null
				&& m_InvoiceRule.trim().length() > 0)
			loadOrder.setInvoiceRule(m_InvoiceRule);
		//	Delivery Rule
		if(m_DeliveryRule != null
				&& m_DeliveryRule.trim().length() > 0)
			loadOrder.setDeliveryRule(m_DeliveryRule);
		//	Set Shipper
		if(m_M_Shipper_ID != 0)
			loadOrder.setM_Shipper_ID(m_M_Shipper_ID);
		//	Set Driver
		if(m_FTA_Driver_ID != 0)
			loadOrder.setFTA_Driver_ID(m_FTA_Driver_ID);
		//	Set Vehicle
		if(m_FTA_Vehicle_ID != 0)
			loadOrder.setFTA_Vehicle_ID(m_FTA_Vehicle_ID);
		//	Set Entry Ticket
		if(m_FTA_EntryTicket_ID != 0)
			loadOrder.setFTA_EntryTicket_ID(m_FTA_EntryTicket_ID);
		//	Set Product
		if(m_M_Product_ID != 0)
			loadOrder.setM_Product_ID(m_M_Product_ID);
		//	Save Order
		loadOrder.saveEx();
		//	Loop for add Lines
		for (int i = 0; i < rows; i++) {
			if (((Boolean)orderLineTable.getValueAt(i, 0)).booleanValue()) {
				int m_OrderLine_ID = ((KeyNamePair)orderLineTable.getValueAt(i, ORDER_LINE)).getKey();
				int m_M_Product_ID = ((KeyNamePair)orderLineTable.getValueAt(i, OL_PRODUCT)).getKey();
				BigDecimal qty = (BigDecimal) orderLineTable.getValueAt(i, OL_QTY);
				BigDecimal weight = (BigDecimal) orderLineTable.getValueAt(i, OL_WEIGHT);
				BigDecimal volume = (BigDecimal) orderLineTable.getValueAt(i, OL_VOLUME);
				Integer seqNo = (Integer) orderLineTable.getValueAt(i, OL_SEQNO);
				//	New Line
				lorder = new MFTALoadOrderLine(Env.getCtx(), 0, trxName);
				//	Set Values
				lorder.setAD_Org_ID(m_AD_Org_ID);
				lorder.setFTA_LoadOrder_ID(loadOrder.getFTA_LoadOrder_ID());
				/** 2014-12-02 Carlos Parada Add Support to Distribution Order*/ 
				if (m_OperationType.equals(X_FTA_LoadOrder.OPERATIONTYPE_MaterialOutputMovement))
					lorder.setDD_OrderLine_ID(m_OrderLine_ID);
				else
					lorder.setC_OrderLine_ID(m_OrderLine_ID);
				/** End Carlos Parada*/
				lorder.setM_Product_ID(m_M_Product_ID);
				lorder.setQty(qty);
				lorder.setSeqNo(seqNo);
				lorder.setWeight(weight);
				lorder.setVolume(volume);
				//	Add Weight
				totalWeight = totalWeight.add(weight);
				//	Add Volume
				totalVolume = totalVolume.add(volume);
				//	Save Line
				lorder.saveEx();
				//	Add Count
				m_gen ++;
			}
		}
		//	Set Header Weight
		loadOrder.setWeight(totalWeight);
		//	Set Header Volume
		loadOrder.setVolume(totalVolume);
		//	Save Header
		loadOrder.saveEx();
		//	Complete Order
		loadOrder.setDocAction(X_FTA_LoadOrder.DOCACTION_Complete);
		loadOrder.processIt(X_FTA_LoadOrder.DOCACTION_Complete);
		loadOrder.saveEx();
		//	Valid Error
		String errorMsg = loadOrder.getProcessMsg();
		if(errorMsg != null
				&& loadOrder.getDocStatus().equals(X_FTA_LoadOrder.DOCSTATUS_Invalid))
			throw new AdempiereException(errorMsg);
		//	Message
		return Msg.parseTranslation(Env.getCtx(), "@Created@ = [" + loadOrder.getDocumentNo() 
				+ "] || @LineNo@" + " = [" + m_gen + "]" + (errorMsg != null? "\n@Errors@:" + errorMsg: ""));
	}
	
	/**
	 * Load the Default Values
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/12/2013, 11:10:31
	 * @param trxName
	 * @return void
	 */
	protected void loadDefaultValues(String trxName) {
		m_C_UOM_Weight_ID = getC_UOM_Weight_ID(trxName);
		m_C_UOM_Volume_ID = getC_UOM_Volume_ID(trxName);
		//	Get Weight Precision
		if(m_C_UOM_Weight_ID > 0) {
			m_WeightPrecision = MUOM.getPrecision(Env.getCtx(), m_C_UOM_Weight_ID);
		}
		//	Get Volume Precision
		if(m_C_UOM_Volume_ID > 0) {
			m_VolumePrecision = MUOM.getPrecision(Env.getCtx(), m_C_UOM_Volume_ID);
		}
	}
	
	/**
	 * Get Vehicle Type from Vehicle
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/11/2013, 17:28:42
	 * @param p_FTA_EntryTicket_ID
	 * @param trxName
	 * @return
	 * @return int
	 */
	protected int getFTA_VehicleType_ID(int p_FTA_EntryTicket_ID, String trxName) {
		return DB.getSQLValue(trxName, "SELECT v.FTA_VehicleType_ID "
				+ "FROM FTA_EntryTicket et "
				+ "INNER JOIN FTA_Vehicle v ON(v.FTA_Vehicle_ID = et.FTA_Vehicle_ID) "
				+ "AND et.FTA_EntryTicket_ID = ?", p_FTA_EntryTicket_ID);
	}
	
	/**
	 * Get Load Capacity from Vehicle Type
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/11/2013, 10:35:41
	 * @param p_FTA_VehicleType_ID
	 * @param trxName
	 * @return
	 * @return BigDecimal
	 */
	protected BigDecimal getLoadCapacity(int p_FTA_VehicleType_ID, String trxName) {
		return DB.getSQLValueBD(trxName, "SELECT vt.LoadCapacity "
				+ "FROM FTA_VehicleType vt "
				+ "WHERE FTA_VehicleType_ID = ?", p_FTA_VehicleType_ID);
	}
	
	/**
	 * Set Capacity Weight and Volume
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/12/2013, 14:03:37
	 * @return void
	 */
	protected void setCapacity() {
		if(m_FTA_Vehicle_ID != 0) {
			MFTAVehicle vehicle = MFTAVehicle.get(Env.getCtx(), m_FTA_Vehicle_ID);
			m_LoadCapacity = vehicle.getLoadCapacity();
			m_VolumeCapacity = vehicle.getVolumeCapacity();
		} else if(m_FTA_VehicleType_ID != 0) {
			MFTAVehicleType vehicleType = MFTAVehicleType.get(Env.getCtx(), m_FTA_VehicleType_ID);
			m_LoadCapacity = vehicleType.getLoadCapacity();
			m_VolumeCapacity = vehicleType.getVolumeCapacity();
		}
	}
	
	/**
	 * Get Volume Capacity from Vehicle Type
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/12/2013, 12:07:06
	 * @param p_FTA_VehicleType_ID
	 * @param trxName
	 * @return
	 * @return BigDecimal
	 */
	protected BigDecimal getVolumeCapacity(int p_FTA_VehicleType_ID, String trxName) {
		return DB.getSQLValueBD(trxName, "SELECT vt.VolumeCapacity "
				+ "FROM FTA_VehicleType vt "
				+ "WHERE FTA_VehicleType_ID = ?", p_FTA_VehicleType_ID);
	}
	
	/**
	 * Get default UOM
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/11/2013, 11:08:46
	 * @param trxName
	 * @return
	 * @return int
	 */
	protected int getC_UOM_Weight_ID(String trxName) {
		return DB.getSQLValue(trxName, "SELECT ci.C_UOM_Weight_ID "
				+ "FROM AD_ClientInfo ci "
				+ "WHERE ci.AD_Client_ID = ?", m_AD_Client_ID);
	}
	
	/**
	 * Get default Volume UOM
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/12/2013, 11:14:38
	 * @param trxName
	 * @return
	 * @return int
	 */
	protected int getC_UOM_Volume_ID(String trxName) {
		return DB.getSQLValue(trxName, "SELECT ci.C_UOM_Volume_ID "
				+ "FROM AD_ClientInfo ci "
				+ "WHERE ci.AD_Client_ID = ?", m_AD_Client_ID);
	}
	
	/**
	 * Get Driver Data
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/11/2013, 18:17:22
	 * @param trxName
	 * @return
	 * @return ArrayList<KeyNamePair>
	 */
	protected ArrayList<KeyNamePair> getDataDriver(String trxName) {
		String sql = "SELECT d.FTA_Driver_ID, d.Value || ' - ' || d.Name " +
				"FROM FTA_EntryTicket et " + 
				"INNER JOIN FTA_Driver d ON(d.FTA_Driver_ID = et.FTA_Driver_ID) " +
				"WHERE et.FTA_EntryTicket_ID = " + m_FTA_EntryTicket_ID + " " +
				"ORDER BY d.Value, d.Name";
		return getData(sql, trxName);
	}
	
	/**
	 * Get Vehicle Data
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/11/2013, 10:08:03
	 * @param trxName
	 * @return
	 * @return ArrayList<KeyNamePair>
	 */
	protected ArrayList<KeyNamePair> getVehicleData(String trxName) {
		String sql = "SELECT v.FTA_Vehicle_ID, v.VehiclePlate || ' - ' || v.Name " +
				"FROM FTA_EntryTicket et " + 
				"INNER JOIN FTA_Vehicle v ON(v.FTA_Vehicle_ID = et.FTA_Vehicle_ID) " +
				"WHERE et.FTA_EntryTicket_ID = " + m_FTA_EntryTicket_ID + " " +
				"ORDER BY v.VehiclePlate, v.Name";
		return getData(sql, trxName);
	}
	
	/**
	 * Get Data for Document Type from Operation Type
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/11/2013, 15:53:34
	 * @param trxName
	 * @return
	 * @return ArrayList<KeyNamePair>
	 */
	protected ArrayList<KeyNamePair> getDataDocumentType(String trxName) {
		
		if(m_OperationType == null)
			return null;
		
		String docBaseType = (m_OperationType.equals("MOM")? "DOO": "SOO");
		
		String sql = MRole.getDefault().addAccessSQL("SELECT doc.C_DocType_ID, TRIM(doc.Name) " +
				"FROM C_DocType doc " +
				"WHERE doc.AD_Client_ID = " + m_AD_Client_ID + " " + 
				"AND doc.AD_Org_ID = " + m_AD_Org_ID + " " + 
				"AND doc.DocBaseType = '" + docBaseType + "' " +
				"AND doc.OperationType = '" + m_OperationType + "' " + 
				"AND (doc.DocSubTypeSO IS NULL OR doc.DocSubTypeSO NOT IN('RM', 'OB')) " +
				"ORDER BY doc.Name", "doc", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RW);		
		return getData(sql, trxName);
	}	
	
	/**
	 * Load the Warehouse from Organization
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/11/2013, 14:47:28
	 * @param trxName
	 * @return
	 * @return ArrayList<KeyNamePair>
	 */
	protected ArrayList<KeyNamePair> getDataWarehouse(String trxName) {
		String sql = "SELECT w.M_Warehouse_ID, w.Name " +
				"FROM M_Warehouse w " +
				"WHERE w.IsActive = 'Y' " +
				"AND w.AD_Org_ID = " + m_AD_Org_ID + " " + 
				"ORDER BY w.Name";
		return getData(sql, trxName);
	}
	
	/**
	 * Load the Combo Box from ArrayList
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/11/2013, 14:22:20
	 * @param comboSearch
	 * @param data
	 * @param mandatory
	 * @return
	 * @return int
	 */
	protected int loadComboBox(CComboBox comboSearch, ArrayList<KeyNamePair> data, boolean mandatory) {
		comboSearch.removeAllItems();
		if(!mandatory)
			comboSearch.addItem(new KeyNamePair(0, ""));
		int m_ID = 0;
		for(KeyNamePair pp : data) {
			comboSearch.addItem(pp);
		}
		//	Set Default
		if (comboSearch.getItemCount() != 0) {
			comboSearch.setSelectedIndex(0);
			m_ID = ((KeyNamePair)comboSearch.getSelectedItem()).getKey();
		}
		return m_ID;
	}
	
	/**
	 * Load Combo Box from ArrayList (No Mandatory)
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 22/01/2014, 12:14:30
	 * @param comboSearch
	 * @param data
	 * @return
	 * @return int
	 */
	protected int loadComboBox(CComboBox comboSearch, ArrayList<KeyNamePair> data) {
		return loadComboBox(comboSearch, data, false);
	}
	
	/**
	 * Get Data from SQL
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/11/2013, 08:31:44
	 * @param sql
	 * @param trxName
	 * @return
	 * @return ArrayList<KeyNamePair>
	 */
	private ArrayList<KeyNamePair> getData(String sql, String trxName) {
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		
		log.config("getData");
		
		try	{
			PreparedStatement pstmt = DB.prepareStatement(sql, trxName);
			ResultSet rs = pstmt.executeQuery();
			//
			while (rs.next()) {
				data.add(new KeyNamePair(rs.getInt(1), rs.getString(2)));
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			log.log(Level.SEVERE, sql, e);
		}
		return data;
	}
	
	/**
	 * Verifica que un numero de secuencia no exista en la tabla
	 * @param orderLineTable
	 * @param seqNo
	 * @return
	 */
	public boolean exists_seqNo(IMiniTable orderLineTable, int row, int seqNo) {
		log.info("exists_seqNo");
		int rows = orderLineTable.getRowCount();
		int seqNoTable = 0;
		for (int i = 0; i < rows; i++) {
			if (((Boolean)orderLineTable.getValueAt(i, SELECT)).booleanValue() 
					&& i != row) {
				seqNoTable = (Integer) orderLineTable.getValueAt(i, OL_SEQNO);
				if(seqNo == seqNoTable) {
					return true;
				}
			}
		}
		return false;
	}
	
	/**
	 * Load Buffer
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/12/2013, 10:29:25
	 * @param orderLineTable
	 * @return void
	 */
	public void loadBuffer(IMiniTable orderLineTable) {
		log.info("Load Buffer");
		int rows = orderLineTable.getRowCount();
		int m_C_OrderLine_ID = 0;
		BigDecimal qty = Env.ZERO;
		Integer seqNo = 0;
		m_BufferSelect = new Vector<BufferTableSelect>();
		
		for (int i = 0; i < rows; i++) {
			if (((Boolean)orderLineTable.getValueAt(i, SELECT)).booleanValue()) {
				m_C_OrderLine_ID = ((KeyNamePair)orderLineTable.getValueAt(i, ORDER_LINE)).getKey();
				qty = (BigDecimal)orderLineTable.getValueAt(i, OL_WEIGHT);
				seqNo = (Integer)orderLineTable.getValueAt(i, OL_SEQNO);
				m_BufferSelect.addElement(
						new BufferTableSelect(m_C_OrderLine_ID, qty, seqNo));
			}
		}
	}
	
	/**
	 * Refresh Stock Values
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/12/2013, 10:34:21
	 * @param orderLineTable
	 * @return void
	 */
	public void loadStockWarehouse(IMiniTable orderLineTable) {
		
		log.info("Load StockWarehouse");
		int rows = orderLineTable.getRowCount();
		stockModel = new DefaultTableModel(null, getStockColumnNames());
		
		for (int i = 0; i < rows; i++) {
			if (((Boolean)orderLineTable.getValueAt(i, SELECT)).booleanValue()) {
				loadProductsStock(orderLineTable, i, true);
			}
		}
		stockTable.setModel(stockModel);
//		stockTable.autoSize();
		setStockColumnClass(stockTable);
	}
	
	/**
	 * Verifi if exists the product on table
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/12/2013, 10:29:57
	 * @param Product_ID
	 * @return
	 * @return int
	 */
	private int existProductStock(int Product_ID) {
		for(int i = 0; i < stockModel.getRowCount(); i++) {
			if(((KeyNamePair) stockModel.getValueAt(i, SW_PRODUCT)).getKey() == Product_ID) {
				return i;
			}
		}
		return -1;
	}
	
	/**
	 * Carga los productos en la tabla de Stock y acumulado
	 * @author Yamel Senih 08/06/2012, 10:56:29
	 * @param orderLineTable
	 * @param row
	 * @param isSelected
	 * @return void
	 */
	protected void loadProductsStock(IMiniTable orderLineTable, int row, boolean isSelected) {
		KeyNamePair product = (KeyNamePair) orderLineTable.getValueAt(row, OL_PRODUCT);
		KeyNamePair uom = (KeyNamePair) orderLineTable.getValueAt(row, OL_UOM);
		BigDecimal qtyOnHand = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_ONDHAND);
		BigDecimal qtySet = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY);
		//	
		int pos = existProductStock(product.getKey());
		
		BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), product.getKey(), m_C_UOM_Weight_ID);
		if(rate == null)
			rate = Env.ZERO;
		//	Convert Quantity Set
		qtySet = qtySet.multiply(rate).setScale(2, BigDecimal.ROUND_HALF_UP);
		
		if(pos > -1) {
			BigDecimal qtySetOld = (BigDecimal) stockModel.getValueAt(pos, SW_QTYSET);
			//	Negate
			if(!isSelected)
				qtySet = qtySet.negate();
			//	
			qtySet = qtySet.add(qtySetOld);
			
			stockModel.setValueAt(qtyOnHand, pos, SW_QTYONHAND);
			stockModel.setValueAt(qtySet, pos, SW_QTYSET);
			stockModel.setValueAt(qtyOnHand.subtract(qtySet).setScale(2, BigDecimal.ROUND_HALF_UP), pos, SW_QTYAVAILABLE);
		} else if(isSelected) {
			Vector<Object> line = new Vector<Object>();
			line.add(product);
			line.add(uom);
			line.add(qtyOnHand);
			line.add(qtySet);
			line.add(qtyOnHand.subtract(qtySet).setScale(2, BigDecimal.ROUND_HALF_UP));
			//	
			stockModel.addRow(line);
		}
	}
	
	/**
	 * Verifi if is Selected
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/12/2013, 10:30:28
	 * @param m_Record_ID
	 * @return
	 * @return BufferTableSelect
	 */
	private BufferTableSelect isSelect(int m_Record_ID) {
		log.info("Is Select " + m_Record_ID);
		if(m_BufferSelect != null) {
			for(int i = 0; i < m_BufferSelect.size(); i++) {
				if(m_BufferSelect.get(i).getRecord_ID() == m_Record_ID) {
					return m_BufferSelect.get(i);
				}
			}	
		}
		return null;
	}
	
	/**
	 * Set the values from buffer
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/12/2013, 10:35:54
	 * @param orderLineTable
	 * @return void
	 */
	protected void setValueFromBuffer(IMiniTable orderLineTable) {
		log.info("Set Value From Buffer");
		if(m_BufferSelect != null) {
			int rows = orderLineTable.getRowCount();
			int m_C_OrderLine_ID = 0;
			BufferTableSelect bts = null;
			for (int i = 0; i < rows; i++) {
				m_C_OrderLine_ID = ((KeyNamePair)orderLineTable.getValueAt(i, ORDER_LINE)).getKey();
				bts = isSelect(m_C_OrderLine_ID);
				if(bts != null) {
					orderLineTable.setValueAt(true, i, SELECT);
					orderLineTable.setValueAt(bts.getQty(), i, OL_WEIGHT);
					orderLineTable.setValueAt(bts.getSeqNo(), i, OL_SEQNO);
				}
			}	
		}
	}
	
	/**
	 * Get is Bulk
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/11/2013, 18:26:51
	 * @return
	 * @return boolean
	 */
	protected boolean isBulk() {
		return (m_OperationType.equals("DBM"));
	}
	
	/**
	 * Verify if more one is selected
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/01/2014, 10:38:48
	 * @param table
	 * @return
	 * @return boolean
	 */
	protected boolean moreOneSelect(IMiniTable table) {
		int rows = table.getRowCount();
		int cont = 0;
		for (int i = 0; i < rows; i++) {
			if (((Boolean)table.getValueAt(i, SELECT)).booleanValue()) {
				cont++;
				if(cont > 1) {
					return true;
				}
			}
		}
		return false;
	}
	
}