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
import org.compiere.model.MUOMConversion;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.spin.model.MFTAProductsToApply;
import org.spin.model.MFTATechnicalForm;

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
			throw new AdempiereException("@C_DocTypeTarget_ID@ @NotFound@");
		if(p_DocAction == null)
			throw new AdempiereException("@DocAction@ @NotFound@");
		if(p_FTA_TechnicalForm_ID == 0)
			throw new AdempiereException("@FTA_TechnicalForm_ID@ @NotFound@");
		if(p_M_PriceList_ID == 0)
			throw new AdempiereException("@M_PriceList_ID@ @NotFound@");
		
		MFTATechnicalForm m_TechnicalForm = new MFTATechnicalForm(getCtx(), p_FTA_TechnicalForm_ID, get_TrxName());
		//	Valid Generated
		if(m_TechnicalForm.getGenerateOrder() != null
				&& m_TechnicalForm.getGenerateOrder().equals("Y"))
			throw new AdempiereException("@C_Order_ID@ @IsGenerated@");
		
		MFTAProductsToApply[] productToApply = m_TechnicalForm.getProductToApply(true);
		//	Valid Lines
		if(productToApply == null
				|| productToApply.length == 0)
			return "";
		
		MOrder so = new MOrder (getCtx(), 0, get_TrxName());
		so.setClientOrg(getAD_Client_ID(), m_TechnicalForm.getAD_Org_ID());
		so.setIsSOTrx(false);
		
		so.setC_DocTypeTarget_ID(p_C_DocTypeTarget_ID);
		so.setIsSOTrx(true);
		
		so.setDateAcct(p_DateDoc);
		so.setDateOrdered(p_DateDoc);
		//
		//so.setDescription(getDescription());
		so.setSalesRep_ID(m_TechnicalForm.getSalesRep_ID());
		//	Set Vendor
		MBPartner customer = (MBPartner) m_TechnicalForm.getC_BPartner();
		so.setBPartner(customer);
		
		// get default drop ship warehouse
		MOrgInfo orginfo = MOrgInfo.get(getCtx(), so.getAD_Org_ID(), get_TrxName());
		if (orginfo.getM_Warehouse_ID() != 0)
			so.setM_Warehouse_ID(orginfo.getM_Warehouse_ID());
		else
			return "@M_Warehouse_ID@ = @NotFound@";
		
		so.setM_PriceList_ID(p_M_PriceList_ID);
		
		//	Set Technical Form
		so.set_ValueOfColumn("FTA_TechnicalForm_ID", p_FTA_TechnicalForm_ID);
		
		so.saveEx();
		
		for(MFTAProductsToApply pApply : productToApply){
			
			MProduct product = (MProduct) pApply.getM_Product();
			MOrderLine poLine = new MOrderLine (so);
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
		
		so.setDocAction(p_DocAction);
		so.processIt(p_DocAction);
		so.saveEx();
		//	Update Status Generate Order
		m_TechnicalForm.setGenerateOrder("Y");
		m_TechnicalForm.saveEx();
		
		return "";
	}

}
