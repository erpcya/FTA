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
import org.compiere.model.MPriceList;
import org.compiere.model.MProductPricing;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutCreditDefinition extends CalloutEngine {

	/**
	 * Calculate Price List and Amt
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/08/2013, 12:17:45
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer m_M_Product_ID = (Integer)value;
		if (m_M_Product_ID == null || m_M_Product_ID.intValue() == 0)
			return "";
		
		BigDecimal qty = (BigDecimal) mTab.getValue("Qty");
		
		mTab.setValue("C_Charge_ID", null);
		mTab.setValue("M_Product_Category_ID", null);
		
		boolean IsSOTrx = Env.getContext(ctx, WindowNo, "IsSOTrx").equals("Y");
		int M_PriceList_ID = Env.getContextAsInt(ctx, WindowNo, "M_PriceList_ID");
		Timestamp dateDoc = (Timestamp)mTab.getValue("DateDoc");
		
		MProductPricing pp = new MProductPricing (m_M_Product_ID.intValue(), 0, qty, IsSOTrx);
		//
		pp.setM_PriceList_ID(M_PriceList_ID);
		/** PLV is only accurate if PL selected in header */
		int M_PriceList_Version_ID = Env.getContextAsInt(ctx, WindowNo, "M_PriceList_Version_ID");
		if ( M_PriceList_Version_ID == 0 && M_PriceList_ID > 0)
		{
			String sql = "SELECT plv.M_PriceList_Version_ID "
				+ "FROM M_PriceList_Version plv "
				+ "WHERE plv.M_PriceList_ID=? "						//	1
				+ " AND plv.ValidFrom <= ? "
				+ "ORDER BY plv.ValidFrom DESC";
			//	Use newest price list - may not be future
			
			M_PriceList_Version_ID = DB.getSQLValueEx(null, sql, M_PriceList_ID, dateDoc);
			if ( M_PriceList_Version_ID > 0 )
				Env.setContext(ctx, WindowNo, "M_PriceList_Version_ID", M_PriceList_Version_ID );
		}
		pp.setM_PriceList_Version_ID(M_PriceList_Version_ID); 
		pp.setPriceDate(dateDoc);
		//	Set Values
		mTab.setValue("Price", pp.getPriceList());
		mTab.setValue("C_UOM_ID", new Integer(pp.getC_UOM_ID()));
		
		return amt(ctx, WindowNo, mTab, mField, value);
	}
	
	/**
	 * Get Price Charge
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/08/2013, 14:59:34
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String charge (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value) {
		Integer m_C_Charge_ID = (Integer)value;
		if (m_C_Charge_ID == null || m_C_Charge_ID.intValue() == 0)
			return "";
		//	No Product defined
		if (mTab.getValue("M_Product_ID") != null)
		{
			mTab.setValue("C_Charge_ID", null);
			return "ChargeExclusively";
		}
		mTab.setValue("M_Product_Category_ID", null);
		mTab.setValue("M_Product_ID", null);
		
		mTab.setValue("C_UOM_ID", new Integer(100));	//	EA
		
		Env.setContext(ctx, WindowNo, "DiscountSchema", "N");
		
		//	SQL
		String sql = "SELECT ChargeAmt " +
				"FROM C_Charge " +
				"WHERE C_Charge_ID=?";
		
		BigDecimal chargeAmt = DB.getSQLValueBD(null, sql, m_C_Charge_ID.intValue());
		
		mTab.setValue ("Price", (chargeAmt != null? chargeAmt: Env.ZERO));
		//
		return amt(ctx, WindowNo, mTab, mField, value);
	}	//	charge
	
	/**
	 * Set Values for Product Category
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/08/2013, 15:35:37
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String productCategory (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value) {
		Integer m_M_Product_Category_ID = (Integer)value;
		if (m_M_Product_Category_ID == null || m_M_Product_Category_ID.intValue() == 0)
			return "";
		
		mTab.setValue("C_Charge_ID", null);
		mTab.setValue("M_Product_ID", null);
		
		mTab.setValue("Qty", Env.ONE);
		mTab.setValue("C_UOM_ID", new Integer(100));	//	EA
		mTab.setValue ("Price", Env.ZERO);
		
		return "";
	}
	
	/**
	 * Calculate Amount
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/08/2013, 15:18:36
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String amt (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (isCalloutActive() || value == null)
			return "";

		int M_PriceList_ID = Env.getContextAsInt(ctx, WindowNo, "M_PriceList_ID");
		int StdPrecision = MPriceList.getStandardPrecision(ctx, M_PriceList_ID);
		BigDecimal m_Qty, m_Price;
		//	get values
		m_Qty = (BigDecimal)mTab.getValue("Qty");
		log.fine("Qty=" + m_Qty);
		//
		m_Price = (BigDecimal)mTab.getValue("Price");
		log.fine("Price=" + m_Price + ", Precision=" + StdPrecision);
		
		if(m_Qty == null
				|| m_Price == null)
			return "";
		
		//	Line Amount
		BigDecimal m_Amt = m_Qty.multiply(m_Price);
		if (m_Amt.scale() > StdPrecision)
			m_Amt = m_Amt.setScale(StdPrecision, BigDecimal.ROUND_HALF_UP);
		log.info("Amt=" + m_Amt);
		mTab.setValue("Amt", m_Amt);
		//
		return "";
	}	//	amt
	
}
