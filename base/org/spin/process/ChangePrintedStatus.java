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

import org.compiere.model.MProcess;
import org.compiere.model.MQuery;
import org.compiere.model.MTable;
import org.compiere.model.PO;
import org.compiere.model.PrintInfo;
import org.compiere.model.X_AD_ReportView;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportEngine;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class ChangePrintedStatus extends SvrProcess {

	/**	Record Identifier	*/
	private int p_Record_ID = 0;
	@Override
	protected void prepare() {
		p_Record_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		int m_AD_Process_ID = getProcessInfo().getAD_Process_ID();
		//	Get Table
		MProcess pr = MProcess.get(getCtx(), m_AD_Process_ID);
		if(pr != null){
			X_AD_ReportView rv = new X_AD_ReportView(getCtx(), pr.getAD_ReportView_ID(), get_TrxName());
			if(rv != null){
				MTable reportTable = MTable.get(getCtx(), rv.getAD_Table_ID());
				MPrintFormat f = MPrintFormat.get(getCtx(), rv.getAD_ReportView_ID(), reportTable.getAD_Table_ID());
				//	for all Mobilization Guide
				if(f != null) {
					MTable modelTable = MTable.get(getCtx(), getTable_ID());
					MQuery q = new MQuery(reportTable.getTableName());
					q.addRestriction(modelTable.getTableName() + "_ID", "=", p_Record_ID);
					PrintInfo i = new PrintInfo(Msg.translate(getCtx(), reportTable.getTableName() + "_ID"), reportTable.getAD_Table_ID(), p_Record_ID);
					//i.setAD_Table_ID(reportTable.getAD_Table_ID());
					ReportEngine re = new ReportEngine(Env.getCtx(), f, q, i, get_TrxName());
					//	Print
					if(re != null){
						//	Direct Print
						re.print();
						PO model = modelTable.getPO(p_Record_ID, get_TrxName());
						//	Dixon Martinez
						//	Check model is not null
						//	If it returns null check if the table exists
						if(model == null)
							return "";
						//	End Dixon Martinez
						
						model.set_ValueOfColumn("IsPrinted", true);
						model.saveEx();
					}	
				} else 
					log.warning(Msg.parseTranslation(getCtx(), "@NoDocPrintFormat@ @AD_Table_ID@=" + reportTable.getTableName()));	
			}
		}
		return "";
	}

}
