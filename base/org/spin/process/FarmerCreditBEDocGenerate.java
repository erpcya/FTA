package org.spin.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.model.MInvoice;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.spin.model.MFTABillOfExchange;

public class FarmerCreditBEDocGenerate extends SvrProcess{
	
	/**	Document Type Target	*/
	private int 		p_C_DocTypeTarget_ID = 0;
	/**	Document Date			*/
	private Timestamp	p_DateDoc = null;
	/** SQL*/ 
	private StringBuffer sql = new StringBuffer();
	/** Records Generated*/ 
	private int m_Generated = 0;
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
		}
		
		
		sql.append("Select \n"+ 
				"ts.AD_PInstance_ID , \n"+
				"ts.T_Selection_ID AS C_Invoice_ID \n" +
				"From   \n"+
				"T_Selection ts \n"+ 
				"Inner Join (Select  tsb.AD_PInstance_ID, \n"+
				"	tsb.T_Selection_ID, \n"+
				"	Max(Case When tsb.ColumnName = 'BOE_C_Invoice_ID' Then tsb.Value_Number Else Null End) As C_Invoice_ID \n"+ 
				"	From T_Selection_Browse tsb  \n"+
				"	Group By \n"+
				"	tsb.AD_PInstance_ID, \n"+
				"	tsb.T_Selection_ID)  \n"+
				"tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID ");
		sql.append("Where ts.AD_PInstance_ID=?");

	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub

		if(p_C_DocTypeTarget_ID == 0)
			throw new AdempiereUserError("@C_DocTypeTarget_ID@ @NotFount@");
		//	Valid Document Date
		if(p_DateDoc == null)
			throw new AdempiereUserError("@DateDoc@ @NotFount@");
		//	Valid Quantity

		PreparedStatement ps = null;
		ResultSet rs = null;
		
		ps = DB.prepareStatement(sql.toString(), get_TrxName());
		ps.setInt(1, getAD_PInstance_ID());
		
		rs = ps.executeQuery();
		
		while (rs.next()){
			MFTABillOfExchange boe = new MFTABillOfExchange(getCtx(), 0, get_TrxName());
			MInvoice inv = new MInvoice(getCtx(), rs.getInt("C_Invoice_ID"), get_TrxName());
			
			if (inv!=null)
			{
				boe.setDateDoc(p_DateDoc);
				boe.setC_BPartner_ID(inv.getC_BPartner_ID());
				boe.setC_BPartner_Location_ID(inv.getC_BPartner_Location_ID());
				boe.setFTA_FarmerCredit_ID(inv.get_ValueAsInt("FTA_FarmerCredit_ID"));
				boe.setC_DocType_ID(p_C_DocTypeTarget_ID);
				boe.setAmt(inv.getGrandTotal());
				boe.set_ValueOfColumn("C_Invoice_ID", inv.getC_Invoice_ID());
				boe.save(get_TrxName());
				boe.processIt(MFTABillOfExchange.DOCACTION_Complete);
				addLog("@FTA_BillOfExchange_ID@ " + boe.getDocumentNo());
				boe.save(get_TrxName());
				m_Generated++;
			}
		}
		return "@Created@ " + m_Generated;
	}

}