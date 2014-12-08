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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.Query;
import org.compiere.model.X_C_Invoice;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTALoadOrder;
import org.spin.model.MFTALoadOrderLine;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class GenerateInvoiceLoadOrder extends SvrProcess {


	/** Document Type						*/
	private int 				p_C_DocTypeTarget_ID 	= 0;
	/** DateInvoiced 						*/
	private Timestamp 			p_DateInvoiced			= null;	
	/**	Document Action						*/
	private String				p_DocAction				= null;
	/**	Current Order						*/
	private int 				m_Current_Order_ID		= 0;
	/**	Current Invoice						*/
	private MInvoice 			m_Current_Invoice		= null;
	/** Sql									*/
	private StringBuffer 		sql 					= new StringBuffer();
	/** Created Records						*/
	private int 				m_Created 				= 0;

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
			else if (name.equals("DateInvoiced"))
				p_DateInvoiced =  (Timestamp) para.getParameter();
			else if (name.equals("DocAction"))
				p_DocAction =  (String) para.getParameter();
		}
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
						+ " Where ts.AD_PInstance_ID=? "
						+ " Order By tsb.C_Order_ID");
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
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			//	
			while(rs.next()) {
				int m_C_Order_ID = rs.getInt("C_Order_ID");
				//	
				if (m_Current_Order_ID != m_C_Order_ID) {
					//	Complete Previous Invoice
					completeInvoice();
					m_Current_Order_ID = m_C_Order_ID;
					//	Valid Purchase Order and Business Partner
					if(m_C_Order_ID == 0)
						throw new AdempiereException("@C_Order_ID@ @NotFound@");
					//Load Order From Farming
					MOrder order = new MOrder(getCtx(), m_Current_Order_ID, get_TrxName());
					//Create Invoice From Order
					m_Current_Invoice = new MInvoice(order, p_C_DocTypeTarget_ID, p_DateInvoiced);
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
					List<MFTALoadOrderLine> lines = new Query(getCtx(), MFTALoadOrderLine.Table_Name, "FTA_LoadOrderLine_ID = ?",get_TrxName())
							.setOnlyActiveRecords(true)
							.setParameters(m_FTA_LoadOrderLine_ID)
							.list();
					
					//Create Invoice Lines From Order
					for (MFTALoadOrderLine line : lines) {
						MInvoiceLine invoiceLine = new MInvoiceLine(getCtx(), 0, get_TrxName());
						//	Get Product
						MProduct product = MProduct.get(getCtx(), line.getM_Product_ID());
						MOrderLine oLine = new MOrderLine(getCtx(), line.getC_OrderLine_ID(), get_TrxName());
						//	Set Values For Line
						invoiceLine.setC_OrderLine_ID(line.getC_OrderLine_ID());
						invoiceLine.setM_Product_ID(product.getM_Product_ID());
						invoiceLine.setC_UOM_ID(product.getC_UOM_ID());
						invoiceLine.setQty(oLine.getQtyEntered());
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
					}
					
				}//End Invoice Line Created
			}//End Invoice Generated
			completeInvoice();
			commitEx();
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
	 * Complete Invoice
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 8/12/2014, 22:49:19
	 * @return void
	 */
	private void completeInvoice(){
		if(m_Current_Invoice != null
				&& m_Current_Invoice.getDocStatus().equals(X_C_Invoice.DOCSTATUS_Drafted)) {
			m_Current_Invoice.setDocAction(p_DocAction);
			m_Current_Invoice.processIt(X_C_Invoice.DOCACTION_Complete);
			m_Current_Invoice.saveEx();
			addLog(m_Current_Invoice.getC_Invoice_ID(), m_Current_Invoice.getDateAcct(), null,
					m_Current_Invoice.getDocumentNo() + 
					(m_Current_Invoice.getProcessMsg() != null && m_Current_Invoice.getProcessMsg().length() !=0
					? ": Error " + m_Current_Invoice.getProcessMsg()
							:" --> @OK@"));
			//	Created
			m_Created ++;
		}
	}
}
