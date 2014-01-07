package org.spin.process;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;

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
		System.out.println("1_" + p_FTA_CreditDefinition_ID);
		System.out.println("3_" + p_FTA_CreditDefinition_To_ID);
		System.out.println("4_" + p_FTA_FarmerCredit_ID);
		return null;
	}

	/** Credit Definition */
	private int p_FTA_CreditDefinition_ID = 0;
	
	/** Credit Deinition To */ 
	private int p_FTA_CreditDefinition_To_ID = 0;
	
	/** Farmer Credit*/
	private int p_FTA_FarmerCredit_ID = 0;
	
	/** Logger	 */
	private CLogger log = CLogger.getCLogger(ChangeCategory.class);
	
}
