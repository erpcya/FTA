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
		boolean ok = super.beforeSave(newRecord);
		if(!newRecord
				&& (is_ValueChanged("M_Product_Category_ID")
						|| is_ValueChanged("M_Product_ID")
						|| is_ValueChanged("C_ChargeType_ID")
						|| is_ValueChanged("C_Charge_ID")
						|| is_ValueChanged("IsDistributionLine")
						|| is_ValueChanged("IsExceedCreditLimit")
						|| is_ValueChanged("FTA_CDL_Category_ID"))){
			String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(ft.DocumentNo) " +
					"FROM FTA_Fact ft " +
					"WHERE ft.FTA_CreditDefinitionLine_ID = ?", getFTA_CreditDefinitionLine_ID());
			if(m_ReferenceNo != null)
				throw new AdempiereException("@SQLErrorReferenced@ @FTA_Fact_ID@: " + m_ReferenceNo);
		}
		if(isDistributionLine())
			setIsExceedCreditLimit(true);
		return ok;
	}
	
	@Override
	protected boolean beforeDelete() {
		boolean ok = super.beforeDelete();
		MFTACDLCategory category = MFTACDLCategory.get(getCtx(), getFTA_CDL_Category_ID());
		if(category.getValue().equals(MFTACDLCategory.T_CATEGORY)
				|| category.getValue().equals(MFTACDLCategory.T_DISTRIBUTION))
			throw new AdempiereException("@DeleteError@");
		//	Valid Reference
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(ft.DocumentNo) " +
				"FROM FTA_Fact ft " +
				"WHERE ft.FTA_CreditDefinitionLine_ID = ?", getFTA_CreditDefinitionLine_ID());
		if(m_ReferenceNo != null)
			throw new AdempiereException("@SQLErrorReferenced@ @FTA_Fact_ID@: " + m_ReferenceNo);
		return ok;
	}
	
	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		super.afterSave(newRecord, success);
		return updateHeader();
	}
	
	/**
     *  Add to Description
     *  @param description text
     */
    public void addDescription (String description)
    {
        String desc = getDescription();
        if (desc == null)
            setDescription(description);
        else
            setDescription(desc + " | " + description);
    }   //  addDescription
	
}
