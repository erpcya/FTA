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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.process;

import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.spin.model.MFTACreditDefinition;
import org.spin.model.X_FTA_CreditDefinition;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CopyFromCreditDefinition extends SvrProcess
{

	/** Credit Definition Parameter From Copy	*/
	int p_FTA_CreditDefinition_ID 				= 0;
	/**	Credit Definition to Copy 				*/
	int p_FTA_CreditDefinition_ID_To 			= 0;
	
	/**	Credit Definition Target 				*/
	static int p_Target_CreditDefinition_ID = 0;

	@Override
	protected void prepare()
	{
		String name;
		for (ProcessInfoParameter parameter : getParameter()){
			name = parameter.getParameterName();
			
			if(parameter.getParameter() == null)
				;
			else if(name.equals(X_FTA_CreditDefinition.COLUMNNAME_FTA_CreditDefinition_ID))
				p_FTA_CreditDefinition_ID = parameter.getParameterAsInt();
			else
				log.log(Level.SEVERE,"Unknow Parameter "+name);				
		}
		if(p_FTA_CreditDefinition_ID != 0)
			p_Target_CreditDefinition_ID = getRecord_ID();

	}

	@Override
	protected String doIt() throws Exception
	{
		log.info("From C_Invoice_ID=" + p_FTA_CreditDefinition_ID + " to " + p_Target_CreditDefinition_ID);
		if (p_Target_CreditDefinition_ID == 0)
			throw new IllegalArgumentException("Target FTA_CreditDefinition_ID  == 0");
		
		if (p_FTA_CreditDefinition_ID == 0)
			throw new IllegalArgumentException("Source FTA_CreditDefinition_ID  == 0");
		
		MFTACreditDefinition m_FTA_CreditDefinitionFrom = new MFTACreditDefinition(getCtx(), p_FTA_CreditDefinition_ID, get_TrxName());
		
		MFTACreditDefinition m_FTA_CreditDefinitionTo = new MFTACreditDefinition(getCtx(), p_Target_CreditDefinition_ID, get_TrxName());
	
		//
		int no = m_FTA_CreditDefinitionTo.copyLinesFrom (m_FTA_CreditDefinitionFrom,m_FTA_CreditDefinitionTo);
		int noProducts = m_FTA_CreditDefinitionTo.copyProductsFrom(m_FTA_CreditDefinitionFrom,m_FTA_CreditDefinitionTo);
		//
		return "@Line@ @Copied@= " + no + "/ @Product@ @Copied@= "+noProducts;
	}

}
