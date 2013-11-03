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
import java.text.SimpleDateFormat;
import java.util.Properties;

import org.compiere.model.MCharge;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MProduct;
import org.compiere.model.MProductCategory;
import org.compiere.model.PO;
import org.compiere.model.X_C_ChargeType;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Trx;

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
	 * @param p_All
	 * @param trxName
	 * @return
	 * @return int
	 */
	public static int deleteFact(int p_AD_Table_ID, int p_Record_ID, Timestamp from, Timestamp to, boolean p_All, String trxName){
		//	Delete Old Movements
		StringBuffer deleteSQL = new StringBuffer ("DELETE FROM FTA_Fact ")
			.append("WHERE AD_Table_ID = ").append(p_AD_Table_ID).append(" ");
		if(!p_All)
			deleteSQL.append("AND IsCreditFactManual = 'N'");
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
	 * @param p_All
	 * @param trxName
	 * @return
	 * @return int
	 */
	public static int deleteFact(int p_AD_Table_ID, int p_Record_ID, boolean p_All, String trxName){
		return deleteFact(p_AD_Table_ID, p_Record_ID, null, null, p_All, trxName);
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
		deleteFact(MOrder.Table_ID, record_ID, false, trxName);
		
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
				"LEFT JOIN C_Charge cr ON(cr.C_Charge_ID = ol.C_Charge_ID) " +
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
				"			AND ol.C_Charge_ID IS NOT NULL) " +
				"		OR (cdl.C_ChargeType_ID = cr.C_chargeType_ID " +
				"			AND cr.C_ChargeType_ID IS NOT NULL) " +
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
	 * @param document
	 * @param trxName
	 * @return
	 * @return String
	 */
	public static String createFact(Properties ctx, PO document, Timestamp p_DateDoc, BigDecimal p_Amt, String trxName) {
		String msg = null;
		//
		String sqlWhere = "";
		if(document == null)
			return null;
		//	
		int record_ID = document.get_ID();
		int table_ID = document.get_Table_ID();
		sqlWhere = "AND i.Record_ID = " + record_ID + 
					" AND i.AD_Table_ID = " + table_ID + " ";
		
		int m_AD_Org_ID = document.getAD_Org_ID();
		int m_C_BPartner_ID = document.get_ValueAsInt("C_BPartner_ID");
		String m_DocumentNo = document.get_ValueAsString("DocumentNo");
		String m_Description = document.get_ValueAsString("Description");
		int m_FTA_FarmerCredit_ID = document.get_ValueAsInt("FTA_FarmerCredit_ID");
		int m_FTA_CreditDefinition_ID = 0;
		int m_FTA_CreditDefinitionLine_ID = 0;
		//	Delete Old Movements
		deleteFact(table_ID, record_ID, false, trxName);
		
		//	SQL
		String sql = new String("SELECT i.AD_Org_ID, i.C_BPartner_ID, i.DateDoc, " +
				"i.DocumentNo, i.Description, i.FTA_CreditDefinition_ID, i.FTA_CreditDefinitionLine_ID, " +
				"i.FTA_FarmerCredit_ID, " +
				"i.Record_ID, i.Line_ID, " +
				"i.Amt, i.SO_CreditLimit, " +
				"i.SO_CreditUsed, i.IsExceedCreditLimit " +
				"FROM FTA_RV_DocumentFact i " +
				"WHERE i.AD_Client_ID = ? " +
				//	Add Record Identifier
				sqlWhere +
				"AND i.IsCreditFactManual = 'N' " +
				"AND i.IsSOTrx = 'Y' " +
				"ORDER BY i.Record_ID, i.Line_ID, i.Line, i.IsExceedCreditLimit");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Trx trx = Trx.get("GF-", true);
		boolean byPass = true;
		try {
			
			pstmt = DB.prepareStatement(sql, trxName);
			//	Add Parameters
			int i = 1;
			pstmt.setInt(i++, table_ID);
			pstmt.setInt(i++, Env.getAD_Client_ID(ctx));
			//	
			rs = pstmt.executeQuery();
			if(rs != null){
				int m_Current_Line_ID = 0;
				BigDecimal m_RemainingAmt = Env.ZERO;
				BigDecimal m_SO_CreditLimit = Env.ZERO;
				SimpleDateFormat format = DisplayType.getDateFormat(DisplayType.Date);
				while(rs.next()){
					m_AD_Org_ID 					= rs.getInt("AD_Org_ID");
					m_C_BPartner_ID 				= rs.getInt("C_BPartner_ID");
					Timestamp m_DateDoc 			= rs.getTimestamp("DateDoc");
					m_DocumentNo					= rs.getString("DocumentNo");
					m_Description 					= rs.getString("Description");
					m_FTA_CreditDefinition_ID 		= rs.getInt("FTA_CreditDefinition_ID");
					m_FTA_CreditDefinitionLine_ID 	= rs.getInt("FTA_CreditDefinitionLine_ID");
					m_FTA_FarmerCredit_ID 			= rs.getInt("FTA_FarmerCredit_ID");
					int m_Record_ID 				= rs.getInt("Record_ID");
					int m_Line_ID 						= rs.getInt("Line_ID");
					BigDecimal m_Amt					= rs.getBigDecimal("Amt");
					m_SO_CreditLimit					= rs.getBigDecimal("SO_CreditLimit");
					BigDecimal m_SO_CreditUsed			= rs.getBigDecimal("SO_CreditUsed");
					String m_IsExceedCreditLimit		= rs.getString("IsExceedCreditLimit");
					//	Current Balance
					BigDecimal m_Balance = Env.ZERO;
					
					if(m_IsExceedCreditLimit == null
							|| m_IsExceedCreditLimit.equals("N")){
						//	Change Line
						if(m_Current_Line_ID != m_Line_ID){
							if(!m_RemainingAmt.equals(Env.ZERO))
								break;
							m_Current_Line_ID = m_Line_ID;
							m_Balance = m_SO_CreditLimit.subtract(m_SO_CreditUsed.add(m_Amt));
							if(m_Balance.compareTo(Env.ZERO) < 0){
								m_RemainingAmt = m_Balance.abs();
								m_Amt = m_Amt.add(m_Balance);
							} else {
								m_RemainingAmt = Env.ZERO;
							}
						} else {
							m_Balance = m_SO_CreditLimit.subtract(m_SO_CreditUsed.add(m_RemainingAmt));
							if(m_Balance.compareTo(Env.ZERO) < 0){
								m_Amt = m_RemainingAmt.add(m_Balance);
								m_RemainingAmt = m_Balance.abs();
							} else {
								m_Amt = m_RemainingAmt;
								m_RemainingAmt = Env.ZERO;
							}
						}
					}
					//	
					if(m_Amt.equals(Env.ZERO))
						break;
					
					//	Create Fact
					MFTAFact m_fta_Fact = new MFTAFact(ctx, 0, trx.getTrxName());
					//	Set Values
					m_fta_Fact.setAD_Org_ID(m_AD_Org_ID);
					m_fta_Fact.setC_BPartner_ID(m_C_BPartner_ID);
					m_fta_Fact.setDateDoc(m_DateDoc);
					if(m_Description == null)
						m_Description = "";
					//	Set Description
					m_Description = m_DocumentNo + " - " + format.format(m_DateDoc) + 
							(m_Description != null && m_Description.length() != 0
								? " - " + m_Description
									: "");
					
					m_fta_Fact.setDescription(m_Description);
					m_fta_Fact.setFTA_CreditDefinition_ID(m_FTA_CreditDefinition_ID);
					m_fta_Fact.setFTA_CreditDefinitionLine_ID(m_FTA_CreditDefinitionLine_ID);
					m_fta_Fact.setFTA_FarmerCredit_ID(m_FTA_FarmerCredit_ID);
					m_fta_Fact.setRecord_ID(m_Record_ID);
					m_fta_Fact.setLine_ID(m_Line_ID);
					m_fta_Fact.setAD_Table_ID(table_ID);
					m_fta_Fact.setAmt(m_Amt);
					m_fta_Fact.setIsCreditFactManual(false);
					//	Save
					m_fta_Fact.saveEx();
					if(byPass)
						byPass = false;
				}
				//	Valid Credit Limit
				if(!m_RemainingAmt.equals(Env.ZERO)){
					//	Update
					MFTACreditDefinitionLine m_CDLine = new MFTACreditDefinitionLine(ctx, m_FTA_CreditDefinitionLine_ID, trx.getTrxName());
					StringBuffer name = new StringBuffer();
					if(m_CDLine.getC_Charge_ID() != 0){
						name.append(MCharge.get(ctx, m_CDLine.getC_Charge_ID()).getName());
					} else if(m_CDLine.getC_ChargeType_ID() != 0){
						X_C_ChargeType ct = new X_C_ChargeType(ctx, m_CDLine.getC_ChargeType_ID(), trx.getTrxName());
						name.append(ct.getName());
					} else if(m_CDLine.getM_Product_ID() != 0){
						name.append(MProduct.get(ctx, m_CDLine.getM_Product_ID()).getName());
					} else if(m_CDLine.getM_Product_Category_ID() != 0){
						name.append(MProductCategory.get(ctx, m_CDLine.getM_Product_Category_ID()).getName());
					}
					if(m_CDLine.getDescription() != null
							&& m_CDLine.getDescription().length() != 0){
						if(name.length() != 0)
							name.append(" ");
						name.append(m_CDLine.getDescription());
					}
					//	IsDistributionLine
					msg = "@Amt@ > @SO_CreditLimit@: " +
							"@Amt@=" + m_RemainingAmt.doubleValue() + " " +
							"@SO_CreditLimit@=" + m_SO_CreditLimit.doubleValue() + " " +
							"@FTA_CreditDefinitionLine_ID@: " + m_CDLine.getLine() + " - " + name;
					//	RollBack
					trx.rollback();
				} else if(byPass){
					//	Distribution Line
					m_FTA_CreditDefinitionLine_ID = DB.getSQLValue(trxName, "SELECT MAX(cdl.FTA_CreditDefinitionLine_ID) "
							+ "FROM FTA_CreditDefinition cd "
							+ "INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) "
							+ "INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) "
							+ "WHERE fc.FTA_FarmerCredit_ID = ? "
							+ "AND cdl.IsDistributionLine = 'Y'", m_FTA_FarmerCredit_ID);
					
					m_FTA_CreditDefinition_ID = DB.getSQLValue(trxName, "SELECT FTA_CreditDefinition_ID "
							+ "FROM FTA_CreditDefinitionLine "
							+ "WHERE FTA_CreditDefinitionLine_ID = ?", m_FTA_CreditDefinitionLine_ID);
					
					//	
					if(m_FTA_CreditDefinitionLine_ID != 0) {
						//	Create Fact
						MFTAFact m_fta_Fact = new MFTAFact(ctx, 0, trx.getTrxName());
						//	Set Values
						m_fta_Fact.setAD_Org_ID(m_AD_Org_ID);
						m_fta_Fact.setC_BPartner_ID(m_C_BPartner_ID);
						m_fta_Fact.setDateDoc(p_DateDoc);
						if(m_Description == null)
							m_Description = "";
						//	Set Description
						m_Description = m_DocumentNo + " - " + format.format(p_DateDoc) + 
								(m_Description != null && m_Description.length() != 0
									? " - " + m_Description
										: "");
						
						m_fta_Fact.setDescription(m_Description);
						m_fta_Fact.setFTA_CreditDefinition_ID(m_FTA_CreditDefinition_ID);
						m_fta_Fact.setFTA_CreditDefinitionLine_ID(m_FTA_CreditDefinitionLine_ID);
						m_fta_Fact.setFTA_FarmerCredit_ID(m_FTA_FarmerCredit_ID);
						m_fta_Fact.setRecord_ID(record_ID);
						m_fta_Fact.setAD_Table_ID(table_ID);
						m_fta_Fact.setAmt(p_Amt);
						m_fta_Fact.setIsCreditFactManual(false);
						//	Save
						m_fta_Fact.saveEx();
					} else {
						msg = "@NoLines@";
						trx.rollback();
					}
				}
					trx.commit();
			}
			//	Close DB
			DB.close(rs, pstmt);
		} catch (Exception e) {
			trx.rollback();
			DB.close(rs, pstmt);
			return e.getMessage();
		}
		
		return msg;
	}
	
	/**	
	 * Copy Fact
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 21/10/2013, 09:58:55
	 * @param ctx
	 * @param p_From
	 * @param p_To
	 * @param trxName
	 * @return
	 * @return String
	 */
	public static String copyFromFact(Properties ctx, PO p_From, PO p_To, String trxName){
		String sql = new String("SELECT f.* FTA_Fact f " +
				"WHERE f.AD_Table_ID = ? " +
				"AND f.Record_ID = ?");
		
		if(p_From == null
				|| p_To == null)
			return null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement(sql, trxName);
			//	Add Parameters
			pstmt.setInt(1, p_From.get_Table_ID());
			pstmt.setInt(2, p_From.get_ID());
			//	
			rs = pstmt.executeQuery();
			if(rs != null){
				while(rs.next()){
					//	Create Fact
					MFTAFact m_fta_FactFrom = new MFTAFact(ctx, rs, trxName);
					MFTAFact m_fta_FactTarget = new MFTAFact(ctx, 0, trxName);
					
					PO.copyValues(m_fta_FactFrom, m_fta_FactTarget);
					//	
					//	Set Values
					m_fta_FactTarget.setAD_Table_ID(p_To.get_Table_ID());
					m_fta_FactTarget.setRecord_ID(p_To.get_ID());
					//	Save
					m_fta_FactTarget.saveEx();
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
	
}
