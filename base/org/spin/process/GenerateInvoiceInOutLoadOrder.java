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

import java.util.Vector;

import org.adempiere.util.ProcessUtil;
import org.compiere.apps.ProcessCtl;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Trx;

/**
 * 
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class GenerateInvoiceInOutLoadOrder extends SvrProcess {


	/**	Process Parameters					*/
	private Vector<ProcessInfoParameter> 	processParams = null;
	
	@Override
	protected void prepare() {
		//	Process Parameters
		processParams = new Vector<ProcessInfoParameter>();
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				continue;
			//	Set Parameter
			ProcessInfoParameter pip = new ProcessInfoParameter(name, para.getParameter(), 
					para.getParameter_To(), para.getInfo(), para.getInfo_To());
			//	Add to Process
			processParams.add(pip);	
		}
		//	Add Parent Instance
		ProcessInfoParameter pip = new ProcessInfoParameter("Parent_Instance_ID", getAD_PInstance_ID(), 
				null, "", "");
		//	Add to Process
		processParams.add(pip);
	}

	@Override
	protected String doIt() throws Exception {
		//	Create Process Info
		ProcessInfo pi_Invoice = new ProcessInfo(getProcessInfo().getTitle(), 53709);
		//	Add Parameters
		pi_Invoice.setParameter(processParams.toArray(new ProcessInfoParameter[processParams.size()]));
		//	Create Trx
		Trx trx = Trx.get(get_TrxName(), false);
		//	Execute Process
		ProcessUtil.startJavaProcess(getCtx(), pi_Invoice, trx, false);
		//	
		ProcessInfo pi_InOut = new ProcessInfo(getProcessInfo().getTitle(), 53713);
		//	Add Parameters
		pi_InOut.setParameter(processParams.toArray(new ProcessInfoParameter[processParams.size()]));
		//	Execute Process
		ProcessUtil.startJavaProcess(getCtx(), pi_InOut, trx, false);
		//	Commit
		trx.commit();
		//	
		return pi_Invoice.getSummary() 
				+ (pi_InOut.getSummary() != null && pi_InOut.getSummary().length() > 0
							? " - " + pi_InOut.getSummary()
									: "");
	}
}
