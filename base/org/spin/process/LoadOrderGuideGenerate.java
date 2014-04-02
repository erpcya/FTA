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
import org.compiere.model.MUOM;
import org.compiere.model.MUOMConversion;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.I_FTA_LoadOrder;
import org.spin.model.I_FTA_RecordWeight;
import org.spin.model.MFTALoadOrder;
import org.spin.model.MFTAMobilizationGuide;
import org.spin.model.MFTARecordWeight;
import org.spin.model.X_FTA_RecordWeight;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class LoadOrderGuideGenerate extends SvrProcess {

	/**	Organization 				*/
	private int 		p_AD_Org_ID			= 0;

	/**	Organization Transaction	*/
	private int 		p_AD_OrgTrx_ID			= 0;
	
	/**	Warehouse					*/
	private int 		p_M_Warehouse_ID		= 0;
	
	/**	Load Order					*/
	private int 		p_FTA_LoadOrder_ID		= 0;
	
	/**	Record Weight				*/
	private int 		p_FTA_RecordWeight_ID	= 0;
	
	/**	Document Type Target		*/
	private int 		p_C_DocTypeTarget_ID	= 0;
	
	/**	Document Date				*/
	private Timestamp 	p_DateDoc 				= null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals("AD_OrgTrx_ID"))
				p_AD_OrgTrx_ID = para.getParameterAsInt();
			else if (name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if (name.equals("FTA_LoadOrder_ID"))
				p_FTA_LoadOrder_ID = para.getParameterAsInt();
			else if (name.equals("FTA_RecordWeight_ID"))
				p_FTA_RecordWeight_ID = para.getParameterAsInt();
			else if (name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp) para.getParameter();
		}
		//	Get Record Identifier
		if(getRecord_ID() != 0){
			if(getTable_ID() == I_FTA_RecordWeight.Table_ID){
				p_FTA_RecordWeight_ID = getRecord_ID();
			}
			else if(getTable_ID() == I_FTA_LoadOrder.Table_ID)
				p_FTA_LoadOrder_ID = getRecord_ID();
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		MFTARecordWeight m_RecordWeight = null;
		if(p_FTA_RecordWeight_ID != 0){
			m_RecordWeight = new MFTARecordWeight(getCtx(), p_FTA_RecordWeight_ID, get_TrxName());
			if(p_AD_Org_ID == 0){
				p_AD_Org_ID = m_RecordWeight.getAD_Org_ID();
				p_AD_OrgTrx_ID = p_AD_Org_ID;
			}
		}
		//	Get Load Order
		if(m_RecordWeight != null)
			p_FTA_LoadOrder_ID = m_RecordWeight.getFTA_LoadOrder_ID();
		//	Valid Load Order
		if(p_FTA_LoadOrder_ID == 0)
			throw new AdempiereUserError("@FTA_LoadOrder_ID@ @NotFound@");
		//	Valid if this yet generated
		int mobilizationGuide_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(mg.FTA_MobilizationGuide_ID) " +
				"FROM FTA_MobilizationGuide mg " +
				"WHERE mg.DocStatus NOT IN('VO', 'RE') " +
				"AND mg.FTA_LoadOrder_ID = ?", p_FTA_LoadOrder_ID);
		//	
		if(mobilizationGuide_ID > 0)
			return "";
		
		//	Instance Load Order
		MFTALoadOrder m_LoadOrder = new MFTALoadOrder(getCtx(), p_FTA_LoadOrder_ID, get_TrxName());
		if(p_AD_Org_ID == 0){
			p_AD_Org_ID = m_LoadOrder.getAD_Org_ID();
			p_AD_OrgTrx_ID = p_AD_Org_ID;
		}
		
		//	Create Guide
		MFTAMobilizationGuide m_MobilizationGuide = new MFTAMobilizationGuide(getCtx(), 0, get_TrxName());
		m_MobilizationGuide.setAD_Org_ID(p_AD_Org_ID);
		m_MobilizationGuide.setAD_OrgTrx_ID(p_AD_OrgTrx_ID);
		m_MobilizationGuide.setC_DocType_ID(p_C_DocTypeTarget_ID);
		m_MobilizationGuide.setDateDoc(p_DateDoc);
		m_MobilizationGuide.setFTA_VehicleType_ID(m_LoadOrder.getFTA_VehicleType_ID());
		m_MobilizationGuide.setIsSOTrx(true);
		//	Set References
		m_MobilizationGuide.setFTA_LoadOrder_ID(p_FTA_LoadOrder_ID);
		//	Get Record Weight
		if(m_RecordWeight != null)
			m_MobilizationGuide.setFTA_RecordWeight_ID(m_RecordWeight.getFTA_RecordWeight_ID());
		else {
			p_FTA_RecordWeight_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(rw.FTA_RecordWeight_ID) " +
					"FROM FTA_RecordWeight rw " +
					"WHERE rw.DocStatus NOT IN('VO', 'RE') " +
					"AND rw.FTA_LoadOrder_ID = ?", p_FTA_LoadOrder_ID);
			if(p_FTA_RecordWeight_ID > 0){
				m_RecordWeight = new MFTARecordWeight(getCtx(), p_FTA_RecordWeight_ID, get_TrxName());
				m_MobilizationGuide.setFTA_RecordWeight_ID(p_FTA_RecordWeight_ID);
			}
		}
		//	Set Warehouse
		if(p_M_Warehouse_ID != 0)
			m_MobilizationGuide.setM_Warehouse_ID(p_M_Warehouse_ID);
		//	If is Record Weight
		if(m_LoadOrder.isHandleRecordWeight()) {
			if(m_RecordWeight == null)
				throw new AdempiereUserError("@FTA_RecordWeight_ID@ @NotFound@ @FTA_LoadOrder_ID@ @IsHandleRecordWeight@");
			
			if(m_RecordWeight.getOperationType()
						.equals(X_FTA_RecordWeight.OPERATIONTYPE_DeliveryBulkMaterial)){
				MClientInfo m_ClientInfo = MClientInfo.get(getCtx());
				if(m_ClientInfo.getC_UOM_Weight_ID() == 0)
					return "@C_UOM_Weight_ID@ @NotFound@";
				//	Get Category
				MProduct product = null;
				if(m_RecordWeight.getM_Product_ID() != 0)
					product = MProduct.get(getCtx(), m_RecordWeight.getM_Product_ID());
				else
					product = MProduct.get(getCtx(), m_LoadOrder.getM_Product_ID());
				//	Rate Convert
				BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
						product.getM_Product_ID(), m_ClientInfo.getC_UOM_Weight_ID());
				MUOM uom = MUOM.get(getCtx(), product.getC_UOM_ID());
				//	Set Precision
				int precision = uom.getStdPrecision();
				//	Valid Conversion
				if(rate == null)
					throw new AdempiereUserError("@NoUOMConversion@");
				
				//	Get Weight
				m_MobilizationGuide.setQtyToDeliver(m_RecordWeight.getNetWeight()
						.multiply(rate)
						.setScale(precision, BigDecimal.ROUND_HALF_UP));
			}
		} else
			m_MobilizationGuide.setQtyToDeliver(m_LoadOrder.getWeight());
		//	
		m_MobilizationGuide.saveEx();
		//	Complete Document
		m_MobilizationGuide.processIt(DocAction.ACTION_Prepare);
		m_MobilizationGuide.saveEx();
		//	Message
		String msg = m_MobilizationGuide.getProcessMsg();
		if(msg != null)
			return "@Error@: " + msg;
		//	
		return "@FTA_MobilizationGuide_ID@ = " + m_MobilizationGuide.getDocumentNo();
	}
}
