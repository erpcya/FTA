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
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados, C.A.               *
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

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MCharge;
import org.compiere.model.MCurrency;
import org.compiere.model.MProduct;
import org.compiere.model.MProductCategory;
import org.compiere.model.PO;
import org.compiere.model.X_C_ChargeType;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
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
	 * Create Invoice Fact
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/12/2013, 08:21:47
	 * @param ctx
	 * @param document
	 * @param p_DateDoc
	 * @param p_Amt
	 * @param p_Multiplier
	 * @param trxName
	 * @return
	 * @return String
	 */
	public static String createFact(Properties ctx, PO document, Timestamp p_DateDoc, BigDecimal p_Amt, BigDecimal p_Multiplier, String trxName) {
		String msg = null;
		//	Get Precision
		int precision = MCurrency.getStdPrecision(ctx, Env.getContextAsInt(ctx, "$C_Currency_ID"));
		//
		if(document == null)
			return null;
		//	
		if(p_Multiplier == null)
			return null;
		int record_ID = document.get_ID();
		int table_ID = document.get_Table_ID();
		
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
				"i.DocumentNo, i.Description, i.FTA_CreditDefinition_ID, Min(i.FTA_CreditDefinitionLine_ID) As FTA_CreditDefinitionLine_ID,  " +
				"i.FTA_FarmerCredit_ID, " +
				"i.Record_ID, i.Line_ID, " +
				"i.Amt, i.SO_CreditLimit, " +
				"i.SO_CreditUsed, i.IsExceedCreditLimit " +
				"FROM FTA_RV_DocumentFact i " +
				"WHERE i.Record_ID = ? " +
				"AND i.AD_Table_ID = ? " +
				"AND i.AD_Client_ID = ? " +
				"AND i.IsCreditFactManual = 'N' " +
				"Group By " + 
				"i.AD_Org_ID," + 
				"i.C_BPartner_ID, " + 
				"i.DateDoc, " +
				"i.DocumentNo, " +
				"i.Description, " +
				"i.FTA_CreditDefinition_ID, " + 
				"i.FTA_FarmerCredit_ID, " +
				"i.Record_ID, " +
				"i.Line_ID, " +
				"i.Amt, " +
				"i.SO_CreditLimit, " + 
				"i.SO_CreditUsed, " +
				"i.IsExceedCreditLimit " +
				"ORDER BY i.Record_ID, i.Line_ID, /*i.Line,*/ i.IsExceedCreditLimit");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean byPass = true;
		try {
			
			pstmt = DB.prepareStatement(sql, trxName);
			//	Add Parameters
			int i = 1;
			pstmt.setInt(i++, record_ID);
			pstmt.setInt(i++, table_ID);
			pstmt.setInt(i++, Env.getAD_Client_ID(ctx));
			//	
			rs = pstmt.executeQuery();
			if(rs != null){
				//	Distributed Amount
				BigDecimal m_Distributed_Amt = Env.ZERO;
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
					
					if((m_IsExceedCreditLimit == null
							|| m_IsExceedCreditLimit.equals("N")
							) && p_Multiplier.signum() > 0){
						//	Change Line
						if(m_Current_Line_ID != m_Line_ID){
							if(!m_RemainingAmt.equals(Env.ZERO))
								break;
							//	
							m_Balance = m_SO_CreditLimit.subtract(m_SO_CreditUsed.add(m_Amt));
							//	
							if(m_Balance.compareTo(Env.ZERO) < 0){
								//	Balance exceed credit limit
								if(m_Balance.abs().compareTo(m_Amt) > 0){
									m_Balance = m_Amt.negate();
									m_RemainingAmt = m_Balance.abs();
									continue;
									//m_Amt = m_Amt.add(m_Balance);
								} else {
									m_RemainingAmt = m_Balance.abs();
									m_Amt = m_Amt.add(m_Balance);
								}
							} else {
								m_RemainingAmt = Env.ZERO;
							}
						} else {
							//	
							m_Balance = m_SO_CreditLimit.subtract(m_SO_CreditUsed.add(m_RemainingAmt));
							if(m_Balance.compareTo(Env.ZERO) < 0){
								m_Amt = m_RemainingAmt.add(m_Balance);
								m_RemainingAmt = m_Balance.abs();
							} else {
								m_Amt = m_RemainingAmt;
								m_RemainingAmt = Env.ZERO;
							}
							//	Valid Credit Limit
							if(!m_RemainingAmt.equals(Env.ZERO))
								break;
						}
					} else if(m_Current_Line_ID == m_Line_ID){
						m_Amt = m_RemainingAmt;
						m_RemainingAmt = Env.ZERO;
					}
					//	
					if(m_Amt.equals(Env.ZERO))
						break;
					
					//	Set Line
					m_Current_Line_ID = m_Line_ID;
					//	Create Fact
					MFTAFact m_fta_Fact = new MFTAFact(ctx, 0, trxName);
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
					m_fta_Fact.setMultiplier(p_Multiplier);
					m_fta_Fact.setIsCreditFactManual(false);
					//	Save
					m_fta_Fact.saveEx();
					//	Add Amount
					m_Distributed_Amt = m_Distributed_Amt.add(m_Amt);
					if(byPass)
						byPass = false;
				}
				//	Valid Credit Limit
				if(!m_RemainingAmt.equals(Env.ZERO)){
					//	Update
					MFTACreditDefinitionLine m_CDLine = new MFTACreditDefinitionLine(ctx, m_FTA_CreditDefinitionLine_ID, trxName);
					StringBuffer name = new StringBuffer();
					if(m_CDLine.getC_Charge_ID() != 0){
						name.append(MCharge.get(ctx, m_CDLine.getC_Charge_ID()).getName());
					} else if(m_CDLine.getC_ChargeType_ID() != 0){
						X_C_ChargeType ct = new X_C_ChargeType(ctx, m_CDLine.getC_ChargeType_ID(), trxName);
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
					//	Is Distribution Line
					msg = "@Amt@ > @SO_CreditLimit@: " +
							"@Amt@=" + m_RemainingAmt.doubleValue() + " " +
							"@SO_CreditLimit@=" + m_SO_CreditLimit.doubleValue() + " " +
							"@FTA_CreditDefinitionLine_ID@: " + m_CDLine.getLine() + " - " + name;
				} else if(byPass
						|| m_Distributed_Amt.abs().compareTo(p_Amt.abs()) < 0) {
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
					if(m_FTA_CreditDefinitionLine_ID > 0) {
						//	Create Fact
						MFTAFact m_fta_Fact = new MFTAFact(ctx, 0, trxName);
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
						//	Set Distributed Amount
						if(!m_Distributed_Amt.equals(Env.ZERO))
							p_Amt = p_Amt.subtract(m_Distributed_Amt.abs());
						//	
						m_fta_Fact.setAmt(p_Amt.multiply(p_Multiplier)
											.setScale(precision, BigDecimal.ROUND_HALF_UP));
						m_fta_Fact.setIsCreditFactManual(false);
						//	Save
						m_fta_Fact.saveEx();
					} else {
						msg = "@NoLinesInCDef@";
					}
				}
			}
			//	Close DB
			DB.close(rs, pstmt);
		} catch (Exception e) {
			DB.close(rs, pstmt);
			return "@Error@" + e.getMessage();
		}
		//	Return
		return msg;
	}
	
	/**	
	 * Copy Fact
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 21/10/2013, 09:58:55
	 * @param ctx
	 * @param p_From
	 * @param p_To
	 * @param p_Multiplier
	 * @param trxName
	 * @return
	 * @return String
	 */
	public static String copyFromFact(Properties ctx, PO p_From, PO p_To, BigDecimal p_Multiplier, String trxName){
		String sql = new String("SELECT f.* " +
				"FROM FTA_Fact f " +
				"WHERE f.AD_Table_ID = ? " +
				"AND f.Record_ID = ?");
		
		if(p_From == null
				|| p_To == null)
			return null;
		
		if(p_Multiplier == null)
			p_Multiplier = Env.ONE;
		
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
					m_fta_FactTarget.setAmt(m_fta_FactTarget.getAmt().multiply(p_Multiplier));
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
	
	/**
	 * Copy Fact
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 20/01/2014, 09:54:29
	 * @param ctx
	 * @param p_From
	 * @param p_To
	 * @param trxName
	 * @return
	 * @return String
	 */
	public static String copyFromFact(Properties ctx, PO p_From, PO p_To, String trxName){
		return copyFromFact(ctx, p_From, p_To, null, trxName);
	}
	
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		// TODO Auto-generated method stub
		if (getFTA_FarmerCredit_ID()!=0){
			if(getFTA_FarmerCredit().getC_BPartner_ID()!=getC_BPartner_ID())
				throw new AdempiereException("@Invalid@ @FTA_FarmerCredit_ID@");
		}
			
		return true;
	}
	
}
