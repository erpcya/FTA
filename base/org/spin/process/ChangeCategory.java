package org.spin.process;

import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MProduct;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.spin.model.I_FTA_FarmerCredit;
import org.spin.model.MFTACreditDefinition;
import org.spin.model.MFTACreditDefinitionLine;
import org.spin.model.MFTAFact;
import org.spin.model.MFTAFarmerCredit;
import org.spin.model.MFTAFarming;

/**
 * 
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class ChangeCategory extends SvrProcess{

	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if(name.equals("FTA_CreditDefinition_ID"))
				p_FTA_CreditDefinition_ID = para.getParameterAsInt();
			else if(name.equals("FTA_FarmerCredit_ID"))
				p_FTA_FarmerCredit_ID = para.getParameterAsInt();
			else if(name.equals("FTA_CreditDefinition_To_ID"))
				p_FTA_CreditDefinition_To_ID = para.getParameterAsInt();
		}
	}

	@Override
	protected String doIt() throws Exception {
		
		//	Valid Credit Definition
		if(p_FTA_CreditDefinition_ID == 0
				&& p_FTA_FarmerCredit_ID == 0)
			throw new AdempiereUserError("@p_FTA_CreditDefinition_ID@ @NotFound@");
		//	Valid Credit Definition To
		if(p_FTA_CreditDefinition_To_ID == 0)
			throw new AdempiereUserError("@p_FTA_CreditDefinition_To_ID@ @NotFound@");
		//	Instance Credit To
		m_creditDefinitionTo = new MFTACreditDefinition(getCtx(), p_FTA_CreditDefinition_To_ID, get_TrxName());
		//	Get Farmer Credit
		List<MFTAFarmerCredit> credits = getCredits();
		//	Loop
		for (MFTAFarmerCredit credit : credits)
		{
			//	Process Farmer Credit
			log.info("Credit=" + credit.toString());
			changeCredit(credit);
		}
		return "";
	}
	
	/**
	 * Get Farmer Credit List
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> Jan 9, 2014, 11:02:30 AM
	 * @return
	 * @return List<MFTAFarmerCredit>
	 */
	private List<MFTAFarmerCredit> getCredits()
	{
		String m_filter = new String();
		//	Verify if is farmer credit
		if(p_FTA_FarmerCredit_ID != 0)
			m_filter += I_FTA_FarmerCredit.Table_Name + ".FTA_FarmerCredit_ID=" + p_FTA_FarmerCredit_ID;
		//	Credit Definition
		else if(p_FTA_CreditDefinition_ID != 0)
			m_filter += I_FTA_FarmerCredit.Table_Name + ".FTA_CreditDefinition_ID=" + p_FTA_CreditDefinition_ID;
		else
			return null;
		//	get Credits
		List<MFTAFarmerCredit> credits = new Query(getCtx(), 
				I_FTA_FarmerCredit.Table_Name, m_filter, get_TrxName())
						.list();
		
		return credits;
	}

	/**
	 * Change Credit for Detail
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 11/01/2014, 10:40:43
	 * @param farmerCredit
	 * @return void
	 */
	private void changeCredit(MFTAFarmerCredit farmerCredit)
	{
		//	Validate Reference
		//	Valid Purchase Order
		String refError = validPOReference(farmerCredit.getFTA_FarmerCredit_ID());
		if(refError != null)
			throw new AdempiereException(refError);
		//	Valid Mobilization Guide
		refError = validMGReference(farmerCredit.getFTA_FarmerCredit_ID());
		if(refError != null)
			throw new AdempiereException(refError);
		
		//	Get Credit Definition from farmer credit
		MFTACreditDefinition m_creditDefinition = new MFTACreditDefinition(getCtx(), farmerCredit.getFTA_CreditDefinition_ID(), get_TrxName());
		
		MProduct categoryFrom = MProduct.get(getCtx(), m_creditDefinition.getCategory_ID());
		MProduct categoryTo = MProduct.get(getCtx(), m_creditDefinition.getCategory_ID());
		
		String description = Msg.parseTranslation(getCtx(), "#(@from@ @Category_ID@ " + categoryFrom.getName() 
															+ " @to@ " + categoryTo.getName() + ")#");
		
		//	Set Credit Definition
		farmerCredit.setFTA_CreditDefinition_ID(p_FTA_CreditDefinition_To_ID);
		//	Set Description
		if(farmerCredit.getDescription() != null)
			farmerCredit.setDescription(farmerCredit.getDescription() + " " + description);
		else
			farmerCredit.setDescription(description);
		//	Save Farmer Credit
		farmerCredit.saveEx();
		addLog("@FTA_FarmerCredit_ID@ @Updated@ " + farmerCredit.getDocumentNo() 
				+ " @to@ @FTA_CreditDefinition_ID@ " + m_creditDefinitionTo.getDocumentNo());
		//	
		log.info("Credit Definition=" + m_creditDefinition.toString());
		log.info("Credit Definition To=" + m_creditDefinitionTo.toString());
		//	Update Category and Planting Cycle in farming
		int updatedFarming = 0;
		for(MFTAFarming farming : farmerCredit.getLines(false)){
			log.info("Farming=" + farming.toString());
			farming.setCategory_ID(m_creditDefinitionTo.getCategory_ID());
			farming.setPlantingCycle_ID(m_creditDefinitionTo.getPlantingCycle_ID());
			//	Set Description
			if(farming.getDescription() != null)
				farming.setDescription(farming.getDescription() + " " + description);
			else
				farming.setDescription(description);
			//	Save Farming
			farming.saveEx();
			//	
			updatedFarming++;
		}
		//	Log
		addLog("@FTA_Farming_ID@ @Updated@=" + updatedFarming);
		
		//	Update Movements
		int updatedMovements = 0;
		for(MFTAFact movement : farmerCredit.getMovements(null)){
			//	Set new credit definition
			movement.setFTA_CreditDefinition_ID(p_FTA_CreditDefinition_To_ID);
			//	From Line
			MFTACreditDefinitionLine fromLine = new MFTACreditDefinitionLine(getCtx(), movement.getFTA_CreditDefinitionLine_ID(), get_TrxName());
			//	Equivalent Line
			MFTACreditDefinitionLine equivalentLine = m_creditDefinitionTo.getEquivalentLine(fromLine);
			//	Verify if exists
			if(equivalentLine != null)
				movement.setFTA_CreditDefinitionLine_ID(equivalentLine.getFTA_CreditDefinitionLine_ID());
			else
				throw new AdempiereException("@NotEquivalentLine@ @FTA_CreditDefinition_ID@: " 
						+ fromLine.getLine() + " "
						+ (fromLine.getDescription() != null? fromLine.getDescription(): ""));
			//	Save Movement
			movement.saveEx();
			updatedMovements++;
		}
		//	Log
		addLog("@FTA_Fact_ID@ @Updated@=" + updatedMovements);
	}
	
	/**
	 * Valid Purchase Order generated
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 12/02/2014, 16:15:36
	 * @param p_FTA_FarmerCredit_ID
	 * @return
	 * @return String
	 */
	private String validPOReference(int p_FTA_FarmerCredit_ID){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(o.DocumentNo) " +
				"FROM C_Order o " +
				"WHERE o.DocStatus NOT IN('VO', 'RE') " +
				"AND o.IsSOTrx = 'N' " +
				"AND o.FTA_FarmerCredit_ID = ?", p_FTA_FarmerCredit_ID);
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @C_Order_ID@: " + m_ReferenceNo + " @completed@";
		return null;
	}
	
	/**
	 * Validate Mobilization Guide reference
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 12/02/2014, 16:27:46
	 * @param p_FTA_FarmerCredit_ID
	 * @return
	 * @return String
	 */
	private String validMGReference(int p_FTA_FarmerCredit_ID){
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(mg.DocumentNo) " +
				"FROM FTA_MobilizationGuide mg " +
				"INNER JOIN FTA_Farming f ON(f.FTA_Farming_ID = mg.FTA_Farming_ID) " +
				"WHERE mg.DocStatus NOT IN('VO', 'RE') " +
				"AND mg.IsSOTrx = 'N' " +
				"AND f.FTA_FarmerCredit_ID = ?", p_FTA_FarmerCredit_ID);
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @FTA_MobilizationGuide_ID@: " + m_ReferenceNo + " @completed@";
		return null;
	}
	
	
	/** Credit Definition */
	private int p_FTA_CreditDefinition_ID = 0;
	
	/** Credit Definition To */ 
	private int p_FTA_CreditDefinition_To_ID = 0;
	
	/** Farmer Credit*/
	private int p_FTA_FarmerCredit_ID;
	
	private MFTACreditDefinition m_creditDefinitionTo = null;
	
	/** Logger	 */
	private CLogger log = CLogger.getCLogger(ChangeCategory.class);
	
}
