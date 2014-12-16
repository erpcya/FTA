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
	
	/**
	 * Valid if Exceeded Quantity
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/01/2014, 17:47:56
	 * @return
	 * @return String
	 */
	public String validExcedeed(){
		BigDecimal res = DB.getSQLValueBD(get_TrxName(), "SELECT ol.QtyOrdered - SUM(COALESCE(lol.ConfirmedQty, lol.Qty)) " +
				"FROM C_OrderLine ol " +
				"LEFT JOIN FTA_LoadOrderLine lol ON(lol.C_OrderLine_ID = ol.C_OrderLine_ID) " +
				"LEFT JOIN FTA_LoadOrder lo ON(lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID) " +
				"WHERE (lo.DocStatus IS NULL OR lo.DocStatus NOT IN('VO', 'RE', 'CL')) " +
				"AND ol.C_OrderLine_ID = ? " +
				"AND lol.FTA_LoadOrder_ID <> " + getFTA_LoadOrder_ID() + " " +
				"GROUP BY ol.C_OrderLine_ID", getC_OrderLine_ID());
		//	
		if(res == null)
			return null;
		//	Valid
		if(res.subtract(getQty()).signum() < 0){
			MProduct product = MProduct.get(getCtx(), getM_Product_ID());
			return "@Qty@ > (@QtyOrdered@ - @QtyDelivered@) " +
					"@SeqNo@:" + getSeqNo() + " " +
					"@M_Product_ID@:\"" + product.getValue() + " - " + product.getName() + "\" " + 
					"@Difference@=" + res.subtract(getQty());
		}
		//	
		return null;
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
	private boolean updateHeader(){
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
