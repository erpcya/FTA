package org.spin.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTAAllocation;
import org.spin.model.MFTAAllocationLine;
import org.spin.model.MFTACreditDefinition;
import org.spin.model.MFTAFarmerCredit;
import org.spin.model.MFTAFarmerLiquidation;

public class CloseDocuments extends SvrProcess{

	/**Parameter Farmer Credit */
	private int p_FTA_FarmerCredit_ID = 0;
	
	/**Parameter Document Type*/
	private int p_C_DocType_ID = 0;
	
	/**Parameter Charge*/
	private int p_C_Charge_ID = 0;
	
	/** Dated Invoiced*/
	private Timestamp p_DateInvoiced = null;
	
	/**Invoice Generated Credit*/
	private MInvoice m_InvoiceGenCR = null;
	
	/** Invoice Line Generated Credit*/
	private MInvoiceLine m_InvoiceLineGenCR = null;
	
	/**Invoice Generated Debit*/
	private MInvoice m_InvoiceGenDB = null;
	
	/** Invoice Line Generated Debit*/
	private MInvoiceLine m_InvoiceLineGenDB = null;
	
	/** Allocation */
	private MFTAAllocation m_FTAAlloc = null;
	
	/** Farmer Credit*/ 
	private MFTAFarmerCredit m_FarmerCredit = null;
	
	/** Farmer Credit Defenition*/ 
	private MFTACreditDefinition m_CreditDefinition = null;
	
	/** Documents Generated*/
	private int m_Generated = 0;
	
	/** Sql*/
	private String m_Sql = "";
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if(name.equals("FTA_FarmerCredit_ID"))
				p_FTA_FarmerCredit_ID = para.getParameterAsInt();

			else if(name.equals("C_DocTypeTarget_ID"))
				p_C_DocType_ID = para.getParameterAsInt();

			else if(name.equals("C_Charge_ID"))
				p_C_Charge_ID = para.getParameterAsInt();

			else if(name.equals("DateInvoiced"))
				p_DateInvoiced = (Timestamp)para.getParameter();
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;
		ResultSet rs = null;
		//Not Pending Farmer Liquidations
		List<MFTAFarmerLiquidation> liqs = new Query(getCtx(), MFTAFarmerLiquidation.Table_Name, 
				" EXISTS(SELECT 1 FROM FTA_Fact WHERE AD_Table_ID = ? AND Record_ID = FTA_FarmerLiquidation.FTA_FarmerLiquidation_ID) " +
				" AND LiquidationAvailable(FTA_FarmerLiquidation.FTA_FarmerLiquidation_ID) <>0 " +
				" AND FTA_FarmerLiquidation.FTA_FarmerCredit_ID = ? "
				, get_TrxName()).setParameters(MFTAFarmerLiquidation.Table_ID,p_FTA_FarmerCredit_ID).list();

		for (MFTAFarmerLiquidation liq:liqs)
			addLog("@Error@ @FTA_FarmerLiquidation_ID@  " + liq.getDocumentNo() + " @OpenAmt@");

		if (liqs.size()>0)
			return "@Error@";
		//
		//Match Invoiced Pending 

		m_FarmerCredit = new MFTAFarmerCredit(getCtx(), p_FTA_FarmerCredit_ID, get_TrxName());
		m_CreditDefinition = new MFTACreditDefinition(getCtx(), m_FarmerCredit.getFTA_CreditDefinition_ID(), get_TrxName()); 
		
		if (m_CreditDefinition.get_ValueAsInt("C_DocTypeClosedAR_ID")==0 || m_CreditDefinition.get_ValueAsInt("C_DocTypeClosedAP_ID")==0){
			rollback();
			return "@Error@ @Invalid@ @C_DocTypeClosedAR_ID@ @OR@ @C_DocTypeClosedAP_ID@" ;
		}
		
		m_Sql = "SELECT C_Invoice_ID, invoiceOpenFTA(fact.Record_ID,null) OpenAmt " +
				"FROM " + 
				"C_invoice ci " +
				"INNER JOIN " + 
				"(SELECT DISTINCT Record_ID " + 
				"FROM FTA_Fact " + 
				"WHERE AD_Table_ID = ? " +
				") fact ON ci.C_invoice_ID = fact.Record_ID " + 
				"WHERE invoiceOpenFTA(fact.Record_ID,null) <>0 AND " +
				"ci.FTA_FarmerCredit_ID = ? ";
		
		ps = DB.prepareStatement(m_Sql, get_TrxName());
		ps.setInt(1, MInvoice.Table_ID);
		ps.setInt(2, p_FTA_FarmerCredit_ID);
		
		rs = ps.executeQuery();
		
