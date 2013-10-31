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
package org.spin.model;

import org.compiere.apps.ADialog;
import org.compiere.model.MClient;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.model.MPayment;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FTAModelValidator implements ModelValidator {

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/10/2013, 14:12:44
	 */
	public FTAModelValidator() {
		super();
	}//	FTAModelValidator

	/** Logger */
	private static CLogger log = CLogger.getCLogger(FTAModelValidator.class);
	/** Client */
	private int m_AD_Client_ID = -1;
	
	@Override
	public void initialize(ModelValidationEngine engine, MClient client) {
		// client = null for global validator
		if (client != null) {
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		} else {
			log.info("Initializing global validator: " + this.toString());
		}
		//	Add Timing change in C_Order and C_Invoice
		engine.addDocValidate(MOrder.Table_Name, this);
		engine.addModelChange(MInvoice.Table_Name, this);
		engine.addDocValidate(MInvoice.Table_Name, this);
		engine.addModelChange(MPaySelectionCheck.Table_Name, this);
		
	}

	@Override
	public int getAD_Client_ID() {
		return m_AD_Client_ID;
	}

	@Override
	public String login(int AD_Org_ID, int AD_Role_ID, int AD_User_ID) {
		log.info("AD_User_ID=" + AD_User_ID);
		return null;
	}

	@Override
	public String modelChange(PO po, int type) throws Exception {
		if (po.get_TableName().equals("C_Invoice") 
				&& 
				(type == TYPE_BEFORE_NEW
						|| type == TYPE_BEFORE_CHANGE)) {
			MInvoice invoice = (MInvoice) po;
			int m_C_Order_ID = invoice.getC_Order_ID();
			if(m_C_Order_ID != 0){
				MOrder order = new MOrder(Env.getCtx(), m_C_Order_ID, invoice.get_TableName());
				int m_FTA_FarmerCredit_ID = order.get_ValueAsInt("FTA_FarmerCredit_ID");
				//boolean m_IsCreditFactManual = order.get_ValueAsBoolean("IsCreditFactManual");
				if(m_FTA_FarmerCredit_ID != 0) {
					invoice.set_ValueOfColumn("FTA_FarmerCredit_ID", m_FTA_FarmerCredit_ID);
				}
				//	
				log.info(po.toString());
			}
		}
		//Carlos Parada
		else if(po.get_TableName().equals(MPaySelectionCheck.Table_Name)){
			MPaySelectionCheck pschk = (MPaySelectionCheck) po;
			//When Payment != Null  
			if (pschk.getC_Payment_ID()!=0){
				
				//Find Payment Request
				MFTAPaymentRequest pr = new Query(Env.getCtx(),MFTAPaymentRequest.Table_Name,"C_PaySelectionCheck_ID=?",null)
				.setOnlyActiveRecords(true)
				.setParameters(pschk.getC_PaySelectionCheck_ID())
				.firstOnly();
				
				if (pr!=null){
					//Find One Farming
					MFTAFarming fming = new Query(Env.getCtx(),MFTAFarming.Table_Name,"FTA_FarmerCredit_ID=?",null)
					.setOnlyActiveRecords(true)
					.setParameters(pr.getFTA_FarmerCredit_ID())
					.firstOnly();
					
					if (fming!=null){
						MPayment pay = new MPayment(Env.getCtx(), pschk.getC_Payment_ID(), null);
						pay.setC_Order_ID(fming.getC_OrderLine().getC_Order_ID());
						pay.save();
					}
					
				}
			}
		}
		return null;
	}
	
	@Override
	public String docValidate(PO po, int timing) {
		if(timing == TIMING_AFTER_COMPLETE){
			//	Order
			if(po.get_TableName().equals(MOrder.Table_Name)){
				MOrder ord = (MOrder) po;
				if(ord.isSOTrx()
						&& ord.get_ValueAsInt("FTA_FarmerCredit_ID") != 0){
					return MFTAFact.createOrderFact(Env.getCtx(), ord, ord.get_TrxName());
				}
			} else if(po.get_TableName().equals(MInvoice.Table_Name)){
				MInvoice inv = (MInvoice) po;
				if(inv.isSOTrx()
						&& inv.get_ValueAsInt("FTA_FarmerCredit_ID") != 0){
					String msg = MFTAFact.createInvoiceFact(Env.getCtx(), inv, inv.get_TrxName());
					if(msg != null){
						inv.set_ValueOfColumn("IsCreditFactPosted", false);
						//inv.set_ValueOfColumn("IsCreditLimitExceeded", true);
					} else{
						inv.set_ValueOfColumn("IsCreditFactPosted", true);
						//inv.set_ValueOfColumn("IsCreditLimitExceeded", false);
					}
					ADialog.error(0, null, Msg.parseTranslation(Env.getCtx(), msg));
					//System.out.println(msg);
				}
			}
		} else if(timing == TIMING_AFTER_REACTIVATE
				|| timing == TIMING_AFTER_VOID){
			if(po.get_TableName().equals(MOrder.Table_Name)){
				MOrder ord = (MOrder) po;
				if(ord.isSOTrx()
						&& ord.get_ValueAsInt("FTA_FarmerCredit_ID") != 0){
					MFTAFact.deleteFact(MOrder.Table_ID, ord.getC_Order_ID(), false,ord.get_TrxName());
				}
			}
		}
		return null;
	}

}
