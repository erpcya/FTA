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

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.spin.model.MFTACategoryCalc;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CopyFromCategoryCalcFilter extends SvrProcess
{

	/** Category Calc 						*/
	private int p_FTA_CategoryCalc_ID 			= 0;
	
	/** Category Calc 						*/
	private int p_FTA_CategoryCalc_ID_To		= 0;
	

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
		p_FTA_CategoryCalc_ID_To = getRecord_ID();
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception
	{
		//	Validate parameter
		if(p_FTA_CategoryCalc_ID == 0)
			throw new AdempiereUserError("@FTA_CategoryCalc_ID@ @NotFount@");
		
		//	Instance Copy From
		MFTACategoryCalc m_FTA_CategoryCalc_ID_From = new MFTACategoryCalc(getCtx(), p_FTA_CategoryCalc_ID, getName());
		
		//	Instance Copy To
		MFTACategoryCalc m_FTA_CategoryCalc_ID_To = new MFTACategoryCalc(getCtx(), p_FTA_CategoryCalc_ID_To, get_TrxName());
		
		return  "@Line@ @Copied@= "+ String.valueOf(m_FTA_CategoryCalc_ID_To.copyLinesFrom(m_FTA_CategoryCalc_ID_From,m_FTA_CategoryCalc_ID_To));
	}

}
