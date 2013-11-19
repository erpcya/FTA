/**
 * 
 */
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

import org.compiere.minigrid.IMiniTable;
import org.compiere.minigrid.MiniTable;
import org.compiere.model.MDocType;
import org.compiere.model.MRole;
import org.compiere.model.MUOM;
import org.compiere.model.MUOMConversion;
import org.compiere.swing.CComboBox;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Util;
import org.spin.util.BufferTableSelect;

/**
 * @author Yamel Senih 24/06/2011, 12:57
 *
 */
public class LoadOrder {

	/**	Logger			*/
	public static CLogger log = CLogger.getCLogger(LoadOrder.class);
	
	public final int OL_SO_LOC = 6;
	public final int SELECT = 0;
	public final int ORDER = 2;
	public final int ORDER_LINE = 2;
	public final int OL_PRODUCT = 3;
	public final int OL_UOM_CONVERSION = 4;
	public final int OL_QTY_ENTERED = 5;
	public final int OL_UOM = 6;
	public final int OL_QTY_ONDHAND = 7;
	public final int OL_QTY_ORDERED = 8;
	public final int OL_QTY_RESERVERD = 9;
	public final int OL_QTY_INVOICED = 10;
	public final int OL_QTY_DELIVERED = 11;
	public final int OL_QTY_LOAD_ORDER_LINE = 12;
	public final int OL_QTY = 13;
	public final int OL_QTY_SET = 14;
	public final int OL_SEQNO = 15;
	
	//	
	public final int SW_PRODUCT = 0;
	public final int SW_UOM = 1;
	public final int SW_QTYONHAND = 2;
	public final int SW_QTYSET = 3;
	public final int SW_QTYAVAILABLE = 4;
	
	/**	Buffer				*/
	public Vector<BufferTableSelect> m_BufferSelect = null;
	
	public StringBuffer m_Symmary = new StringBuffer();
	public StringBuffer m_QueryAdd = new StringBuffer();
	
	/**	Client				*/
	protected int 		m_AD_Client_ID = 0;
	/**	Organization		*/
	protected int 		m_AD_Org_ID = 0;
	/**	Warehouse			*/
	protected int 		m_C_SalesRegion_ID = 0;
	/**	Sales Rep			*/
	protected int 		m_SalesRep_ID = 0;
	/**	Warehouse			*/
	protected int 		m_M_Warehouse_ID = 0;
	/**	Operation Type		*/
	protected String 	m_OperationType = null;
	/**	Document Type 		*/
	protected int 		m_C_DocType_ID = 0;
	/**	Document Type Target*/
	protected int 		m_C_DocTypeTarget_ID = 0;
	/**	Invoice Rule		*/
	protected String 	m_InvoiceRule = null;
	/**	Delivery Rule		*/
	protected String 	m_DeliveryRule = null;
	/**	Vehicle Type		*/
	protected int 		m_FTA_VehicleType_ID = 0;
	/**	Document Date		*/
	protected Timestamp	m_DateDoc = null;
	/**	Shipment Date		*/
	protected Timestamp	m_ShipDate = null;
	/**	Entry Ticket		*/
	protected int 		m_FTA_EntryTicket_ID = 0;
	/**	Shipper				*/
	protected int 		m_M_Shipper_ID = 0;
	/**	Driver				*/
	protected int 		m_FTA_Driver_ID = 0;
	/**	Vehicle				*/
	protected int 		m_FTA_Vehicle_ID = 0;
	/**	Capacity			*/
	protected BigDecimal m_Capacity = Env.ZERO;
	/**	Work Unit Measure	*/
	protected int 		m_C_UOM_ID = 0;
	/**	Rows Selected		*/
	protected int		m_RowsSelected = 0;
	/**	Is Bulk Product		*/
	protected boolean	m_IsBulk = false;
	/**	Conversions			*/
	protected BigDecimal rateCapacity = null;
	
	/**	Total Weight		*/
	protected BigDecimal	totalWeight = Env.ZERO;
	
	/**	Max Sequence		*/
	protected int		m_MaxSeqNo = 0;
	
