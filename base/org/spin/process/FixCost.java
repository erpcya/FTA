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
 * Contributor(s): Carlos Parada www.erpcya.com               				  *
 *****************************************************************************/

package org.spin.process;

import java.util.List;

import org.compiere.model.MAcctSchema;
import org.compiere.model.MCost;
import org.compiere.model.MCostDetail;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInventoryLine;
import org.compiere.model.MProduct;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Msg;

public class FixCost extends SvrProcess{

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("M_Product_ID"))
				p_M_Product_ID = para.getParameterAsInt();
			
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			
			else if (name.equals("M_CostElement_ID"))
				p_M_CostElement_ID = para.getParameterAsInt();
			
			else if (name.equals("C_AcctSchema_ID"))
				p_C_AcctSchema_ID = para.getParameterAsInt();
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		int l_M_CostElement_ID =0;
		//Get Produts to Fix Cost
		List<MProduct>products = new Query(getCtx(), MProduct.Table_Name, "M_Product_ID=? OR ?=0", get_TrxName())
								.setParameters(p_M_Product_ID,p_M_Product_ID)
								.setOnlyActiveRecords(true)
								.list();

		for (MProduct product: products){

			MAcctSchema as = new MAcctSchema(getCtx(), p_C_AcctSchema_ID, get_TrxName());
			
			MCost cost = MCost.get(product, 0, as, p_AD_Org_ID, p_M_CostElement_ID, get_TrxName());
			//Advance for Zero Costing
			if (cost.getCurrentCostPrice()==Env.ZERO){
				addLog("@NotFound@ "+Msg.translate(getCtx(), "M_Cost_ID") +" "+ product.getValue() + " " + product.getName());
				continue;
			}
			
			//Advance for InOut IsSOTrx Movements not In Cost Detail
			if (new Query(getCtx(), MInOutLine.Table_Name, 
					"QtyEntered<>0 AND " +
					"M_Product_ID=? AND " +
					"NOT EXISTS (SELECT 1 FROM M_CostDetail WHERE M_CostDetail.M_InOutLine_ID=M_InOutLine.M_InOutLine_ID) AND " +
					"EXISTS (SELECT 1 FROM M_Product WHERE M_Product.M_Product_ID=M_InOutLine.M_Product_ID AND M_Product.ProductType ='I') AND " +
					"EXISTS (SELECT 1 FROM M_InOut WHERE M_InOutLine.M_InOut_ID=M_InOut.M_InOut_ID AND M_InOut.DocStatus NOT IN ('DR','IN','IP') AND M_InOut.IsSoTrx='Y')"
					, get_TrxName())
			.setParameters(product.getM_Product_ID())
			.setOnlyActiveRecords(true)
			.match()){
				addLog(Msg.translate(getCtx(), "M_InOutLine_ID") + " " + "@NotFound@" + " " + Msg.translate(getCtx(), "M_CostDetail_ID") +" "+ product.getValue() + " " + product.getName());
				continue;
			}
			
			
			//Advance for Unprocessed Cost Detail
			if (new Query(getCtx(), MCostDetail.Table_Name, 
					"Processed ='N'" 
					, get_TrxName())
				.setOnlyActiveRecords(true)
				.match()){
				addLog("@NotValid@" + " " + Msg.translate(getCtx(), "M_CostDetail_ID") +" "+ product.getValue() + " " + product.getName());
				continue;
			}
			
			//Update Zero Cost Line Based In Current Cost Price
			List<MCostDetail> costdetails = new Query(getCtx(), MCostDetail.Table_Name, "M_InventoryLine_ID IS NOT NULL AND Amt=0 AND M_Product_ID=?", get_TrxName())
										.setOnlyActiveRecords(true)
										.setParameters(product.getM_Product_ID())
										.list();
			for (MCostDetail costdetail : costdetails){
				//Unprocessed for Set Amt
				costdetail.setProcessed(false);
				costdetail.setAmt(costdetail.getQty().multiply(cost.getCurrentCostPrice()).abs());
				costdetail.saveEx(get_TrxName());
				
				//Save As Processed
				costdetail.setProcessed(true);
				costdetail.set_ValueOfColumn("Updated", costdetail.getM_InventoryLine().getUpdated());
				costdetail.saveEx(get_TrxName());
				
			}
			
			//Create Costs Lines From Inventory Line
			List<MInventoryLine> inventorylines = new Query(getCtx(), MInventoryLine.Table_Name, 
							"NOT EXISTS(SELECT 1  FROM M_CostDetail WHERE M_CostDetail.M_InventoryLine_ID = M_InventoryLine.M_InventoryLine_ID) AND " +
							"EXISTS(SELECT 1 FROM M_Inventory WHERE M_Inventory.M_Inventory_ID=M_InventoryLine.M_Inventory_ID AND DocStatus NOT IN ('DR','IN','IP')) AND " +
							"M_Product_ID =? AND " +
							"(QtyCount-QtyBook)<>0"
							, get_TrxName())
							.setOnlyActiveRecords(true)
							.setParameters(product.getM_Product_ID())
							.list();
			for (MInventoryLine iLine : inventorylines){
				MCostDetail costDet = new MCostDetail(getCtx(), 0, get_TrxName());
				costDet.setC_AcctSchema_ID(as.getC_AcctSchema_ID());
				costDet.setM_Product_ID(product.getM_Product_ID());
				costDet.setM_AttributeSetInstance_ID(iLine.getM_AttributeSetInstance_ID());
				costDet.set_ValueOfColumn("Created", iLine.getCreated());
				costDet.set_ValueOfColumn("Updated", iLine.getUpdated());
				costDet.setM_InventoryLine_ID(iLine.getM_InventoryLine_ID());
				costDet.setIsSOTrx(false);
				costDet.setAmt(iLine.getMovementQty().multiply(cost.getCurrentCostPrice()));
				costDet.setQty(iLine.getMovementQty());
				costDet.setCurrentCostPrice(cost.getCurrentCostPrice());
				costDet.setCurrentQty(costDet.getQty());
				costDet.setCumulatedAmt(costDet.getAmt());
				costDet.setCumulatedQty(costDet.getQty());
				costDet.saveEx(get_TrxName());
				
				costDet.setProcessed(true);
				costDet.set_ValueOfColumn("Updated", iLine.getUpdated());
				costDet.saveEx(get_TrxName());
			}
				
		}
			
		return null;
	}
	
	/** Product to Fix Cost*/ 
	int p_M_Product_ID = 0;
	
	/** Cost Element*/
	int p_M_CostElement_ID = 0;

	/** Organization*/
	int p_AD_Org_ID = 0;
	
	/** Acct Schema*/
	int p_C_AcctSchema_ID = 0;

}
