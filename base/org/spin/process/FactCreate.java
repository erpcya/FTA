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

import java.sql.Timestamp;

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.spin.model.MFTAFact;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FactCreate extends SvrProcess {

	/**	Record Identifier			*/
	private int 		p_Record_ID		= 0;
	/**	Organization				*/
	private int 		p_AD_Table_ID	= 0;
	/**	Document Date				*/
	private Timestamp 	p_DateDoc 		= null;
	private Timestamp 	p_DateDoc_To 	= null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("AD_Table_ID"))
				p_AD_Table_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc")){
				p_DateDoc = (Timestamp) para.getParameter();
				p_DateDoc_To = (Timestamp) para.getParameter_To();
			}
		}
		//	Get Record Identifier
		if(getRecord_ID() != 0)
			p_Record_ID = getRecord_ID();
	}
	
	@Override
	protected String doIt() throws Exception {
		//	Valid Table
		if(p_AD_Table_ID == 0)
			throw new AdempiereUserError("@AD_Table_ID@ @NotFound@");
		String msg = null;
		//	In Case of Order
		if(p_AD_Table_ID == MOrder.Table_ID){
			MOrder ord = null;
			if(p_Record_ID != 0)
				ord = new MOrder(getCtx(), p_Record_ID, get_TrxName());
			msg = MFTAFact.createOrderFact(getCtx(), ord, p_DateDoc, p_DateDoc_To, get_TrxName());
		//	Invoice
		} else if(p_AD_Table_ID == MInvoice.Table_ID){
			MInvoice inv = null;
			if(p_Record_ID != 0)
				inv = MInvoice.get(getCtx(), p_Record_ID);
			msg = MFTAFact.createInvoiceFact(getCtx(), inv, p_DateDoc, p_DateDoc_To, get_TrxName());
		}
		if(msg != null)
			return msg;
		return "Ok";
	}

}
