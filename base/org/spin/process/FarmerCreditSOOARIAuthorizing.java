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

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FarmerCreditSOOARIAuthorizing extends SvrProcess {
	/**	Sales Order						*/
	private int 	p_C_Order_ID = 0;
	/**	Invoice							*/
	private int 	p_C_Invoice_ID = 0;
	/**	Invoiced						*/
	private boolean 	p_IsInvoiced = false;
	/**	Is Exceed Credit Limit			*/
	private boolean 	p_IsExceedCreditLimit = false;
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			//	
			if (para.getParameter() == null)
				;
			else if(name.equals("IsInvoiced"))
				p_IsInvoiced = para.getParameterAsBoolean();
			else if(name.equals("C_Order_ID"))
				p_C_Order_ID = para.getParameterAsInt();
			else if(name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = para.getParameterAsInt();
			else if(name.equals("IsExceedCreditLimit"))
				p_IsExceedCreditLimit = para.getParameterAsBoolean();
		}
	}

	@Override
	protected String doIt() throws Exception {
		//	Valid Invoice
		if(!p_IsInvoiced
				&& p_C_Order_ID == 0)
			throw new AdempiereUserError("@C_Order_ID@ @NotFound@");
		//	Valid Invoice
		if(p_IsInvoiced
				&& p_C_Invoice_ID == 0)
			throw new AdempiereUserError("@C_Invoice_ID@ @NotFound@");
		//	
		String m_DocumentNo = null;
		//	
		if(!p_IsInvoiced){
			MOrder order = new MOrder(getCtx(), p_C_Order_ID, get_TrxName());
			if(order.get_ValueAsBoolean("IsExceedCreditLimit") != p_IsExceedCreditLimit){
				order.set_ValueOfColumn("IsExceedCreditLimit", p_IsExceedCreditLimit);
				order.saveEx();
				m_DocumentNo = order.getDocumentNo();
			}
		} else {
			MInvoice invoice = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
			if(invoice.get_ValueAsBoolean("IsExceedCreditLimit") != p_IsExceedCreditLimit){
				invoice.set_ValueOfColumn("IsExceedCreditLimit", p_IsExceedCreditLimit);
				invoice.saveEx();
				m_DocumentNo = invoice.getDocumentNo();
			}
		}
		//	Updated
		if(m_DocumentNo == null)
			return "";
		//	
		return "@DocumentNo@: " + m_DocumentNo + " @Updated@";
	}

}
