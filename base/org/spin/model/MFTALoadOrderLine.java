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
import java.util.Properties;

import org.compiere.model.MProduct;
import org.compiere.model.X_C_Order;
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
	public String validLine() {
		String errorMsg = null;
		//	Get Product
		MProduct product = MProduct.get(getCtx(), getM_Product_ID());
		//	Valid Weight and Volume
		if(product.getWeight() == null
				|| product.getWeight().doubleValue() <= 0) {
			return "@Weight@ = @0@ " +
					"@SeqNo@:" + getSeqNo() + " " +
					"@M_Product_ID@:\"" + product.getValue() + " - " + product.getName() + "\" ";
		} else if(product.getVolume() == null
				|| product.getVolume().doubleValue() <= 0) {
			return "@Volume@ = @0@ " +
					"@SeqNo@:" + getSeqNo() + " " +
					"@M_Product_ID@:\"" + product.getValue() + " - " + product.getName() + "\" ";
		}
		//	Valid Storage
		String sql = null;
		MFTALoadOrder m_LoadOrder = (MFTALoadOrder) getFTA_LoadOrder();
		if(m_LoadOrder.getOperationType()
				.equals(X_FTA_LoadOrder.OPERATIONTYPE_MaterialOutputMovement)) {
			sql = new String("SELECT ol.QtyOrdered, SUM(COALESCE(lol.ConfirmedQty, lol.Qty, 0)) QtyDelivered, " + 
					"SUM(s.QtyOnHand) QtyOnHand, o.DeliveryRule " +
					"FROM DD_Order o " + 
					"INNER JOIN DD_OrderLine ol ON(ol.DD_Order_ID = o.DD_Order_ID) " +
					"LEFT JOIN FTA_LoadOrderLine lol ON(lol.DD_OrderLine_ID = ol.DD_OrderLine_ID) " +
					"LEFT JOIN FTA_LoadOrder lo ON(lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID) " + 
					"LEFT JOIN " + 
					"	(SELECT st.M_Locator_ID, st.M_Product_ID, " +
					"		COALESCE(SUM(st.QtyOnHand), 0) QtyOnHand, COALESCE(st.M_AttributeSetInstance_ID, 0) M_AttributeSetInstance_ID " + 
					"	FROM M_Storage st " + 
					"	GROUP BY st.M_Locator_ID, st.M_Product_ID, st.M_AttributeSetInstance_ID) " + 
					"s ON(s.M_Product_ID = ol.M_Product_ID AND s.M_Locator_ID = ol.M_Locator_ID " + 
					"AND ol.M_AttributeSetInstance_ID = s.M_AttributeSetInstance_ID) " +
					"WHERE (lo.DocStatus IS NULL OR lo.DocStatus NOT IN('VO', 'RE', 'CL')) " +
					"AND ol.C_OrderLine_ID = ? " +
					"AND lol.FTA_LoadOrder_ID <> ? " +
					"GROUP BY ol.C_OrderLine_ID, o.DeliveryRule");
		} else {
			sql = new String("SELECT ol.QtyOrdered, SUM(COALESCE(lol.ConfirmedQty, lol.Qty, 0)) QtyDelivered, " + 
					"s.QtyOnHand, o.DeliveryRule " +
					"FROM C_Order o " + 
					"INNER JOIN C_OrderLine ol ON(ol.C_Order_ID = o.C_Order_ID) " +
					"LEFT JOIN FTA_LoadOrderLine lol ON(lol.C_OrderLine_ID = ol.C_OrderLine_ID) " +
					"LEFT JOIN FTA_LoadOrder lo ON(lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID) " + 
					"LEFT JOIN " + 
					"	(SELECT l.M_Warehouse_ID, st.M_Product_ID, " +
					"		COALESCE(SUM(st.QtyOnHand), 0) QtyOnHand, COALESCE(st.M_AttributeSetInstance_ID, 0) M_AttributeSetInstance_ID " + 
					"	FROM M_Storage st " + 
					"	INNER JOIN M_Locator l ON(l.M_Locator_ID = st.M_Locator_ID) " + 
					"	GROUP BY l.M_Warehouse_ID, st.M_Product_ID, st.M_AttributeSetInstance_ID) " + 
					"s ON(s.M_Product_ID = ol.M_Product_ID AND s.M_Warehouse_ID = ol.M_Warehouse_ID " + 
					"AND ol.M_AttributeSetInstance_ID = s.M_AttributeSetInstance_ID) " +
					"WHERE (lo.DocStatus IS NULL OR lo.DocStatus NOT IN('VO', 'RE', 'CL')) " +
					"AND ol.C_OrderLine_ID = ? " +
					"AND lol.FTA_LoadOrder_ID <> ? " +
					"GROUP BY ol.C_OrderLine_ID, s.QtyOnHand, o.DeliveryRule");
		}
		//	
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getC_OrderLine_ID());
			ps.setInt(2, getFTA_LoadOrder_ID());
			rs = ps.executeQuery();
			//	
			if(rs.next()) {
				BigDecimal m_QtyOrdered 	= rs.getBigDecimal("QtyOrdered");
				BigDecimal m_QtyDelivered 	= rs.getBigDecimal("QtyDelivered");
				BigDecimal m_QtyOnHand 		= rs.getBigDecimal("QtyOnHand");
				String m_DeliveryRule		= rs.getString("DeliveryRule");
				BigDecimal m_Qty			= getQty();
				//	Valid Quantity Ordered
				BigDecimal m_AvailableForOrder = m_QtyOrdered
						.subtract(m_QtyDelivered)
						.subtract(m_Qty);
				//	
				BigDecimal m_DiffQtyOnHand = m_QtyOnHand
						.subtract(m_QtyDelivered)
						.subtract(m_Qty);
				//	Valid Order vs Delivered
				if(m_AvailableForOrder.signum() < 0) {
					errorMsg = "@Qty@ > (@QtyOrdered@ - @QtyDelivered@) " +
							"@SeqNo@:" + getSeqNo() + " " +
							"@M_Product_ID@:\"" + product.getValue() + " - " + product.getName() + "\" " +
							"@Qty@=" + m_Qty.doubleValue() + " " + 
							"@QtyOrdered@=" + m_QtyOrdered.doubleValue() + " " +
							"@QtyDelivered@=" + m_QtyDelivered.doubleValue() + " " +
							"@Difference@=" + m_AvailableForOrder.doubleValue();
				} else if(m_DeliveryRule.equals(X_C_Order.DELIVERYRULE_Availability)
						&& m_DiffQtyOnHand.signum() < 0) {
					errorMsg = "(@Qty@ + @QtyDelivered@) > @QtyOnHand@ " +
							"@SeqNo@:" + getSeqNo() + " " +
							"@M_Product_ID@:\"" + product.getValue() + " - " + product.getName() + "\" " +
							"@QtyOnHand@=" + m_QtyOnHand.doubleValue() + " " +
							"@Qty@=" + m_Qty.doubleValue() + " " + 
							"@QtyOrdered@=" + m_QtyOrdered.doubleValue() + " " +
							"@QtyDelivered@=" + m_QtyDelivered.doubleValue() + " " +
							"@Difference@=" + m_DiffQtyOnHand.doubleValue();
				}
			}
		} catch(Exception ex) {
			log.severe("validExcedeed() Error: " + ex.getMessage());
		} finally {
			DB.close(rs, ps);
			rs = null; ps = null;
		}
		//	
		return errorMsg;
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
