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

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.spin.model.MFTABillOfExchange;
import org.spin.model.X_FTA_BillOfExchange;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class BillOfExchangeChangeStatus extends SvrProcess {
	/**	Bill of Exchange				*/
	private int 	p_FTA_BillOfExchange_ID = 0;
	/**	Farming Status					*/
	private String 	p_Status = null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("Status"))
				p_Status = para.getParameter().toString();
		}
		//	Get Record IDentifier
		p_FTA_BillOfExchange_ID = getRecord_ID();
	}

	
	@Override
	protected String doIt() throws Exception {
		//	
		if(p_FTA_BillOfExchange_ID == 0)
			throw new AdempiereException("@FTA_BillOfExchange_ID@ = 0");
		if(p_Status == null)
			throw new AdempiereException("@Status@ = null");
		
		MFTABillOfExchange m_FTA_BillOfExchange = new MFTABillOfExchange(getCtx(), p_FTA_BillOfExchange_ID, get_TrxName());
		//	Check Current Status
		if(m_FTA_BillOfExchange.getStatus().equals(X_FTA_BillOfExchange.STATUS_Voided)
				|| m_FTA_BillOfExchange.getStatus().equals(X_FTA_BillOfExchange.STATUS_FarmerDelivered))
			return "";
		
		//	Set New Status
		if(!m_FTA_BillOfExchange.getStatus().equals(p_Status)){
			m_FTA_BillOfExchange.setStatus(p_Status);
			m_FTA_BillOfExchange.saveEx();
		}
		//	Valid
		return "@OK@";
	}

}
