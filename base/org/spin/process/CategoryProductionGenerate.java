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

import java.sql.Timestamp;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 * Generate Category Production
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CategoryProductionGenerate extends SvrProcess {
	
	/**	Organization				*/
	private int			p_AD_Org_ID = 0;
	/**	Warehouse					*/
	private int			p_M_Warehouse_ID = 0;
	/**	Document Date from			*/
	private Timestamp 	p_DateDoc = null;
	/**	Document Date to			*/
	private Timestamp 	p_DateDoc_To = null;
	/**	Category Calculation Group	*/
	private int 		p_FTA_CategoryCalcGroup_ID = 0;
	/**	Category Calculation		*/
	private int 		p_FTA_CategoryCalc_ID = 0;
	/**	Document Action				*/
	private String 		p_DocAction	= null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("FTA_CreditDefinition_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if(name.equals("DateDoc")){
				p_DateDoc = (Timestamp) para.getParameter();
				p_DateDoc_To = (Timestamp) para.getParameter_To();
			} else if(name.equals("FTA_CAtegoryCalcGroup_ID"))
				p_FTA_CategoryCalcGroup_ID = para.getParameterAsInt();
			else if(name.equals("FTA_CategoryCalc_ID"))
				p_FTA_CategoryCalc_ID = para.getParameterAsInt();
			else if(name.equals("DocAction"))
				p_DocAction = (String) para.getParameter();
		}
	}

	@Override
	protected String doIt() throws Exception {
		return null;
	}

}
