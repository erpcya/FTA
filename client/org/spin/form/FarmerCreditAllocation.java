/******************************************************************************
 * Copyright (C) 2009 Low Heng Sin                                            *
 * Copyright (C) 2009 Idalica Corporation                                     *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.spin.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.MRole;
import org.compiere.process.DocAction;
import org.compiere.swing.CComboBox;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.TimeUtil;
import org.compiere.util.Util;
import org.spin.model.MFTAAllocation;
import org.spin.model.MFTAAllocationLine;

public class FarmerCreditAllocation
{
	public DecimalFormat format = DisplayType.getNumberFormat(DisplayType.Amount);

	/**	Logger			*/
	public static CLogger log = CLogger.getCLogger(FarmerCreditAllocation.class);

	private boolean     m_calculating = false;
	public int         	m_C_Currency_ID = 0;
	public int         	m_C_BPartner_ID = 0;
	protected int 		m_FTA_FarmerCredit_ID = 0;
	private int         m_noInvoices = 0;
	private int         m_noLiquidations = 0;
	public BigDecimal	totalInv = new BigDecimal(0.0);
	public BigDecimal 	totalPay = new BigDecimal(0.0);
	public BigDecimal	totalDiff = new BigDecimal(0.0);
	
	public Timestamp allocDate = null;

	//  Index	changed if multi-currency
	private int         i_liquidation = 7;
	//
	private int         i_open = 6;
	private int         i_discount = 7;
	private int         i_writeOff = 8; 
	private int         i_applied = 9;
	private int 		i_overUnder = 10;
//	private int			i_multiplier = 10;
	
	public int         	m_AD_Org_ID = 0;

	//private ArrayList<Integer>	m_bpartnerCheck = new ArrayList<Integer>(); 

	public void dynInit() throws Exception
	{
		m_C_Currency_ID = Env.getContextAsInt(Env.getCtx(), "$C_Currency_ID");   //  default
		//
		log.info("Currency=" + m_C_Currency_ID);
		
		m_AD_Org_ID = Env.getAD_Org_ID(Env.getCtx());
	}
	
	/**
	 *  Load Business Partner Info
	 *  - Liquidations
	 *  - Invoices
	 */
	/*public void checkBPartner()
	{		
		log.config("BPartner=" + m_C_BPartner_ID + ", Cur=" + m_C_Currency_ID);
		//  Need to have both values
		if (m_C_BPartner_ID == 0 || m_C_Currency_ID == 0)
			return;

		//	Async BPartner Test
		Integer key = new Integer(m_C_BPartner_ID);
		if (!m_bpartnerCheck.contains(key))
		{
			new Thread()
			{
				public void run()
				{
					MFTAFarmerLiquidation.setIsAllocated (Env.getCtx(), m_C_BPartner_ID, null);
					MInvoice.setIsPaid (Env.getCtx(), m_C_BPartner_ID, null);
				}
			}.start();
			m_bpartnerCheck.add(key);
		}
	}*/
	
	public Vector<Vector<Object>> getLiquidationData(boolean isMultiCurrency, Object date, IMiniTable liquidationTable)
	{		
		/********************************
		 *  Load unallocated Liquidations
		 *      1-TrxDate, 2-DocumentNo, (3-Currency, 4-PayAmt,)
		 *      5-ConvAmt, 6-ConvOpen, 7-Allocated
		 */
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuffer sql = new StringBuffer("SELECT lq.DateDoc,lq.DocumentNo,lq.FTA_FarmerLiquidation_ID,"  //  1..3
			+ "c.ISO_Code,lq.Amt,"                            //  4..5
			+ "currencyConvert(lq.Amt,lq.C_Currency_ID,?,?,lq.C_ConversionType_ID,lq.AD_Client_ID,lq.AD_Org_ID),"//  6   #1, #2
			+ "currencyConvert(liquidationAvailable(lq.FTA_FarmerLiquidation_ID),lq.C_Currency_ID,?,?,lq.C_ConversionType_ID,lq.AD_Client_ID,lq.AD_Org_ID) "  //  7   #3, #4
			//+ "lq.MultiplierAP "
			+ "FROM FTA_FarmerLiquidation lq "		//	Corrected for AP/AR
			+ "INNER JOIN C_Currency c ON (lq.C_Currency_ID=c.C_Currency_ID) "
			+ "WHERE lq.Processed='Y' " 
			+ "AND lq.DocStatus = 'CO' "
			+ "AND lq.FTA_FarmerCredit_ID = ? "
			+ "AND lq.C_BPartner_ID=?");                   		//      #5
		if (!isMultiCurrency)
			sql.append(" AND lq.C_Currency_ID=?");				//      #6
		if (m_AD_Org_ID != 0 )
			sql.append(" AND lq.AD_Org_ID=" + m_AD_Org_ID);
		sql.append(" ORDER BY lq.DateDoc, lq.DocumentNo");
		
		// role security
		sql = new StringBuffer( MRole.getDefault(Env.getCtx(), false).addAccessSQL( sql.toString(), "lq", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ) );
		
		log.fine("PaySQL=" + sql.toString());
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, m_C_Currency_ID);
			pstmt.setTimestamp(2, (Timestamp)date);
			pstmt.setInt(3, m_C_Currency_ID);
			pstmt.setTimestamp(4, (Timestamp)date);
			pstmt.setInt(5, m_FTA_FarmerCredit_ID);
			pstmt.setInt(6, m_C_BPartner_ID);
			if (!isMultiCurrency)
				pstmt.setInt(7, m_C_Currency_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));       //  0-Selection
				line.add(rs.getTimestamp(1));       //  1-TrxDate
				KeyNamePair pp = new KeyNamePair(rs.getInt(3), rs.getString(2));
				line.add(pp);                       //  2-DocumentNo
				if (isMultiCurrency)
				{
					line.add(rs.getString(4));      //  3-Currency
					line.add(rs.getBigDecimal(5));  //  4-PayAmt
				}
				line.add(rs.getBigDecimal(6));      //  3/5-ConvAmt
				BigDecimal available = rs.getBigDecimal(7);
				if (available == null || available.signum() == 0)	//	nothing available
					continue;
				line.add(available);				//  4/6-ConvOpen/Available
				line.add(Env.ZERO);					//  5/7-Liquidation
