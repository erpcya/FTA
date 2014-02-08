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
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.process;

import java.util.logging.Level;

import org.compiere.model.PO;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.spin.model.MFTACDLCategory;
import org.spin.model.MFTACategoryCalc;
import org.spin.model.MFTACategoryCalcFilter;
import org.spin.model.MFTACreditDefinition;
import org.spin.model.MFTACreditDefinitionLine;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CopyFromCategoryCalcFilter extends SvrProcess
{

	/** Category Calc 						*/
	private int p_FTA_CategoryCalc_ID 			= 0;
	
	
	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare()
	{
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("FTA_CategoryCalc_ID"))
				p_FTA_CategoryCalc_ID = para.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
				
		}


	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception
	{
		if(p_FTA_CategoryCalc_ID == 0)
			throw new AdempiereUserError("@FTA_CategoryCalc_ID@ @NotFount@");
		/*log.info("From C_Invoice_ID=" + p_FTA_CreditDefinition_ID + " to " + p_Target_CreditDefinition_ID);
		if (p_Target_CreditDefinition_ID == 0)
			throw new IllegalArgumentException("Target FTA_CreditDefinition_ID  == 0");
		
		if (p_FTA_CreditDefinition_ID == 0)
			throw new IllegalArgumentException("Source FTA_CreditDefinition_ID  == 0");
		
		MFTACreditDefinition m_FTA_CreditDefinitionFrom = new MFTACreditDefinition(getCtx(), p_FTA_CreditDefinition_ID, get_TrxName());
		
		MFTACreditDefinition m_FTA_CreditDefinitionTo = new MFTACreditDefinition(getCtx(), p_Target_CreditDefinition_ID, get_TrxName());
	
		//
		int no = m_FTA_CreditDefinitionTo.copyLinesProductsFrom (m_FTA_CreditDefinitionFrom, false, false);
		
		//
		return "@Line@ @Copied@= " + no + " @Product@ @Copied@= "+m_FTA_CreditDefinitionTo.getCountProduct();
		
		
		
		*/
		return String.valueOf(p_FTA_CategoryCalc_ID);
	}

}
