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

import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.spin.model.MFTACreditDefinition;
import org.spin.model.MFTACreditDefinitionLine;
import org.spin.model.MFTAFarmerCredit;
import org.spin.model.MFTAFarming;


/**
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *	<br> Allocate Farming to Credit
 */
public class FarmingAllocation extends SvrProcess {

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("FTA_Farming_ID"))
				m_FTA_Farming_ID = para.getParameterAsInt();
		}
		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		//Current Farmer Credit
		MFTAFarmerCredit credit = new MFTAFarmerCredit(ctx, getRecord_ID(), get_TrxName());
		
		//Credit Definition
		MFTACreditDefinition creditdef= new  MFTACreditDefinition(ctx, credit.getFTA_CreditDefinition_ID(), get_TrxName());
		
		
		
		filter.append((m_FTA_Farming_ID==0?
				"/*Framing Category Equals Credit Definition Category */ " 
				+"FTA_Farming.Category_ID In (Select CD.Category_ID From FTA_CreditDefinition CD Where FTA_CreditDefinition_ID="+credit.getFTA_CreditDefinition_ID()+") " 
				+"/*Business Partner Credit Equals to Farm*/ "
				+"And Exists(Select 1 From FTA_FarmDivision fd "
				+"Inner Join FTA_Farm f On f.FTA_Farm_ID=fd.FTA_Farm_ID Where f.C_BPartner_ID="+credit.getC_BPartner_ID()+" And FTA_Farming.FTA_FarmDivision_ID=fd.FTA_FarmDivision_ID ) "
				+"/*Not In Another Credit*/ "
				+"And (FTA_Farming.FTA_FarmerCredit_ID Is Null Or FTA_Farming.FTA_FarmerCredit_ID="+credit.getFTA_FarmerCredit_ID()+")":
				"FTA_Farming_ID="+m_FTA_Farming_ID));
		
		log.fine(filter.toString());

		//Get list of farming from farmer
		List<MFTAFarming> farmings = new Query(ctx,MFTAFarming.Table_Name,filter.toString(),get_TrxName())
										.setOnlyActiveRecords(true)
										.list();
		
		for (MFTAFarming farming:farmings)
		{
			//Set Farmer Credit
			if(farming.getFTA_FarmerCredit_ID()==0)
			{
				farming.setFTA_FarmerCredit_ID(credit.getFTA_FarmerCredit_ID());
				credit.setQty(credit.getQty().add(farming.getArea()));
				
				//Set Amt from Credit Definition
				for (MFTACreditDefinitionLine creditdefline:creditdef.getLines(false) )
				{
					credit.setAmt(
							credit.getAmt().add(
									farming.getArea().multiply(creditdefline.getAmt())
											    )
								 );
				}
			}
			else
			{
				farming.setFTA_FarmerCredit_ID(0);
				credit.setQty(credit.getQty().subtract(farming.getArea()));
				
				//Set Amt from Credit Definition
				for (MFTACreditDefinitionLine creditdefline:creditdef.getLines(false) )
				{
					credit.setAmt(
							credit.getAmt().subtract(
									farming.getArea().multiply(creditdefline.getAmt())
											    )
								 );
				}
			}
			
			farming.save(get_TrxName());
			credit.save(get_TrxName());
			
			m_Updted++;
		}
		
		return "@Upated@="+m_Updted;
	}

	/** Farming	 */
	private int m_FTA_Farming_ID =0;
	
	/** Logger	 */
	private CLogger log = CLogger.getCLogger(FarmingAllocation.class);
	
	/** Sql Filter	 */
	private StringBuffer filter = new StringBuffer();
	
	/** Context	 */
	private Properties ctx = Env.getCtx();
	
	/** Records Updated	 */
	private int m_Updted=0;
}//FarmingAllocation
