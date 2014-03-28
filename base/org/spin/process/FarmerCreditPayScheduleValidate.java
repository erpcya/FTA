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

import java.math.BigDecimal;
import java.util.Properties;

import org.compiere.process.InvoicePayScheduleValidate;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.CalloutFarmerCredit;
import org.spin.model.MFTAFCPaySchedule;
import org.spin.model.MFTAFarmerCredit;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class FarmerCreditPayScheduleValidate extends SvrProcess {

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		log.info("FTA_FC_PaySchedule_ID= "+getRecord_ID());
				
		MFTAFCPaySchedule[] m_FTA_FC_PaySchedule = MFTAFCPaySchedule.getFCPaySchedule(getCtx(),0,getRecord_ID(),null);
		
		if(m_FTA_FC_PaySchedule.length == 0)
			throw new IllegalArgumentException("FCPayScheduleValidate - No Schedule");
		
		//	Get Farmer Credit
		MFTAFarmerCredit m_FTA_FarmerCredit = new MFTAFarmerCredit(getCtx(), 
				m_FTA_FC_PaySchedule[0].getFTA_FarmerCredit_ID(), null);

		if (m_FTA_FarmerCredit.get_ID() == 0)
			throw new IllegalArgumentException("InvoicePayScheduleValidate - No Invoice");
		
		
		// 
		BigDecimal total = Env.ZERO;
		
		for (MFTAFCPaySchedule paySchedule : m_FTA_FC_PaySchedule) {
			BigDecimal due = paySchedule.getDueAmt();
			if(due != null)
				total = total.add(due);
		}
		
		boolean isValid = m_FTA_FarmerCredit.getAmt().compareTo(total) == 0;
				
		m_FTA_FarmerCredit.setIsPayScheduleValid(isValid);
		m_FTA_FarmerCredit.saveEx();
		
		//	Schedule
		for (MFTAFCPaySchedule paySchedule : m_FTA_FC_PaySchedule) {
			if(paySchedule.isValid() != isValid){
				paySchedule.setIsValid(isValid);
				paySchedule.saveEx();
			}
				
		}
		

		String msg = "@OK@";
		if (!isValid)
			msg = "@Amt@ = " + m_FTA_FarmerCredit.getAmt()
				+ " <> @Total@ = " + total 
				+ "  - @Difference@ = " + m_FTA_FarmerCredit.getAmt().subtract(total); 
		return Msg.parseTranslation(getCtx(), msg);

		
	}

}
