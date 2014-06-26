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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados.                    *
 * All Rights Reserved.                                                       *
 * Contributor(s): Carlos Parada www.erpconsultoresyasociados.com             *
 *****************************************************************************/
package org.spin.process;



import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;

import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MProduct;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;

import org.spin.model.MFTAAllocationLine;
import org.spin.model.MFTAFarmerLiquidationLine;

/**
 * 
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class InvoiceGenerate extends SvrProcess{

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = para.getParameterAsInt();
			else if (name.equals("DocumentNo"))
				p_DocumentNo = para.getParameter().toString();
			else if (name.equals("ControlNo"))
				p_ControlNo =  para.getParameter().toString();
			else if (name.equals("DateInvoiced"))
				p_DateInvoiced =  (Timestamp) para.getParameter();
			else if (name.equals("DateAcct"))
				p_DateAcct =  (Timestamp) para.getParameter();
			
		}
		
		sql.append("Select \n" 
				+"ts.AD_PInstance_ID, \n" 
				+"ts.T_Selection_ID As FTA_FarmerLiquidation_ID, \n"
				+"tsb.C_BPartner_ID, \n"
				+"tsb.FTA_FarmerCredit_ID, \n"
				+"tsb.DateDoc, \n"
				+"tsb.M_Product_ID, \n"
				+"tsb.Amt, \n"
				+"tsb.AvailableAmt, \n"
				+"tsb.C_Order_ID, \n"
				+"tsb.C_Currency_ID \n"
				+"From  \n" 
				+"T_Selection ts \n" 
				+"Inner Join (Select  tsb.AD_PInstance_ID, \n" 
									+"tsb.T_Selection_ID,  \n" 
									+"Max(Case When tsb.ColumnName = 'LFI_C_BPartner_ID' Then tsb.Value_Number Else Null End) As C_BPartner_ID, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_FTA_FarmerCredit_ID' Then tsb.Value_Number Else Null End) As FTA_FarmerCredit_ID, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_DateDoc' Then tsb.Value_Date Else Null End) As DateDoc, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_M_Product_ID' Then tsb.Value_Number Else Null End) As M_Product_ID, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_Amt' Then tsb.Value_Number Else Null End) As Amt, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_C_Order_ID' Then tsb.Value_Number Else Null End) As C_Order_ID, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_C_Currency_ID' Then tsb.Value_Number Else Null End) As C_Currency_ID, \n"
									+"Max(Case When tsb.ColumnName = 'LFI_AvailableAmt' Then tsb.Value_Number Else Null End) As AvailableAmt \n"
							+"From T_Selection_Browse tsb   \n" 
							+"Group By \n" 
							+"tsb.AD_PInstance_ID, \n" 
							+"tsb.T_Selection_ID) tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID \n"
				);

	sql.append(" Where ts.AD_PInstance_ID=? Order By tsb.C_Order_ID");
	
	log.fine(sql.toString());

	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		if(p_AD_Org_ID == 0)
			throw new AdempiereUserError("@C_DocType_ID@ @NotFound@");
		
		if(p_C_DocType_ID == 0)
			throw new AdempiereUserError("@C_DocType_ID@ @NotFound@");
		
		if (p_DateInvoiced == null)
			throw new AdempiereUserError("@DateInvoiced@ @NotFound@");
		
		if (p_DateAcct == null)
			throw new AdempiereUserError("@DateAcct@ @NotFound@");
		
		return createInvoices();
	}

	/**
	 * Create Invoice From Liquidations
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 03/11/2013, 18:59:49
	 * @return
	 * @return String
	 */
	private String createInvoices(){
		
		PreparedStatement ps =null;
		ResultSet rs = null;
		MInvoice invoice =null;
		try{
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			
			
			while (rs.next()){
				if (m_C_Order_ID!=rs.getInt("C_Order_ID")){
					
					m_C_Order_ID=rs.getInt("C_Order_ID");
					
					//Load Order From Farming
					MOrder order = new MOrder(getCtx(), m_C_Order_ID, get_TrxName());
					
					//Create Invoice From Order
					invoice = new MInvoice(order, p_C_DocType_ID, p_DateInvoiced);
					invoice.setDocumentNo(p_DocumentNo);
					invoice.set_ValueOfColumn("ControlNo", p_ControlNo);
					invoice.setDateAcct(p_DateAcct);
					invoice.setAD_Org_ID(p_AD_Org_ID);
					invoice.save(get_TrxName());
					m_Created++;
				}
				
				//Invoiced Created?
				if (invoice!=null){
					//Get Lines From Liquidation
					List<MFTAFarmerLiquidationLine>  flls = new Query(getCtx(),MFTAFarmerLiquidationLine.Table_Name,"FTA_FarmerLiquidation_ID=?",get_TrxName())
							.setOnlyActiveRecords(true)
							.setParameters(rs.getInt("FTA_FarmerLiquidation_ID"))
							.list();
					
					//Create Invoice Lines From Order 
					if (flls.size()==0){
						MInvoiceLine invoiceline = new MInvoiceLine(invoice);
						
						MProduct product = new MProduct(getCtx(), rs.getInt("M_Product_ID"), get_TrxName());
						invoiceline.setM_Product_ID(product.getM_Product_ID());
						invoiceline.setC_UOM_ID(product.getC_UOM_ID());
						invoiceline.setQty(1);
						invoiceline.setPrice(rs.getBigDecimal("Amt"));
						invoiceline.setAD_Org_ID(p_AD_Org_ID);
						invoiceline.save(get_TrxName());
						
					}//End invoice From Order
					//Create Invoice Line From In-Out
					else{
						for (MFTAFarmerLiquidationLine fll: flls){
							MInOutLine  miol = new Query(getCtx(),MInOutLine.Table_Name,"Exists(SELECT 1 FROM " + 
											"M_InOut mio " + 
											"INNER JOIN FTA_FarmerLiquidationLine fll On mio.FTA_RecordWeight_ID=fll.FTA_RecordWeight_ID " +
											"WHERE mio.M_InOut_ID=M_InOutLine.M_InOut_ID AND fll.FTA_FarmerLiquidationLine_ID=? AND mio.DocStatus IN('CO','CL'))",get_TrxName())
											.setOnlyActiveRecords(true)
											.setParameters(fll.getFTA_FarmerLiquidationLine_ID())
											.firstOnly();
							if(miol!=null){
								MInvoiceLine invoiceline = new MInvoiceLine(invoice);
								invoiceline.setM_Product_ID(miol.getM_Product_ID());
								invoiceline.setQty(fll.getPayWeight());
								invoiceline.setPrice(fll.getPrice());
								invoiceline.setC_UOM_ID(miol.getC_UOM_ID());
								invoiceline.setM_InOutLine_ID(miol.getM_InOutLine_ID());
								invoiceline.save(get_TrxName());
							}
						}
					}//End invoice From In-Out
					
					//Process Invoice
					invoice.set_ValueOfColumn("FTA_FarmerLiquidation_ID", rs.getInt("FTA_FarmerLiquidation_ID"));
					invoice.processIt(MInvoice.DOCACTION_Complete);
					invoice.saveEx(get_TrxName());
					
				}//End Invoice Line Created
				
				/** Process Invoice Document And Allocate With Liquidations Documents*/ 
				if (m_FTA_FarmerLiquidation_ID!=rs.getInt("FTA_FarmerLiquidation_ID")){
					
					m_FTA_FarmerLiquidation_ID =rs.getInt("FTA_FarmerLiquidation_ID"); 
					//Get Allocations from Liquidation
					List<MFTAAllocationLine>  allocs = new Query(getCtx(),MFTAAllocationLine.Table_Name,"FTA_FarmerLiquidation_ID=?",get_TrxName())
					.setOnlyActiveRecords(true)
					.setParameters(m_FTA_FarmerLiquidation_ID)
					.list();
					
					//Get Total Documents
					BigDecimal l_TotalAlloc = DB.getSQLValueBD(get_TrxName(), "SELECT Sum(Amount) From FTA_AllocationLine Where FTA_FarmerLiquidation_ID=? And IsActive ='Y'"
							, 
							new Object[]{m_FTA_FarmerLiquidation_ID});
					l_TotalAlloc = l_TotalAlloc==null ? Env.ZERO : l_TotalAlloc;
					
					if (allocs.size()>0){
						MAllocationHdr allochdr = new MAllocationHdr(getCtx(), 0, get_TrxName());
						allochdr.setDateTrx(invoice.getDateInvoiced());
						allochdr.setDateAcct(invoice.getDateAcct());
						allochdr.setC_Currency_ID(invoice.getC_Currency_ID());
						allochdr.setAD_Org_ID(p_AD_Org_ID);
						allochdr.save(get_TrxName());
						
						for(MFTAAllocationLine alloc:allocs){
							MAllocationLine allocline = new MAllocationLine(allochdr);
							PO.copyValues(alloc, allocline);
							
							if (alloc.getC_Invoice_ID()==0){
								allocline.setC_Invoice_ID(invoice.getC_Invoice_ID());
								allocline.setAmount(allocline.getAmount().negate());
							}
							else{
								m_HaveInvoiced = true;
								m_InvoiceAmt=m_InvoiceAmt.add(allocline.getAmount());
								allocline.setAmount(allocline.getAmount());
							}
							
							if (!l_TotalAlloc.equals(Env.ZERO) && alloc.getC_Invoice_ID()==0)
								allocline.setOverUnderAmt(invoice.getGrandTotal().subtract(l_TotalAlloc).negate());
							
							allocline.setAD_Org_ID(p_AD_Org_ID);
							allocline.save(get_TrxName());
						}
						
						if (m_HaveInvoiced){
							MAllocationLine allocline = new MAllocationLine(allochdr);
							allocline.setAmount(m_InvoiceAmt.negate());
							allocline.setC_BPartner_ID(invoice.getC_BPartner_ID());
							allocline.setC_Invoice_ID(invoice.getC_Invoice_ID());
							allocline.setOverUnderAmt(invoice.getGrandTotal().subtract(l_TotalAlloc).negate());
							allocline.setAD_Org_ID(p_AD_Org_ID);
							allocline.save(get_TrxName());
						}
						
						allochdr.processIt(MAllocationHdr.DOCACTION_Complete);
						allochdr.save(get_TrxName());	
					}
					
				}
			}//End Invoice Generated
			
			commitEx();
		}
		catch(Exception ex){
			rollback();
			return ex.getMessage();
		}
		finally{
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}
		
		
		return "@Created@ "+ m_Created + " " + invoice.getDocumentNo();
		
	}
	
	
	/** Document Type*/
	private int p_C_DocType_ID = 0;
	
	/** Document No*/
	private String p_DocumentNo = null;
	
	/** Control No*/
	private String p_ControlNo = null;
	
	/** Sql*/
	private StringBuffer sql = new StringBuffer();
	
	/** C_Order_ID */
	private int m_C_Order_ID =-1; 

	/** Created Records*/
	private int m_Created =0;

	/** DateInvoiced */
	private Timestamp p_DateInvoiced;
	
	/** Liquidations*/
	private int m_FTA_FarmerLiquidation_ID=0 ;
	
	/** Indicate if Account Crossing have an Invoiced*/
	private boolean m_HaveInvoiced = false;
	
	/** Amt Invoices Allocation*/
	private BigDecimal m_InvoiceAmt= Env.ZERO;

	/** Date Acct for Documents*/
	private Timestamp p_DateAcct;
	
	/** Organization */
	private int p_AD_Org_ID = 0;
}
