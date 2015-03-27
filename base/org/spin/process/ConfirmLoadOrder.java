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
 * Copyright (C) 2003-2015 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpcya.com                                 *
 *****************************************************************************/
package org.spin.process;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.spin.model.MFTALoadOrder;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class ConfirmLoadOrder extends SvrProcess {

	/**	Load Order					*/
	private int p_FTA_LoadOrder_ID = 0;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if(name.equals("FTA_LoadOrder_ID"))
				p_FTA_LoadOrder_ID = para.getParameterAsInt();
		}
		//	Valid Load Order
		if(p_FTA_LoadOrder_ID == 0)
			p_FTA_LoadOrder_ID = getRecord_ID();
	}

	@Override
	protected String doIt() {
		if(p_FTA_LoadOrder_ID == 0)
			throw new AdempiereException("@FTA_LoadOrder_ID@ @NotFound@");
		//	Do it
		MFTALoadOrder m_LoadOrder = new MFTALoadOrder(getCtx(), p_FTA_LoadOrder_ID, get_TrxName());
		m_LoadOrder.set_ValueOfColumn("IsConfirmed", true);
		//	Save
		m_LoadOrder.saveEx();
		return "OK";
	}
}
