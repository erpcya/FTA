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
import java.util.ArrayList;
import java.util.List;

import org.compiere.model.MClientInfo;
import org.compiere.model.MProcess;
import org.compiere.model.MProduct;
import org.compiere.model.MQuery;
import org.compiere.model.MTable;
import org.compiere.model.MUOM;
import org.compiere.model.MUOMConversion;
import org.compiere.model.PrintInfo;
import org.compiere.model.X_AD_ReportView;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportCtl;
import org.compiere.print.ReportEngine;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.compiere.util.Msg;
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
	/**	Organization				*/
	private int 		p_AD_OrgTrx_ID				= 0;	
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
	
	/**	Quantity To Deliver			*/
	private BigDecimal	p_QtyToDeliver			= null;
	
	private int 		p_Owner_ID					= 0;
	/**	Is Printed					*/
	private boolean		p_IsPrinted				= false;
	
	/**	Guides Generates			*/
	List <MFTAMobilizationGuide> m_Guides 		= null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("FTA_Farming_ID"))
				p_FTA_Farming_ID = para.getParameterAsInt();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals("AD_OrgTrx_ID"))
				p_AD_OrgTrx_ID = para.getParameterAsInt();
			else if (name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if (name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp) para.getParameter();
			else if (name.equals("FTA_VehicleType_ID"))
				p_FTA_VehicleType_ID = para.getParameterAsInt();
			else if (name.equals("QtyToDeliver"))
				p_QtyToDeliver = (BigDecimal)para.getParameter();
			else if (name.equals("MaxQty"))
				p_MaxQty = para.getParameterAsInt();
			else if (name.equals("Owner_ID"))
				p_Owner_ID = para.getParameterAsInt();
			else if (name.equals("IsPrinted"))
				p_IsPrinted = para.getParameterAsBoolean();
		}
		//	Get Record Identifier
		if(p_FTA_Farming_ID == 0)
			p_FTA_Farming_ID = getRecord_ID();
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		if(p_FTA_Farming_ID == 0)
			throw new AdempiereUserError("@FTA_Farming_ID@ @NotFound@");
		//	Get Farming
		MFTAFarming m_Farming = new MFTAFarming(getCtx(), p_FTA_Farming_ID, get_TrxName());
		//	Valid Credit
		if(m_Farming.getFTA_FarmerCredit_ID() == 0)
			throw new AdempiereUserError("@FTA_FarmerCredit_ID@ @NotFound@");
		//	Valid Purchase Order
		if(m_Farming.getC_OrderLine_ID() == 0)
			throw new AdempiereUserError("@C_OrderLine_ID@ @NotFound@");
		//	Valid Owner
		if(p_Owner_ID == 0)
			throw new AdempiereUserError("@Owner_ID@ @NotFound@");
		
		//	Get Vehicle Type
		MFTAVehicleType m_VehicleType = new MFTAVehicleType(getCtx(), p_FTA_VehicleType_ID, get_TrxName());
		//	Declare Objects
		BigDecimal m_MaxReceipt;
		BigDecimal m_Qty;
		BigDecimal m_QtyDelivered;
		BigDecimal m_QtyToDeliver;
		BigDecimal m_Farming_MaxQty;
		BigDecimal m_MaxQtyToDeliver;
		BigDecimal m_Re_EstimatedQty;
		BigDecimal m_Diff_Re_EstimatedQty;
		
		//	Get Estimated Quantity
		m_Qty = m_Farming.getQty();
		log.fine("Qty=" + m_Qty);
		//	Get Max Quantity
		m_Farming_MaxQty = m_Farming.getMaxQty();
		log.fine("Farming MaxQty=" + m_Farming_MaxQty);
		
		//	Get Re-Estimated Quantity
		m_Re_EstimatedQty = m_Farming.getRe_EstimatedQty();
		if(m_Re_EstimatedQty == null)
			m_Re_EstimatedQty = Env.ZERO;
		if(m_Re_EstimatedQty.compareTo(m_Qty) >= 0)
			m_Re_EstimatedQty = m_Re_EstimatedQty.subtract(m_Qty);
		
		m_Diff_Re_EstimatedQty = Env.ZERO;
		
		if(m_Farming_MaxQty == null)
			m_Farming_MaxQty = Env.ZERO;
		
		//	Valid Quantity
		if(m_Qty == null
				|| m_Qty.equals(Env.ZERO))
			throw new AdempiereUserError("@Qty@ = @0@");
		
		
		MClientInfo m_ClientInfo = MClientInfo.get(getCtx());
		if(m_ClientInfo.getC_UOM_Weight_ID() == 0)
			return "@C_UOM_Weight_ID@ @NotFound@";
		
		//	Get Category
		MProduct product = MProduct.get(getCtx(), m_Farming.getCategory_ID());
		//	Rate Convert
		BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
				product.getM_Product_ID(), m_ClientInfo.getC_UOM_Weight_ID());
		MUOM uom = MUOM.get(getCtx(), product.getC_UOM_ID());
		//	Set Precision
		int precision = uom.getStdPrecision();
		//	Valid Conversion
		if(rate == null)
			throw new AdempiereUserError("@NoUOMConversion@");
		
		//	Max Warehouse Receipt
		m_MaxReceipt = DB.getSQLValueBD(get_TrxName(), "SELECT rc.Qty - SUM(COALESCE(mg.QtyToDeliver, 0)) " +
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
		//	Convert to UOM of Product
		
		if(m_MaxReceipt != null)
			m_MaxReceipt = m_MaxReceipt.multiply(rate);
		
		//	Quantity Delivered
		m_QtyDelivered = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(mg.QtyToDeliver) " +
				"FROM FTA_MobilizationGuide mg " +
				"WHERE mg.FTA_Farming_ID = ?" +
				"AND mg.DocStatus IN('CO', 'CL') ", 
				p_FTA_Farming_ID);
		
		log.fine("WeightDelivered=" + m_QtyDelivered);
		
		//	Valid Quantity Delivered
		if(m_QtyDelivered == null)
			m_QtyDelivered = Env.ZERO;
		
		//	Max Quantity to Generate
		m_MaxQtyToDeliver = m_Qty.add(m_Re_EstimatedQty)
									.subtract(m_QtyDelivered);
		
		log.fine("MaxWeight=" + m_MaxQtyToDeliver);
		
		if(m_MaxQtyToDeliver.compareTo(Env.ZERO) <= 0)
			throw new AdempiereUserError("@Qty@ <= @QtyToDeliver@");
		
		if(p_MaxQty <= 0)
			throw new AdempiereUserError("@MaxQty@ <= @0@");
		
		//	Valid the Minimum to Generate
		if(m_MaxReceipt != null
				&& m_MaxReceipt.compareTo(m_MaxQtyToDeliver) <= 0)
			m_MaxQtyToDeliver = m_MaxReceipt;
		
		//	Set Quantity To Deliver
		if(p_QtyToDeliver != null
				&& p_QtyToDeliver.compareTo(Env.ZERO) > 0){
			m_QtyToDeliver = p_QtyToDeliver;
			//	Valid Exceed Load Capacity
			if(m_QtyToDeliver.compareTo(m_VehicleType.getLoadCapacity()) > 0)
				throw new AdempiereUserError("@QtyToDeliver@ > @LoadCapacity@");
			//	Minimum Load Capacity
			BigDecimal m_MinLoadCapacity = m_VehicleType.getMinLoadCapacity();
			//	Not mandatory
			if(m_MinLoadCapacity == null)
				m_MinLoadCapacity = Env.ZERO;
			//	Valid minimum to deliver
			if(m_QtyToDeliver.compareTo(m_MinLoadCapacity) < 0)
				throw new AdempiereUserError("@QtyToDeliver@ < @MinLoadCapacity@");
		}
		else
			m_QtyToDeliver = m_VehicleType.getLoadCapacity();
		
		//	Convert
		m_QtyToDeliver = m_QtyToDeliver.multiply(rate);
		
		log.fine("New MaxWeight=" + m_MaxQtyToDeliver);
		
		//	Weight Generated
		BigDecimal m_WeightGenerated = Env.ZERO;
		//	Quantity of Guides to Generate
		int count = 0;
		m_Guides = new ArrayList<MFTAMobilizationGuide>();
		// Generate
		while(m_MaxQtyToDeliver.compareTo(m_WeightGenerated) >= 0
				&& p_MaxQty > count){

			//	Valid Remainder
			if(m_QtyToDeliver.add(m_WeightGenerated).compareTo(m_MaxQtyToDeliver) >= 0)
				m_QtyToDeliver = m_MaxQtyToDeliver.subtract(m_WeightGenerated);
			if(m_QtyToDeliver.compareTo(Env.ZERO) <= 0)
				break;
			
			//	Calculate Re-EstimatedQty
			m_Diff_Re_EstimatedQty = m_Farming_MaxQty
					.subtract(m_QtyDelivered)
					.subtract(m_WeightGenerated.add(m_QtyToDeliver));
			
			if(!m_Farming_MaxQty.equals(Env.ZERO) 
					&& m_Diff_Re_EstimatedQty.compareTo(Env.ZERO) < 0)
				break;
			
			MFTAMobilizationGuide m_MobilizationGuide = new MFTAMobilizationGuide(getCtx(), 0, get_TrxName());
			m_MobilizationGuide.setAD_Org_ID(p_AD_Org_ID);
			m_MobilizationGuide.setAD_OrgTrx_ID(p_AD_OrgTrx_ID);
			m_MobilizationGuide.setC_DocType_ID(p_C_DocTypeTarget_ID);
			m_MobilizationGuide.setDateDoc(p_DateDoc);
			m_MobilizationGuide.setFTA_Farming_ID(p_FTA_Farming_ID);
			m_MobilizationGuide.setFTA_VehicleType_ID(p_FTA_VehicleType_ID);
			m_MobilizationGuide.setM_Warehouse_ID(p_M_Warehouse_ID);
			m_MobilizationGuide.setQtyToDeliver(m_QtyToDeliver.setScale(precision, BigDecimal.ROUND_HALF_UP));
			m_MobilizationGuide.setOwner_ID(p_Owner_ID);
			m_MobilizationGuide.setIsSOTrx(false);
			m_MobilizationGuide.saveEx();
			//	Complete Document
			m_MobilizationGuide.processIt(DocAction.ACTION_Complete);
			m_MobilizationGuide.saveEx();
			m_Guides.add(m_MobilizationGuide);
			//	Add Weight
			m_WeightGenerated = m_WeightGenerated.add(m_QtyToDeliver);
			count ++;
		}
		
		BigDecimal m_ToptoDeliver = m_QtyToDeliver.multiply(new BigDecimal(p_MaxQty));
		//	Diff
		if(m_ToptoDeliver.compareTo(m_Qty) < 0)
			m_Qty = m_ToptoDeliver;
		
		//	Valid Max Qty
		if(!m_Farming_MaxQty.equals(Env.ZERO) 
				&& m_Diff_Re_EstimatedQty.compareTo(Env.ZERO) < 0){
			String msg = "@Created@ = " + count + " [@QtyDelivered@ > @MaxQty@ @MustGenerate@ @a@ @Re_EstimatedQty@ @of@ = " 
					+ m_Qty.subtract(m_Farming_MaxQty).doubleValue() + "]";
			//	Log
			addLog (0, null, null, msg);
			return msg;
		}
		
		//	Print Guide
		if(m_Guides != null
				&& !m_Guides.isEmpty()
				&& p_IsPrinted) {
			//	Get Table
			int m_AD_Process_ID = MProcess.getProcess_ID("FTA_RV_MobilizationGuide Mobilization", get_TrxName());
			MProcess pr = MProcess.get(getCtx(), m_AD_Process_ID);
			if(pr != null){
				X_AD_ReportView rv = new X_AD_ReportView(getCtx(), pr.getAD_ReportView_ID(), get_TrxName());
				if(rv != null){
					MTable table = MTable.get(getCtx(), rv.getAD_Table_ID());
					int m_AD_Table_ID = table.getAD_Table_ID();
					String tableName = table.getTableName();
					boolean directPrint = !Ini.isPropertyBool(Ini.P_PRINTPREVIEW);
					MPrintFormat f = MPrintFormat.get(getCtx(), rv.getAD_ReportView_ID(), m_AD_Table_ID);
					//	for all Mobilization Guide
					for (MFTAMobilizationGuide guide : m_Guides)
					{	
						if(f != null) {
							MQuery q = new MQuery(tableName);
							q.addRestriction("FTA_MobilizationGuide_ID", "=", guide.getFTA_MobilizationGuide_ID());
							PrintInfo i = new PrintInfo(Msg.translate(getCtx(), "FTA_MobilizationGuide_ID"), m_AD_Table_ID, guide.getFTA_MobilizationGuide_ID());
							i.setAD_Table_ID(m_AD_Table_ID);
							ReportEngine re = new ReportEngine(Env.getCtx(), f, q, i, get_TrxName());
							//	Print
							if(re != null){
								//	Is Direct Print
								if(directPrint)
									re.print();
								else
									ReportCtl.preview(re);
							}	
						} else 
							log.warning(Msg.parseTranslation(getCtx(), "@NoDocPrintFormat@ AD_Table_ID=" + m_AD_Table_ID));
					}	
				}	
			}
		}
		
		return "@Created@ = " + count;
	}
}
