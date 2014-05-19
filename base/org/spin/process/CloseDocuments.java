package org.spin.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.spin.model.MFTAFarmerLiquidation;

public class CloseDocuments extends SvrProcess{

	/**Parameter Farmer Credit */
	private int p_FTA_FarmerCredit_ID = 0;
	
	/**Parameter Document Type*/
	private int p_C_DocType_ID = 0;
	
	/**Parameter Charge*/
	private int p_C_Charge_ID = 0;
	
	/**Invoice Generated */
	private MInvoice m_InvoiceGen = null;
	
	/** Invoice Line Generated */
	private MInvoiceLine m_InvoiceLineGen = null;
	
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
			
			else if(name.equals("C_DocType_ID"))
				p_C_DocType_ID = para.getParameterAsInt();
			
			else if(name.equals("C_Charge_ID"))
				p_C_Charge_ID = para.getParameterAsInt();
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
		
		
		m_Sql = "SELECT C_Invoice_ID, invoiceOpenFTA(fact.Record_ID,null) OpenAmt " +
				"FROM " + 
				"C_invoice ci " +
				"INNER JOIN " + 
				"(SELECT DISTINCT Record_ID " + 
				"FROM FTA_Fact " + 
				"WHERE AD_Table_ID = ? " +
				") fact ON ci.C_invoice_ID = fact.Record_ID " + 
				"WHERE invoiceOpenFTA(fact.Record_ID,null) <>0 " +
				"ci.FTA_FarmerCredit_ID = ? ";
		
		ps = DB.prepareStatement(m_Sql, get_TrxName());
		ps.setInt(1, MInvoice.Table_ID);
		ps.setInt(2, p_FTA_FarmerCredit_ID);
		
		rs = ps.executeQuery();
		
		while (rs.next()){
		
			MInvoice inv = new MInvoice(getCtx(), rs.getInt("C_Invoice_ID"), get_TrxName());
			if (m_InvoiceGen == null)
				m_InvoiceGen = new MInvoice(getCtx(), 0, get_TrxName());
			
			m_InvoiceGen.setBPartner(new MBPartner(getCtx(), inv.getC_BPartner_ID(), get_TrxName()));
			m_InvoiceGen.setC_DocTypeTarget_ID(p_C_DocType_ID);
			 
			if (m_InvoiceLineGen == null){
				m_InvoiceLineGen = new MInvoiceLine(m_InvoiceGen);
				m_InvoiceLineGen.setC_Charge_ID(p_C_Charge_ID);
			}
			m_InvoiceLineGen.setPriceActual(m_InvoiceLineGen.getPriceActual().add(rs.getBigDecimal("OpenAmt")));
		}
		
		
		
		
		//
		
		return null;
	}

}
