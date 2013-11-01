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

import org.compiere.model.MTable;
import org.compiere.model.PO;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

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
		int m_AD_PInstance_ID = getProcessInfo().getAD_PInstance_ID();
		int m_AD_Process_ID = getProcessInfo().getAD_Process_ID();
		//	Get Count
		int count = DB.getSQLValue(get_TrxName(), "SELECT COUNT(AD_PInstance_ID) " +
				"FROM AD_PInstance " + 
				"WHERE AD_Process_ID = " + m_AD_Process_ID + " " + 
				"AND Record_ID = " + p_Record_ID + " " +
				"AND AD_PInstance_ID <> ?" + m_AD_PInstance_ID, p_Record_ID);
		
		if(count > 0){
			MTable table = MTable.get(getCtx(), getTable_ID());
			PO model = table.getPO(p_Record_ID, get_TrxName());
			model.set_ValueOfColumn("IsPrinted", true);
			model.saveEx();
		}
		return null;
	}

}
