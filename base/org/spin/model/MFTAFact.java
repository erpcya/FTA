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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTAFact extends X_FTA_Fact {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5210925643565439852L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 08/10/2013, 08:28:49
	 * @param ctx
	 * @param FTA_Fact_ID
	 * @param trxName
	 */
	public MFTAFact(Properties ctx, int FTA_Fact_ID, String trxName) {
		super(ctx, FTA_Fact_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 08/10/2013, 08:28:49
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAFact(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Delete Old Movements
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/10/2013, 14:15:21
	 * @param p_AD_Table_ID
	 * @param p_Record_ID
	 * @param from
	 * @param to
	 * @param trxName
	 * @return
	 * @return int
	 */
	public static int deleteFact(int p_AD_Table_ID, int p_Record_ID, Timestamp from, Timestamp to, String trxName){
		//	Delete Old Movements
		StringBuffer deleteSQL = new StringBuffer ("DELETE FROM FTA_Fact ")
			.append("WHERE AD_Table_ID = ").append(p_AD_Table_ID).append(" ")
			.append("AND IsCreditFactManual = 'N' ");
		if(p_Record_ID != 0)	
			deleteSQL.append("AND Record_ID = ").append(p_Record_ID);
		else {
			if(from != null)
				deleteSQL.append("AND DateDoc => ").append(DB.TO_DATE(from));
			if(to != null)
				deleteSQL.append("AND DateDoc <= ").append(DB.TO_DATE(to));
		}
		return DB.executeUpdate(deleteSQL.toString(), trxName);
	}

	/**
	 * Delete Old Record
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 14/10/2013, 02:44:14
	 * @param p_AD_Table_ID
	 * @param p_Record_ID
	 * @param trxName
	 * @return
	 * @return int
	 */
	public static int deleteFact(int p_AD_Table_ID, int p_Record_ID, String trxName){
		return deleteFact(p_AD_Table_ID, p_Record_ID, null, null, trxName);
	}
	
	/**
	 * Verify is Manual
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/10/2013, 14:22:21
	 * @param p_AD_Table_ID
	 * @param p_Record_ID
	 * @param trxName
	 * @return
	 * @return boolean
	 */
	public static boolean isManual(int p_AD_Table_ID, int p_Record_ID, String trxName){
		StringBuffer manualSQL = new StringBuffer ("SELECT 1 FROM FTA_Fact ")
		.append("WHERE AD_Table_ID = ").append(p_AD_Table_ID).append(" ")
		.append("AND Record_ID = ").append(p_Record_ID)
		.append("AND IsManual = 'Y'");
		//	
		int manual = DB.getSQLValue(trxName, manualSQL.toString());
		return (manual != 0);
	}
	
	/**
	 * Crete Fact for Order
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/10/2013, 18:04:42
	 * @param order
	 * @param from
	 * @param to
	 * @return
	 * @return String
	 */
	public static String createOrderFact(Properties ctx, MOrder order, Timestamp from, Timestamp to, String trxName) {
		//
		String sqlWhere = "";
		int record_ID = 0;
		if(order != null){
			//	Is Manual
			if(order.get_ValueAsBoolean("IsCreditFactManual"))
				return null;
			
			record_ID = order.getC_Order_ID();
			sqlWhere = "AND o.C_Order_ID = " + record_ID + " ";
		} else {
			if(from != null)
				sqlWhere += "AND o.DateOrdered >= ? ";
			if(to != null)
				sqlWhere += "AND o.DateOrdered <= ? ";
		}
		//	Delete Old Movements
		deleteFact(MOrder.Table_ID, record_ID, trxName);
		
		//	SQL
		String sql = new String("SELECT o.AD_Org_ID, o.C_BPartner_ID, o.DateOrdered DateDoc, o.Description, " +
				"cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, o.FTA_FarmerCredit_ID, " +
				"o.C_Order_ID Record_ID, ol.C_OrderLine_ID Line_ID, " +
				"ol.LineNetAmt + (ol.LineNetAmt * t.Rate / 100) Amt " +
				"FROM C_Order o " +
				"INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = o.FTA_FarmerCredit_ID) " +
				"INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) " +
				"INNER JOIN C_OrderLine ol ON(ol.C_Order_ID = o.C_Order_ID) " +
				"INNER JOIN C_Tax t ON(t.C_Tax_ID = ol.C_Tax_ID) " + 
				"INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) " +
				"LEFT JOIN M_Product pr ON(pr.M_Product_ID = ol.M_Product_ID) " +
				"WHERE o.AD_Client_ID = ? " +
				//	Add Record Identifier
				sqlWhere +
				"AND o.IsCreditFactManual = 'N' " +
				"AND o.IsSOTrx = 'Y' " +
				"AND (" +
				"		(cdl.M_Product_ID = ol.M_Product_ID " +
				"			AND ol.M_Product_ID IS NOT NULL) " +
				"		OR (cdl.M_Product_Category_ID = pr.M_Product_Category_ID " +
				"			AND pr.M_Product_Category_ID IS NOT NULL) " +
				"		OR (cdl.C_Charge_ID = ol.C_charge_ID " +
				"			AND ol.C_Charge_ID IS NOT NULL)" +
				"	)");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement(sql, trxName);
			//	Add Parameters
			int i = 1;
			pstmt.setInt(i++, Env.getAD_Client_ID(ctx));
			//	
			if(from != null)
				pstmt.setTimestamp(i++, from);
			if(to != null)
				pstmt.setTimestamp(i++, to);
			//	
			rs = pstmt.executeQuery();
			if(rs != null){
				while(rs.next()){
					int m_AD_Org_ID 					= rs.getInt("AD_Org_ID");
					int m_C_BPartner_ID 				= rs.getInt("C_BPartner_ID");
					Timestamp m_DateDoc 				= rs.getTimestamp("DateDoc");
					String m_Description 				= rs.getString("Description");
					int m_FTA_CreditDefinition_ID 		= rs.getInt("FTA_CreditDefinition_ID");
					int m_FTA_CreditDefinitionLine_ID 	= rs.getInt("FTA_CreditDefinitionLine_ID");
					int m_FTA_FarmerCredit_ID 			= rs.getInt("FTA_FarmerCredit_ID");
					int m_Record_ID 					= rs.getInt("Record_ID");
					int m_Line_ID 						= rs.getInt("Line_ID");
					BigDecimal m_Amt					= rs.getBigDecimal("Amt");
					//	Create Fact
					MFTAFact m_fta_Fact = new MFTAFact(ctx, 0, trxName);
					//	Set Values
					m_fta_Fact.setAD_Org_ID(m_AD_Org_ID);
					m_fta_Fact.setC_BPartner_ID(m_C_BPartner_ID);
					m_fta_Fact.setDateDoc(m_DateDoc);
					m_fta_Fact.setDescription(m_Description);
					m_fta_Fact.setFTA_CreditDefinition_ID(m_FTA_CreditDefinition_ID);
					m_fta_Fact.setFTA_CreditDefinitionLine_ID(m_FTA_CreditDefinitionLine_ID);
					m_fta_Fact.setFTA_FarmerCredit_ID(m_FTA_FarmerCredit_ID);
					m_fta_Fact.setRecord_ID(m_Record_ID);
					m_fta_Fact.setLine_ID(m_Line_ID);
					m_fta_Fact.setAD_Table_ID(MOrder.Table_ID);
					m_fta_Fact.setAmt(m_Amt);
					m_fta_Fact.setIsCreditFactManual(false);
					//	Save
					m_fta_Fact.saveEx();
				}
			}
			//	Close DB
			DB.close(rs, pstmt);
		} catch (Exception e) {
			DB.close(rs, pstmt);
			return e.getMessage();
		}
		
		return null;
	}
	
	/**
	 * Create Order Fact
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 14/10/2013, 02:39:40
	 * @param ctx
	 * @param order
	 * @param trxName
	 * @return
	 * @return String
	 */
	public static String createOrderFact(Properties ctx, MOrder order, String trxName) {
		return createOrderFact(ctx, order, null, null, trxName);
	}
	
	/**
	 * Create Invoice Fact
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/10/2013, 13:50:14
	 * @param ctx
	 * @param invoice
	 * @param from
	 * @param to
	 * @param trxName
	 * @return
	 * @return String
	 */
	public static String createInvoiceFact(Properties ctx, MInvoice invoice, Timestamp from, Timestamp to, String trxName) {
		//
		String sqlWhere = "";
		int record_ID = 0;
		if(invoice != null){
			//	Is Manual
			if(invoice.get_ValueAsBoolean("IsCreditFactManual"))
				return null;
			record_ID = invoice.getC_Invoice_ID();
			sqlWhere = "AND i.C_Invoice_ID = " + record_ID + " ";
		} else {
			if(from != null)
				sqlWhere += "AND i.DateInvoiced >= ? ";
			if(to != null)
				sqlWhere += "AND i.DateInvoiced <= ? ";
		}
		//	Delete Old Movements
		deleteFact(MInvoice.Table_ID, record_ID, trxName);
		
		//	SQL
		String sql = new String("SELECT i.AD_Org_ID, i.C_BPartner_ID, i.DateInvoiced DateDoc, i.Description, " +
				"cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, i.FTA_FarmerCredit_ID, " +
				"i.C_Invoice_ID Record_ID, il.C_InvoiceLine_ID Line_ID, " +
				"il.LineNetAmt + (il.LineNetAmt * t.Rate / 100) Amt " +
				"FROM C_Invoice i " +
				"INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = i.FTA_FarmerCredit_ID) " +
				"INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) " +
				"INNER JOIN C_InvoiceLine il ON(il.C_Invoice_ID = i.C_Invoice_ID) " +
				"INNER JOIN C_Tax t ON(t.C_Tax_ID = il.C_Tax_ID) " + 
				"INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) " +
				"LEFT JOIN M_Product pr ON(pr.M_Product_ID = il.M_Product_ID) " +
				"WHERE i.AD_Client_ID = ? " +
				//	Add Record Identifier
				sqlWhere +
				"AND i.IsCreditFactManual = 'N' " +
				"AND i.IsSOTrx = 'Y' " +
				"AND (" +
				"		(cdl.M_Product_ID = il.M_Product_ID " +
				"			AND il.M_Product_ID IS NOT NULL) " +
				"		OR (cdl.M_Product_Category_ID = pr.M_Product_Category_ID " +
				"			AND pr.M_Product_Category_ID IS NOT NULL) " +
				"		OR (cdl.C_Charge_ID = il.C_charge_ID " +
				"			AND il.C_Charge_ID IS NOT NULL)" +
				"	)");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement(sql, trxName);
			//	Add Parameters
			int i = 1;
			pstmt.setInt(i++, Env.getAD_Client_ID(ctx));
			//	
			if(from != null)
				pstmt.setTimestamp(i++, from);
			if(to != null)
				pstmt.setTimestamp(i++, to);
			//	
			rs = pstmt.executeQuery();
			if(rs != null){
				while(rs.next()){
					int m_AD_Org_ID 					= rs.getInt("AD_Org_ID");
					int m_C_BPartner_ID 				= rs.getInt("C_BPartner_ID");
					Timestamp m_DateDoc 				= rs.getTimestamp("DateDoc");
					String m_Description 				= rs.getString("Description");
					int m_FTA_CreditDefinition_ID 		= rs.getInt("FTA_CreditDefinition_ID");
					int m_FTA_CreditDefinitionLine_ID 	= rs.getInt("FTA_CreditDefinitionLine_ID");
					int m_FTA_FarmerCredit_ID 			= rs.getInt("FTA_FarmerCredit_ID");
					int m_Record_ID 					= rs.getInt("Record_ID");
					int m_Line_ID 						= rs.getInt("Line_ID");
					BigDecimal m_Amt					= rs.getBigDecimal("Amt");
					//	Create Fact
					MFTAFact m_fta_Fact = new MFTAFact(ctx, 0, trxName);
					//	Set Values
					m_fta_Fact.setAD_Org_ID(m_AD_Org_ID);
					m_fta_Fact.setC_BPartner_ID(m_C_BPartner_ID);
					m_fta_Fact.setDateDoc(m_DateDoc);
					m_fta_Fact.setDescription(m_Description);
					m_fta_Fact.setFTA_CreditDefinition_ID(m_FTA_CreditDefinition_ID);
					m_fta_Fact.setFTA_CreditDefinitionLine_ID(m_FTA_CreditDefinitionLine_ID);
					m_fta_Fact.setFTA_FarmerCredit_ID(m_FTA_FarmerCredit_ID);
					m_fta_Fact.setRecord_ID(m_Record_ID);
					m_fta_Fact.setLine_ID(m_Line_ID);
					m_fta_Fact.setAD_Table_ID(MInvoice.Table_ID);
					m_fta_Fact.setAmt(m_Amt);
					m_fta_Fact.setIsCreditFactManual(false);
					//	Save
					m_fta_Fact.saveEx();
				}
			}
			//	Close DB
			DB.close(rs, pstmt);
		} catch (Exception e) {
			DB.close(rs, pstmt);
			return e.getMessage();
		}
		
		return null;
	}
	
	/**
	 * Create Invoice Fact
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 14/10/2013, 02:39:40
	 * @param ctx
	 * @param invoice
	 * @param trxName
	 * @return
	 * @return String
	 */
	public static String createInvoiceFact(Properties ctx, MInvoice invoice, String trxName) {
		return createInvoiceFact(ctx, invoice, null, null, trxName);
	}
	
}
