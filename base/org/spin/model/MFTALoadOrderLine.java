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
				"INNER JOIN FTA_LoadOrderLine lol ON(lol.C_OrderLine_ID = ol.C_OrderLine_ID) " +
				"INNER JOIN FTA_LoadOrder lo ON(lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID) " +
				"WHERE lo.DocStatus NOT IN('VO', 'RE') " +
				"AND ol.C_OrderLine_ID = ? " +
				"AND lol.FTA_LoadOrder_ID <> " + getFTA_LoadOrder_ID() + " " +
				"GROUP BY ol.C_OrderLine_ID", getC_OrderLine_ID());
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
		return null;
	}

}
