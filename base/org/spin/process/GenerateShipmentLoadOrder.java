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
package org.spin.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.model.MUOMConversion;
import org.compiere.model.MWarehouse;
import org.compiere.model.X_M_InOut;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTALoadOrder;
import org.spin.model.MFTALoadOrderLine;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 2014-11-26, 22:11:39
 * <li> Improvements with parameters
 *
 */
public class GenerateShipmentLoadOrder extends SvrProcess {


	/** Document Type						*/
	private int 				p_C_DocTypeTarget_ID 	= 0;
	/** DateInvoiced 						*/
	private Timestamp 			p_MovementDate			= null;	
	/**	Document Action						*/
	private String				p_DocAction				= null;
	/** Sql									*/
	private StringBuffer 		sql 					= new StringBuffer();
	/** Current Warehouse 					*/
	private int 				m_Current_Warehouse_ID	= 0;
	/** Current Business Partner 			*/
	private int 				m_Current_BPartner_ID 	= 0; 
	/**	Current Shipment					*/
	private MInOut				m_Current_Shipment 		= null;
	/** Created Records						*/
	private int 				m_Created 				= 0;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if (name.equals("MovementDate"))
				p_MovementDate =  (Timestamp) para.getParameter();
			else if (name.equals("DocAction"))
				p_DocAction =  (String) para.getParameter();
		}
		//	Sql
		sql.append("SELECT "
					+ "	ts.AD_PInstance_ID, "
					+ " ts.T_Selection_ID As FTA_LoadOrderLine_ID, "
					+ " tsb.C_BPartner_ID, "
					+ " tsb.DateDoc, "
					+ " tsb.M_Product_ID, "
					+ " tsb.Qty, "
					+ " tsb.C_Order_ID,"
					+ " tsb.FTA_LoadOrder_ID,"
					+ " tsb.PriceEntered,"
					+ " tsb.PriceList,"
					+ " tsb.PriceActual,"
					+ " tsb.C_Tax_ID,"
					+ " tsb.OperationType, "
					+ " ol.AD_Org_ID, "
					+ " ol.M_Warehouse_ID "
					+ " FROM T_Selection ts "
					+ " INNER JOIN ( "
						+ " Select  tsb.AD_PInstance_ID, tsb.T_Selection_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_C_BPartner_ID' Then tsb.Value_Number Else Null End) As C_BPartner_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_DateDoc' Then tsb.Value_Date Else Null End) As DateDoc, "
						+ " 	Max(Case When tsb.ColumnName = 'GI_M_Product_ID' Then tsb.Value_Number Else Null End) As M_Product_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_FTA_LoadOrder_ID' Then tsb.Value_Number Else Null End) As FTA_LoadOrder_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_Qty' Then tsb.Value_Number Else Null End) As Qty,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_PriceActual' Then tsb.Value_Number Else Null End) As PriceActual,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_PriceEntered' Then tsb.Value_Number Else Null End) As PriceEntered,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_PriceList' Then tsb.Value_Number Else Null End) As PriceList,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_C_Order_ID' Then tsb.Value_Number Else Null End) As C_Order_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_C_Tax_ID' Then tsb.Value_Number Else Null End) As C_Tax_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_OperationType' Then tsb.Value_String Else Null End) As OperationType"
						+ " FROM T_Selection_Browse tsb "
						+ " GROUP BY tsb.AD_PInstance_ID, tsb.T_Selection_ID"
						+ ") tsb ON(ts.AD_PInstance_ID = tsb.AD_PInstance_ID AND ts.T_Selection_ID = tsb.T_Selection_ID)"
					+ " INNER JOIN FTA_LoadOrderLine lol ON(lol.FTA_LoadOrderLine_ID = ts.T_Selection_ID)"
					+ " INNER JOIN C_OrderLine ol ON(ol.C_OrderLine_ID = lol.C_OrderLine_ID)"
					+ " WHERE ts.AD_PInstance_ID = ?"
					+ " ORDER BY tsb.C_BPartner_ID, ol.M_Warehouse_ID");
		log.fine(sql.toString());
	}

	@Override
	protected String doIt() throws Exception {
		//	Valid Parameter Movement Date
		if (p_MovementDate == null)
			p_MovementDate = Env.getContextAsDate(getCtx(), "#Date");
		//	Valid Parameter Document Action
		if (p_DocAction == null)
			throw new AdempiereUserError("@DocAction@ @NotFound@");
		//	Return 
		return createShipments();
	}

	/**
	 * Create Shipments
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 21/11/2014, 11:05:00
	 * @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 2014-11-26, 22:18:08
	 * <li> Improvement in method
	 * @return
	 * @return String
	 */
	private String createShipments(){
		PreparedStatement ps = null;
		ResultSet rs = null;
		StringBuffer msg = new StringBuffer();
		try{
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			//	
			while(rs.next()){
				//	Valid Document Order and Business Partner
				int m_C_BPartner_ID 	= rs.getInt("C_BPartner_ID");
				int m_M_Warehouse_ID 	= rs.getInt("M_Warehouse_ID");
				int m_C_Order_ID 		= rs.getInt("C_Order_ID");
				//	
				if (m_Current_BPartner_ID != m_C_BPartner_ID
						|| m_Current_Warehouse_ID != m_M_Warehouse_ID) {
					//	Complete Previous Shipment
					completeShipment();
					//	Initialize Order and 
					m_Current_Warehouse_ID 	= m_M_Warehouse_ID;
					m_Current_BPartner_ID 	= m_C_BPartner_ID;
					//	Get Warehouse
					MWarehouse warehouse = MWarehouse.get(getCtx(), m_Current_Warehouse_ID, get_TrxName());
					//	Valid Purchase Order and Business Partner
					if(m_C_Order_ID == 0)
						throw new AdempiereException("@C_Order_ID@ @NotFound@");
					if(m_Current_BPartner_ID == 0)
						throw new AdempiereException("@C_BPartner_ID@ @NotFound@");
					//	Create Order
					MOrder order = new MOrder(getCtx(), m_C_Order_ID, get_TrxName());
					//Create Shipment From Order
					m_Current_Shipment = new MInOut(order, p_C_DocTypeTarget_ID, p_MovementDate);
					m_Current_Shipment.setDateAcct(p_MovementDate);
					m_Current_Shipment.setAD_Org_ID(warehouse.getAD_Org_ID());
					m_Current_Shipment.setAD_OrgTrx_ID(warehouse.getAD_Org_ID());
					m_Current_Shipment.setC_BPartner_ID(m_Current_BPartner_ID);
					//	Set Warehouse
					m_Current_Shipment.setM_Warehouse_ID(m_Current_Warehouse_ID);
					m_Current_Shipment.setDocStatus(X_M_InOut.DOCSTATUS_Drafted);
					m_Current_Shipment.saveEx(get_TrxName());
					//	Initialize Message
					if(msg.length() > 0)
						msg.append(" - " + m_Current_Shipment.getDocumentNo());
					else
						msg.append(m_Current_Shipment.getDocumentNo());					
				}
				//	Shipment Created?
				if (m_Current_Shipment != null) {
					//	Get Values from Result Set
					int m_FTA_LoadOrderLine_ID 	= rs.getInt("FTA_LoadOrderLine_ID");
					int m_M_Product_ID 			= rs.getInt("M_Product_ID");
					BigDecimal m_Qty 			= rs.getBigDecimal("Qty");
					//	Valid Null
					if(m_Qty == null)
						m_Qty = Env.ZERO;
					//	Instance MLoadOrderLine
					MFTALoadOrderLine m_FTA_LoadOrderLine = 
							new MFTALoadOrderLine(getCtx(), m_FTA_LoadOrderLine_ID, get_TrxName());
					//	Create Shipment Line
					MInOutLine shipmentLine = 
							new MInOutLine(getCtx(), 0, get_TrxName());
					//	Get Order Line
					MOrderLine oLine = (MOrderLine) m_FTA_LoadOrderLine.getC_OrderLine();
					//	Instance MProduct
					MProduct product = MProduct.get(getCtx(), m_M_Product_ID);
					//	Rate Convert
					BigDecimal rate = MUOMConversion.getProductRateTo(Env.getCtx(), 
							product.getM_Product_ID(), oLine.getC_UOM_ID());
					//	Validate Rate equals null
					if(rate == null) {
						MUOM productUOM = MUOM.get(getCtx(), product.getC_UOM_ID());
						MUOM oLineUOM = MUOM.get(getCtx(), oLine.getC_UOM_ID());
						throw new AdempiereException("@NoUOMConversion@ @from@ " 
										+ oLineUOM.getName() + " @to@ " + productUOM.getName());
					}
					//	Set Values for Lines
					shipmentLine.setAD_Org_ID(m_Current_Shipment.getAD_Org_ID());
					shipmentLine.setM_InOut_ID(m_Current_Shipment.getM_InOut_ID());
					//	Quantity and Product
					shipmentLine.setM_Product_ID(product.getM_Product_ID());
					shipmentLine.setM_Warehouse_ID(m_Current_Shipment.getM_Warehouse_ID());
					//	References
					shipmentLine.setC_OrderLine_ID(m_FTA_LoadOrderLine.getC_OrderLine_ID());
					//	Quantity
					shipmentLine.setC_UOM_ID(oLine.getC_UOM_ID());
					shipmentLine.setQty(m_Qty);
					shipmentLine.setQtyEntered(m_Qty.multiply(rate));
					shipmentLine.setM_Locator_ID(m_Qty);
					//	Save Line
					shipmentLine.saveEx(get_TrxName());
					
					//	Manually Process Shipment
					m_FTA_LoadOrderLine.setConfirmedQty(m_Qty);
					m_FTA_LoadOrderLine.setM_InOutLine_ID(shipmentLine.get_ID());
					m_FTA_LoadOrderLine.saveEx();
					//	Instance MFTALoadOrder
					MFTALoadOrder lo = new MFTALoadOrder(getCtx(), 
							m_FTA_LoadOrderLine.getFTA_LoadOrder_ID(), get_TrxName());
					//	Set true Is Delivered and Is Weight Register
					lo.setIsDelivered(true);
					//	Save
					lo.saveEx(get_TrxName());
					
				}	//End Invoice Line Created
			}	//	End Invoice Generated
			//	Complete Shipment
			completeShipment();
			//	Commit Transaction
			commitEx();
		} catch(Exception ex) {
			rollback();
			return ex.getMessage();
		} finally {
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}
		//	Info
		return "@M_InOut_ID@ @Created@ = "+ m_Created + " [" + msg.toString() + "]";
	}
	
	/**
	 * Complete Document
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martine</a> 21/11/2014, 11:09:54
	 * @contributor <a href="yamelsenih@gmail.com">Yamel Senih</a> 2014-11-26 22:44:32
	 * @return void
	 */
	private void completeShipment(){
		if(m_Current_Shipment != null
				&& m_Current_Shipment.getDocStatus().equals(X_M_InOut.DOCSTATUS_Drafted)) {
			m_Current_Shipment.setDocAction(p_DocAction);
			m_Current_Shipment.processIt(p_DocAction);
			m_Current_Shipment.saveEx();
			addLog(m_Current_Shipment.getM_InOut_ID(), m_Current_Shipment.getDateAcct(), null,
					m_Current_Shipment.getDocumentNo() + 
					(m_Current_Shipment.getProcessMsg() != null && m_Current_Shipment.getProcessMsg().length() !=0
					? ": Error " + m_Current_Shipment.getProcessMsg()
							:" --> @OK@"));
			//	Created
			m_Created ++;
		}
	}

}
