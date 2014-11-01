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

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.Env;
import org.spin.model.MFTAFarmerCredit;
import org.spin.model.MFTAFarming;

/**
 * Create Purchase Order From Farmer Credit
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FarmerCreditOrderGenerate extends SvrProcess {

	/**	Organization			*/
	private int 		p_AD_Org_ID 			= 0;
	/**	Warehouse				*/
	private int 		p_M_Warehouse_ID 		= 0;
	/**	Farmer Credit			*/
	private int 		p_FTA_FarmerCredit_ID 	= 0;
	/**	Document Date			*/
	private Timestamp 	p_DateDoc 				= null;
	/**	Document Type Target	*/
	private int 		p_C_DocTypeTarget_ID 	= 0;
	/**	Price List				*/
	private int 		p_M_PriceList_ID 		= 0;
	/**	Document Action			*/
	private String 		p_DocAction 			= null;
	/**	Purchase Order			*/
	private MOrder 		m_Order 				= null;
	
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if(name.equals("FTA_FarmerCredit_ID"))
				p_FTA_FarmerCredit_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
			else if(name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if(name.equals("M_PriceList_ID"))
				p_M_PriceList_ID = para.getParameterAsInt();
			else if(name.equals("DocAction"))
				p_DocAction = para.getParameter().toString();
		}
		//	Get Technical From Identifier
		if(p_FTA_FarmerCredit_ID == 0)
			p_FTA_FarmerCredit_ID = getRecord_ID();

	}

	
	@Override
	protected String doIt() throws Exception {
		//	Organization
		if(p_AD_Org_ID == 0)
			throw new AdempiereUserError("@AD_Org_ID@ @NotFount@");
		//	Valid Warehouse
		if(p_M_Warehouse_ID == 0)
			throw new AdempiereUserError("@M_Warehouse_ID@ @NotFount@");
		//	Farmer Credit
		if(p_FTA_FarmerCredit_ID == 0)
			throw new AdempiereUserError("@FTA_FarmerCredit_ID@ @NotFount@");
		//	Valid Document Type Target
		if(p_C_DocTypeTarget_ID == 0)
			throw new AdempiereUserError("@C_DocTypeTarget_ID@ @NotFount@");
		//	Valid Document Date
		if(p_DateDoc == null)
			throw new AdempiereUserError("@DateDoc@ @NotFount@");
		//	Valid Price List
		if(p_M_PriceList_ID == 0)
			throw new AdempiereUserError("@M_PriceList_ID@ @NotFount@");
		//	Document Action
		if(p_DocAction == null)
			throw new AdempiereUserError("@DocAction@ @NotFount@");
		
		MFTAFarmerCredit m_FTA_FarmerCredit = new MFTAFarmerCredit(getCtx(), p_FTA_FarmerCredit_ID, get_TrxName());
		//	Create Line
		MFTAFarming[] lines = m_FTA_FarmerCredit.getLines(true, "Status = 'A' "
				+ "AND (C_OrderLine_ID IS NULL "
				+ "				OR EXISTS(SELECT 1 "
				+ "							FROM C_Order o "
				+ "							INNER JOIN C_OrderLine ol ON(ol.C_Order_ID = o.C_Order_ID) "
				+ "							WHERE ol.C_OrderLine_ID = FTA_Farming.C_OrderLine_ID "
				+ "							AND o.DocStatus IN('VO', 'RE')))");
		//	
		for(MFTAFarming farmingLine : lines){
			//	Get Quantity
			BigDecimal m_Qty = farmingLine.getQty();
			if(m_Qty == null
					|| m_Qty.compareTo(Env.ZERO) <= 0)
				continue;
			
			if(m_Order == null)
				createPO(m_FTA_FarmerCredit);
			
			//
			MOrderLine poLine = new MOrderLine (m_Order);
			
			MProduct product = (MProduct) farmingLine.getCategory();
			
			poLine.setProduct(product);
			poLine.setQty(m_Qty);
			poLine.setPrice();
			poLine.saveEx();
			//	Set Line on Farming
			farmingLine.setC_OrderLine_ID(poLine.getC_OrderLine_ID());
			farmingLine.saveEx();
		}
		
		//	Set to Generated
		m_FTA_FarmerCredit.setGenerateOrder("Y");
		m_FTA_FarmerCredit.saveEx();
		//	Valid Null
		if(m_Order == null)
			return "Ok";
		
		//	Process Order
		m_Order.setDocAction(p_DocAction);
		m_Order.processIt(p_DocAction);
		m_Order.saveEx();
		
		return "@C_Order_ID@: " + m_Order.getDocumentNo();
	}
	
	/**
	 * Create Purchase Order
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 1/11/2014, 10:27:05
	 * @param p_FTA_FarmerCredit
	 * @return void
	 */
	private void createPO(MFTAFarmerCredit p_FTA_FarmerCredit) {
		m_Order = new MOrder (getCtx(), 0, get_TrxName());
		//	Organization
		if(p_AD_Org_ID == 0)
			p_AD_Org_ID = p_FTA_FarmerCredit.getAD_Org_ID();
		m_Order.setClientOrg(getAD_Client_ID(), p_AD_Org_ID);
		m_Order.setIsSOTrx(false);
		m_Order.setC_DocTypeTarget_ID(p_C_DocTypeTarget_ID);
		m_Order.setDateAcct(p_DateDoc);
		m_Order.setDateOrdered(p_DateDoc);
		//	Valid Price List
		if(p_M_PriceList_ID != 0)
			m_Order.setM_PriceList_ID(p_M_PriceList_ID);
		// get default drop ship warehouse
		if(p_M_Warehouse_ID == 0) {
			MOrgInfo orginfo = MOrgInfo.get(getCtx(), m_Order.getAD_Org_ID(), get_TrxName());
			if (orginfo.getM_Warehouse_ID() != 0)
				p_M_Warehouse_ID = orginfo.getM_Warehouse_ID();
			else
				throw new AdempiereException("@M_Warehouse_ID@ = @NotFound@");
		}
		//	Set Vendor
		MBPartner vendor = (MBPartner) p_FTA_FarmerCredit.getC_BPartner();
		m_Order.setBPartner(vendor);
		
		//	Set Warehouse
		m_Order.setM_Warehouse_ID(p_M_Warehouse_ID);
		
		//	Set Farmer Credit
		m_Order.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
		
		m_Order.saveEx();
		
	}
}
