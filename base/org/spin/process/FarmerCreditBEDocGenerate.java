package org.spin.process;

import org.compiere.process.SvrProcess;

public class FarmerCreditBEDocGenerate extends SvrProcess{
	
	/**	Organization			*/
	//private int 		p_AD_Org_ID = 0;
	/**	Warehouse				*/
	//private int 		p_C_BPartner_Location_ID = 0;
	/**	Credit Act				*/
	//private int 		p_FTA_CreditAct_ID = 0;
	/**	Document Type Target	*/
	//private int 		p_C_DocTypeTarget_ID = 0;
	/**	Document Date			*/
	//private Timestamp	p_DateDoc = null;
	/**	Valid To				*/
	//private Timestamp	p_ValidTo = null;
	/**	Farmer Credit			*/
	//private int 		p_FTA_FarmerCredit_ID = 0;
	/**	Quantity				*/
	//private int 		p_Qty = 0;
	/**	Created					*/
	//private int 		m_Created = 0;
	/**	Precision				*/
	//private int 		precision = 0;
	
	private StringBuffer sql = new StringBuffer();
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		/*
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("C_BPartner_Location_ID"))
				p_C_BPartner_Location_ID = para.getParameterAsInt();
			else if(name.equals("FTA_CreditAct_ID"))
				p_FTA_CreditAct_ID = para.getParameterAsInt();
			else if(name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
			else if (name.equals("ValidTo"))
				p_ValidTo = (Timestamp)para.getParameter();
			else if(name.equals("Qty"))
				p_Qty = para.getParameterAsInt();
		}*/
		
		
		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		sql.append("");
		return null;
	}

}
