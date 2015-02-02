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
import java.util.ArrayList;

import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.X_M_Movement;
import org.compiere.print.ReportCtl;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.eevolution.model.MDDOrder;
import org.eevolution.model.MDDOrderLine;
import org.spin.model.MFTALoadOrder;
import org.spin.model.MFTALoadOrderLine;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class GenerateMovementLoadOrder extends SvrProcess {

	/** Document Type						*/
	private int 				p_C_DocTypeTarget_ID 			= 0;
	/** DateInvoiced 						*/
	private Timestamp 			p_MovementDate					= null;	
	/**	Document Action						*/
	private String				p_DocAction						= null;
	/** Sql									*/
	private StringBuffer 		sql 							= new StringBuffer();
	/** Current Business Partner 			*/
	private int 				m_Current_BPartner_ID 			= 0;
	/**	Current Shipment					*/
	private MMovement			m_Current_Movement 				= null;
	/** Created Records						*/
	private int 				m_Created 						= 0;
	/**	Is Immediate Delivery				*/
	private boolean				m_Current_IsImmediateDelivery 	= false;
	/**	Print Document						*/
	private ArrayList<Integer>	m_IDs							= new ArrayList<Integer>();
	
	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
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
					+ " tsb.DD_Order_ID,"
					+ " tsb.FTA_LoadOrder_ID,"
					+ " tsb.PriceEntered,"
					+ " tsb.PriceList,"
					+ " tsb.PriceActual,"
					+ " tsb.C_Tax_ID,"
					+ " tsb.OperationType, "
					+ " ol.AD_Org_ID, "
					+ " l.M_Warehouse_ID "
					+ " FROM T_Selection ts "
					+ " INNER JOIN ( "
						+ " Select  tsb.AD_PInstance_ID, tsb.T_Selection_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'MLO_C_BPartner_ID' Then tsb.Value_Number Else Null End) As C_BPartner_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'MLO_DateDoc' Then tsb.Value_Date Else Null End) As DateDoc, "
						+ " 	Max(Case When tsb.ColumnName = 'MLO_M_Product_ID' Then tsb.Value_Number Else Null End) As M_Product_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'MLO_FTA_LoadOrder_ID' Then tsb.Value_Number Else Null End) As FTA_LoadOrder_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'MLO_Qty' Then tsb.Value_Number Else Null End) As Qty,"
						+ " 	Max(Case When tsb.ColumnName = 'MLO_PriceActual' Then tsb.Value_Number Else Null End) As PriceActual,"
						+ " 	Max(Case When tsb.ColumnName = 'MLO_PriceEntered' Then tsb.Value_Number Else Null End) As PriceEntered,"
						+ " 	Max(Case When tsb.ColumnName = 'MLO_PriceList' Then tsb.Value_Number Else Null End) As PriceList,"
						+ " 	Max(Case When tsb.ColumnName = 'MLO_DD_Order_ID' Then tsb.Value_Number Else Null End) As DD_Order_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'MLO_C_Tax_ID' Then tsb.Value_Number Else Null End) As C_Tax_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'MLO_OperationType' Then tsb.Value_String Else Null End) As OperationType"
						+ " FROM T_Selection_Browse tsb "
						+ " GROUP BY tsb.AD_PInstance_ID, tsb.T_Selection_ID"
						+ ") tsb ON(ts.AD_PInstance_ID = tsb.AD_PInstance_ID AND ts.T_Selection_ID = tsb.T_Selection_ID)"
					+ " INNER JOIN FTA_LoadOrderLine lol ON(lol.FTA_LoadOrderLine_ID = ts.T_Selection_ID)"
					+ " INNER JOIN DD_OrderLine ol ON(ol.DD_OrderLine_ID = lol.DD_OrderLine_ID)"
					+ " INNER JOIN M_Locator l ON(l.M_Locator_ID = ol.M_Locator_ID)"
					+ " WHERE ts.AD_PInstance_ID = ?"
					+ " ORDER BY tsb.C_BPartner_ID, l.M_Warehouse_ID");
		log.fine(sql.toString());
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		//	Valid Parameter Movement Date
		if (p_MovementDate == null)
			p_MovementDate = Env.getContextAsDate(getCtx(), "#Date");
		//	Valid Document Type Target
		if(p_C_DocTypeTarget_ID <= 0)
			throw new AdempiereUserError("@C_DocTypeTarget_ID@ @NotFound@");
		//	Valid Parameter Document Action
		if (p_DocAction == null)
			throw new AdempiereUserError("@DocAction@ @NotFound@");
		//	Return 
		return createMovements();
	}


	/**
	 * Create Shipments
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 21/11/2014, 11:05:00
	 * @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 2014-11-26, 22:18:08
	 * <li> Improvement in method
	 * @return
	 * @return String
	 */
	private String createMovements(){
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
				int m_DD_Order_ID 		= rs.getInt("DD_Order_ID");
				//	Create Order
				MDDOrder order = new MDDOrder(getCtx(), m_DD_Order_ID, get_TrxName());
				//	
				if (m_Current_BPartner_ID != m_C_BPartner_ID) {
					//	Complete Previous Shipment
					completeMovement();
					//	Initialize Order and 
					m_Current_BPartner_ID 	= m_C_BPartner_ID;
					//	Create Movement
					m_Current_Movement = new MMovement(getCtx(), 0, get_TrxName());
					//	
					m_Current_Movement.setC_DocType_ID(p_C_DocTypeTarget_ID);
					m_Current_Movement.setDateReceived(p_MovementDate);
					//	Set Organization
					m_Current_Movement.setAD_Org_ID(order.getAD_Org_ID());
					m_Current_Movement.setDD_Order_ID(m_DD_Order_ID);
					if(order.getC_BPartner_ID() > 0) {
						m_Current_Movement.setC_BPartner_ID(order.getC_BPartner_ID());
						m_Current_Movement.setC_BPartner_Location_ID(order.getC_BPartner_Location_ID());
						m_Current_Movement.saveEx();
					}
					m_Current_Movement.saveEx();
					//	
					m_Created++;
					//	Initialize Message
					if(msg.length() > 0)
						msg.append(" - " + m_Current_Movement.getDocumentNo());
					else
						msg.append(m_Current_Movement.getDocumentNo());				
				}
				//	Shipment Created?
				if (m_Current_Movement != null) {
					//	Get Values from Result Set
					int m_FTA_LoadOrderLine_ID 	= rs.getInt("FTA_LoadOrderLine_ID");
					BigDecimal m_Qty 			= rs.getBigDecimal("Qty");
					//	Valid Null
					if(m_Qty == null)
						m_Qty = Env.ZERO;
					//	Instance MLoadOrderLine
					MFTALoadOrderLine m_FTA_LoadOrderLine = 
							new MFTALoadOrderLine(getCtx(), m_FTA_LoadOrderLine_ID, get_TrxName());
					
					MDDOrderLine m_DD_OrderLine =(MDDOrderLine) m_FTA_LoadOrderLine.getDD_OrderLine();
					MMovementLine m_MovementLine = new MMovementLine(m_Current_Movement);
					//	Reference
					m_MovementLine.setM_Movement_ID(m_Current_Movement.getM_Movement_ID());
					m_MovementLine.setDD_OrderLine_ID(m_DD_OrderLine.getDD_OrderLine_ID());
					//	Set Product
					m_MovementLine.setM_Product_ID(m_FTA_LoadOrderLine.getM_Product_ID());
					m_MovementLine.setM_Locator_ID(m_DD_OrderLine.getM_Locator_ID());
					m_MovementLine.setM_LocatorTo_ID(m_DD_OrderLine.getM_LocatorTo_ID());
					if(m_DD_OrderLine.getM_AttributeSetInstance_ID() > 0)
						m_MovementLine.setM_AttributeSetInstance_ID(m_DD_OrderLine.getM_AttributeSetInstance_ID());
					if(m_DD_OrderLine.getM_AttributeSetInstanceTo_ID() > 0)
						m_MovementLine.setM_AttributeSetInstanceTo_ID(m_DD_OrderLine.getM_AttributeSetInstanceTo_ID());
					m_MovementLine.setMovementQty(m_Qty);
					m_MovementLine.saveEx();
					m_FTA_LoadOrderLine.setM_MovementLine_ID(m_MovementLine.getM_MovementLine_ID());
					m_FTA_LoadOrderLine.setConfirmedQty(m_Qty);
					m_FTA_LoadOrderLine.saveEx();
					//	Instance MFTALoadOrder
					MFTALoadOrder lo = new MFTALoadOrder(getCtx(), 
							m_FTA_LoadOrderLine.getFTA_LoadOrder_ID(), get_TrxName());
					//	Set true Is Delivered and Is Weight Register
					lo.setIsMoved(true);
					//	Save
					lo.saveEx(get_TrxName());
					//	Set Current Delivery
					m_Current_IsImmediateDelivery = lo.isImmediateDelivery();
					//	
				}	//End Invoice Line Created
			}	//	End Invoice Generated
			//	Complete Shipment
			completeMovement();
			//	Commit Transaction
			commitEx();
			//	Print Documents
			printDocuments();
			//	
		} catch(Exception ex) {
			rollback();
			return ex.getMessage();
		} finally {
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}
		//	Info
		return "@M_Movement_ID@ @Created@ = "+ m_Created + " [" + msg.toString() + "]";
	}
	
	/**
	 * Print Document
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Feb 2, 2015, 9:05:06 AM
	 * @return void
	 */
	private void printDocuments() {
		for (int Record_ID : m_IDs) {
			ReportCtl.startDocumentPrint(ReportEngine.SHIPMENT, Record_ID, null, 0, true);
		}
	}
	
	/**
	 * Complete Document
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martine</a> 21/11/2014, 11:09:54
	 * @contributor <a href="yamelsenih@gmail.com">Yamel Senih</a> 2014-11-26 22:44:32
	 * @return void
	 */
	private void completeMovement(){
		if(m_Current_Movement != null
				&& m_Current_Movement.getDocStatus().equals(X_M_Movement.DOCSTATUS_Drafted)) {
			m_Current_Movement.setDocAction(p_DocAction);
			m_Current_Movement.processIt(p_DocAction);
			m_Current_Movement.saveEx();
			addLog(m_Current_Movement.getM_Movement_ID(), m_Current_Movement.getDateReceived(), null,
					m_Current_Movement.getDocumentNo() + 
					(m_Current_Movement.getProcessMsg() != null && m_Current_Movement.getProcessMsg().length() !=0
					? ": Error " + m_Current_Movement.getProcessMsg()
							:" --> @OK@"));
			//	Created
			m_Created ++;
			//	Is Printed?
			if(m_Current_Movement.getDocStatus().equals(X_M_Movement.DOCSTATUS_Completed)
					&& m_Current_IsImmediateDelivery) {
				m_IDs.add(m_Current_Movement.getM_Movement_ID());
			}
		}
	}
}
