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
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
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
	private int 		p_AD_Org_ID = 0;
	/**	Warehouse				*/
	private int 		p_M_Warehouse_ID = 0;
	/**	Farmer Credit			*/
	private int 		p_FTA_FarmerCredit_ID = 0;
	/**	Document Date			*/
	private Timestamp 	p_DateDoc = null;
	/**	Document Type Target	*/
	private int 		p_C_DocTypeTarget_ID = 0;
	/**	Price List				*/
	private int 		p_M_PriceList_ID = 0;
	/**	Document Action			*/
	private String 		p_DocAction = null;
	
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
		//	If is Generated
		int order_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(o.C_Order_ID) " +
				"FROM C_Order o " +
				"WHERE o.DocStatus NOT IN('VO', 'RE') " +
				"AND o.IsSOTrx = 'N' " +
				"AND o.FTA_FarmerCredit_ID = ?", m_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
		
		if(m_FTA_FarmerCredit.getGenerateOrder() != null
				&& m_FTA_FarmerCredit.getGenerateOrder().equals("Y")
				&& order_ID != 0)
			return "";
		
		MOrder po = new MOrder (getCtx(), 0, get_TrxName());
		//	Organization
		if(p_AD_Org_ID == 0)
			p_AD_Org_ID = m_FTA_FarmerCredit.getAD_Org_ID();
		po.setClientOrg(getAD_Client_ID(), p_AD_Org_ID);
		po.setIsSOTrx(false);
		po.setC_DocTypeTarget_ID(p_C_DocTypeTarget_ID);
		po.setDateAcct(p_DateDoc);
		po.setDateOrdered(p_DateDoc);
		//	Valid Price List
		if(p_M_PriceList_ID != 0)
			po.setM_PriceList_ID(p_M_PriceList_ID);
		//
		po.setDescription(m_FTA_FarmerCredit.getDescription());
		//	Set Vendor
		MBPartner vendor = (MBPartner) m_FTA_FarmerCredit.getC_BPartner();
		po.setBPartner(vendor);
		
		// get default drop ship warehouse
		if(p_M_Warehouse_ID == 0) {
			MOrgInfo orginfo = MOrgInfo.get(getCtx(), po.getAD_Org_ID(), get_TrxName());
			if (orginfo.getM_Warehouse_ID() != 0)
				p_M_Warehouse_ID = orginfo.getM_Warehouse_ID();
			else
				return "@M_Warehouse_ID@ = @NotFound@";
		}
		
		//	Set Warehouse
		po.setM_Warehouse_ID(p_M_Warehouse_ID);
		
		//	Set Farmer Credit
		po.set_ValueOfColumn("FTA_FarmerCredit_ID", m_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
		
		po.saveEx();
		
		//	Create Line
		MFTAFarming[] lines = m_FTA_FarmerCredit.getLines(true, "Status = 'A'");
		boolean createdLines = false;
		//	
		for(MFTAFarming farmingLine : lines){
			//	Get Quantity
			BigDecimal m_Qty = farmingLine.getQty();
			if(m_Qty == null
					|| m_Qty.compareTo(Env.ZERO) <= 0)
				continue;
			//	
			MOrderLine poLine = new MOrderLine (po);
			
			MProduct product = (MProduct) farmingLine.getCategory();
			
			poLine.setProduct(product);
			poLine.setQty(m_Qty);
			poLine.setPrice();
			poLine.saveEx();
			//	Set Line on Farming
			farmingLine.setC_OrderLine_ID(poLine.getC_OrderLine_ID());
			farmingLine.saveEx();
			//	Set Create Lines
			createdLines = true;
		}
		//	If Not Lines
		if(!createdLines)
			throw new AdempiereUserError("@NoLines@");
		
		//	Process Order
		po.setDocAction(p_DocAction);
		po.processIt(p_DocAction);
		po.saveEx();
		//	Set to Generated
		m_FTA_FarmerCredit.setGenerateOrder("Y");
		m_FTA_FarmerCredit.saveEx();
		
		return "@C_Order_ID@: " + po.getDocumentNo() + 
				" - @GrandTotal@ = " + po.getGrandTotal();
	}
}