//				line.add(rs.getBigDecimal(8));		//  6/8-Multiplier
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
	
	public Vector<String> getLiquidationColumnNames(boolean isMultiCurrency)
	{	
		//  Header Info
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.translate(Env.getCtx(), "Date"));
		columnNames.add(Util.cleanAmp(Msg.translate(Env.getCtx(), "DocumentNo")));
		if (isMultiCurrency)
		{
			columnNames.add(Msg.getMsg(Env.getCtx(), "TrxCurrency"));
			columnNames.add(Msg.translate(Env.getCtx(), "Amount"));
		}
		columnNames.add(Msg.getMsg(Env.getCtx(), "ConvertedAmount"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "OpenAmt"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "AppliedAmt"));
//		columnNames.add(" ");	//	Multiplier
		
		return columnNames;
	}
	
	public void setLiquidationColumnClass(IMiniTable liquidationTable, boolean isMultiCurrency)
	{
		int i = 0;
		liquidationTable.setColumnClass(i++, Boolean.class, false);         //  0-Selection
		liquidationTable.setColumnClass(i++, Timestamp.class, true);        //  1-TrxDate
		liquidationTable.setColumnClass(i++, String.class, true);           //  2-Value
		if (isMultiCurrency)
		{
			liquidationTable.setColumnClass(i++, String.class, true);       //  3-Currency
			liquidationTable.setColumnClass(i++, BigDecimal.class, true);   //  4-PayAmt
		}
		liquidationTable.setColumnClass(i++, BigDecimal.class, true);       //  5-ConvAmt
		liquidationTable.setColumnClass(i++, BigDecimal.class, true);       //  6-ConvOpen
		liquidationTable.setColumnClass(i++, BigDecimal.class, false);      //  7-Allocated
//		liquidationTable.setColumnClass(i++, BigDecimal.class, true);      	//  8-Multiplier

		//
		i_liquidation = isMultiCurrency ? 7 : 5;
		

		//  Table UI
		liquidationTable.autoSize();
	}
	
	public Vector<Vector<Object>> getInvoiceData(boolean isMultiCurrency, Object date, IMiniTable invoiceTable)
	{
		/********************************
		 *  Load unpaid Invoices
		 *      1-TrxDate, 2-Value, (3-Currency, 4-InvAmt,)
		 *      5-ConvAmt, 6-ConvOpen, 7-ConvDisc, 8-WriteOff, 9-Applied
		 * 
		 SELECT i.DateInvoiced,i.DocumentNo,i.C_Invoice_ID,c.ISO_Code,
		 i.GrandTotal*i.MultiplierAP "GrandTotal", 
		 currencyConvert(i.GrandTotal*i.MultiplierAP,i.C_Currency_ID,i.C_Currency_ID,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID) "GrandTotal $", 
		 invoiceOpenFTA(C_Invoice_ID,C_InvoicePaySchedule_ID) "Open",
		 currencyConvert(invoiceOpenFTA(C_Invoice_ID,C_InvoicePaySchedule_ID),i.C_Currency_ID,i.C_Currency_ID,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)*i.MultiplierAP "Open $", 
		 invoiceDiscount(i.C_Invoice_ID,SysDate,C_InvoicePaySchedule_ID) "Discount",
		 currencyConvert(invoiceDiscount(i.C_Invoice_ID,SysDate,C_InvoicePaySchedule_ID),i.C_Currency_ID,i.C_Currency_ID,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)*i.Multiplier*i.MultiplierAP "Discount $",
		 i.MultiplierAP, i.Multiplier 
		 FROM C_Invoice_v i INNER JOIN C_Currency c ON (i.C_Currency_ID=c.C_Currency_ID) 
		 WHERE -- i.IsPaid='N' AND i.Processed='Y' AND i.C_BPartner_ID=1000001
		 */
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuffer sql = new StringBuffer("SELECT i.DateInvoiced,i.DocumentNo,i.C_Invoice_ID," //  1..3
			+ "c.ISO_Code,i.GrandTotal*i.MultiplierAP, "                            //  4..5    Orig Currency
			+ "currencyConvert(i.GrandTotal*i.MultiplierAP,i.C_Currency_ID,?,?,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID), " //  6   #1  Converted, #2 Date
			+ "currencyConvert(invoiceOpenFTA(C_Invoice_ID,C_InvoicePaySchedule_ID),i.C_Currency_ID,?,?,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)*i.MultiplierAP, "  //  7   #3, #4  Converted Open
			+ "currencyConvert(invoiceDiscount"                               //  8       AllowedDiscount
			+ "(i.C_Invoice_ID,?,C_InvoicePaySchedule_ID),i.C_Currency_ID,?,i.DateInvoiced,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)*i.Multiplier*i.MultiplierAP,"               //  #5, #6
			+ "i.MultiplierAP "
			+ "FROM FTA_RV_C_Invoice i"		//  corrected for CM/Split
			+ " INNER JOIN C_Currency c ON (i.C_Currency_ID=c.C_Currency_ID) "
			+ "WHERE i.IsPaid='N' AND i.Processed='Y'"
			//	Add Trx
			+ "AND i.IsSOTrx = 'Y' " 
			+ "AND (i.FTA_FarmerCredit_ID = " + m_FTA_FarmerCredit_ID 
			+ " 		OR i.Parent_FarmerCredit_ID = " + m_FTA_FarmerCredit_ID + ") "
			+ "AND i.C_BPartner_ID=? ");                                            //  #7
		if (!isMultiCurrency)
			sql.append("AND i.C_Currency_ID=?");                                   //  #8
		if (m_AD_Org_ID != 0 ) 
			sql.append(" AND i.AD_Org_ID=" + m_AD_Org_ID);
		sql.append(" ORDER BY i.DateInvoiced, i.DocumentNo");
		log.fine("InvSQL=" + sql.toString());
		
		// role security
		sql = new StringBuffer( MRole.getDefault(Env.getCtx(), false).addAccessSQL( sql.toString(), "i", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO ) );
		
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, m_C_Currency_ID);
			pstmt.setTimestamp(2, (Timestamp)date);
			pstmt.setInt(3, m_C_Currency_ID);
			pstmt.setTimestamp(4, (Timestamp)date);
			pstmt.setTimestamp(5, (Timestamp)date);
			pstmt.setInt(6, m_C_Currency_ID);
			pstmt.setInt(7, m_C_BPartner_ID);
			if (!isMultiCurrency)
				pstmt.setInt(8, m_C_Currency_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));       //  0-Selection
				line.add(rs.getTimestamp(1));       //  1-TrxDate
				KeyNamePair pp = new KeyNamePair(rs.getInt(3), rs.getString(2));
				line.add(pp);                       //  2-Value
				if (isMultiCurrency)
				{
					line.add(rs.getString(4));      //  3-Currency
					line.add(rs.getBigDecimal(5));  //  4-Orig Amount
				}
				line.add(rs.getBigDecimal(6));      //  3/5-ConvAmt
				BigDecimal open = rs.getBigDecimal(7);
				if (open == null)		//	no conversion rate
					open = Env.ZERO;
				line.add(open);      				//  4/6-ConvOpen
				BigDecimal discount = rs.getBigDecimal(8);
				if (discount == null)	//	no concersion rate
					discount = Env.ZERO;
				line.add(discount);					//  5/7-ConvAllowedDisc
				line.add(Env.ZERO);      			//  6/8-WriteOff
				line.add(Env.ZERO);					// 7/9-Applied
				line.add(open);				    //  8/10-OverUnder

