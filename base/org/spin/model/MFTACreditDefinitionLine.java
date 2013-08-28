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
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.DB;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTACreditDefinitionLine extends X_FTA_CreditDefinitionLine {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8132004945701236293L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 16:55:27
	 * @param ctx
	 * @param FTA_CreditDefinitionLine_ID
	 * @param trxName
	 */
	public MFTACreditDefinitionLine(Properties ctx,
			int FTA_CreditDefinitionLine_ID, String trxName) {
		super(ctx, FTA_CreditDefinitionLine_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 16:55:27
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTACreditDefinitionLine(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**	Credit Definition	*/
	private MFTACreditDefinition m_parent = null;
	
	/**
	 * Update Header
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/08/2013, 10:24:36
	 * @return
	 * @return boolean
	 */
	private boolean updateHeader(){
		//	Recalculate Header
		//	Update Credit Definition Header
		String sql = "UPDATE FTA_CreditDefinition cd" + 
				" SET Amt=" + 
				"(SELECT COALESCE(SUM(cdl.Amt),0) " +
				"FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=cd.FTA_CreditDefinition_ID) "
			+ "WHERE cd.FTA_CreditDefinition_ID=" + getFTA_CreditDefinition_ID();
		int no = DB.executeUpdate(sql, get_TrxName());
		if (no != 1)
			log.warning("(1) #" + no);
		return no == 1;
	}	//	updateHeaderTax
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MFTACreditDefinition getParent()
	{
		if (m_parent == null)
			m_parent = new MFTACreditDefinition(getCtx(), getFTA_CreditDefinition_ID(), get_TrxName());
		return m_parent;
	}	//	getParent
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		if(getC_Charge_ID() == 0
				&& getM_Product_Category_ID() == 0
				&& getM_Product_ID() == 0)
			throw new AdempiereException("@C_Charge_ID@ = @M_Product_Category_ID@ = @M_Product_ID@ = 0");
		return true;
	}
	
	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		super.afterSave(newRecord, success);
		return updateHeader();
	}

}
