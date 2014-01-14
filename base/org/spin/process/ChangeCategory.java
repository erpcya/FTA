package org.spin.process;

import java.util.List;

import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;
import org.spin.model.MFTAFarmerCredit;

/**
 * 
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class ChangeCategory extends SvrProcess{

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		for (ProcessInfoParameter para:getParameter()){
			
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if(name.equals("FTA_CreditDefinition_ID"))
				p_FTA_CreditDefinition_ID = para.getParameterAsInt();
			else if(name.equals("FTA_CreditDefinition_To_ID"))
				p_FTA_CreditDefinition_To_ID = para.getParameterAsInt();
			else if(name.equals("FTA_FarmerCredit_ID"))
				p_FTA_FarmerCredit_ID = para.getParameterAsInt();
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		//	Valid Credit Definition
		if(p_FTA_CreditDefinition_ID == 0)
			throw new AdempiereUserError("@p_FTA_CreditDefinition_ID@ @NotFount@");
		//	Valid Credit Definition To
		if(p_FTA_CreditDefinition_To_ID == 0)
			throw new AdempiereUserError("@p_FTA_CreditDefinition_To_ID@ @NotFount@");
		
		List<MFTAFarmerCredit> credits = getCredits();
		
		for (MFTAFarmerCredit credit:credits)
		{
			MFTAFarmerCredit newFC = new MFTAFarmerCredit(getCtx(), 0, get_TrxName());
			PO.copyValues(credit, newFC);
			credit.setDocumentNo(credit.getDocumentNo().concat("^"));
			newFC.setFTA_CreditDefinition_ID(p_FTA_CreditDefinition_To_ID);
			
			credit.save(get_TrxName());
			newFC.save(get_TrxName());
			
			
		}
		
		System.out.println("1_" + p_FTA_CreditDefinition_ID);
		System.out.println("3_" + p_FTA_CreditDefinition_To_ID);
		System.out.println("4_" + p_FTA_FarmerCredit_ID);
		return null;
	}
	
	/**
	 * Get Farmer Credit List
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> Jan 9, 2014, 11:02:30 AM
	 * @return
	 * @return List<MFTAFarmerCredit>
	 */
	private List<MFTAFarmerCredit> getCredits()
	{
		m_filter = "FTA_CreditDefinition_ID=? And FTA_FarmerCredit_ID=?";
		List<MFTAFarmerCredit> credits = new Query(getCtx(),MFTAFarmerCredit.Table_Name,m_filter,get_TrxName())
										.setOnlyActiveRecords(true)
										.list();
		
		return credits;
	}

	/** Credit Definition */
	private int p_FTA_CreditDefinition_ID = 0;
	
	/** Credit Deinition To */ 
	private int p_FTA_CreditDefinition_To_ID = 0;
	
	/** Farmer Credit*/
	private int p_FTA_FarmerCredit_ID;
	
	/** Logger	 */
	private CLogger log = CLogger.getCLogger(ChangeCategory.class);

	/** Sql */
	private String m_filter = new String();
	//Copy Farmer Credit
	//void Farmer Credit
	//Reasign Farming to Category
	//Calculate new Farmer Credit And Act
	
}