		while (rs.next()){
			// Generate Invoice Credit Memo
			MInvoice inv = new MInvoice(getCtx(), rs.getInt("C_Invoice_ID"), get_TrxName());
			if (m_InvoiceGenCR == null){
				m_InvoiceGenCR = new MInvoice(getCtx(), 0, get_TrxName());
				m_InvoiceGenCR.setBPartner(new MBPartner(getCtx(), inv.getC_BPartner_ID(), get_TrxName()));
				m_InvoiceGenCR.setC_DocTypeTarget_ID(p_C_DocType_ID);
				m_InvoiceGenCR.setDateInvoiced(p_DateInvoiced);
				m_InvoiceGenCR.setDateAcct(p_DateInvoiced);
				m_InvoiceGenCR.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
				m_InvoiceGenCR.save(get_TrxName());
			}
			
			if (m_InvoiceLineGenCR == null){
				m_InvoiceLineGenCR = new MInvoiceLine(m_InvoiceGenCR);
				m_InvoiceLineGenCR.setC_Charge_ID(p_C_Charge_ID);
				m_InvoiceLineGenCR.setQty(Env.ONE);
			}
			
			m_InvoiceLineGenCR.setPrice(m_InvoiceLineGenCR.getPriceEntered().add(rs.getBigDecimal("OpenAmt")));
			m_InvoiceLineGenCR.save(get_TrxName());
			
			//Allocate Invoice Credit Memo With Pending Documents
			if (m_FTAAlloc == null){
				m_FTAAlloc = new MFTAAllocation(getCtx(), 0, get_TrxName());
				m_FTAAlloc.setDateDoc(p_DateInvoiced);
				m_FTAAlloc.setC_Currency_ID(Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
				m_FTAAlloc.setFTA_FarmerCredit_ID(p_FTA_FarmerCredit_ID);
				m_FTAAlloc.save(get_TrxName());
			}
			
			MFTAAllocationLine m_FTAAllocLine = new MFTAAllocationLine(m_FTAAlloc);
			m_FTAAllocLine.setC_Invoice_ID(inv.getC_Invoice_ID());
			m_FTAAllocLine.setC_BPartner_ID(inv.getC_BPartner_ID());
			m_FTAAllocLine.setAmount(rs.getBigDecimal("OpenAmt"));
			m_FTAAllocLine.save(get_TrxName());
		}

		//Process Invoiced Credit Memo
		if (!m_InvoiceGenCR.processIt(MInvoice.DOCACTION_Complete)){
			rollback();
			return "@Error@ @Processing@ @C_Invoice_ID@";
		}
		addLog("@Generated@ @C_Invoice_ID@ : " + m_InvoiceGenCR.getDocumentNo());
		m_Generated ++;

		//Alloc Credit Document
		MFTAAllocationLine m_FTAAllocLine = new MFTAAllocationLine(m_FTAAlloc);
		m_FTAAllocLine.setC_Invoice_ID(m_InvoiceGenCR.getC_Invoice_ID());
		m_FTAAllocLine.setC_BPartner_ID(m_InvoiceGenCR.getC_BPartner_ID());
		m_FTAAllocLine.setAmount(m_InvoiceGenCR.getGrandTotal().negate());
		m_FTAAllocLine.save(get_TrxName());

		//Process Allocation
		if (!m_FTAAlloc.processIt(MFTAAllocation.DOCACTION_Complete)){
			rollback();
			return "@Error@ @Processing@ @FTA_Allocation_ID@";
		}
		addLog("@Generated@ @FTA_Allocation_ID@ : " + m_FTAAlloc.getDocumentNo());
		m_Generated ++;

		//Generate Debit Document for Closed 
		m_InvoiceGenDB = new MInvoice(getCtx(), 0, get_TrxName());
		m_InvoiceGenDB.setBPartner(new MBPartner(getCtx(), m_FarmerCredit.getC_BPartner_ID(), get_TrxName()));
		m_InvoiceGenDB.setC_DocTypeTarget_ID(
				(m_InvoiceLineGenCR.getPriceEntered().signum()!=-1?
						m_CreditDefinition.get_ValueAsInt("C_DocTypeClosedAR_ID")
							:m_CreditDefinition.get_ValueAsInt("C_DocTypeClosedAP_ID")));
		m_InvoiceGenDB.setIsSOTrx((m_InvoiceLineGenCR.getPriceEntered().signum()!=-1?
				true
				:false));
		m_InvoiceGenDB.setDateInvoiced(p_DateInvoiced);
		m_InvoiceGenDB.setDateAcct(p_DateInvoiced);
		m_InvoiceGenDB.set_ValueOfColumn("FTA_FarmerCredit_ID", p_FTA_FarmerCredit_ID);
		m_InvoiceGenDB.save(get_TrxName());

		m_InvoiceLineGenDB = new MInvoiceLine(m_InvoiceGenDB);
		m_InvoiceLineGenDB.setC_Charge_ID(p_C_Charge_ID);
		m_InvoiceLineGenDB.setQty(Env.ONE);
		m_InvoiceLineGenDB.setPrice(
				(m_InvoiceLineGenCR.getPriceEntered().signum()!=-1?
						m_InvoiceLineGenCR.getPriceEntered()
							:m_InvoiceLineGenCR.getPriceEntered().negate())
				);
		m_InvoiceLineGenDB.save(get_TrxName());

		//Process Debit Document 
		if (!m_InvoiceGenDB.processIt(MInvoice.DOCACTION_Complete))	{
			rollback();
			return "@Error@ @Processing@ @C_Invoice_ID@";
		}
		addLog("@Generated@ @C_Invoice_ID@ : " + m_InvoiceGenDB.getDocumentNo());
		m_Generated ++;
		//
		
		return "@Generated@ " + m_Generated;
	}

}
