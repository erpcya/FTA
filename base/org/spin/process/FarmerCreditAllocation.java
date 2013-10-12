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
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.spin.model.MFTAFarmerCredit;


/**
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *	<br> Allocate Farmer Credit to Credit act
 */
public class FarmerCreditAllocation extends SvrProcess {

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		m_FTA_CreditAct_ID = getRecord_ID();
		filter.append("Exists (Select 1 From T_Selection Where AD_PInstance_ID=? AND T_Selection_ID=FTA_FarmerCredit_ID)");
		
		log.fine(filter.toString());

		//Get list of credit from farmer
		List<MFTAFarmerCredit> credits = new Query(ctx,MFTAFarmerCredit.Table_Name,filter.toString(),get_TrxName())
										.setOnlyActiveRecords(true)
										.setParameters(getAD_PInstance_ID())
										.list();
		
		for (MFTAFarmerCredit credit:credits)
		{
			//Set Farmer Credit
			if(credit.getFTA_CreditAct_ID()==0)
				credit.setFTA_CreditAct_ID(m_FTA_CreditAct_ID);
			else
				credit.setFTA_CreditAct_ID(0);
						
			credit.save(get_TrxName());
			
			m_Updted++;
		}
		
		return "@Upated@="+m_Updted;
	}

	/** credit	 */
	private int m_FTA_CreditAct_ID =0;
	
	/** Logger	 */
	private CLogger log = CLogger.getCLogger(FarmerCreditAllocation.class);
	
	/** Sql Filter	 */
	private StringBuffer filter = new StringBuffer();
	
	/** Context	 */
	private Properties ctx = Env.getCtx();
	
	/** Records Updated	 */
	private int m_Updted=0;
}//FarmingAllocation
