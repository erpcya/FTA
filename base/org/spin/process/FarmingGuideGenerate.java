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

import org.compiere.model.MClientInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MUOMConversion;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTAFarming;
import org.spin.model.MFTAMobilizationGuide;
import org.spin.model.MFTAVehicleType;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FarmingGuideGenerate extends SvrProcess {

	/**	Organization				*/
	private int 		p_AD_Org_ID				= 0;
	
	/**	Warehouse					*/
	private int 		p_M_Warehouse_ID		= 0;
	
	/**	Document Type Target		*/
	private int 		p_C_DocTypeTarget_ID	= 0;
	
	/**	Document Date				*/
	private Timestamp 	p_DateDoc 				= null;
	
	/**	Vehicle Type				*/
	private int 		p_FTA_VehicleType_ID 	= 0;
	
	/**	Max Quantity				*/
	private int 		p_MaxQty				= 0;
	
	/**	Farming						*/
	private int 		p_FTA_Farming_ID		= 0;
	
	/**	Business Partner			*/
	private int 		p_C_BPartner_ID			= 0;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if (name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp) para.getParameter();
			else if (name.equals("FTA_VehicleType_ID"))
				p_FTA_VehicleType_ID = para.getParameterAsInt();
			else if (name.equals("MaxQty"))
				p_MaxQty = para.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para.getParameterAsInt();
		}
		//	Get Record Identifier
		p_FTA_Farming_ID = getRecord_ID();
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		//	Get Farming
		MFTAFarming m_Farming = new MFTAFarming(getCtx(), p_FTA_Farming_ID, get_TrxName());
		//	Valid Credit
		if(m_Farming.getFTA_FarmerCredit_ID() == 0)
			throw new AdempiereUserError("@FTA_FarmerCredit_ID@ = @0@");
		//	Get Vehicle Type
		MFTAVehicleType m_VehicleType = new MFTAVehicleType(getCtx(), p_FTA_VehicleType_ID, get_TrxName());
		
		//	Max Warehouse Receipt
		BigDecimal m_MaxReceipt = DB.getSQLValueBD(get_TrxName(), "SELECT rc.Qty - SUM(COALESCE(mg.QtyToDeliver, 0)) " +
				"FROM FTA_ReceptionCapacity rc " +
				"LEFT JOIN FTA_MobilizationGuide mg ON(mg.M_Warehouse_ID = rc.M_Warehouse_ID) " +
				"WHERE rc.AD_Org_ID = ? " +
				"AND rc.M_Warehouse_ID = ? " +
				"AND rc.ValidFrom <= ? " +
				"AND rc.IsActive = 'Y' " +
				"AND mg.DateDoc >= rc.ValidFrom " +
				"AND (mg.DocStatus IN('CO', 'CL') OR mg.DocStatus IS NULL) " +
				"GROUP BY rc.Qty, rc.ValidFrom " +
				"ORDER BY rc.ValidFrom DESC", p_AD_Org_ID, p_M_Warehouse_ID, p_DateDoc);
		
		log.fine("MaxReceipt=" + m_MaxReceipt);
		
		if(m_MaxReceipt != null
				&& m_MaxReceipt.compareTo(Env.ZERO) <= 0)
			throw new AdempiereUserError("@FTA_ReceptionCapacity_ID@ <= @0@");
		
		MClientInfo m_ClientInfo = MClientInfo.get(getCtx());
		if(m_ClientInfo.getC_UOM_Weight_ID() == 0)
			return "@C_UOM_Weight_ID@ = @NotFound@";
		
		//	Get Estimated Quantity
		BigDecimal m_EstimatedQty = m_Farming.getEstimatedQty();
		
		MProduct product = (MProduct) m_Farming.getCategory();
		//	Rate Convert
		BigDecimal rate = MUOMConversion.getProductRateTo(Env.getCtx(), 
				product.getM_Product_ID(), m_ClientInfo.getC_UOM_Weight_ID());
		//	Valid Conversion
		if(rate == null)
			throw new AdempiereUserError("@NoUOMConversion@");
		
		log.fine("EstimatedQty=" + m_EstimatedQty);
		
		//	Valid Estimated Quantity
		if(m_EstimatedQty == null
				|| m_EstimatedQty.equals(Env.ZERO))
			throw new AdempiereUserError("@EstimatedQty@ = @0@");

		//	Convert
		m_EstimatedQty = m_EstimatedQty.multiply(rate);
		
		//	Quantity Delivered
		BigDecimal m_WeightDelivered = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(mg.QtyToDeliver) " +
				"FROM FTA_MobilizationGuide mg " +
				"WHERE mg.FTA_Farming_ID = ?" +
				"AND mg.DocStatus IN('CO', 'CL') ", 
				p_FTA_Farming_ID);
		
		log.fine("WeightDelivered=" + m_WeightDelivered);
		
		//	Valid Quantity Delivered
		if(m_WeightDelivered == null)
			m_WeightDelivered = Env.ZERO;
		
		//	Max Weight to Generate
		BigDecimal m_MaxWeight = m_EstimatedQty.subtract(m_WeightDelivered);
		
		log.fine("MaxWeight=" + m_MaxWeight);
		
		if(m_MaxWeight.compareTo(Env.ZERO) <= 0)
			throw new AdempiereUserError("@EstimatedQty@ <= @QtyDelivered@");
		
		if(p_MaxQty <= 0)
			throw new AdempiereUserError("@MaxQty@ <= @0@");
		
		//	Valid the Minimum to Generate
		if(m_MaxReceipt != null
				&& m_MaxReceipt.compareTo(m_MaxWeight) <= 0)
			m_MaxWeight = m_MaxReceipt;
		
		log.fine("New MaxWeight=" + m_MaxWeight);
		
		//	Weight Generated
		BigDecimal m_WeightGenerated = Env.ZERO;
		//	Quantity of Guides to Generate
		int count = 0;
		// Generate
		while(m_MaxWeight.compareTo(m_WeightGenerated) > 0
				&& p_MaxQty > count){

			//	Valid Remainder
			BigDecimal m_QtyDeliver = m_VehicleType.getLoadCapacity();
			if(m_QtyDeliver.add(m_WeightGenerated).compareTo(m_MaxWeight) > 0)
				m_QtyDeliver = m_MaxWeight.subtract(m_WeightGenerated);
			if(m_QtyDeliver.compareTo(Env.ZERO) <= 0)
				break;
			
			MFTAMobilizationGuide m_MobilizationGuide = new MFTAMobilizationGuide(getCtx(), 0, get_TrxName());
			m_MobilizationGuide.setC_DocType_ID(p_C_DocTypeTarget_ID);
			m_MobilizationGuide.setDateDoc(p_DateDoc);
			m_MobilizationGuide.setFTA_Farming_ID(p_FTA_Farming_ID);
			m_MobilizationGuide.setFTA_VehicleType_ID(p_FTA_VehicleType_ID);
			m_MobilizationGuide.setM_Warehouse_ID(p_M_Warehouse_ID);
			m_MobilizationGuide.setQtyToDeliver(m_QtyDeliver);
			//	Verify if Business Partner is not null
			if(p_C_BPartner_ID != 0)
				m_MobilizationGuide.setC_BPartner_ID(p_C_BPartner_ID);
			m_MobilizationGuide.saveEx();
			//	Complete Document
			m_MobilizationGuide.processIt(DocAction.ACTION_Complete);
			m_MobilizationGuide.saveEx();
			//	Add Weight
			m_WeightGenerated = m_WeightGenerated.add(m_QtyDeliver);
			count ++;
		}
		
		return "@Created@ = " + count;
	}
}
