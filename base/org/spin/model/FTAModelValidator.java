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

import java.util.List;

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
import org.compiere.util.Trx;

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
		engine.addDocValidate(MPayment.Table_Name, this);
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
		else if(po.get_TableName().equals(MPaySelectionCheck.Table_Name)&& 
				(type == TYPE_BEFORE_CHANGE)){
			MPaySelectionCheck pschk = (MPaySelectionCheck) po;
			//When Payment != Null  
			if (pschk.getC_Payment_ID()!=0){
				
				//Find Payment Request
				List<MFTAPaymentRequest>  prs = new Query(Env.getCtx(),MFTAPaymentRequest.Table_Name,"C_PaySelectionCheck_ID=?",null)
				.setOnlyActiveRecords(true)
				.setParameters(pschk.getC_PaySelectionCheck_ID())
				.list();
				
				for(MFTAPaymentRequest pr:prs){
					//Find One Farming
					MPayment pay = new MPayment(Env.getCtx(), pschk.getC_Payment_ID(), null);
					
					if (pr.getFTA_FarmerLiquidation_ID()==0 && pr.getC_Charge_ID()!=0)
						pay.setC_Charge_ID(pr.getC_Charge_ID());
					else if (pr.getFTA_FarmerLiquidation_ID()!=0){
						
						MFTAFarming fming = new Query(Env.getCtx(),MFTAFarming.Table_Name,"FTA_FarmerCredit_ID=?",null)
						.setOnlyActiveRecords(true)
						.setParameters(pr.getFTA_FarmerCredit_ID())
						.firstOnly();
						
						if (fming!=null)
							if (fming.getC_OrderLine()!=null)
								pay.setC_Order_ID(fming.getC_OrderLine().getC_Order_ID());
						
					}
					
					pay.save();
					
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
					//ADialog.error(0, null, Msg.parseTranslation(Env.getCtx(), msg));
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
			
		}else if(timing == TIMING_AFTER_VOID 
				|| timing == TIMING_AFTER_REVERSECORRECT){
			if(po.get_TableName().equals(MPayment.Table_Name)){
				MPayment pay = (MPayment) po;
				
				String trxName = MPayment.Table_Name;
				Trx trx = Trx.get(trxName, true);
				
				List<MFTAPaymentRequest>  prs = new Query(Env.getCtx(),MFTAPaymentRequest.Table_Name,"Exists(Select 1 From C_PaySelectionCheck pschk Where pschk.C_Payment_ID =? And pschk.C_PaySelectionCheck_ID=FTA_PaymentRequest.C_PaySelectionCheck_ID)",trxName)
					.setOnlyActiveRecords(true)
					.setParameters(pay.getC_Payment_ID())
					.list();
				
				for(MFTAPaymentRequest pr:prs){
					pr.setC_PaySelectionCheck_ID(0);
					pr.save(trxName);
				}
				
				
				List<MFTAAllocation>  allocs = new Query(Env.getCtx(),MFTAAllocation.Table_Name,"Exists(Select 1 From FTA_AllocationLine allocline Where allocline.C_Payment_ID =? And allocline.FTA_Allocation_ID=FTA_Allocation.FTA_Allocation_ID)",null)
				.setOnlyActiveRecords(true)
				.setParameters(pay.getC_Payment_ID())
				.list();
				
				for(MFTAAllocation alloc:allocs){
					alloc.processIt(alloc.DOCACTION_Void);
					alloc.save(trxName);
				}
				
				//Confirm Changes
				trx.commit();
			}
				
		}else if(timing ==TIMING_BEFORE_COMPLETE){
			if(po.get_TableName().equals(MPayment.Table_Name)){
				MPayment pay = (MPayment) po;
				List<MFTAPaymentRequest>  prs = new Query(Env.getCtx(),MFTAPaymentRequest.Table_Name,"Exists(Select 1 From C_PaySelectionCheck pschk Where pschk.C_Payment_ID =? And pschk.C_PaySelectionCheck_ID=FTA_PaymentRequest.C_PaySelectionCheck_ID) AND FTA_FarmerLiquidation_ID IS NOT NULL ",null)
				.setOnlyActiveRecords(true)
				.setParameters(pay.getC_Payment_ID())
				.list();
				
				String trxName = MPayment.Table_Name;
				Trx trx = Trx.get(trxName, true);
				
				for(MFTAPaymentRequest pr:prs){
					
					MFTAAllocation alloc =new MFTAAllocation(Env.getCtx(), 0, trxName);
					alloc.setDateDoc(pay.getDateTrx());
					alloc.setFTA_FarmerCredit_ID(pr.getFTA_FarmerCredit_ID());
					alloc.setApprovalAmt(Env.ZERO);
					alloc.setC_Currency_ID(pay.getC_Currency_ID());
					alloc.setDescription(pay.getDescription());
					alloc.setIsApproved(true);
					
					alloc.save(trxName);
					
					MFTAAllocationLine allocline = new MFTAAllocationLine(alloc);
					allocline.setC_BPartner_ID(pay.getC_BPartner_ID());
					allocline.setFTA_FarmerLiquidation_ID(pr.getFTA_FarmerLiquidation_ID());
					allocline.setC_Payment_ID(pay.getC_Payment_ID());
					allocline.setAmount(pay.getPayAmt());
					allocline.setWriteOffAmt(Env.ZERO);
					allocline.setOverUnderAmt(Env.ZERO);
					allocline.setDiscountAmt(Env.ZERO);
					
					allocline.save(trxName);
					
					alloc.processIt(alloc.DOCACTION_Complete);
					alloc.save(trxName);
					
					
				}
				//Confirm Changes
				trx.commit();
				
			}
				
				
		}
		return null;
	}

}