//				line.add(rs.getBigDecimal(9));		//	8/10-Multiplier
				//	Add when open <> 0 (i.e. not if no conversion rate)
				if (Env.ZERO.compareTo(open) != 0)
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

	public Vector<String> getInvoiceColumnNames(boolean isMultiCurrency)
	{
		//  Header Info
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.translate(Env.getCtx(), "Date"));
		columnNames.add(Util.cleanAmp(Msg.translate(Env.getCtx(), "DocumentNo")));
		if (isMultiCurrency)
		{
			columnNames.add(Msg.getMsg(Env.getCtx(), "TrxCurrency"));
			columnNames.add(Msg.translate(Env.getCtx(), "Amount"));
		}
		columnNames.add(Msg.getMsg(Env.getCtx(), "ConvertedAmount"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "OpenAmt"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "Discount"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "WriteOff"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "AppliedAmt"));
		columnNames.add(Msg.getMsg(Env.getCtx(), "OverUnderAmt"));
//		columnNames.add(" ");	//	Multiplier
		
		return columnNames;
	}
	
	public void setInvoiceColumnClass(IMiniTable invoiceTable, boolean isMultiCurrency)
	{
		int i = 0;
		invoiceTable.setColumnClass(i++, Boolean.class, false);         //  0-Selection
		invoiceTable.setColumnClass(i++, Timestamp.class, true);        //  1-TrxDate
		invoiceTable.setColumnClass(i++, String.class, true);           //  2-Value
		if (isMultiCurrency)
		{
			invoiceTable.setColumnClass(i++, String.class, true);       //  3-Currency
			invoiceTable.setColumnClass(i++, BigDecimal.class, true);   //  4-Amt
		}
		invoiceTable.setColumnClass(i++, BigDecimal.class, true);       //  5-ConvAmt
		invoiceTable.setColumnClass(i++, BigDecimal.class, true);       //  6-ConvAmt Open
		invoiceTable.setColumnClass(i++, BigDecimal.class, false);      //  7-Conv Discount
		invoiceTable.setColumnClass(i++, BigDecimal.class, false);      //  8-Conv WriteOff
		invoiceTable.setColumnClass(i++, BigDecimal.class, false);      //  9-Conv OverUnder
		invoiceTable.setColumnClass(i++, BigDecimal.class, true);		//	10-Conv Applied
//		invoiceTable.setColumnClass(i++, BigDecimal.class, true);      	//  10-Multiplier
		//  Table UI
		invoiceTable.autoSize();
	}
	
	/**
	 * Load Data from Farmer Credit
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/09/2013, 15:56:12
	 * @param comboSearch
	 * @param p_C_BPartner_ID
	 * @return
	 * @return int
	 */
	protected int loadFarmerCredit(CComboBox comboSearch, int p_C_BPartner_ID) {
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		
		log.config("getData");
		
		try	{
			PreparedStatement pstmt = DB.prepareStatement("SELECT cr.FTA_FarmerCredit_ID, l.Name || ' - ' || cr.DocumentNo " +
					"FROM FTA_FarmerCredit cr " +
					"INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = cr.FTA_CreditDefinition_ID) " +
					"INNER JOIN M_Lot l ON(l.M_Lot_ID = cd.PlantingCycle_ID) " +
					"WHERE cr.C_BPartner_ID = ? " +
					"AND cr.Parent_FarmerCredit_ID IS NULL " +
					"AND cr.DocStatus = 'CO'", null);
			pstmt.setInt(1, p_C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery();
			//
			while (rs.next()) {
				KeyNamePair pp = new KeyNamePair(rs.getInt(1), rs.getString(2));
				data.add(pp);
			}
			DB.close(rs, pstmt);
		} catch (SQLException e) {
			e.printStackTrace();
		}
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
	
	public void calculate(boolean isMultiCurrency)
	{
		i_open = isMultiCurrency ? 6 : 4;
		i_discount = isMultiCurrency ? 7 : 5;
		i_writeOff = isMultiCurrency ? 8 : 6;
		i_applied = isMultiCurrency ? 9 : 7;
		i_overUnder = isMultiCurrency ? 10 : 8;
//		i_multiplier = isMultiCurrency ? 10 : 8;
	}   //  loadBPartner
	
	public String writeOff(int row, int col, boolean isInvoice, IMiniTable liquidation, IMiniTable invoice, boolean isAutoWriteOff)
	{
		String msg = "";
		/**
		 *  Setting defaults
		 */
		if (m_calculating)  //  Avoid recursive calls
			return msg;
		m_calculating = true;
		
		log.config("Row=" + row 
			+ ", Col=" + col + ", InvoiceTable=" + isInvoice);
        
		//  Liquidations
		if (!isInvoice)
		{
			BigDecimal open = (BigDecimal)liquidation.getValueAt(row, i_open);
			BigDecimal applied = (BigDecimal)liquidation.getValueAt(row, i_liquidation);
			
			if (col == 0)
			{
				// selection of liquidation row
				if (((Boolean)liquidation.getValueAt(row, 0)).booleanValue())
				{
					applied = open;   //  Open Amount
					if (totalDiff.abs().compareTo(applied.abs()) < 0			// where less is available to allocate than open
							&& totalDiff.signum() == -applied.signum() )    	// and the available amount has the opposite sign
						applied = totalDiff.negate();						// reduce the amount applied to what's available
					
				}
				else    //  de-selected
					applied = Env.ZERO;
			}
			
			
			if (col == i_liquidation)
			{
				if ( applied.signum() == -open.signum() )
					applied = applied.negate();
				if ( open.abs().compareTo( applied.abs() ) < 0 )
							applied = open;
			}
			
			liquidation.setValueAt(applied, row, i_liquidation);
		}

		//  Invoice
		else 
		{
			boolean selected = ((Boolean) invoice.getValueAt(row, 0)).booleanValue();
			BigDecimal open = (BigDecimal)invoice.getValueAt(row, i_open);
			BigDecimal discount = (BigDecimal)invoice.getValueAt(row, i_discount);
			BigDecimal applied = (BigDecimal)invoice.getValueAt(row, i_applied);
			BigDecimal writeOff = (BigDecimal) invoice.getValueAt(row, i_writeOff);
			BigDecimal overUnder = (BigDecimal) invoice.getValueAt(row, i_overUnder);
			int openSign = open.signum();
			
			if (col == 0)  //selection
			{
				//  selected - set applied amount
				if ( selected )
				{
					applied = open;    //  Open Amount
					applied = applied.subtract(discount);
					writeOff = Env.ZERO;  //  to be sure
					overUnder = Env.ZERO;

					if (totalDiff.abs().compareTo(applied.abs()) < 0			// where less is available to allocate than open
							&& totalDiff.signum() == applied.signum() )     	// and the available amount has the same sign
						applied = totalDiff;									// reduce the amount applied to what's available

					if ( isAutoWriteOff )
						writeOff = open.subtract(applied.add(discount));
					else
						overUnder = open.subtract(applied.add(discount));
				}
				else    //  de-selected
				{
					writeOff = Env.ZERO;
					applied = Env.ZERO;
					overUnder = Env.ZERO;
				}
			}
			
			// check entered values are sensible and possibly auto write-off
			if ( selected && col != 0 )
			{
				
				// values should have same sign as open except possibly over/under
				if ( discount.signum() == -openSign )
					discount = discount.negate();
				if ( writeOff.signum() == -openSign)
					writeOff = writeOff.negate();
				if ( applied.signum() == -openSign )
					applied = applied.negate();
				
				// discount and write-off must be less than open amount
				if ( discount.abs().compareTo(open.abs()) > 0)
					discount = open;
				if ( writeOff.abs().compareTo(open.abs()) > 0)
					writeOff = open;
				
				
				/*
				 * Two rules to maintain:
				 *
				 * 1) |writeOff + discount| < |open| 
				 * 2) discount + writeOff + overUnder + applied = 0
				 *
				 *   As only one column is edited at a time and the initial position was one of compliance
				 *   with the rules, we only need to redistribute the increase/decrease in the edited column to 
				 *   the others.
				*/
				BigDecimal newTotal = discount.add(writeOff).add(applied).add(overUnder);  // all have same sign
				BigDecimal difference = newTotal.subtract(open);
				
				// rule 2
				BigDecimal diffWOD = writeOff.add(discount).subtract(open);
										
				if ( diffWOD.signum() == open.signum() )  // writeOff and discount are too large
				{
					if ( col == i_discount )       // then edit writeoff
					{
						writeOff = writeOff.subtract(diffWOD);
					} 
					else                            // col = i_writeoff
					{
						discount = discount.subtract(diffWOD);
					}
					
					difference = difference.subtract(diffWOD);
				}
				
				// rule 1
				if ( col == i_applied )
					overUnder = overUnder.subtract(difference);
				else
					applied = applied.subtract(difference);
				
			}
			
			//	Warning if write Off > 30%
			if (isAutoWriteOff && writeOff.doubleValue()/open.doubleValue() > .30)
				msg = "AllocationWriteOffWarn";

			invoice.setValueAt(discount, row, i_discount);
			invoice.setValueAt(applied, row, i_applied);
			invoice.setValueAt(writeOff, row, i_writeOff);
			invoice.setValueAt(overUnder, row, i_overUnder);
			
			invoice.repaint(); //  update r/o
		}

		m_calculating = false;
		
		return msg;
	}
	
	/**
	 *  Calculate Allocation info
	 */
	public String calculateLiquidation(IMiniTable liquidation, boolean isMultiCurrency)
	{
		log.config("");

		//  Liquidation
		totalPay = new BigDecimal(0.0);
		int rows = liquidation.getRowCount();
		m_noLiquidations = 0;
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)liquidation.getValueAt(i, 0)).booleanValue())
			{
				Timestamp ts = (Timestamp)liquidation.getValueAt(i, 1);
				if ( !isMultiCurrency )  // the converted amounts are only valid for the selected date
					allocDate = TimeUtil.max(allocDate, ts);
				BigDecimal bd = (BigDecimal)liquidation.getValueAt(i, i_liquidation);
				totalPay = totalPay.add(bd);  //  Applied Pay
				m_noLiquidations++;
				log.fine("Liquidation_" + i + " = " + bd + " - Total=" + totalPay);
			}
		}
		return String.valueOf(m_noLiquidations) + " - "
			+ Msg.getMsg(Env.getCtx(), "Sum") + "  " + format.format(totalPay) + " ";
	}
	
	public String calculateInvoice(IMiniTable invoice, boolean isMultiCurrency)
	{		
		//  Invoices
		totalInv = new BigDecimal(0.0);
		int rows = invoice.getRowCount();
		m_noInvoices = 0;

		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)invoice.getValueAt(i, 0)).booleanValue())
			{
				Timestamp ts = (Timestamp)invoice.getValueAt(i, 1);
				if ( !isMultiCurrency )  // converted amounts only valid for selected date
					allocDate = TimeUtil.max(allocDate, ts);
				BigDecimal bd = (BigDecimal)invoice.getValueAt(i, i_applied);
				totalInv = totalInv.add(bd);  //  Applied Inv
				m_noInvoices++;
				log.fine("Invoice_" + i + " = " + bd + " - Total=" + totalPay);
			}
		}
		return String.valueOf(m_noInvoices) + " - "
			+ Msg.getMsg(Env.getCtx(), "Sum") + "  " + format.format(totalInv) + " ";
	}
	
	/**************************************************************************
	 *  Save Data
	 */
	public String saveData(int m_WindowNo, Object date, IMiniTable liquidation, IMiniTable invoice, String trxName)
	{
		if (m_noInvoices + m_noLiquidations == 0)
			return "";

		//  fixed fields
		int AD_Client_ID = Env.getContextAsInt(Env.getCtx(), m_WindowNo, "AD_Client_ID");
		int AD_Org_ID = Env.getContextAsInt(Env.getCtx(), m_WindowNo, "AD_Org_ID");
		int C_BPartner_ID = m_C_BPartner_ID;
		int C_Order_ID = 0;
		int C_CashLine_ID = 0;
		Timestamp m_DateDoc = (Timestamp)date;
		int C_Currency_ID = m_C_Currency_ID;	//	the allocation currency
		//
		if (AD_Org_ID == 0)
		{
			//ADialog.error(m_WindowNo, this, "Org0NotAllowed", null);
			throw new AdempiereException("@Org0NotAllowed@");
		}
		//
		log.config("Client=" + AD_Client_ID + ", Org=" + AD_Org_ID
			+ ", BPartner=" + C_BPartner_ID + ", Date=" + m_DateDoc);

		//  Liquidation - Loop and add them to liquidationList/amountList
		int pRows = liquidation.getRowCount();
		ArrayList<Integer> liquidationList = new ArrayList<Integer>(pRows);
		ArrayList<BigDecimal> amountList = new ArrayList<BigDecimal>(pRows);
		BigDecimal liquidationAppliedAmt = Env.ZERO;
		for (int i = 0; i < pRows; i++)
		{
			//  Liquidation line is selected
			if (((Boolean)liquidation.getValueAt(i, 0)).booleanValue())
			{
				KeyNamePair pp = (KeyNamePair)liquidation.getValueAt(i, 2);   //  Value
				//  Liquidation variables
				int C_Liquidation_ID = pp.getKey();
				liquidationList.add(new Integer(C_Liquidation_ID));
				//
				BigDecimal LiquidationAmt = (BigDecimal)liquidation.getValueAt(i, i_liquidation);  //  Applied Liquidation
				amountList.add(LiquidationAmt);
				//
				liquidationAppliedAmt = liquidationAppliedAmt.add(LiquidationAmt);
				//
				log.fine("C_Liquidation_ID=" + C_Liquidation_ID 
					+ " - LiquidationAmt=" + LiquidationAmt); // + " * " + Multiplier + " = " + LiquidationAmtAbs);
			}
		}
		log.config("Number of Liquidations=" + liquidationList.size() + " - Total=" + liquidationAppliedAmt);

		//  Invoices - Loop and generate allocations
		int iRows = invoice.getRowCount();
		
		//	Create Allocation
		MFTAAllocation alloc = new MFTAAllocation (Env.getCtx(), true,	//	manual
			m_DateDoc, C_Currency_ID, Env.getContext(Env.getCtx(), "#AD_User_Name"), trxName);
		alloc.setAD_Org_ID(AD_Org_ID);
		//	FTA
		alloc.setFTA_FarmerCredit_ID(m_FTA_FarmerCredit_ID);
		alloc.saveEx();
		//	For all invoices
		//int invoiceLines = 0;
		BigDecimal unmatchedApplied = Env.ZERO;
		for (int i = 0; i < iRows; i++)
		{
			//  Invoice line is selected
			if (((Boolean)invoice.getValueAt(i, 0)).booleanValue())
			{
				//invoiceLines++;
				KeyNamePair pp = (KeyNamePair)invoice.getValueAt(i, 2);    //  Value
				//  Invoice variables
				int C_Invoice_ID = pp.getKey();
				BigDecimal AppliedAmt = (BigDecimal)invoice.getValueAt(i, i_applied);
				//  semi-fixed fields (reset after first invoice)
				BigDecimal DiscountAmt = (BigDecimal)invoice.getValueAt(i, i_discount);
				BigDecimal WriteOffAmt = (BigDecimal)invoice.getValueAt(i, i_writeOff);
				//	OverUnderAmt needs to be in Allocation Currency
				BigDecimal OverUnderAmt = ((BigDecimal)invoice.getValueAt(i, i_open))
					.subtract(AppliedAmt).subtract(DiscountAmt).subtract(WriteOffAmt);
				
				log.config("Invoice #" + i + " - AppliedAmt=" + AppliedAmt);// + " -> " + AppliedAbs);
				//  loop through all liquidations until invoice applied
				
				for (int j = 0; j < liquidationList.size() && AppliedAmt.signum() != 0; j++)
				{
					int C_Liquidation_ID = ((Integer)liquidationList.get(j)).intValue();
					BigDecimal LiquidationAmt = (BigDecimal)amountList.get(j);
					if (LiquidationAmt.signum() == AppliedAmt.signum())	// only match same sign (otherwise appliedAmt increases)
					{												// and not zero (appliedAmt was checked earlier)
						log.config(".. with liquidation #" + j + ", Amt=" + LiquidationAmt);
						
						BigDecimal amount = AppliedAmt;
						if (amount.abs().compareTo(LiquidationAmt.abs()) > 0)  // if there's more open on the invoice
							amount = LiquidationAmt;							// than left in the liquidation
						
						//	Allocation Line
						MFTAAllocationLine aLine = new MFTAAllocationLine (alloc, amount, 
							DiscountAmt, WriteOffAmt, OverUnderAmt);
						aLine.setDocInfo(C_BPartner_ID, C_Order_ID, C_Invoice_ID);
						aLine.setLiquidationInfo(C_Liquidation_ID, C_CashLine_ID);
						aLine.saveEx();

						//  Apply Discounts and WriteOff only first time
						DiscountAmt = Env.ZERO;
						WriteOffAmt = Env.ZERO;
						//  subtract amount from Liquidation/Invoice
						AppliedAmt = AppliedAmt.subtract(amount);
						LiquidationAmt = LiquidationAmt.subtract(amount);
						log.fine("Allocation Amount=" + amount + " - Remaining  Applied=" + AppliedAmt + ", Liquidation=" + LiquidationAmt);
						amountList.set(j, LiquidationAmt);  //  update
					}	//	for all applied amounts
				}	//	loop through liquidations for invoice
				
				if ( AppliedAmt.signum() == 0 && DiscountAmt.signum() == 0 && WriteOffAmt.signum() == 0)
					continue;
				else {			// remainder will need to match against other invoices
					int C_Liquidation_ID = 0;
					
					//	Allocation Line
					MFTAAllocationLine aLine = new MFTAAllocationLine (alloc, AppliedAmt, 
						DiscountAmt, WriteOffAmt, OverUnderAmt);
					aLine.setDocInfo(C_BPartner_ID, C_Order_ID, C_Invoice_ID);
					aLine.setLiquidationInfo(C_Liquidation_ID, C_CashLine_ID);
					aLine.saveEx();
					log.fine("Allocation Amount=" + AppliedAmt);
					unmatchedApplied = unmatchedApplied.add(AppliedAmt);
				}
			}   //  invoice selected
		}   //  invoice loop

		// check for unapplied liquidation amounts (eg from liquidation reversals)
		for (int i = 0; i < liquidationList.size(); i++)	{
			BigDecimal payAmt = (BigDecimal) amountList.get(i);
			if ( payAmt.signum() == 0 )
					continue;
			int C_Liquidation_ID = ((Integer)liquidationList.get(i)).intValue();
			log.fine("Liquidation=" + C_Liquidation_ID  
					+ ", Amount=" + payAmt);

			//	Allocation Line
			MFTAAllocationLine aLine = new MFTAAllocationLine (alloc, payAmt, 
				Env.ZERO, Env.ZERO, Env.ZERO);
			aLine.setDocInfo(C_BPartner_ID, 0, 0);
			aLine.setLiquidationInfo(C_Liquidation_ID, 0);
			aLine.saveEx();
			unmatchedApplied = unmatchedApplied.subtract(payAmt);
		}		
		
		if ( unmatchedApplied.signum() != 0 )
			log.log(Level.SEVERE, "Allocation not balanced -- out by " + unmatchedApplied );

		//	Should start WF
		if (alloc.get_ID() != 0)
		{
			alloc.processIt(DocAction.ACTION_Complete);
			alloc.saveEx();
		}
		
		//  Test/Set IsPaid for Invoice - requires that allocation is posted
		for (int i = 0; i < iRows; i++)
		{
			//  Invoice line is selected
			if (((Boolean)invoice.getValueAt(i, 0)).booleanValue())
			{
				KeyNamePair pp = (KeyNamePair)invoice.getValueAt(i, 2);    //  Value
				//  Invoice variables
				int C_Invoice_ID = pp.getKey();
				String sql = "SELECT invoiceOpenFTA(C_Invoice_ID, 0) "
					+ "FROM C_Invoice WHERE C_Invoice_ID=?";
				BigDecimal open = DB.getSQLValueBD(trxName, sql, C_Invoice_ID);
				log.config("Invoice #" + i + " is not paid - " + open);
				/*if (open != null && open.signum() == 0)	{
					sql = "UPDATE C_Invoice SET IsPaid='Y' "
						+ "WHERE C_Invoice_ID=" + C_Invoice_ID;
					int no = DB.executeUpdate(sql, trxName);
					log.config("Invoice #" + i + " is paid - updated=" + no);
				} else
					log.config("Invoice #" + i + " is not paid - " + open);*/
			}
		}
		//  Test/Set Liquidation is fully allocated
		/*for (int i = 0; i < liquidationList.size(); i++)
		{
			int FTA_FarmerLiquidation_ID = ((Integer)liquidationList.get(i)).intValue();
			MFTAFarmerLiquidation liq = new MFTAFarmerLiquidation (Env.getCtx(), FTA_FarmerLiquidation_ID, trxName);
			if (liq.testAllocation())
				liq.saveEx();
			log.config("Liquidation #" + i + (liq.isAllocated() ? " not" : " is") 
					+ " fully allocated");
		}*/
		liquidationList.clear();
		amountList.clear();
		
		return Msg.translate(Env.getCtx(), "FTA_Allocation_ID") + ": " + alloc.getDocumentNo();
	}   //  saveData
}
