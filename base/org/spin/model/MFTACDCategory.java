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
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MProduct;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTACDCategory extends X_FTA_CD_Category {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3928591896548267436L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/09/2014, 17:41:57
	 * @param ctx
	 * @param FTA_CD_Category_ID
	 * @param trxName
	 */
	public MFTACDCategory(Properties ctx, int FTA_CD_Category_ID, String trxName) {
		super(ctx, FTA_CD_Category_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/09/2014, 17:41:57
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTACDCategory(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		super.afterSave(newRecord, success);
		//	Create Default Lines
		if(newRecord
				&& success){
			MFTACDLCategory category = null;
			MFTACreditDefinitionLine line = null;
			MFTACreditDefinition cd = 
					new MFTACreditDefinition(getCtx(), getFTA_CreditDefinition_ID(), get_TrxName());
			
			if(!cd.getCreditType().equals(X_FTA_CreditDefinition.CREDITTYPE_Loan)){

				int lineNo = DB.getSQLValue(get_TrxName(), "SELECT MAX(cdl.Line) Line "
						+ "FROM FTA_CreditDefinitionLine cdl "
						+ "WHERE cdl.FTA_CreditDefinition_ID = ?", getFTA_CreditDefinition_ID());
				//	Add first
				lineNo += 10;
				
				//	For Category
				category = MFTACDLCategory
						.getDefDistibutionCategory(getCtx(), MFTACDLCategory.T_CATEGORY, get_TrxName());
				if(category == null)
					return false;
				line = new MFTACreditDefinitionLine(getCtx(), 0, get_TrxName());
				line.setFTA_CreditDefinition_ID(getFTA_CreditDefinition_ID());
				line.setFTA_CDL_Category_ID(category.getFTA_CDL_Category_ID());
				MProduct product = MProduct.get(getCtx(), getCategory_ID());
				line.setM_Product_ID(product.getM_Product_ID());
				line.setC_UOM_ID(product.getC_UOM_ID());
				line.setQty(Env.ZERO);
				line.setPrice(Env.ZERO);
				line.setAmt(Env.ZERO);
				line.setIsDistributionLine(false);
				line.setIsExceedCreditLimit(true);
				line.setLine(lineNo);
				line.saveEx();
			}
		}
		return true;
	}
}
