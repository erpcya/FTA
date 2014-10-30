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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.compiere.model.I_C_Invoice;
import org.compiere.model.I_C_Order;
import org.compiere.model.I_C_Payment;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.model.MPayment;
import org.compiere.model.MSysConfig;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.X_C_DocType;
import org.compiere.model.X_C_Order;
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
		
		//	Dixon Martinez 
		//	Add support to see if the company manages credit module
		creditControlModule = MSysConfig.getBooleanValue("CREDIT_CONTROL_MODULE", false);
		//	Initialize methods depending on whether the credit module is used or not by the company
		//	Add Timing change in C_Order and C_Invoice
		engine.addDocValidate(MOrder.Table_Name, this);
		engine.addModelChange(MInvoice.Table_Name, this);
		engine.addDocValidate(MInvoice.Table_Name, this);
		engine.addModelChange(MPaySelectionCheck.Table_Name, this);
		engine.addDocValidate(MPayment.Table_Name, this);
		engine.addDocValidate(MFTAFarmerCredit.Table_Name, this);
		engine.addModelChange(X_C_Order.Table_Name, this);
		//	End Dixon Martinez
	}
	boolean creditControlModule ;
	@Override
	public int getAD_Client_ID() {
		return m_AD_Client_ID;
	}

	@Override
	public String login(int AD_Org_ID, int AD_Role_ID, int AD_User_ID) {
		log.info("AD_User_ID=" + AD_User_ID);
		//	Dixon Martinez 
		//	Add support to see if the company manages credit module
		boolean sysConfig = MSysConfig.getBooleanValue("CREDIT_CONTROL_MODULE",false);
		Env.setContext(Env.getCtx(), "#CREDIT_CONTROL_MODULE", sysConfig);
		//	End Dixon Martinez
		return null;
	}

	@Override
	public String modelChange(PO po, int type) throws Exception {
		if (po.get_TableName().equals(I_C_Invoice.Table_Name) 
				&& type == TYPE_BEFORE_NEW
					&& creditControlModule) {
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
				(type == TYPE_BEFORE_CHANGE)
					&& creditControlModule){
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
		//	Dixon Martinez
		// 	Add support parent farmer credit
		else if (po.get_TableName().equals(X_C_Order.Table_Name)
				&&	(type == TYPE_BEFORE_NEW 
						|| type == TYPE_BEFORE_CHANGE)
						&& creditControlModule) {
			MOrder m_Order  = (MOrder) po;
			int p_FTA_FarmerCredit_ID = m_Order.get_ValueAsInt("FTA_FarmerCredit_ID");
			if( p_FTA_FarmerCredit_ID > 0) {
				String sql = "SELECT Parent_FarmerCredit_ID FROM FTA_FarmerCredit fc WHERE fc.FTA_FarmerCredit_ID = ?";
				//
				int p_Parent_FarmerCredit_ID = DB.getSQLValue(m_Order.get_TrxName(), sql, p_FTA_FarmerCredit_ID);
				if (p_Parent_FarmerCredit_ID > 0 ) {
					m_Order.set_ValueOfColumn("FTA_FarmerCredit_ID", p_Parent_FarmerCredit_ID);
					m_Order.saveEx();
				}
			}
		}
		//	End Dixon Martinez
		return null;
	}
	
	@Override
	public String docValidate(PO po, int timing) {
		if(timing == TIMING_AFTER_COMPLETE){
			//	Order
			if(po.get_TableName().equals(I_C_Order.Table_Name)
					&& creditControlModule){
				MOrder ord = (MOrder) po;
				if(ord.isSOTrx()
						&& ord.get_ValueAsInt("FTA_FarmerCredit_ID") != 0
							&& !ord.get_ValueAsBoolean("IsCreditFactManual")){
					return MFTAFact.createFact(Env.getCtx(), ord, ord.getDateOrdered(), ord.getGrandTotal(), Env.ONE, ord.get_TrxName());
				}
			} else if(po.get_TableName().equals(I_C_Invoice.Table_Name)
						&& creditControlModule){
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
							if (inv.getC_Order_ID()!=0){
								MOrder ord = new MOrder(Env.getCtx(), inv.getC_Order_ID(), inv.get_TrxName());
								if(!inv.getGrandTotal().equals(ord.getGrandTotal())){
									msg = MFTAFact.createFact(Env.getCtx(), inv, inv.getDateInvoiced(), inv.getGrandTotal(), multiplier, inv.get_TrxName());
								} else
									msg = MFTAFact.copyFromFact(Env.getCtx(), ord, inv, ord.get_TrxName());
							}
							else
							{
								if (!inv.get_ValueAsBoolean("IsExceedCreditLimit"))
									msg = EvalutateCreditLimitDoc(MInvoice.Table_ID, inv.getC_Invoice_ID(), inv.get_ValueAsInt("FTA_FarmerCredit_ID"), inv.get_ValueAsBoolean("IsExceedCreditLimit"), inv.get_TrxName());
							}
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
						//2014-03-20 Carlos Parada Delete Invoice Fact 
						MInvoice reversal = MInvoice.get(Env.getCtx(), inv.getReversal_ID());
						//msg = MFTAFact.copyFromFact(Env.getCtx(), reversal, inv, Env.ONE.negate(), inv.get_TrxName());
						MFTAFact.deleteFact(MInvoice.Table_ID, reversal.getC_Invoice_ID(), true,inv.get_TrxName());
						//End Carlos Parada
					}
					//	Return
					return msg;
				}
			} else if(po.get_TableName().equals(I_C_Payment.Table_Name)
						&& creditControlModule){
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
						MFTAFact.deleteFact(I_C_Payment.Table_ID, reversal.getC_Payment_ID(), true, payment.get_TrxName());
					}
					//	Return
					return msg;
				}
			}
		} else if(timing == TIMING_AFTER_REACTIVATE
				|| timing == TIMING_AFTER_VOID){
			if(po.get_TableName().equals(MOrder.Table_Name)
					&& creditControlModule){
				MOrder ord = (MOrder) po;
				if(ord.isSOTrx()
						&& ord.get_ValueAsInt("FTA_FarmerCredit_ID") != 0){
					MFTAFact.deleteFact(MOrder.Table_ID, ord.getC_Order_ID(), false,ord.get_TrxName());
				}
			}
			
		}else if(timing == TIMING_AFTER_VOID 
				|| timing == TIMING_AFTER_REVERSECORRECT){
			if(po.get_TableName().equals(MPayment.Table_Name)
					&& creditControlModule){
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
			else if (po.get_TableName().equals(MInvoice.Table_Name)
						&& creditControlModule){
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
			if(po.get_TableName().equals(MPayment.Table_Name)
					&& creditControlModule){
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
			} else if(po.get_TableName().equals(I_C_Order.Table_Name)
					&& creditControlModule){
				MOrder ord = (MOrder) po;
				int m_FTA_FarmerCredit_ID = ord.get_ValueAsInt("FTA_FarmerCredit_ID");
				//	Valid Sales Transaction
				if(ord.isSOTrx()
						&& m_FTA_FarmerCredit_ID != 0){
					//	Valid a Bill of exchange signed
					int m_FTA_BillOfExchange_ID = DB.getSQLValue(ord.get_TrxName(), "SELECT MAX(bfe.FTA_BillOfExchange_ID) FROM FTA_BillOfExchange bfe " +
							"WHERE bfe.FTA_FarmerCredit_ID = ? " +
							"AND bfe.Status='S' " +
							"AND bfe.DocStatus IN ('CO','CL')", m_FTA_FarmerCredit_ID);
					if(m_FTA_BillOfExchange_ID == 0)
						return "@FTA_BillOfExchange_ID@ @Unsigned@";
				}
			}
		} else if(timing == TIMING_BEFORE_REVERSECORRECT){
			if (po.get_TableName().equals(I_C_Invoice.Table_Name)
					&& creditControlModule){
				MInvoice invoice = (MInvoice) po;
				String referenceNo = DB.getSQLValueString(invoice.get_TrxName(), "SELECT pr.DocumentNo " +
						"FROM FTA_PaymentRequest pr " +
						"WHERE pr.C_Invoice_ID = ? " +
						"AND pr.DocStatus IN('CO', 'CL')", invoice.getC_Invoice_ID());
				if(referenceNo != null)
					return "@SQLErrorReferenced@ @FTA_PaymentRequest_ID@: " + referenceNo + " @completed@";
			}
			if(po.get_TableName().equals(MInvoice.Table_Name)) {
				MInvoice inv = (MInvoice) po;
				if(inv.isSOTrx()) {
					MInvoiceLine inv_Line [] =  inv.getLines(true);
					for (MInvoiceLine mInvoiceLine : inv_Line) {
						String sql = "SELECT FTA_LoadOrderLine_ID FROM FTA_LoadOrderLine WHERE C_InvoiceLine_ID = ?";
						int p_FTA_LoadOrderLine_ID = DB.getSQLValue(mInvoiceLine.get_TrxName(), sql, mInvoiceLine.get_ID());
						MFTALoadOrderLine lin = 
								new MFTALoadOrderLine(mInvoiceLine.getCtx(), p_FTA_LoadOrderLine_ID, mInvoiceLine.get_TrxName());
						lin.setC_InvoiceLine_ID(0);
						lin.saveEx();
					}
				}
			}
		}else if (timing == TIMING_BEFORE_PREPARE) {
			if (po.get_TableName().equals(MFTAFarmerCredit.Table_Name)
					&& creditControlModule)
			{
				MFTAFarmerCredit m_FTAFarmerCredit = (MFTAFarmerCredit) po;
				
				if(m_FTAFarmerCredit.isManagesPaymentProgram()){
					if (m_FTAFarmerCredit.getC_PaymentTerm_ID() == 0)
						return null;
					
					MFTAFCPaySchedule pay = new MFTAFCPaySchedule(m_FTAFarmerCredit.getCtx(), 
							0,m_FTAFarmerCredit.getC_PaymentTerm_ID(),  m_FTAFarmerCredit.get_TrxName());
					
					log.fine(pay.toString());
					pay.applyToFarmerCredit(m_FTAFarmerCredit);
					
				}else
					return null;
				
				return null;
				
			}
			
		}

		
		return null;
	}
	
	/**
	 * 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 05/04/2014, 14:20:34
	 * @param AD_Table_ID
	 * @param Record_ID
	 * @param FTA_FarmerCredit_ID
	 * @param IsExceedCreditLimit
	 * @param trxName
	 * @return
	 * @return String
	 */
	public String EvalutateCreditLimitDoc(int AD_Table_ID,int Record_ID ,int FTA_FarmerCredit_ID,boolean IsExceedCreditLimit,String trxName){
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String msg = null;
		String sql = "SELECT " + 
					"SUM(f.Amt) Amt, " +
					"cdl.Amt * Coalesce(fc.ApprovedQty,0) LimitAmt, " +
					"cdl.IsExceedCreditLimit, " +
					"cdl.FTA_CreditDefinitionLine_ID, " +
					"cdl.Line, "+
					"Coalesce(ch.Name,'')   || Coalesce(cht.Name,'') || Coalesce(mpc.Name,'') || Coalesce(mp.Name,'') || ' ' ||Coalesce(cdl.Description,'') Description " +
					"FROM "  +
					"FTA_Fact f " +
					"INNER JOIN FTA_CreditDefinitionLine cdl ON f.FTA_CreditDefinitionLine_ID = cdl.FTA_CreditDefinitionLine_ID " +
					"INNER JOIN " + 
					"(Select FTA_CreditDefinitionLine_ID,AD_Table_ID " +
					"FROM FTA_Fact Where Record_ID = ?) fact ON fact.FTA_CreditDefinitionLine_ID = f.FTA_CreditDefinitionLine_ID AND fact.AD_Table_ID = f.AD_Table_ID " +
					"INNER JOIN FTA_FarmerCredit fc ON f.FTA_FarmerCredit_ID = fc.FTA_FarmerCredit_ID " +
					"LEFT JOIN C_Charge ch On ch.C_Charge_ID = cdl.C_Charge_ID " +
					"LEFT JOIN C_ChargeType cht On cht.C_ChargeType_ID = cdl.C_ChargeType_ID " +
					"LEFT JOIN M_Product_Category mpc On mpc.M_Product_Category_ID = cdl.M_Product_Category_ID " +
					"LEFT JOIN M_Product mp On mp.M_Product_ID = cdl.M_Product_ID " +
					"WHERE " + 
					"f.AD_Table_ID = ? " + 
					"AND f.FTA_FarmerCredit_ID =? " +
					"AND IsExceedCreditLimit=? " +
					"GROUP BY " + 
					"cdl.Amt,fc.ApprovedQty,IsExceedCreditLimit,cdl.FTA_CreditDefinitionLine_ID,ch.Name,cht.Name,mpc.Name,mp.Name " +
					"Having Sum(f.Amt)>  cdl.Amt * Coalesce(fc.ApprovedQty,0) ";
		try {
			pstmt = DB.prepareStatement(sql, trxName);

			pstmt.setInt(1, Record_ID);
			pstmt.setInt(2, AD_Table_ID);
			pstmt.setInt(3, FTA_FarmerCredit_ID);
			pstmt.setString(4, (IsExceedCreditLimit?"Y":"N"));
			rs = pstmt.executeQuery();			
			 
			while (rs.next()){
				if (msg==null)
					msg ="";
				msg += "@Amt@ > @SO_CreditLimit@: " +
						"@Amt@=" + rs.getBigDecimal("Amt").doubleValue() + " " +
						"@SO_CreditLimit@=" + rs.getBigDecimal("LimitAmt").doubleValue() + " " +
						"@FTA_CreditDefinitionLine_ID@: " + rs.getInt("Line") + " - " + rs.getString("Description");
			}
			
			DB.close(rs, pstmt);
			
			} catch (Exception e) {
				DB.close(rs, pstmt);
				return e.getMessage();
			}
		return msg;
	}
}
