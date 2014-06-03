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
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.X_C_BPartner;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTAFarmerCredit;
import org.spin.model.X_FTA_FarmerCredit;



/**
 * 	Change quantity Approved to quantity Effective
 *
 *  @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *  
 *  @version $Id: ChangeQtyApprovedToQtyEffective.java,v 1.0 2014/06/03 10:54:44
 */


public class ChangeQtyApprovedToQtyEffective extends SvrProcess {

	/**	Business Partner ID							*/
	private int p_C_BPartner_ID 				= 	0;
	
	/**	Parameter Farmer Credit						*/
	private int p_FTA_FarmerCredit_ID			=	0;
	
	/**	Is Changed 									*/
	private boolean p_BasedOnEffectiveQuantity	=	false;
	
	/**	Object Farmer Credit						*/
	MFTAFarmerCredit m_FTA_FarmerCredt			=	null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals(X_C_BPartner.COLUMNNAME_C_BPartner_ID))
				p_C_BPartner_ID = para.getParameterAsInt();
			else if(name.equals(X_FTA_FarmerCredit.COLUMNNAME_FTA_FarmerCredit_ID))
				p_FTA_FarmerCredit_ID = para.getParameterAsInt();
			else if(name.equals("BasedOnEffectiveQuantity"))
				p_BasedOnEffectiveQuantity = para.getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
				
		}
	}

	@Override 
	protected String doIt() throws Exception {
		String msg = "";
		//	Validate not null parameter's
		log.fine("Validate parameters");
		if(p_C_BPartner_ID == 0)
			throw new AdempiereException("@C_BPartner_ID@ @NotFound@");
		log.fine("@C_BPartner_ID@ = " + p_C_BPartner_ID);
		
		if(p_FTA_FarmerCredit_ID == 0)
			throw new AdempiereException("@FTA_FarmerCredit_ID@ @NotFound@");
		log.fine("@FTA_FarmerCredit_ID@ = " + p_FTA_FarmerCredit_ID);
		
		if(p_BasedOnEffectiveQuantity){
			m_FTA_FarmerCredt = 
					new MFTAFarmerCredit(getCtx(), p_FTA_FarmerCredit_ID, get_TrxName());
			m_FTA_FarmerCredt.setBasedOnEffectiveQuantity(p_BasedOnEffectiveQuantity);
			String sql = null;
			
			sql = "SELECT SUM(f.EffectiveArea)"
					+ " FROM FTA_FarmerCredit fc "
					+ " INNER JOIN FTA_Farming f on (fc.FTA_FarmerCredit_ID = f.FTA_FarmerCredit_ID )"
					+ " WHERE"
					+ " 	fc.FTA_FarmerCredit_ID = ?"
					+ " 	AND fc.EffectiveArea IS NOT NULL";
			
			BigDecimal childrenArea = 
					DB.getSQLValueBD(get_TrxName(), sql, m_FTA_FarmerCredt.get_ID());
			
			if(childrenArea == null){
				childrenArea = Env.ZERO;
				return msg = "@FTA_FarmerCredit_ID@ " + m_FTA_FarmerCredt.getDocumentNo() + " @NotUpdated@ "
						+ "@EffectiveArea@ @equal@ " + Env.ZERO;
			}
				

			m_FTA_FarmerCredt.setEffectiveQty(childrenArea);
		
			m_FTA_FarmerCredt.saveEx();
			
			msg = "@FTA_FarmerCredit_ID@ " + m_FTA_FarmerCredt.getDocumentNo() + " @Updated@";
		}
		
		return msg;
	}
	
}
