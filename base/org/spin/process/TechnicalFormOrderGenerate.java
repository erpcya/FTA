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
import java.sql.Timestamp;

import org.compiere.model.MBPartner;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MUOMConversion;
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
	/**	Document Date			*/
	private Timestamp 	p_DateDoc = null;
	/**	Document Type Target	*/
	private int 		p_C_DocTypeTarget_ID = 0;
	/**	Document Action			*/
	private String 		p_DocAction = null;
	/**	Technical Form			*/
	private int 		p_FTA_TechnicalForm_ID = 0;
	/**	Price List				*/
	private int 		p_M_PriceList_ID = 0;
	/**	Order					*/
	private MOrder		m_Order = null;
	/**	Technical Form Line		*/
	private int 		m_FTA_TechnicalFormLine_ID = 0;
	/**	Default Credit			*/
	private int 		m_defaultFarmerCredit_ID = 0;
	/**	Generated				*/
	private int 		m_Created = 0;
	
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
		if(m_TechnicalForm.getGenerateOrder() != null
				&& m_TechnicalForm.getGenerateOrder().equals("Y"))
			return "";
		//	Get Default Farmer Credit
		m_defaultFarmerCredit_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(fm.FTA_FarmerCredit_ID) " +
				"FROM FTA_TechnicalFormLine tfl " +
				"INNER JOIN FTA_Farming fm ON(fm.FTA_Farming_ID = tfl.FTA_Farming_ID) " +
				"WHERE tfl.FTA_TechnicalForm_ID = ?", m_TechnicalForm.getFTA_TechnicalForm_ID());
		
		MFTAProductsToApply[] productToApply = m_TechnicalForm.getProductToApply(true);
		//	Valid Lines
		if(productToApply == null
				|| productToApply.length == 0)
			return "";
		
		for(MFTAProductsToApply pApply : productToApply){
			
			if(m_Order == null
					|| m_FTA_TechnicalFormLine_ID != pApply.getFTA_TechnicalFormLine_ID()){
				//	Complete Previous Order
				completeOrder();
				//	Create a New Order
				newOrder(m_TechnicalForm, 
						(MFTATechnicalFormLine) pApply.getFTA_TechnicalFormLine());
			}
			//	Add Lines
			MProduct product = (MProduct) pApply.getM_Product();
			MOrderLine poLine = new MOrderLine (m_Order);
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
	 * @param m_TechnicalFormLine
	 * @return
	 * @return String
	 */
	private String newOrder(MFTATechnicalForm m_TechnicalForm, MFTATechnicalFormLine m_TechnicalFormLine){
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
		MBPartner customer = (MBPartner) m_TechnicalForm.getC_BPartner();
		m_Order.setBPartner(customer);
		
		// get default drop ship warehouse
		MOrgInfo orginfo = MOrgInfo.get(getCtx(), m_Order.getAD_Org_ID(), get_TrxName());
		if (orginfo.getM_Warehouse_ID() != 0)
			m_Order.setM_Warehouse_ID(orginfo.getM_Warehouse_ID());
		else
			return "@M_Warehouse_ID@ = @NotFound@";
		
		m_Order.setM_PriceList_ID(p_M_PriceList_ID);
		
		//	Set Technical Form
		m_Order.set_ValueOfColumn("FTA_TechnicalForm_ID", p_FTA_TechnicalForm_ID);
		
		//	Set Farmer Credit
		if(m_TechnicalFormLine != null
				&& m_TechnicalFormLine.getFTA_Farming() != null){
			m_FTA_TechnicalFormLine_ID = m_TechnicalFormLine.getFTA_TechnicalFormLine_ID();
			MFTAFarming farming = (MFTAFarming) m_TechnicalFormLine.getFTA_Farming();
			int m_FTA_FarmerCredit_ID = farming.getFTA_FarmerCredit_ID();
			//	Valid Credit
			if(m_FTA_FarmerCredit_ID != 0)
				m_Order.set_ValueOfColumn("FTA_FarmerCredit_ID", m_FTA_FarmerCredit_ID);
			else if(m_defaultFarmerCredit_ID != 0){
				m_Order.set_ValueOfColumn("FTA_FarmerCredit_ID", m_defaultFarmerCredit_ID);
				m_Order.setDescription(Msg.translate(getCtx(), "FTA_FarmerCredit_ID")
						+ " " + Msg.translate(getCtx(), "IsDefault"));
			}
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
			m_Created ++;
		}
	}
}
