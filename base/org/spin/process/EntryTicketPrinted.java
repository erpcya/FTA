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

import java.util.List;

import org.compiere.model.MProcess;
import org.compiere.model.MQuery;
import org.compiere.model.MTable;
import org.compiere.model.PrintInfo;
import org.compiere.model.Query;
import org.compiere.model.X_AD_ReportView;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportCtl;
import org.compiere.print.ReportEngine;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.compiere.util.Msg;
import org.spin.model.MFTAEntryTicket;
import org.spin.model.X_FTA_EntryTicket;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class EntryTicketPrinted extends SvrProcess {

	/**	Entry Ticket			*/
	List <MFTAEntryTicket> m_EntryTicket		= null;
	 
	
	int p_AD_PInstance_ID;


	private int impress ;
	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {

		if(p_AD_PInstance_ID == 0)
			p_AD_PInstance_ID = getAD_PInstance_ID();

		String sql = "  EXISTS ( " +
					 "	SELECT 1 FROM T_Selection s " +
					 "	WHERE s.AD_PInstance_ID = ?" +
					 "  AND FTA_EntryTicket.FTA_EntryTicket_ID = s.T_Selection_ID)" +
					 " ";
		
		m_EntryTicket = new Query(Env.getCtx(), X_FTA_EntryTicket.Table_Name,sql,get_TrxName()).setParameters(p_AD_PInstance_ID).list();
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		//	Print Entry Ticket
		if(m_EntryTicket != null
				&& !m_EntryTicket.isEmpty()) {
			//	Get Table
			int m_AD_Process_ID = MProcess.getProcess_ID("FTA_RV_EntryTicket EntryTicketSB", get_TrxName());
			MProcess pr = MProcess.get(getCtx(), m_AD_Process_ID);
			impress  = 0;
			if(pr != null){
				X_AD_ReportView rv = new X_AD_ReportView(getCtx(), pr.getAD_ReportView_ID(), get_TrxName());
				if(rv != null){
					MTable table = MTable.get(getCtx(), rv.getAD_Table_ID());
					int m_AD_Table_ID = table.getAD_Table_ID();
					String tableName = table.getTableName();
					boolean directPrint = !Ini.isPropertyBool(Ini.P_PRINTPREVIEW);
					MPrintFormat f = MPrintFormat.get(getCtx(), rv.getAD_ReportView_ID(), m_AD_Table_ID);
					
					
					//	for all Mobilization Guide
					for (MFTAEntryTicket entryTicket : m_EntryTicket)
					{	
						if(f != null) {
							MQuery q = new MQuery(tableName);
							q.addRestriction("FTA_EntryTicket_ID", "=", entryTicket.get_ID());
							PrintInfo i = new PrintInfo(Msg.translate(getCtx(), "FTA_EntryTicket_ID"), m_AD_Table_ID, entryTicket.get_ID());
							i.setAD_Table_ID(m_AD_Table_ID);
							ReportEngine re = new ReportEngine(Env.getCtx(), f, q, i, get_TrxName());
							//	Print
							if(re != null){
								//	Is Direct Print
								if(directPrint)
									re.print();
								else
									ReportCtl.preview(re);
							}	
							impress ++;
							entryTicket.setIsPrintedSample(true);
							entryTicket.saveEx();
						
						} else 
							log.warning(Msg.parseTranslation(getCtx(), "@NoDocPrintFormat@ AD_Table_ID=" + m_AD_Table_ID));
					}	
				}	
			}
		}
	
	return "@Created@ "+impress;
	}

}