	protected MiniTable		stockTable = new MiniTable();
	protected DefaultTableModel stockModel = null;
	
	
	protected Vector<Vector<Object>> getOrderData(int p_AD_Org_ID, int p_M_Warehouse_ID, 
			int p_SalesRep_ID, int p_C_DocTypeOrder_ID, 
			IMiniTable orderTable){
		/**
		 * Carga los datos de las ordenes de Venta 
		 * 
		 * 
		 */
		/*Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuffer sql = new StringBuffer("SELECT " +
				"wr.Name Warehouse, ord.C_Order_ID, ord.DocumentNo, " +	//	1..3
				"ord.DateOrdered, ord.DatePromised, SUM(lord.QtyOrdered) Weight, sr.Name SalesRep, " +	//	4..7
				"cp.Name Partner, bploc.Name, " +	//	8..9
				"reg.Name, cit.Name, loc.Address1, loc.Address2, loc.Address3, loc.Address4 " +	//	10..14
				"FROM C_Order ord " +
				"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = ord.C_BPartner_ID) " +
				"INNER JOIN AD_User sr ON(sr.AD_User_ID = ord.SalesRep_ID) " +
				"INNER JOIN M_Warehouse wr ON(wr.M_Warehouse_ID = ord.M_Warehouse_ID) " +
				"INNER JOIN C_BPartner_Location bploc ON(bploc.C_BPartner_Location_ID = ord.C_BPartner_Location_ID) " +
				"INNER JOIN C_Location loc ON(loc.C_Location_ID = bploc.C_Location_ID) " +
				"INNER JOIN C_Region reg ON(reg.C_Region_ID = loc.C_Region_ID) " +
				"INNER JOIN C_City cit ON(cit.C_City_ID = loc.C_City_ID) " +
				"INNER JOIN C_OrderLine lord ON(lord.C_Order_ID = ord.C_Order_ID) " +
				"WHERE ord.IsSOTrx = 'Y' " +
				"AND wr.IsActive = 'Y' " +
				"AND ord.DocStatus = 'CO' " +
				"AND ord.AD_Client_ID=? " +
				"AND EXISTS(SELECT 1 " +
				"FROM C_OrderLine lord " +
				"LEFT JOIN XX_LoadOrderLine lc ON(lc.C_OrderLine_ID = lord.C_OrderLine_ID) " +
				"LEFT JOIN XX_LoadOrder c ON(c.XX_LoadOrder_ID = lc.XX_LoadOrder_ID) " +
				"WHERE lord.M_Product_ID IS NOT NULL " +
				// Period
				"AND EXISTS(SELECT 1 FROM C_Period p " +
				"INNER JOIN C_PeriodControl pc ON(pc.C_Period_ID = p.C_Period_ID) " +
				"WHERE pc.DocBaseType = 'SOO' " +
				"AND pc.PeriodStatus = 'O' " +
				"AND pc.AD_Client_ID = ord.AD_Client_ID " + 
				"AND p.StartDate <= ord.DateAcct AND p.EndDate >= ord.DateAcct) " +
				"AND ord.C_Order_ID = lord.C_Order_ID " +
				"GROUP BY lord.C_OrderLine_ID, lord.QtyOrdered, lord.QtyDelivered " +
				"HAVING (COALESCE(lord.QtyOrdered, 0) - COALESCE(lord.QtyDelivered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' THEN lc.Qty ELSE 0 END)) > 0 " +
				"ORDER BY lord.C_OrderLine_ID ASC) ");
		if (p_AD_Org_ID != 0)
			sql.append("AND ord.AD_Org_ID=? ");
		if (p_M_Warehouse_ID != 0 )
			sql.append("AND bploc.C_SalesRegion_ID=? ");
		if (p_SalesRep_ID != 0 )
			sql.append("AND ord.SalesRep_ID=? ");
		if (p_C_DocTypeOrder_ID != 0 )
			sql.append("AND ord.C_DocType_ID=? ");
		
		//	Group By
		sql.append("GROUP BY wr.Name, ord.C_Order_ID, ord.DocumentNo, ord.DateOrdered, " +
				"ord.DatePromised, sr.Name, cp.Name, bploc.Name, " +
				"reg.Name, cit.Name, loc.Address1, loc.Address2, loc.Address3, loc.Address4 ");
		//	Order By
		sql.append("ORDER BY ord.C_Order_ID ASC");
		
		// role security
		
		log.fine("LoadOrderSQL=" + sql.toString());
		//System.out.println(sql);
		*/
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuffer sql = new StringBuffer("SELECT " +
				"wr.Name Warehouse, ord.C_Order_ID, ord.DocumentNo, " +	//	1..3
				"ord.DateOrdered, ord.DatePromised, SUM(lord.QtyOrdered) Weight, sr.Name SalesRep, " +	//	4..7
				"cp.Name Partner, bploc.Name, " +	//	8..9
				"reg.Name, cit.Name, loc.Address1, loc.Address2, loc.Address3, loc.Address4, ord.C_BPartner_Location_ID " +	//	10..14
				"FROM C_Order ord " +
				"INNER JOIN C_OrderLine lord ON(lord.C_Order_ID = ord.C_Order_ID) " +
				"INNER JOIN M_Product pr ON(pr.M_Product_ID = lord.M_Product_ID) " +
				"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = ord.C_BPartner_ID) " +
				"INNER JOIN AD_User sr ON(sr.AD_User_ID = ord.SalesRep_ID) " +
				"INNER JOIN M_Warehouse wr ON(wr.M_Warehouse_ID = ord.M_Warehouse_ID) " +
				"INNER JOIN C_BPartner_Location bploc ON(bploc.C_BPartner_Location_ID = ord.C_BPartner_Location_ID) " +
				"INNER JOIN C_Location loc ON(loc.C_Location_ID = bploc.C_Location_ID) " +
				"INNER JOIN C_Region reg ON(reg.C_Region_ID = loc.C_Region_ID) " +
				"LEFT JOIN C_City cit ON(cit.C_City_ID = loc.C_City_ID) " +
				"LEFT JOIN (SELECT lord.C_OrderLine_ID, " +
				"	(COALESCE(lord.QtyOrdered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' THEN lc.Qty ELSE 0 END)) QtyAvailable " +
				"	FROM C_OrderLine lord " +
				"	LEFT JOIN XX_LoadOrderLine lc ON(lc.C_OrderLine_ID = lord.C_OrderLine_ID) " +
				"	LEFT JOIN XX_LoadOrder c ON(c.XX_LoadOrder_ID = lc.XX_LoadOrder_ID) " +
				"	WHERE lord.M_Product_ID IS NOT NULL " +
				"	GROUP BY lord.C_Order_ID, lord.C_OrderLine_ID, lord.QtyOrdered " +
				"	ORDER BY lord.C_OrderLine_ID ASC) QAFL " +
				"	ON(QAFL.C_OrderLine_ID = lord.C_OrderLine_ID) " +
				"WHERE ord.IsSOTrx = 'Y' " +
				"AND wr.IsActive = 'Y' " +
				"AND ord.DocStatus = 'CO' " +
				"AND pr.IsStocked = 'Y' " +
				"AND (QAFL.QtyAvailable > 0 OR QAFL.QtyAvailable IS NULL) " +
				"AND ord.AD_Client_ID=? ");
		if (p_AD_Org_ID != 0)
			sql.append("AND ord.AD_Org_ID=? ");
		if (p_M_Warehouse_ID != 0 )
			sql.append("AND bploc.C_SalesRegion_ID=? ");
		if (p_SalesRep_ID != 0 )
			sql.append("AND ord.SalesRep_ID=? ");
		if (p_C_DocTypeOrder_ID != 0 )
			sql.append("AND ord.C_DocType_ID=? ");
		
		//	Group By
		sql.append("GROUP BY wr.Name, ord.C_Order_ID, ord.DocumentNo, ord.DateOrdered, " +
				"ord.DatePromised, sr.Name, cp.Name, bploc.Name, " +
				"reg.Name, cit.Name, loc.Address1, loc.Address2, loc.Address3, loc.Address4, ord.C_BPartner_Location_ID ");
	
		//	Having
		sql.append("HAVING (SUM(COALESCE(lord.QtyOrdered, 0)) - SUM(COALESCE(lord.QtyDelivered, 0))) > 0 ");
		
		
		//	Order By
		sql.append("ORDER BY ord.C_Order_ID ASC");
		
		// role security
		
		log.fine("LoadOrderSQL=" + sql.toString());
		//System.out.println(sql);
		try
		{
			int param = 1;
			int column = 1;
			
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			
			pstmt.setInt(param++, Env.getAD_Client_ID(Env.getCtx()));
			
			if (p_AD_Org_ID != 0)
				pstmt.setInt(param++, p_AD_Org_ID);
			if (p_M_Warehouse_ID != 0 )
				pstmt.setInt(param++, p_M_Warehouse_ID);
			if (p_SalesRep_ID != 0 )
				pstmt.setInt(param++, p_SalesRep_ID);
			if (p_C_DocTypeOrder_ID != 0 )
				pstmt.setInt(param++, p_C_DocTypeOrder_ID);
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				column = 1;
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));       		//  0-Selection
				line.add(rs.getString(column++));       	//  1-Warehouse
				KeyNamePair pp = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(pp);				       			//  2-DocumentNo
				line.add(rs.getTimestamp(column++));      	//  3-DateOrdered
				line.add(rs.getTimestamp(column++));      	//  4-DatePromised
				line.add(rs.getBigDecimal(column++));		//	5-Weight
				line.add(rs.getString(column++));			//	6-Sales Representative
				line.add(rs.getString(column++));			//	7-Business Partner
				line.add(rs.getString(column++));			//	8-Location
				line.add(rs.getString(column++));			//	9-Region
				line.add(rs.getString(column++));			//	10-City
				line.add(rs.getString(column++));			//	11-Address 1
				line.add(rs.getString(column++));			//	11-Address 2
				line.add(rs.getString(column++));			//	12-Address 3
				line.add(rs.getString(column++));			//	13-Address 4
				//
				data.add(line);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		
		return data;
	}
	
	/**
	 * Obtiene los nombres de las columnas de las ordenes de carga
	 * @return
	 */
	protected Vector<String> getOrderColumnNames(){	
		//  Header Info
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.translate(Env.getCtx(), "M_Warehouse_ID"));
		columnNames.add(Util.cleanAmp(Msg.translate(Env.getCtx(), "DocumentNo")));
		columnNames.add(Msg.translate(Env.getCtx(), "DateOrdered"));
		columnNames.add(Msg.translate(Env.getCtx(), "DatePromised"));
		columnNames.add(Msg.translate(Env.getCtx(), "Weight"));
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
	 * Establece las clases de las columnas de las ordenes
	 * @param orderTable
	 */
	protected void setOrderColumnClass(IMiniTable orderTable){
		int i = 0;
		orderTable.setColumnClass(i++, Boolean.class, false);		//  0-Selection
		orderTable.setColumnClass(i++, String.class, true);			//  1-Warehouse
		orderTable.setColumnClass(i++, String.class, true);			//  2-DocumentNo
		orderTable.setColumnClass(i++, Timestamp.class, true);		//  3-DateOrdered
		orderTable.setColumnClass(i++, Timestamp.class, true);		//  4-DatePromiset
		orderTable.setColumnClass(i++, BigDecimal.class, true);		//  5-Weight
		orderTable.setColumnClass(i++, String.class, true);			//  6-Sales Representative
		orderTable.setColumnClass(i++, String.class, true);			//  7-Business Partner
		orderTable.setColumnClass(i++, String.class, true);			//  8-Location
		orderTable.setColumnClass(i++, String.class, true);			//  9-Region
		orderTable.setColumnClass(i++, String.class, true);			//  10-City
		orderTable.setColumnClass(i++, String.class, true);			//  11-Address 1
		orderTable.setColumnClass(i++, String.class, true);			//  11-Address 2
		orderTable.setColumnClass(i++, String.class, true);			//  12-Address 3
		orderTable.setColumnClass(i++, String.class, true);			//  13-Address 4
		//	

		//  Table UI
		orderTable.autoSize();
	}
	
	/**
	 * Obtiene los datos de las lineas de la orden de carga
	 * @param orderLineTable
	 * @param sqlPrep
	 * @return
	 */
	protected Vector<Vector<Object>> getOrderLineData(IMiniTable orderLineTable, StringBuffer sqlPrep){
		/**
		 * Carga los datos de las ordenes de Venta 
		 * 
		 * 
		 */
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		
		// role security
		//sqlPrep = new StringBuffer( MRole.getDefault(Env.getCtx(), false).addAccessSQL( sqlPrep.toString(), "ord", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ) );
		
		log.fine("LoadOrderLineSQL=" + sqlPrep.toString());
		try
		{
			
			PreparedStatement pstmt = DB.prepareStatement(sqlPrep.toString(), null);
			ResultSet rs = pstmt.executeQuery();
			//int seqNo = 0;
			int column = 1;
			BigDecimal rate = Env.ZERO;
			BigDecimal qty = Env.ZERO;
			while (rs.next())
			{
				column = 1;
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));       	//  0-Selection
				KeyNamePair wr = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(wr);       					//  1-Warehouse
				KeyNamePair lo = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(lo);				       		//  2-DocumentNo
				KeyNamePair pr = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(pr);				      		//  3-Product
				KeyNamePair uo = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(uo);				      		//  4-Unit Conversion
				line.add(rs.getBigDecimal(column++));  	//  5-QtyEntered
				KeyNamePair uop = new KeyNamePair(rs.getInt(column++), rs.getString(column++));
				line.add(uop);				      		//  6-Unit Product
				line.add(rs.getBigDecimal(column++));  	//  7-QtyOnHand
				line.add(rs.getBigDecimal(column++));  	//  8-QtyOrdered
				line.add(rs.getBigDecimal(column++)); 	//  9-QtyReserved
				line.add(rs.getBigDecimal(column++));  	//  10-QtyInvoiced
				line.add(rs.getBigDecimal(column++));	//  11-QtyDelivered
				line.add(rs.getBigDecimal(column++));	//  12-QtyLoc
				
				qty = rs.getBigDecimal(column++);
				
				line.add(qty);							//  12-Qty
				rate = MUOMConversion.getProductRateTo(Env.getCtx(), pr.getKey(), m_C_UOM_ID);
				if(rate != null){
					line.add(qty.multiply(rate));		//  13-Qty Set
					data.add(line);
				} else
					log.log(Level.WARNING, "Not Conversion for Product: " + pr.getName() + " to: " + MUOM.get(Env.getCtx(), m_C_UOM_ID).getName());
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sqlPrep.toString(), e);
		}
		
		return data;
	}
	
	/**
	 * Obtiene los nombres de las columnas de las lineas de la orden de carga
	 * @return
	 */
	protected Vector<String> getOrderLineColumnNames(){	
		//  Header Info
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.translate(Env.getCtx(), "M_Warehouse_ID"));
		columnNames.add(Util.cleanAmp(Msg.translate(Env.getCtx(), "DocumentNo")));
		columnNames.add(Msg.translate(Env.getCtx(), "M_Product_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_UOM_To_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyEntered"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_UOM_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyOnHand"));
		columnNames.add(Msg.translate(Env.getCtx(), "SGQtyOrdered"));
		columnNames.add(Msg.translate(Env.getCtx(), "SGQtyReserved"));
		columnNames.add(Msg.translate(Env.getCtx(), "SGQtyInvoiced"));
		columnNames.add(Msg.translate(Env.getCtx(), "SGQtyDelivered"));
		columnNames.add(Msg.translate(Env.getCtx(), "SGQtyLoc"));
		//columnNames.add(Msg.translate(Env.getCtx(), "Weight"));
		columnNames.add(Msg.translate(Env.getCtx(), "Qty"));
		columnNames.add(Msg.translate(Env.getCtx(), "SGQtySet"));
		columnNames.add(Msg.translate(Env.getCtx(), "SeqNo"));
		
		return columnNames;
	}
	
	/**
	 * Columnas de la tabla Stock
	 * @author Yamel Senih 07/06/2012, 16:25:36
	 * @return
	 * @return Vector<String>
	 */
	protected Vector<String> getstockColumnNames(){	
		//  Header Info
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.translate(Env.getCtx(), "M_Product_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "C_UOM_ID"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyOnHand"));
		columnNames.add(Msg.translate(Env.getCtx(), "SGQtySet"));
		columnNames.add(Msg.translate(Env.getCtx(), "QtyAvailable"));
		return columnNames;
	}

	/**
	 * Establece la clase de las columnas
	 * @author Yamel Senih 07/06/2012, 16:30:59
	 * @param stockTable
	 * @return void
	 */
	protected void setStockColumnClass(IMiniTable stockTable){
		int i = 0;
		stockTable.setColumnClass(i++, String.class, true);			//  1-Product
		stockTable.setColumnClass(i++, String.class, true);			//  2-Unit of Measure
		stockTable.setColumnClass(i++, BigDecimal.class, true);		//  3-Quantity On Hand
		stockTable.setColumnClass(i++, BigDecimal.class, true);		//  4-Quantity Set
		stockTable.setColumnClass(i++, BigDecimal.class, true);		//  5-Quantity Available
		//  Table UI
		stockTable.autoSize();
	}
	
	
	/**
	 * Clases de las columnas de las Lineas de la orden
	 * @param orderLineTable
	 */
	protected void setOrderLineColumnClass(IMiniTable orderLineTable){
		int i = 0;
		orderLineTable.setColumnClass(i++, Boolean.class, false);		//  0-Selection
		orderLineTable.setColumnClass(i++, String.class, true);			//  1-Warehouse
		orderLineTable.setColumnClass(i++, String.class, true);			//  2-DocumentNo
		orderLineTable.setColumnClass(i++, String.class, true);			//  3-Product
		orderLineTable.setColumnClass(i++, String.class, true);			//  4-Unit Measure Conversion
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  5-QtyEntered
		orderLineTable.setColumnClass(i++, String.class, true);			//  6-Unit Measure Product
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  7-QtyOnHand
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  8-QtyOrdered
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  9-QtyReserved
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  10-QtyInvoiced
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  11-QtyDelivered
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//	12-QtyLoc
		orderLineTable.setColumnClass(i++, BigDecimal.class, true);		//  13-Qty
		orderLineTable.setColumnClass(i++, BigDecimal.class, false);	//  14-Qty Set
		orderLineTable.setColumnClass(i++, Integer.class, false);		//  15-Sequence No
		//	

		//  Table UI
		orderLineTable.autoSize();
	}
		
	/**
	 * Obtiene el Query para cargar las lineas de las ordenes seleccionadas
	 * @param orderTable
	 * @return
	 */
	protected StringBuffer getQueryLine(IMiniTable orderTable)
	{
		log.config("getQueryLine");

		//  Order
		
		/*int rows = orderTable.getRowCount();
		StringBuffer sqlWhere = new StringBuffer("SELECT lord.M_Warehouse_ID, alm.Name Warehouse, lord.C_OrderLine_ID, " +
				"ord.DocumentNo, lord.M_Product_ID, pro.Name Product, lord.C_UOM_ID, uom.UOMSymbol, lord.QtyEntered, " +
				"pro.C_UOM_ID, uomp.UOMSymbol, " +
				"COALESCE((SELECT SUM(st.QtyOnHand) FROM M_Storage st WHERE st.M_Product_ID = lord.M_Product_ID AND st.M_Locator_ID = " + m_M_Locator_ID + "), 0) QtyOnHand, " +
				"lord.QtyOrdered, lord.QtyReserved, lord.QtyInvoiced, lord.QtyDelivered, " +
				"SUM(CASE WHEN c.XX_Annulled = 'N' THEN lc.Qty ELSE 0 END) QtyLoc, " +
				"((COALESCE(lord.QtyOrdered, 0) - COALESCE(lord.QtyDelivered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' THEN lc.Qty ELSE 0 END))) Qty, " +
				"(COALESCE(lord.QtyOrdered, 0) - COALESCE(lord.QtyDelivered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' THEN lc.Qty ELSE 0 END)) QtySet " +
				"FROM C_Order ord " +
				"INNER JOIN C_OrderLine lord ON(lord.C_Order_ID = ord.C_Order_ID) " +
				"INNER JOIN M_Warehouse alm ON(alm.M_Warehouse_ID = lord.M_Warehouse_ID) " +
				"INNER JOIN M_Product pro ON(pro.M_Product_ID = lord.M_Product_ID) " +
				"INNER JOIN C_UOM uom ON(uom.C_UOM_ID = lord.C_UOM_ID) " +
				"INNER JOIN C_UOM uomp ON(uomp.C_UOM_ID = pro.C_UOM_ID) " +
				"LEFT JOIN XX_LoadOrderLine lc ON(lc.C_OrderLine_ID = lord.C_OrderLine_ID) " +
				"LEFT JOIN XX_LoadOrder c ON(c.XX_LoadOrder_ID = lc.XX_LoadOrder_ID) " +
				"WHERE lord.M_Product_ID IS NOT NULL " +
				//"AND st.M_Locator_ID = " + m_M_Locator_ID + " " +
				"AND ord.C_Order_ID IN(0");
		m_RowsSelected = 0;
		for (int i = 0; i < rows; i++) {
			if (((Boolean)orderTable.getValueAt(i, 0)).booleanValue()) {
				int ID = ((KeyNamePair)orderTable.getValueAt(i, ORDER)).getKey();
				sqlWhere.append(",");
				sqlWhere.append(ID);
				m_RowsSelected ++;
			}
		}
		sqlWhere.append(") GROUP BY lord.M_Warehouse_ID, lord.C_Order_ID, lord.C_OrderLine_ID, " +
				"alm.Name, ord.DocumentNo, lord.M_Product_ID, pro.Name, lord.C_UOM_ID, uom.UOMSymbol, lord.QtyEntered, " +
				"pro.C_UOM_ID, uomp.UOMSymbol, lord.QtyOrdered, lord.QtyReserved, " +
				"lord.QtyInvoiced, lord.QtyDelivered " +
				"HAVING (COALESCE(lord.QtyOrdered, 0) - COALESCE(lord.QtyDelivered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' THEN lc.Qty ELSE 0 END)) > 0 " +
				"ORDER BY lord.C_Order_ID ASC");
		log.config("SQL Line Order=" + sqlWhere.toString());
		//System.out.println("LoadOrder.getQueryLine() " + sqlWhere);*/
		
		
		/*
		 * 
		 * Old 09/0/2013
		 * StringBuffer sqlWhere = new StringBuffer("SELECT lord.M_Warehouse_ID, alm.Name Warehouse, lord.C_OrderLine_ID, " +
				"ord.DocumentNo, lord.M_Product_ID, pro.Name Product, lord.C_UOM_ID, uom.UOMSymbol, lord.QtyEntered, " +
				"pro.C_UOM_ID, uomp.UOMSymbol, " +
				"COALESCE((SELECT SUM(st.QtyOnHand) FROM M_Storage st WHERE st.M_Product_ID = lord.M_Product_ID AND st.M_Locator_ID = " + m_M_Locator_ID + "), 0) QtyOnHand, " +
				"lord.QtyOrdered, lord.QtyReserved, lord.QtyInvoiced, lord.QtyDelivered, " +
				"SUM(CASE WHEN c.XX_Annulled = 'N' AND (lc.M_InOut_ID IS NULL OR de.DocStatus IN('RE', 'VO')) THEN lc.Qty ELSE 0 END) QtyLoc, " +
				"((COALESCE(lord.QtyOrdered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' AND (lc.M_InOut_ID IS NULL OR de.DocStatus IN('RE', 'VO')) THEN lc.Qty ELSE 0 END))) Qty, " +
				"(COALESCE(lord.QtyOrdered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' AND (lc.M_InOut_ID IS NULL OR de.DocStatus IN('RE', 'VO')) THEN lc.Qty ELSE 0 END)) QtySet " +
				"FROM C_Order ord " +
				"INNER JOIN C_OrderLine lord ON(lord.C_Order_ID = ord.C_Order_ID) " +
				"INNER JOIN M_Warehouse alm ON(alm.M_Warehouse_ID = lord.M_Warehouse_ID) " +
				"INNER JOIN M_Product pro ON(pro.M_Product_ID = lord.M_Product_ID) " +
				"INNER JOIN C_UOM uom ON(uom.C_UOM_ID = lord.C_UOM_ID) " +
				"INNER JOIN C_UOM uomp ON(uomp.C_UOM_ID = pro.C_UOM_ID) " +
				"LEFT JOIN XX_LoadOrderLine lc ON(lc.C_OrderLine_ID = lord.C_OrderLine_ID) " +
				"LEFT JOIN XX_LoadOrder c ON(c.XX_LoadOrder_ID = lc.XX_LoadOrder_ID) " +
				"LEFT JOIN M_InOut de ON(de.M_InOut_ID = lc.M_InOut_ID) " +
				"WHERE pro.IsStocked = 'Y' " +
				//"AND lord.M_Product_ID IS NOT NULL " +
				"AND ord.C_Order_ID IN(0");
		m_RowsSelected = 0;
		for (int i = 0; i < rows; i++) {
			if (((Boolean)orderTable.getValueAt(i, 0)).booleanValue()) {
				int ID = ((KeyNamePair)orderTable.getValueAt(i, ORDER)).getKey();
				sqlWhere.append(",");
				sqlWhere.append(ID);
				m_RowsSelected ++;
			}
		}
		sqlWhere.append(") GROUP BY lord.M_Warehouse_ID, lord.C_Order_ID, lord.C_OrderLine_ID, " +
				"alm.Name, ord.DocumentNo, lord.M_Product_ID, pro.Name, lord.C_UOM_ID, uom.UOMSymbol, lord.QtyEntered, " +
				"pro.C_UOM_ID, uomp.UOMSymbol, lord.QtyOrdered, lord.QtyReserved, lord.QtyDelivered, " +
				"lord.QtyInvoiced " +
				"HAVING (COALESCE(lord.QtyOrdered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' THEN lc.Qty ELSE 0 END)) > 0 " +
				"ORDER BY lord.C_Order_ID ASC");
		 * */
		
		
		int rows = orderTable.getRowCount();
		StringBuffer sqlWhere = new StringBuffer("SELECT lord.M_Warehouse_ID, alm.Name Warehouse, lord.C_OrderLine_ID, " +
				"ord.DocumentNo, lord.M_Product_ID, pro.Name Product, lord.C_UOM_ID, uom.UOMSymbol, lord.QtyEntered, " +
				"pro.C_UOM_ID, uomp.UOMSymbol, " +
				"COALESCE((SELECT SUM(st.QtyOnHand) FROM M_Storage st WHERE st.M_Product_ID = lord.M_Product_ID AND st.M_Locator_ID = " + "), 0) QtyOnHand, " +
				"lord.QtyOrdered, lord.QtyReserved, lord.QtyInvoiced, lord.QtyDelivered, " +
				"SUM(CASE WHEN c.XX_Annulled = 'N' AND c.IsDelivered = 'N' THEN lc.Qty ELSE 0 END) QtyLoc, " +
				"((COALESCE(lord.QtyOrdered, 0) - COALESCE(lord.QtyDelivered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' AND c.IsDelivered = 'N' THEN lc.Qty ELSE 0 END))) Qty, " +
				"(COALESCE(lord.QtyOrdered, 0) - COALESCE(lord.QtyDelivered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' AND c.IsDelivered = 'N' THEN lc.Qty ELSE 0 END)) QtySet " +
				"FROM C_Order ord " +
				"INNER JOIN C_OrderLine lord ON(lord.C_Order_ID = ord.C_Order_ID) " +
				"INNER JOIN M_Warehouse alm ON(alm.M_Warehouse_ID = lord.M_Warehouse_ID) " +
				"INNER JOIN M_Product pro ON(pro.M_Product_ID = lord.M_Product_ID) " +
				"INNER JOIN C_UOM uom ON(uom.C_UOM_ID = lord.C_UOM_ID) " +
				"INNER JOIN C_UOM uomp ON(uomp.C_UOM_ID = pro.C_UOM_ID) " +
				"LEFT JOIN XX_LoadOrderLine lc ON(lc.C_OrderLine_ID = lord.C_OrderLine_ID) " +
				"LEFT JOIN XX_LoadOrder c ON(c.XX_LoadOrder_ID = lc.XX_LoadOrder_ID) " +
				"LEFT JOIN M_InOut de ON(de.M_InOut_ID = lc.M_InOut_ID) " +
				"WHERE pro.IsStocked = 'Y' " +
				//"AND lord.M_Product_ID IS NOT NULL " +
				"AND ord.C_Order_ID IN(0");
		m_RowsSelected = 0;
		for (int i = 0; i < rows; i++) {
			if (((Boolean)orderTable.getValueAt(i, 0)).booleanValue()) {
				int ID = ((KeyNamePair)orderTable.getValueAt(i, ORDER)).getKey();
				sqlWhere.append(",");
				sqlWhere.append(ID);
				m_RowsSelected ++;
			}
		}
		sqlWhere.append(") GROUP BY lord.M_Warehouse_ID, lord.C_Order_ID, lord.C_OrderLine_ID, " +
				"alm.Name, ord.DocumentNo, lord.M_Product_ID, pro.Name, lord.C_UOM_ID, uom.UOMSymbol, lord.QtyEntered, " +
				"pro.C_UOM_ID, uomp.UOMSymbol, lord.QtyOrdered, lord.QtyReserved, lord.QtyDelivered, " +
				"lord.QtyInvoiced " +
				"HAVING (COALESCE(lord.QtyOrdered, 0) - SUM(CASE WHEN c.XX_Annulled = 'N' THEN lc.Qty ELSE 0 END)) > 0 " +
				"ORDER BY lord.C_Order_ID ASC");
		log.config("SQL Line Order=" + sqlWhere.toString());
		
		return sqlWhere;
	}
	
	/**
	 * Genera La orden de Carga con sus lineas.
	 * @author Yamel Senih 18/03/2012, 00:22:14
	 * @param orderLineTable
	 * @param dateDoc
	 * @param shipDate
	 * @param trxName
	 * @return
	 * @return String
	 */
	protected String generateLoatOrder(IMiniTable orderLineTable, Timestamp dateDoc, Timestamp shipDate, String trxName){
		return null;
		/*if(viewResultPeriod()){
			int m_gen = 0;
			int rows = orderLineTable.getRowCount();
			MXXLoadOrder loadOrder = new MXXLoadOrder(Env.getCtx(), 0, trxName);
			MXXLoadOrderLine lorder = null;
			//	Org Info
			MOrgInfo orgInfo = null;
			
			String DocumentNo = "0";
			
			orgInfo = MOrgInfo.get(Env.getCtx(), m_AD_Org_ID, trxName);
			
			BigDecimal totalWeight = Env.ZERO;
			loadOrder.setAD_Org_ID(m_AD_Org_ID);
			loadOrder.setM_Shipper_ID(m_M_Shipper_ID);
			loadOrder.setFTA_Driver_ID(m_FTA_Driver_ID);
			loadOrder.setFTA_Vehicle_ID(m_FTA_Vehicle_ID);
			loadOrder.setDateDoc(dateDoc);
			loadOrder.setShipDate(shipDate);
			loadOrder.setC_DocTypeOrder_ID(m_C_DocTypeOrder_ID);
			loadOrder.setXXIsInternalLoad(m_XXIsInternalLoad);
			loadOrder.setXXIsBulk(m_XXIsBulk);
			loadOrder.setXXIsWeightRegister(orgInfo.get_ValueAsBoolean("XXIsWeightRegister"));
			loadOrder.setCapacity(capacity);
			loadOrder.setXX_Vehicle_UOM_ID(m_XX_Vehicle_UOM_ID);
			loadOrder.setXX_Work_UOM_ID(m_XX_Work_UOM_ID);
			loadOrder.setM_Warehouse_ID(m_M_Warehouse_ID);
			loadOrder.setM_Locator_ID(m_M_Locator_ID);
			loadOrder.setM_LocatorTo_ID(m_M_LocatorTo_ID);
			
			if(loadOrder.save()){
				DocumentNo = loadOrder.getDocumentNo();
				for (int i = 0; i < rows; i++) {
					if (((Boolean)orderLineTable.getValueAt(i, 0)).booleanValue()) {
						int m_C_OrderLine_ID = ((KeyNamePair)orderLineTable.getValueAt(i, ORDER_LINE)).getKey();
						int m_M_Product_ID = ((KeyNamePair)orderLineTable.getValueAt(i, OL_PRODUCT)).getKey();
						int m_C_UOM_ID = ((KeyNamePair)orderLineTable.getValueAt(i, OL_UOM_CONVERSION)).getKey();
						BigDecimal qty = (BigDecimal) orderLineTable.getValueAt(i, OL_QTY);
						BigDecimal seqNo = new BigDecimal((Integer) orderLineTable.getValueAt(i, OL_SEQNO));
						BigDecimal qtySet = (BigDecimal) orderLineTable.getValueAt(i, OL_QTY_SET);
						lorder = new MXXLoadOrderLine(Env.getCtx(), 0, trxName);
						lorder.setAD_Org_ID(m_AD_Org_ID);
						lorder.setXX_LoadOrder_ID(loadOrder.getXX_LoadOrder_ID());
						lorder.setC_OrderLine_ID(m_C_OrderLine_ID);
						lorder.setM_Product_ID(m_M_Product_ID);
						lorder.setC_UOM_ID(m_C_UOM_ID);
						lorder.setQty(qty);
						lorder.setSeqNo(seqNo);
						lorder.setWeight(qtySet);
						totalWeight = totalWeight.add(qtySet);
						
						addQuery(m_C_OrderLine_ID, qty);
						
						if(lorder.save()){
							m_gen ++;
						} else {
							throw new AdempiereException("@XX_LoadOrderLine_ID@"); 
						}
					}
					loadOrder.setTotalWeight(totalWeight);
					if(!loadOrder.save()){
						throw new AdempiereException("@XX_LoadOrder_ID@");
					}
				}
				String resultQuery = viewResult();
				if(resultQuery != null && resultQuery.length() > 0){
					throw new AdempiereException(Msg.translate(Env.getCtx(), "SGErrorsProcess") 
							+ "\n" + resultQuery);
				}
			} else {
				throw new AdempiereException("@XX_LoadOrder_ID@"); 
			}
			return Msg.translate(Env.getCtx(), "SGLoadOrderGenerate") + " = [" + DocumentNo + "] || " +
			Msg.translate(Env.getCtx(), "SGLoadOrderLineGenerate") + " = [" + m_gen + "]";
		} else {
			throw new AdempiereException("@C_Period_ID@" 
					+ " " +Msg.translate(Env.getCtx(), "SGClosed"));
		}*/
	}
	
	/**
	 * Evalua el resultado de los querys generados para validar concurrencia
	 * @return
	 */
	/*private String viewResult(){
		String m_Result = null;
		try {
			StringBuffer m_SB_Add = new StringBuffer();
			PreparedStatement pstmt = DB.prepareStatement(m_QueryAdd.toString(), null);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()){
				m_SB_Add.append(Msg.translate(Env.getCtx(), "C_Order_ID") + " = " + rs.getString("OrderName") + " ");
				m_SB_Add.append(Msg.translate(Env.getCtx(), "M_Product_ID") + " = " + rs.getString("ProductName") + " ");
				m_SB_Add.append(Msg.translate(Env.getCtx(), "QtyAvailable") + " = " + rs.getBigDecimal("QtyAvailable") + " ");
				m_SB_Add.append(Msg.translate(Env.getCtx(), "QtyLoc") + " = " + rs.getBigDecimal("QtyLoc") + "\n");
			}
			rs.close();
			pstmt.close();
			m_Result = m_SB_Add.toString();
			m_QueryAdd = new StringBuffer();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, m_QueryAdd.toString(), e);
		} 
		return m_Result;
	}*/
	
	/**
	 * Agrega un Query a una UNION de Querys para consultar
	 * @param m_C_OrderLine_ID
	 * @param qty
	 */
	/*private void addQuery(int m_C_OrderLine_ID, BigDecimal qty){
		String queryTemp = new String("SELECT ord.DocumentNo OrderName, pr.Name ProductName, " +
				"COALESCE(lord.QtyOrdered, 0) - " +
				"COALESCE(lord.QtyDelivered, 0) - " +
				"SUM(CASE WHEN c.XX_Annulled = 'N' AND c.IsDelivered = 'N' THEN lc.Qty ELSE 0 END) QtyAvailable, " +
				qty.doubleValue() + " QtyLoc " +
				"FROM C_Order ord " +
				"INNER JOIN C_OrderLine lord ON(lord.C_Order_ID = ord.C_Order_ID) " +
				"INNER JOIN M_Product pr ON(pr.M_Product_ID = lord.M_Product_ID) " +
				"LEFT JOIN XX_LoadOrderLine lc ON(lord.C_OrderLine_ID = lc.C_OrderLine_ID) " +
				"LEFT JOIN XX_LoadOrder c ON(c.XX_LoadOrder_ID = lc.XX_LoadOrder_ID) " +
				"WHERE lord.M_Product_ID IS NOT NULL " +
				"AND lc.M_InOut_ID IS NULL " +
				"AND lord.C_OrderLine_ID = " + 
				m_C_OrderLine_ID + 
				" " +
				"GROUP BY ord.DocumentNo, pr.Name, lord.C_OrderLine_ID " +
				"HAVING (COALESCE(lord.QtyOrdered, 0) - COALESCE(lord.QtyDelivered, 0) - " +
				"SUM(CASE WHEN c.XX_Annulled = 'N' AND c.IsDelivered = 'N' THEN lc.Qty ELSE 0 END)) < " + 
				qty.doubleValue() + 
				" ");
		if(m_QueryAdd.length() > 0){
			m_QueryAdd.append(" UNION ALL ");
		}
		m_QueryAdd.append(queryTemp);
		
	}*/
	
	/**
	 * Get Vehicle Type from Vehicle
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/11/2013, 17:28:42
	 * @param p_FTA_EntryTicket_ID
	 * @param trxName
	 * @return
	 * @return int
	 */
	protected int getFTA_VehicleType_ID(int p_FTA_EntryTicket_ID, String trxName){
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
	protected BigDecimal getLoadCapacity(int p_FTA_VehicleType_ID, String trxName){
		return DB.getSQLValueBD(trxName, "SELECT vt.LoadCapacity "
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
	protected int getC_UOM_Weight_ID(String trxName){
		return DB.getSQLValue(trxName, "SELECT ci.C_UOM_Weight_ID "
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
	protected ArrayList<KeyNamePair> getDataDriver(String trxName){
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
	protected ArrayList<KeyNamePair> getVehicleData(String trxName){
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
	protected ArrayList<KeyNamePair> getDataDocumentType(String trxName){
		
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
	protected ArrayList<KeyNamePair> getDataWarehouse(String trxName){
		String sql = "SELECT w.M_Warehouse_ID, w.Name || COALESCE(' - ' || w.Description, '') " +
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
	 * @return
	 * @return int
	 */
	protected int loadComboBox(CComboBox comboSearch, ArrayList<KeyNamePair> data) {
		comboSearch.removeAllItems();
		int m_ID = 0;
		for(KeyNamePair pp : data) {
			comboSearch.addItem(pp);
		}
		
		if (comboSearch.getItemCount() != 0) {
			comboSearch.setSelectedIndex(0);
			KeyNamePair pp = (KeyNamePair) comboSearch.getSelectedItem();
			m_ID = (pp != null? pp.getKey(): 0);
		}
		return m_ID;
	}
	
	/**
	 * Get Data from SQL
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/11/2013, 08:31:44
	 * @param sql
	 * @param trxName
	 * @return
	 * @return ArrayList<KeyNamePair>
	 */
	private ArrayList<KeyNamePair> getData(String sql, String trxName){
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		
		log.config("getData");
		
		try	{
			PreparedStatement pstmt = DB.prepareStatement(sql, trxName);
			ResultSet rs = pstmt.executeQuery();
			//
			while (rs.next()) {
				KeyNamePair pp = new KeyNamePair(rs.getInt(1), rs.getString(2));
				data.add(pp);
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
	public boolean exists_seqNo(IMiniTable orderLineTable, int row, int seqNo){
		log.info("exists_seqNo");
		int rows = orderLineTable.getRowCount();
		int seqNoTable = 0;
		for (int i = 0; i < rows; i++) {
			if (((Boolean)orderLineTable.getValueAt(i, SELECT)).booleanValue() 
					&& i != row) {
				seqNoTable = (Integer) orderLineTable.getValueAt(i, OL_SEQNO);
				if(seqNo == seqNoTable){
					return true;
				}
			}
		}
		return false;
	}
	
	/**
	 * Carga los valores seleccionados de la tabla en un Buffer
	 * @param orderLineTable
	 */
	public void loadBuffer(IMiniTable orderLineTable){
		log.info("Load Buffer");
		int rows = orderLineTable.getRowCount();
		int m_C_OrderLine_ID = 0;
		BigDecimal qty = Env.ZERO;
		Integer seqNo = 0;
		m_BufferSelect = new Vector<BufferTableSelect>();
		
		//stockModel = new DefaultTableModel(null, getstockColumnNames());
		
		for (int i = 0; i < rows; i++) {
			if (((Boolean)orderLineTable.getValueAt(i, SELECT)).booleanValue()) {
				m_C_OrderLine_ID = ((KeyNamePair)orderLineTable.getValueAt(i, ORDER_LINE)).getKey();
				qty = (BigDecimal)orderLineTable.getValueAt(i, OL_QTY_SET);
				seqNo = (Integer)orderLineTable.getValueAt(i, OL_SEQNO);
				m_BufferSelect.addElement(
						new BufferTableSelect(m_C_OrderLine_ID, qty, seqNo));
				//loadProductsStock(orderLineTable, i, true);
			}
		}
		//stockTable.setModel(stockModel);
		//stockTable.autoSize();
		//setStockColumnClass(stockTable);
	}
	
	/**
	 * Recarga los datos de la tabla de valores acumulados
	 * @author Yamel Senih 08/06/2012, 11:39:44
	 * @param orderLineTable
	 * @return void
	 */
	public void loadStockWarehouse(IMiniTable orderLineTable){
		
		log.info("Load StockWarehouse");
		int rows = orderLineTable.getRowCount();
		stockModel = new DefaultTableModel(null, getstockColumnNames());
		
		for (int i = 0; i < rows; i++) {
			if (((Boolean)orderLineTable.getValueAt(i, SELECT)).booleanValue()) {
				loadProductsStock(orderLineTable, i, true);
			}
		}
		stockTable.setModel(stockModel);
		stockTable.autoSize();
		setStockColumnClass(stockTable);
	}
	
	/**
	 * Verifica si existe el producto en una tabla
	 * @author Yamel Senih 08/06/2012, 10:08:57
	 * @param stockTable
	 * @param Product_ID
	 * @return
	 * @return int
	 */
	private int existProductStock(int Product_ID){
		for(int i = 0; i < stockModel.getRowCount(); i++){
			if(((KeyNamePair) stockModel.getValueAt(i, SW_PRODUCT)).getKey() == Product_ID){
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
	protected void loadProductsStock(IMiniTable orderLineTable, int row, boolean isSelected){
		KeyNamePair product = (KeyNamePair) orderLineTable.getValueAt(row, OL_PRODUCT);
		KeyNamePair uom = (KeyNamePair) orderLineTable.getValueAt(row, OL_UOM);
		BigDecimal qtyOnHand = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_ONDHAND);
		BigDecimal qtySet = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_SET);
		
		/*System.out.println("LoadOrder.loadProductsStock() product " + product.getName() + " qtySet " + 
				qtySet);*/
		
		int pos = existProductStock(product.getKey());
		
		BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), product.getKey(), m_C_UOM_ID);
		if(rate == null)
			rate = Env.ZERO;
		//	Convert Quantity Set
		qtySet = qtySet.multiply(rate).setScale(2, BigDecimal.ROUND_HALF_UP);
		
		if(pos > -1){
			BigDecimal qtySetOld = (BigDecimal) stockModel.getValueAt(pos, SW_QTYSET);
			
			//System.out.println(" qtySetOld " + qtySetOld);
			//	Negate
			if(!isSelected)
				qtySet = qtySet.negate();
			//	
			qtySet = qtySet.add(qtySetOld);
			
			stockModel.setValueAt(qtyOnHand, pos, SW_QTYONHAND);
			stockModel.setValueAt(qtySet, pos, SW_QTYSET);
			stockModel.setValueAt(qtyOnHand.subtract(qtySet).setScale(2, BigDecimal.ROUND_HALF_UP), pos, SW_QTYAVAILABLE);
		} else if(isSelected){
			Vector<Object> line = new Vector<Object>();
			line.add(product);
			line.add(uom);
			line.add(qtyOnHand);
			line.add(qtySet);
			line.add(qtyOnHand.subtract(qtySet).setScale(2, BigDecimal.ROUND_HALF_UP));
			
			stockModel.addRow(line);
		}
	}
	
	/**
	 * Verifica si existe un ID en el Vector
	 * @param m_Record_ID
	 * @return
	 */
	private BufferTableSelect isSelect(int m_Record_ID){
		log.info("Is Select " + m_Record_ID);
		if(m_BufferSelect != null){
			for(int i = 0; i < m_BufferSelect.size(); i++){
				if(m_BufferSelect.get(i).getRecord_ID() == m_Record_ID){
					return m_BufferSelect.get(i);
				}
			}	
		}
		return null;
	}
	
	/**
	 * Establece los valores cargados en el buffer en la tabla
	 * @param orderLineTable
	 */
	protected void setValueFromBuffer(IMiniTable orderLineTable){
		log.info("Set Value From Buffer");
		if(m_BufferSelect != null){
			int rows = orderLineTable.getRowCount();
			int m_C_OrderLine_ID = 0;
			BufferTableSelect bts = null;
			for (int i = 0; i < rows; i++) {
				m_C_OrderLine_ID = ((KeyNamePair)orderLineTable.getValueAt(i, ORDER_LINE)).getKey();
				bts = isSelect(m_C_OrderLine_ID);
				if(bts != null){
					orderLineTable.setValueAt(true, i, SELECT);
					orderLineTable.setValueAt(bts.getQty(), i, OL_QTY_SET);
					orderLineTable.setValueAt(bts.getSeqNo(), i, OL_SEQNO);
				}
			}	
		}
	}
	
	/** 
	 * Verifica si el periodo esta abierto
	 * @return
	 */
	private boolean viewResultPeriod(){
		String sql = new String("SELECT p.* " +
				"FROM C_Period p " +
				"INNER JOIN C_PeriodControl pc ON(pc.C_Period_ID = p.C_Period_ID) " +
				"WHERE pc.DocBaseType = 'SOO' " +
				"AND pc.PeriodStatus = 'O' " +
				"AND pc.AD_Client_ID = ? " +
				"AND p.StartDate <= ? AND p.EndDate >= ?");
		
		log.fine("viewResultPeriod SQL = " + sql);
		try {
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
			pstmt.setTimestamp(2, Env.getContextAsDate(Env.getCtx(), "#Date"));
			pstmt.setTimestamp(3, Env.getContextAsDate(Env.getCtx(), "#Date"));
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				return true;
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, null, e);
		} 
		return false;
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
	 * Verifica que ya esté seleccionado una fila de la table
	 * @author Yamel Senih 18/03/2012, 12:56:59
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
				if(cont > 1){
					return true;
				}
			}
		}
		return false;
	}
	
}