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

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.model.MUOMConversion;
import org.compiere.model.X_C_Invoice;
import org.compiere.print.ReportCtl;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTALoadOrder;
import org.spin.model.MFTALoadOrderLine;
import org.spin.model.MFTARecordWeight;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class GenerateInvoiceLoadOrder extends SvrProcess {


	/** Document Type						*/
	private int 				p_C_DocTypeInvoice_ID 	= 0;
	/** DateInvoiced 						*/
	private Timestamp 			p_DateInvoiced			= null;	
	/**	Document Action						*/
	private String				p_DocAction				= null;
	/**	Current Order						*/
	private int 				m_Current_BPartner_ID	= 0;
	/**	Parent Instance						*/
	private int 				m_Parent_Instance_ID 	= 0;
	/**	Current Invoice						*/
	private MInvoice 			m_Current_Invoice		= null;
	/** Sql									*/
	private StringBuffer 		sql 					= new StringBuffer();
	/** Created Records						*/
	private int 				m_Created 				= 0;
	/**	Print Document						*/
	private ArrayList<Integer>	m_IDs					= new ArrayList<Integer>();
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("C_DocTypeInvoice_ID"))
				p_C_DocTypeInvoice_ID = para.getParameterAsInt();
			else if (name.equals("DateInvoiced"))
				p_DateInvoiced =  (Timestamp) para.getParameter();
			else if (name.equals("DocAction"))
				p_DocAction =  (String) para.getParameter();
			else if(name.equals("Parent_Instance_ID"))
					m_Parent_Instance_ID = para.getParameterAsInt();
		}
		//	
		if(m_Parent_Instance_ID == 0)
			m_Parent_Instance_ID = getAD_PInstance_ID();
		//	SQL
		sql.append("Select "
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
					+ " tsb.C_Tax_ID "
					+ " FROM T_Selection ts "
					+ " Inner Join ( "
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
						+ " 	Max(Case When tsb.ColumnName = 'GI_C_Tax_ID' Then tsb.Value_Number Else Null End) As C_Tax_ID"
						+ " From T_Selection_Browse tsb "
						+ " Group By tsb.AD_PInstance_ID, tsb.T_Selection_ID"
						+ ") tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID "
					+ " Inner Join FTA_LoadOrderLine lord ON(lord.FTA_LoadOrderLine_ID = ts.T_Selection_ID) "
					+ " Inner Join C_OrderLine oline ON(oline.C_OrderLine_ID = lord.C_OrderLine_ID) "
						+ " Where ts.AD_PInstance_ID=? "
						+ " Order By tsb.C_BPartner_ID, oline.Line");
		log.fine(sql.toString());
	}

	@Override
	protected String doIt() throws Exception {
		if (p_DateInvoiced == null)
			p_DateInvoiced = Env.getContextAsDate(getCtx(), "#Date");
		//	Valid Parameter Document Action
		if (p_DocAction == null)
			throw new AdempiereUserError("@DocAction@ @NotFound@");
		//	Return
		return createInvoices();
	}

	/**
	 * Create Invoice From Liquidations
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 03/11/2013, 18:59:49
	 * @contributhor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 2014-12-08, 22:42:18
	 * @return
	 * @return String
	 */
	private String createInvoices(){
		PreparedStatement ps = null;
		ResultSet rs = null;
		StringBuffer msg = new StringBuffer();
		try{
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, m_Parent_Instance_ID);
			rs = ps.executeQuery();
			//	
			while(rs.next()) {
				int m_C_Order_ID = rs.getInt("C_Order_ID");
				//	Valid Purchase Order and Business Partner
				if(m_C_Order_ID == 0)
					throw new AdempiereException("@C_Order_ID@ @NotFound@");
				//Load Order From Farming
				MOrder order = new MOrder(getCtx(), m_C_Order_ID, get_TrxName());				
				int m_C_BPartner_ID = order.getC_BPartner_ID();
				BigDecimal m_Qty = rs.getBigDecimal("Qty");
				//
				if (m_Current_BPartner_ID != m_C_BPartner_ID) {
					//	Complete Previous Invoice
					completeInvoice();
					m_Current_BPartner_ID = m_C_BPartner_ID;
					//Create Invoice From Order
					m_Current_Invoice = new MInvoice(order, p_C_DocTypeInvoice_ID, p_DateInvoiced);
					m_Current_Invoice.setDateAcct(p_DateInvoiced);
					//	Set DocStatus
					m_Current_Invoice.setDocStatus(X_C_Invoice.DOCSTATUS_Drafted);
					m_Current_Invoice.saveEx(get_TrxName());
					//	Initialize Message
					if(msg.length() > 0)
						msg.append(" - " + m_Current_Invoice.getDocumentNo());
					else
						msg.append(m_Current_Invoice.getDocumentNo());		
				}
				//Invoiced Created?
				if (m_Current_Invoice != null){
					//	Get Values from Result Set
					int m_FTA_LoadOrderLine_ID 	= rs.getInt("FTA_LoadOrderLine_ID");
					
					//Get Lines From Load Order
					MFTALoadOrderLine line = new MFTALoadOrderLine(getCtx(), 
							m_FTA_LoadOrderLine_ID, get_TrxName());
					
					MInvoiceLine invoiceLine = new MInvoiceLine(getCtx(), 0, get_TrxName());
					//	Get Product
					MProduct product = MProduct.get(getCtx(), line.getM_Product_ID());
					MOrderLine oLine = new MOrderLine(getCtx(), line.getC_OrderLine_ID(), get_TrxName());
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
					//	Set Values For Line
					invoiceLine.setC_OrderLine_ID(line.getC_OrderLine_ID());
					invoiceLine.setM_Product_ID(product.getM_Product_ID());
					invoiceLine.setC_UOM_ID(oLine.getC_UOM_ID());
					int m_FTA_LoadOrder_ID 	= rs.getInt("FTA_LoadOrder_ID");
					//	
					MFTALoadOrder m_FTA_LoadOrder = new MFTALoadOrder(getCtx(), 
							m_FTA_LoadOrder_ID, get_TrxName());
					//	
					if(m_FTA_LoadOrder.getOperationType().equals("DFP")) {
						invoiceLine.setQtyEntered(m_Qty.multiply(rate));
						invoiceLine.setQtyInvoiced(m_Qty);
					} else if(m_FTA_LoadOrder.getOperationType().equals("DBM")) {
						String sql = "SELECT FTA_RecordWeight_ID " +
								"FROM FTA_RecordWeight " +
								"WHERE DocStatus IN('CO', 'CL') " +
								"AND FTA_LoadOrder_ID= ?";
						//	
						int FTA_RecordWeight_ID = DB.getSQLValue(get_TrxName(), sql, m_FTA_LoadOrder_ID);
						//	Valid Record Weight
						if(FTA_RecordWeight_ID <= 0)
							throw new AdempiereException("@FTA_RecordWeight_ID@ @NotFound@");
						
						MFTARecordWeight m_RecordWeight = new MFTARecordWeight(getCtx(), FTA_RecordWeight_ID, get_TrxName());
						//	Get Rate for Weight
						BigDecimal rateWeight = MUOMConversion.getProductRateTo(Env.getCtx(), 
								product.getM_Product_ID(), m_RecordWeight.getC_UOM_ID());
						//	
						//	Validate Rate equals null
						if(rateWeight == null) {
							MUOM productUOM = MUOM.get(getCtx(), product.getC_UOM_ID());
							MUOM oLineUOM = MUOM.get(getCtx(), m_RecordWeight.getC_UOM_ID());
							throw new AdempiereException("@NoUOMConversion@ @from@ " 
											+ oLineUOM.getName() + " @to@ " + productUOM.getName());
						}
						//	
						BigDecimal m_QtyWeight = m_RecordWeight.getNetWeight();
						BigDecimal m_QtyInvoced = m_QtyWeight.multiply(rateWeight);
						BigDecimal m_QtyEntered = m_QtyInvoced.multiply(rate);
						
						invoiceLine.setQtyEntered(m_QtyEntered);
						invoiceLine.setQtyInvoiced(m_QtyInvoced);
						
					}	
					invoiceLine.setAD_Org_ID(m_Current_Invoice.getAD_Org_ID());
					invoiceLine.setPriceList(oLine.getPriceList());
					invoiceLine.setPriceEntered(oLine.getPriceEntered());
					invoiceLine.setPriceActual(oLine.getPriceActual());
					invoiceLine.setC_Tax_ID(oLine.getC_Tax_ID());
					invoiceLine.setC_Invoice_ID(m_Current_Invoice.getC_Invoice_ID());
					invoiceLine.save(get_TrxName());
					//	
					line.setC_InvoiceLine_ID(invoiceLine.getC_InvoiceLine_ID());
					line.saveEx();
					//	Change Load Order
					MFTALoadOrder lo = new MFTALoadOrder(getCtx(), 
							line.getFTA_LoadOrder_ID(), get_TrxName());
					lo.setIsInvoiced(true);
					lo.saveEx();
				}//End Invoice Line Created
			}//End Invoice Generated
			//	
			completeInvoice();
			commitEx();
			//	Print Documents
			printDocuments();
		}
		catch(Exception ex){
			rollback();
			return ex.getMessage();
		}
		finally{
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}
		//	Info
		return "@C_Invoice_ID@ @Created@ = "+ m_Created + " [" + msg.toString() + "]";
	}
	
	/**
	 * Print Invoices
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Feb 1, 2015, 12:29:09 PM
	 * @return void
	 */
	private void printDocuments() {
		for (int Record_ID : m_IDs) {
			ReportCtl.startDocumentPrint(ReportEngine.INVOICE, Record_ID, null, 0, true);
		}
	}
	
	/**
	 * Complete Invoice
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 8/12/2014, 22:49:19
	 * @return void
	 */
	private void completeInvoice(){
		if(m_Current_Invoice != null
				&& m_Current_Invoice.getDocStatus().equals(X_C_Invoice.DOCSTATUS_Drafted)) {
			m_Current_Invoice.setDocAction(p_DocAction);
			m_Current_Invoice.processIt(p_DocAction);
			m_Current_Invoice.saveEx();
			addLog(m_Current_Invoice.getC_Invoice_ID(), m_Current_Invoice.getDateAcct(), null,
					m_Current_Invoice.getDocumentNo() + 
					(m_Current_Invoice.getProcessMsg() != null && m_Current_Invoice.getProcessMsg().length() !=0
					? ": Error " + m_Current_Invoice.getProcessMsg()
							:" --> @OK@"));
			//	Created
			m_Created ++;
			//	Is Printed?
			if(m_Current_Invoice.getDocStatus().equals(X_C_Invoice.DOCSTATUS_Completed)) {
				m_IDs.add(m_Current_Invoice.getC_Invoice_ID());
			}
		}
	}
}
