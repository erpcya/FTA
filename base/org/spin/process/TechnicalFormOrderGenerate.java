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
package org.spin.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MUOMConversion;
import org.compiere.model.X_C_Invoice;
import org.compiere.model.X_C_Order;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.MFTAFarming;
import org.spin.model.MFTAProductsToApply;
import org.spin.model.MFTATechnicalForm;
import org.spin.model.MFTATechnicalFormLine;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class TechnicalFormOrderGenerate extends SvrProcess {
	/**	Document Date				*/
	private Timestamp 	p_DateDoc = null;
	/**	Document Type Target		*/
	private int 		p_C_DocTypeTarget_ID = 0;
	/**	Document Action				*/
	private String 		p_DocAction = null;
	/**	Technical Form				*/
	private int 		p_FTA_TechnicalForm_ID = 0;
	/**	Price List					*/
	private int 		p_M_PriceList_ID = 0;
	/**	Warehouse					*/
	private int 		p_M_Warehouse_ID = 0;
	/**	Distinct Order By Warehouse	*/
	private boolean 	p_DistinctOrderByWarehouse = false;
	/**	Order						*/
	private MOrder		m_Order = null;
	/**	Default Credit				*/
	private int 		m_DefaultFarmerCredit_ID = 0;
	/**	Current Credit				*/
	private int 		m_CurrentFarmerCredit_ID = 0;
	/**	Current Warehouse			*/
	private int 		m_CurrentWarehouse_ID = 0;
	/**	Generated					*/
	private int 		m_Created = 0;
	//	Dixon Martinez 08-05-2014
	//	Add Support Generate Invoiced of Technical Form
	/**	Generate Invoice 			*/
	private boolean 	p_GenerateInvoiced		= 	false;
	/**	Invoice						*/
	private MInvoice m_Invoice 					=	null;
	
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
			else if(name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if(name.equals("DocAction"))
				p_DocAction = para.getParameter().toString();
			else if(name.equals("M_PriceList_ID"))
				p_M_PriceList_ID = para.getParameterAsInt();
			else if(name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if(name.equals("DistinctOrderByWarehouse"))
				p_DistinctOrderByWarehouse = para.getParameterAsBoolean();
			//	Dixon Martinez 08-05-2014
			//	Add Support Generate Invoiced of Technical Form
			else if(name.equals("GenerateInvoice"))
				p_GenerateInvoiced = para.getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			//	End Dixon Martinez
		}
		//	Get Technical From Identifier
		p_FTA_TechnicalForm_ID = getRecord_ID();
		
	}

	@Override
	protected String doIt() throws Exception {
		if(p_C_DocTypeTarget_ID == 0)
			return "@C_DocTypeTarget_ID@ @NotFound@";
		if(p_DocAction == null)
			return "@DocAction@ @NotFound@";
		if(p_FTA_TechnicalForm_ID == 0)
			return "@FTA_TechnicalForm_ID@ @NotFound@";
		if(p_M_PriceList_ID == 0)
			return "@M_PriceList_ID@ @NotFound@";
		
		MFTATechnicalForm m_TechnicalForm = new MFTATechnicalForm(getCtx(), p_FTA_TechnicalForm_ID, get_TrxName());
		//	Valid Generated
		int order_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(o.C_Order_ID) " +
				"FROM C_Order o " +
				"WHERE o.DocStatus NOT IN('VO', 'RE') " +
				"AND o.IsSOTrx = 'Y' " +
				"AND o.FTA_TechnicalForm_ID = ?", m_TechnicalForm.getFTA_TechnicalForm_ID());		
		if(m_TechnicalForm.getGenerateOrder() != null
				&& m_TechnicalForm.getGenerateOrder().equals("Y")
				&& order_ID > 0)
			return "";
		//	Get Default Farmer Credit
		m_DefaultFarmerCredit_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(fm.FTA_FarmerCredit_ID) " +
				"FROM FTA_TechnicalFormLine tfl " +
				"INNER JOIN FTA_Farming fm ON(fm.FTA_Farming_ID = tfl.FTA_Farming_ID) " +
				"WHERE tfl.FTA_TechnicalForm_ID = ?", m_TechnicalForm.getFTA_TechnicalForm_ID());
		
		
		String sql = new String("SELECT pa.* "
				+ "FROM FTA_ProductsToApply pa "
				+ "LEFT JOIN FTA_TechnicalFormLine tfl ON(tfl.FTA_TechnicalFormLine_ID = pa.FTA_TechnicalFormLine_ID) "
				+ "LEFT JOIN FTA_Farming fa ON(fa.FTA_Farming_ID = tfl.FTA_Farming_ID) "
				+ "LEFT JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = fa.FTA_FarmerCredit_ID) "
				+ "WHERE pa.FTA_TechnicalForm_ID = ? "
				+ "ORDER BY fc.FTA_FarmerCredit_ID, pa.M_Warehouse_ID");
		
		log.fine("SQL=" + sql);
		
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		//	
		pstmt.setInt(1, p_FTA_TechnicalForm_ID);
		ResultSet rs = pstmt.executeQuery();
		if(rs != null){
			while(rs.next()){
				MFTAProductsToApply pApply = new MFTAProductsToApply(getCtx(), rs, get_TrxName());
				log.fine("Product To Apply: " + pApply);
				//	Set Farmer Credit
				int m_FTA_FarmerCredit_ID = 0;
				MFTATechnicalFormLine m_TechnicalFormLine = MFTATechnicalFormLine.get(getCtx(), pApply.getFTA_TechnicalFormLine_ID());
				if(m_TechnicalFormLine != null
						&& m_TechnicalFormLine.getFTA_Farming() != null){
					MFTAFarming farming = MFTAFarming.get(getCtx(), m_TechnicalFormLine.getFTA_Farming_ID());
					m_FTA_FarmerCredit_ID = farming.getFTA_FarmerCredit_ID();					
				}
				
				//	Valid Credit
				if(m_Order == null
						|| (m_FTA_FarmerCredit_ID != 0 
								&& m_FTA_FarmerCredit_ID != m_CurrentFarmerCredit_ID)
						|| (p_DistinctOrderByWarehouse 
								&& pApply.getM_Warehouse_ID() != m_CurrentWarehouse_ID)){
					//	Complete Previous Order
					completeOrder();
					//	Check Warehouse
					if(!p_DistinctOrderByWarehouse){
						if(p_M_Warehouse_ID != 0)
							m_CurrentWarehouse_ID = p_M_Warehouse_ID;
						else
							m_CurrentWarehouse_ID = Env.getContextAsInt(getCtx(), "#M_Warehouse_ID");
					} else {
						if(pApply.getM_Warehouse_ID() != 0)
							m_CurrentWarehouse_ID = pApply.getM_Warehouse_ID();
						else if(p_M_Warehouse_ID != 0)
							m_CurrentWarehouse_ID = p_M_Warehouse_ID;
						else
							m_CurrentWarehouse_ID = Env.getContextAsInt(getCtx(), "#M_Warehouse_ID");
					}
					//	Create a New Order
					newOrder(m_TechnicalForm, m_FTA_FarmerCredit_ID);
				}
				//	Add Lines
				MProduct product = (MProduct) pApply.getM_Product();
				MOrderLine poLine = new MOrderLine (m_Order);
				//	Set Current Warehouse
				if(!p_DistinctOrderByWarehouse){
					if(pApply.getM_Warehouse_ID() != 0)
						m_CurrentWarehouse_ID = pApply.getM_Warehouse_ID();
					else if(p_M_Warehouse_ID != 0)
						m_CurrentWarehouse_ID = p_M_Warehouse_ID;
					else
						m_CurrentWarehouse_ID = Env.getContextAsInt(getCtx(), "#M_Warehouse_ID");
				}
				//	Set Warehouse
				poLine.setM_Warehouse_ID(m_CurrentWarehouse_ID);
				
				poLine.setProduct(product);
				
				int uom = pApply.getC_UOM_ID();
				
				poLine.setPrice();
				
				BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
						product.getM_Product_ID(), uom);
				
				if(rate == null)
					return "@NoUOMConversion@";

				//	Set Quantity
				poLine.setQtyEntered(pApply.getQty());
				poLine.setQtyOrdered(pApply.getQty().multiply(rate));
				//
				poLine.setC_UOM_ID(uom);
				
				poLine.saveEx();

			}
		}
		//	Close DB
		DB.close(rs, pstmt);
		//	Complete Last Order
		completeOrder();
		
		//	Update Status Generate Order
		m_TechnicalForm.setGenerateOrder("Y");
		m_TechnicalForm.saveEx();
		
		return "@Created@=" + m_Created;
	}
	
	/**
	 * Create a new order
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 03/10/2013, 12:19:47
	 * @param m_TechnicalForm
	 * @param pFTA_FarmerCredit_ID
	 * @return
	 * @return String
	 */
	private String newOrder(MFTATechnicalForm m_TechnicalForm, int pFTA_FarmerCredit_ID){
		m_Order = new MOrder (getCtx(), 0, get_TrxName());
		m_Order.setClientOrg(getAD_Client_ID(), m_TechnicalForm.getAD_Org_ID());
		m_Order.setIsSOTrx(false);
		
		m_Order.setC_DocTypeTarget_ID(p_C_DocTypeTarget_ID);
		m_Order.setIsSOTrx(true);
		
		m_Order.setDateAcct(p_DateDoc);
		m_Order.setDateOrdered(p_DateDoc);
		//
		//so.setDescription(getDescription());
		m_Order.setSalesRep_ID(m_TechnicalForm.getSalesRep_ID());
		//	Set Vendor
		MBPartner customer = MBPartner.get(getCtx(), m_TechnicalForm.getC_BPartner_ID());
		m_Order.setBPartner(customer);
		//	Set Warehouse
		m_Order.setM_Warehouse_ID(m_CurrentWarehouse_ID);
		
		m_Order.setM_PriceList_ID(p_M_PriceList_ID);
		
		//	Set Technical Form
		m_Order.set_ValueOfColumn("FTA_TechnicalForm_ID", p_FTA_TechnicalForm_ID);
		
		//	Set Farmer Credit
		if(pFTA_FarmerCredit_ID != 0){
			m_CurrentFarmerCredit_ID = pFTA_FarmerCredit_ID;
			m_Order.set_ValueOfColumn("FTA_FarmerCredit_ID", pFTA_FarmerCredit_ID);
		} else if(m_DefaultFarmerCredit_ID > 0){
			m_CurrentFarmerCredit_ID = m_DefaultFarmerCredit_ID;
			m_Order.set_ValueOfColumn("FTA_FarmerCredit_ID", m_DefaultFarmerCredit_ID);
			m_Order.setDescription(Msg.translate(getCtx(), "FTA_FarmerCredit_ID")
					+ " " + Msg.translate(getCtx(), "IsDefault"));
		}
			
		m_Order.saveEx();
		
		return null;
	}

	/**
	 * Complete Order
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 03/10/2013, 12:26:41
	 * @return void
	 */
	private void completeOrder(){
		if(m_Order != null
				&& !m_Order.getDocStatus().equals(X_C_Order.DOCSTATUS_Completed)) {
			m_Order.setDocAction(p_DocAction);
			m_Order.processIt(p_DocAction);
			m_Order.saveEx();
			addLog("@DocumentNo@: " + m_Order.getDocumentNo() + " - @GrandTotal@=" + m_Order.getGrandTotal());
			m_Created ++;
			//	Dixon Martinez 08-05-2014
			//	Add Support Generate Invoiced of Technical Form
			if(p_GenerateInvoiced
					&& m_Order.getDocStatus().equals(X_C_Order.DOCSTATUS_Completed))
				generateInvoiced(m_Order);
			//	End Dixon Martinez
		}
	}

	/**
	 * Add Support Generate Invoiced of Technical Form
	 * Generate Invoiced
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 05/08/2014, 21:27:21
	 * @param m_Order
	 * @return void
	 */
	private void generateInvoiced(MOrder m_Order) {
		if(m_Invoice == null) {
			//	Complete Previous Invoice
			completeInvoice();
			//	Check Warehouse
			if(!p_DistinctOrderByWarehouse){
				if(p_M_Warehouse_ID != 0)
					m_CurrentWarehouse_ID = p_M_Warehouse_ID;
				else
					m_CurrentWarehouse_ID = Env.getContextAsInt(getCtx(), "#M_Warehouse_ID");
			}	
		}
		//	Create a New Invoice
		newInvoice(m_Order);
		//	Complete Invoice
		completeInvoice();
	}
	
	/**
	 * Add Support Generate Invoiced of Technical Form
	 * New Invoice
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 05/08/2014, 21:27:48
	 * @param m_Order
	 * @return
	 * @return String
	 */
	private String newInvoice(MOrder m_Order) {
		//	Prepare Sql
		String sql = "SELECT C_DocTypeInvoice_ID FROM C_DocType WHERE C_DocType_ID = ?";
		//	Return id Document Type Invoice
		int p_C_DocTypeTarget_Invoice_ID = DB.getSQLValue(get_TrxName(), sql, m_Order.getC_DocType_ID());
		//
		if(p_C_DocTypeTarget_Invoice_ID == 0)
			throw new AdempiereException("@C_DocTypeInvoice_ID@ @NotFound@");
		//	Create Invoice 
		m_Invoice = new MInvoice(m_Order, p_C_DocTypeTarget_Invoice_ID, p_DateDoc );
		//	Set Client and Organization
		m_Invoice.setClientOrg(getAD_Client_ID(), m_Order.getAD_Org_ID());
		//	Set Document Type Target
		m_Invoice.setC_DocTypeTarget_ID(p_C_DocTypeTarget_Invoice_ID);
		//	Set Is Sales Order transaction
		m_Invoice.setIsSOTrx(m_Order.isSOTrx());
		//	Set Date Invoice
		m_Invoice.setDateAcct(p_DateDoc);
		m_Invoice.setDateInvoiced(p_DateDoc);
		//
		m_Invoice.setSalesRep_ID(m_Order.getSalesRep_ID());
		//	Set Vendor
		MBPartner customer = MBPartner.get(getCtx(), m_Order.getC_BPartner_ID());
		m_Invoice.setBPartner(customer);
		//	Set Price List
		m_Invoice.setM_PriceList_ID(p_M_PriceList_ID);
		//	Set Technical Form
		Integer p_FTA_FarmerCredit_ID = (Integer) m_Order.get_Value("FTA_FarmerCredit_ID");
		//	Set Farmer credit
		if(p_FTA_FarmerCredit_ID > 0)
			m_Invoice.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
		else
			m_Invoice.set_ValueOfColumn("FTA_FarmerCredit_ID", null);
		//	Save Invoice
		m_Invoice.saveEx();
		//	Get lines of Order
		MOrderLine [] o_Lines = m_Order.getLines();
		//	tour lines of the order and create invoice lines
		for (MOrderLine m_Order_Line : o_Lines) {
			//	Add Lines
			MInvoiceLine m_InvoiceLine = new MInvoiceLine(getCtx(), 0, get_TrxName());
			m_InvoiceLine.setC_Invoice_ID(m_Invoice.get_ID());
			m_InvoiceLine.setM_Product_ID(m_Order_Line.getM_Product_ID());
			m_InvoiceLine.setQty(m_Order_Line.getQtyOrdered());
			m_InvoiceLine.set_ValueOfColumn("C_UOM_ID", m_Order_Line.get_Value("C_UOM_ID"));
			m_InvoiceLine.setPriceEntered(m_Order_Line.getPriceEntered());
			m_InvoiceLine.setPriceActual(m_Order_Line.getPriceActual());
			m_InvoiceLine.setPriceList(m_Order_Line.getPriceList());
			m_InvoiceLine.set_ValueOfColumn("C_Tax_ID", m_Order_Line.get_Value("C_Tax_ID"));
			m_InvoiceLine.saveEx();
		}
		return null;
	}

	/**
	 * Add Support Generate Invoiced of Technical Form
	 * Complete Invoice
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 05/08/2014, 21:28:58
	 * @return void
	 */
	private void completeInvoice() {
		if(m_Invoice != null
				&& !m_Invoice.getDocStatus().equals(X_C_Invoice.DOCSTATUS_Completed)) {
			m_Invoice.setDocAction(X_C_Invoice.DOCACTION_Prepare);
			m_Invoice.processIt(X_C_Invoice.DOCACTION_Prepare);
			m_Invoice.saveEx();
			addLog("@DocumentNo@: " + m_Invoice.getDocumentNo() + " - @GrandTotal@= " + m_Invoice.getGrandTotal());
		}
	}
}
