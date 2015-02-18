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
import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MProduct;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTALoadOrderLine extends X_FTA_LoadOrderLine {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6835972503299838772L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/11/2013, 11:37:21
	 * @param ctx
	 * @param FTA_LoadOrderLine_ID
	 * @param trxName
	 */
	public MFTALoadOrderLine(Properties ctx, int FTA_LoadOrderLine_ID,
			String trxName) {
		super(ctx, FTA_LoadOrderLine_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/11/2013, 11:37:21
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTALoadOrderLine(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		MProduct m_Product = MProduct.get(getCtx(), getM_Product_ID());
		if(m_Product != null) {
			BigDecimal m_Weight = m_Product.getWeight();
			BigDecimal m_Volume = m_Product.getVolume();
			//	Valid Weight
			if(m_Weight == null)
				m_Weight = Env.ZERO;
			//	Valid Volume
			if(m_Volume == null)
				m_Volume = Env.ZERO;
			//	For Quantity
			if(is_ValueChanged("Qty")) {
				BigDecimal m_Qty = getQty();
				//	Valid Quantity
				if(m_Qty == null)
					m_Qty = Env.ZERO;
				//	Set Weight and Volume
				setWeight(m_Qty.multiply(m_Weight));
				setVolume(m_Qty.multiply(m_Volume));
			} else if(is_ValueChanged("ConfirmedQty")) {
				BigDecimal m_ConfirmedQty = getConfirmedQty();
				//	Valid Quantity
				if(m_ConfirmedQty == null)
					m_ConfirmedQty = Env.ZERO;
				//	Set Confirmed Weight
				setConfirmedWeight(m_ConfirmedQty.multiply(m_Weight));
			}	
		}
		//	Add Warehouse
		if(newRecord) {
			int m_M_Warehouse_ID = 0;
			//	For Sales Order
			if(getC_OrderLine_ID() != 0) {
				m_M_Warehouse_ID = DB.getSQLValue(get_TrxName(), "SELECT ol.M_Warehouse_ID "
						+ "FROM C_OrderLine ol "
						+ "WHERE ol.C_OrderLine_ID = ?", getC_OrderLine_ID());
			} else if(getDD_OrderLine_ID() != 0) {
				m_M_Warehouse_ID = DB.getSQLValue(get_TrxName(), "SELECT l.M_Warehouse_ID "
						+ "FROM DD_OrderLine dol "
						+ "INNER JOIN M_Locator l ON(l.M_Locator_ID = dol.M_Locator_ID) "
						+ "WHERE dol.DD_OrderLine_ID = ?", getDD_OrderLine_ID());
			}
			//	Set Warehouse
			if(m_M_Warehouse_ID > 0) {
				setM_Warehouse_ID(m_M_Warehouse_ID);
			}
		}
		//	
		return super.beforeSave(newRecord);
	}
	
	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		super.afterSave(newRecord, success);
		if(success)
			return updateHeader();
		return false;
	}//	End After Save
	
	@Override
	protected boolean afterDelete (boolean success) {
		super.afterDelete(success);
		if(success)
			return updateHeader();
		//	Return
		return false;
	} //	End After Delete
	
	/**
	 * Update Header
	 * @author <a href="mailto:dixon.22ma@gmail.com">Dixon Martinez</a> 1/12/2014, 18:49:49
	 * @return
	 * @return boolean
	 */
	private boolean updateHeader() {
		//	Recalculate Header
		//	Update Load Order Header
		String sql = "UPDATE FTA_LoadOrder lo SET Weight=("
				+ "	SELECT COALESCE(SUM(lol.Weight),0) FROM FTA_LoadOrderLine lol WHERE lol.FTA_LoadOrder_ID=lo.FTA_LoadOrder_ID)"
				+ " ,Volume =( SELECT COALESCE(SUM(lol.Volume),0) FROM FTA_LoadOrderLine lol "
				+ " WHERE lol.FTA_LoadOrder_ID=lo.FTA_LoadOrder_ID)"
				+ " ,ConfirmedWeight =( SELECT COALESCE(SUM(lol.ConfirmedWeight),0) FROM FTA_LoadOrderLine lol "
				+ " WHERE lol.FTA_LoadOrder_ID=lo.FTA_LoadOrder_ID) WHERE lo.FTA_LoadOrder_ID = " + getFTA_LoadOrder_ID();
		//
		int no = DB.executeUpdate(sql, get_TrxName());
		if (no != 1)
			log.warning("(1) #" + no);
		return no == 1;
	}	//	updateHeaderTax

}
