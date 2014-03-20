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

import java.math.BigDecimal;
import java.util.List;

import org.compiere.model.I_C_Invoice;
import org.compiere.model.I_C_Order;
import org.compiere.model.I_C_Payment;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.model.MPayment;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.X_C_DocType;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

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
		if (po.get_TableName().equals(I_C_Invoice.Table_Name) 
				&& type == TYPE_BEFORE_NEW) {
			MInvoice invoice = (MInvoice) po;
			int m_C_Order_ID = invoice.getC_Order_ID();
			if(m_C_Order_ID != 0){
				MOrder order = new MOrder(Env.getCtx(), m_C_Order_ID, invoice.get_TableName());
				int m_FTA_FarmerCredit_ID = order.get_ValueAsInt("FTA_FarmerCredit_ID");
				boolean m_IsExceedCreditLimit = order.get_ValueAsBoolean("IsExceedCreditLimit");
				boolean m_IsCreditFactManual = order.get_ValueAsBoolean("IsCreditFactManual");
				if(m_FTA_FarmerCredit_ID != 0) {
					invoice.set_ValueOfColumn("FTA_FarmerCredit_ID", m_FTA_FarmerCredit_ID);
					invoice.set_ValueOfColumn("IsExceedCreditLimit", m_IsExceedCreditLimit);
					invoice.set_ValueOfColumn("IsCreditFactManual", m_IsCreditFactManual);
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
					//	Dixon Martinez 2014-02-28 
					//	Set Farmer Credit
					
					pay.set_ValueOfColumn("FTA_FarmerCredit_ID", pr.getFTA_FarmerCredit_ID());
					
					//	End Dixon Martinez
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
			if(po.get_TableName().equals(I_C_Order.Table_Name)){
				MOrder ord = (MOrder) po;
				if(ord.isSOTrx()
						&& ord.get_ValueAsInt("FTA_FarmerCredit_ID") != 0){
					return MFTAFact.createFact(Env.getCtx(), ord, ord.getDateOrdered(), ord.getGrandTotal(), Env.ONE, ord.get_TrxName());
				}
			} else if(po.get_TableName().equals(I_C_Invoice.Table_Name)){
				MInvoice inv = (MInvoice) po;
				if(inv.get_ValueAsInt("FTA_FarmerCredit_ID") != 0
						&& inv.isSOTrx()){
					String msg = null;
					if(inv.getReversal_ID() == 0){
						MDocType docType = MDocType.get(Env.getCtx(), inv.getC_DocType_ID());
						BigDecimal multiplier = Env.ONE;
						if(/*docType.getDocBaseType().equals(X_C_DocType.DOCBASETYPE_APInvoice)
								|| */docType.getDocBaseType().equals(X_C_DocType.DOCBASETYPE_ARCreditMemo))
							multiplier = multiplier.negate();
						//	Is Manual
						if(inv.get_ValueAsBoolean("IsCreditFactManual")){
							MOrder ord = new MOrder(Env.getCtx(), inv.getC_Order_ID(), inv.get_TrxName());
							if(!inv.getGrandTotal().equals(ord.getGrandTotal())){
								msg = MFTAFact.createFact(Env.getCtx(), inv, inv.getDateInvoiced(), inv.getGrandTotal(), multiplier, inv.get_TrxName());
							} else
								msg = MFTAFact.copyFromFact(Env.getCtx(), ord, inv, ord.get_TrxName());
						} else {
							msg = MFTAFact.createFact(Env.getCtx(), inv, inv.getDateInvoiced(), inv.getGrandTotal(), multiplier, inv.get_TrxName());
						}
						//	Set Posted
						if(msg != null){
							inv.set_ValueOfColumn("IsCreditFactPosted", false);
						} else{
							inv.set_ValueOfColumn("IsCreditFactPosted", true);
						}
					} else {
						MInvoice reversal = MInvoice.get(Env.getCtx(), inv.getReversal_ID());
						msg = MFTAFact.copyFromFact(Env.getCtx(), reversal, inv, Env.ONE.negate(), inv.get_TrxName());
					}
					//	Return
					return msg;
				}
			} else if(po.get_TableName().equals(I_C_Payment.Table_Name)){
				MPayment payment = (MPayment) po;
				//2014-03-11 Carlos Parada Set Farmer Credit From Invoice When is From Liquidation
				if (payment.get_ValueAsInt("FTA_FarmerCredit_ID")==0){
					if (payment.getC_Invoice_ID()!=0){
						MInvoice inv = new MInvoice(Env.getCtx(), payment.getC_Invoice_ID(), payment.get_TrxName());
						if (inv.get_ValueAsInt("FTA_FarmerLiquidation_ID") !=0 && inv.get_ValueAsInt("FTA_FarmerCredit_ID")!=0)
							payment.set_ValueOfColumn("FTA_FarmerCredit_ID", inv.get_ValueAsInt("FTA_FarmerCredit_ID"));
					}
					
					List<MInvoice> invoices = new Query(Env.getCtx(), MInvoice.Table_Name, 
											" EXISTS(SELECT 1 FROM C_PaymentAllocate invall WHERE invall.C_Invoice_ID = C_Invoice.C_Invoice_ID AND invall.C_Payment_ID = ?) " +
											" AND FTA_FarmerLiquidation_ID IS NOT NULL " +
											" AND FTA_FarmerCredit_ID IS NOT NULL ", 
											payment.get_TrxName())
											.setParameters(payment.getC_Payment_ID())
											.list();
				
					if (invoices.size() > 0)
						payment.set_ValueOfColumn("FTA_FarmerCredit_ID", invoices.get(0).get_ValueAsInt("FTA_FarmerCredit_ID"));
				}//End Carlos Parada
					
				if(payment.get_ValueAsInt("FTA_FarmerCredit_ID") != 0){
					String msg = null;
					if(payment.getReversal_ID() == 0){
						BigDecimal multiplier = Env.ONE;
						if(payment.isReceipt())
							multiplier = multiplier.negate();
						msg = MFTAFact.createFact(Env.getCtx(), payment, payment.getDateTrx(), payment.getPayAmt(), multiplier, payment.get_TrxName());
						//	Set Posted
						if(msg != null){
							payment.set_ValueOfColumn("IsCreditFactPosted", false);
						} else{
							payment.set_ValueOfColumn("IsCreditFactPosted", true);
						}
					} else {
						MPayment reversal = new MPayment(Env.getCtx(), payment.getReversal_ID(), payment.get_TrxName());
						msg = MFTAFact.copyFromFact(Env.getCtx(), reversal, payment, Env.ONE.negate(), payment.get_TrxName());
					}
					//	Return
					return msg;
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
				
				List<MFTAPaymentRequest>  prs = new Query(Env.getCtx(),MFTAPaymentRequest.Table_Name,"Exists(Select 1 From C_PaySelectionCheck pschk Where pschk.C_Payment_ID =? And pschk.C_PaySelectionCheck_ID=FTA_PaymentRequest.C_PaySelectionCheck_ID)",pay.get_TrxName())
					.setOnlyActiveRecords(true)
					.setParameters(pay.getC_Payment_ID())
					.list();
				
				for(MFTAPaymentRequest pr:prs){
					pr.setC_PaySelectionCheck_ID(0);
					pr.save(pay.get_TrxName());
				}
				
				
				List<MFTAAllocation>  allocs = new Query(Env.getCtx(),MFTAAllocation.Table_Name,"Exists(Select 1 From FTA_AllocationLine allocline Where allocline.C_Payment_ID =? And allocline.FTA_Allocation_ID=FTA_Allocation.FTA_Allocation_ID)",null)
				.setOnlyActiveRecords(true)
				.setParameters(pay.getC_Payment_ID())
				.list();
				
				for(MFTAAllocation alloc:allocs){
					alloc.processIt(X_FTA_Allocation.DOCACTION_Void);
					alloc.save(pay.get_TrxName());
				}
				
				//2014-03-12 Carlos Parada Delete Fact When Reversed or Void 
				if (pay.get_ValueAsInt("FTA_FarmerCredit_ID")!=0)
					MFTAFact.deleteFact(MPayment.Table_ID, pay.getC_Payment_ID(), false,pay.get_TrxName());
				//End Carlos Parada
			}
			// Carlos Parada Set 
			else if (po.get_TableName().equals(MInvoice.Table_Name)){
				MInvoice invoice = (MInvoice) po;
				
				if (invoice.get_ValueAsInt("FTA_FarmerLiquidation_ID")!=0){
					List<MAllocationLine>  allocs = new Query(Env.getCtx(),MAllocationLine.Table_Name,"C_Invoice_ID =? ",null)
					.setOnlyActiveRecords(true)
					.setParameters(invoice.getC_Invoice_ID())
					.list();
				if (allocs.size()!=0)
					return "@DocumentAllocated@";
				}
			}
				
		}else if(timing ==TIMING_BEFORE_COMPLETE){
			if(po.get_TableName().equals(MPayment.Table_Name)){
				MPayment pay = (MPayment) po;
				List<MFTAPaymentRequest>  prs = new Query(Env.getCtx(),MFTAPaymentRequest.Table_Name,"Exists(Select 1 From C_PaySelectionCheck pschk Where pschk.C_Payment_ID =? And pschk.C_PaySelectionCheck_ID=FTA_PaymentRequest.C_PaySelectionCheck_ID) AND FTA_FarmerLiquidation_ID IS NOT NULL ",null)
				.setOnlyActiveRecords(true)
				.setParameters(pay.getC_Payment_ID())
				.list();
				
				for(MFTAPaymentRequest pr:prs){
					
					MFTAAllocation alloc =new MFTAAllocation(Env.getCtx(), 0, pay.get_TrxName());
					alloc.setDateDoc(pay.getDateTrx());
					alloc.setFTA_FarmerCredit_ID(pr.getFTA_FarmerCredit_ID());
					alloc.setApprovalAmt(Env.ZERO);
					alloc.setC_Currency_ID(pay.getC_Currency_ID());
					alloc.setDescription(pay.getDescription());
					alloc.setIsApproved(true);
					
					alloc.save(pay.get_TrxName());
					
					MFTAAllocationLine allocline = new MFTAAllocationLine(alloc);
					allocline.setC_BPartner_ID(pay.getC_BPartner_ID());
					allocline.setFTA_FarmerLiquidation_ID(pr.getFTA_FarmerLiquidation_ID());
					allocline.setC_Payment_ID(pay.getC_Payment_ID());
					allocline.setAmount(pay.getPayAmt());
					allocline.setWriteOffAmt(Env.ZERO);
					allocline.setOverUnderAmt(Env.ZERO);
					allocline.setDiscountAmt(Env.ZERO);
					
					allocline.save(pay.get_TrxName());
					
					alloc.processIt(X_FTA_Allocation.DOCACTION_Complete);
					alloc.save(pay.get_TrxName());
				}
			}	
		} else if(timing == TIMING_BEFORE_REVERSECORRECT){
			if (po.get_TableName().equals(I_C_Invoice.Table_Name)){
				MInvoice invoice = (MInvoice) po;
				String referenceNo = DB.getSQLValueString(invoice.get_TrxName(), "SELECT pr.DocumentNo " +
						"FROM FTA_PaymentRequest pr " +
						"WHERE pr.C_Invoice_ID = ? " +
						"AND pr.DocStatus IN('CO', 'CL')", invoice.getC_Invoice_ID());
				if(referenceNo != null)
					return "@SQLErrorReferenced@ @FTA_PaymentRequest_ID@: " + referenceNo + " @completed@";
			}
		}
		return null;
	}
}
