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

import java.util.List;

import org.compiere.model.MProduct;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.spin.model.MFTACDLCategory;
import org.spin.model.MFTACreditDefinition;
import org.spin.model.MFTACreditDefinitionLine;
import org.spin.model.X_FTA_CreditDefinition;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CreditDefinitionCheck extends SvrProcess {

	/**	Organization						*/
	private int 		p_AD_Org_ID = 0;
	/**	Credit Definition					*/
	private int 		p_FTA_CreditDefinition_ID = 0;
	/**	Created								*/
	private int 		m_Created = 0;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("FTA_CreditDefinition_ID"))
				p_FTA_CreditDefinition_ID = para.getParameterAsInt();	
		}
		//	Get Credit Definition
		if(p_FTA_CreditDefinition_ID == 0)
			p_FTA_CreditDefinition_ID = getRecord_ID();
	}
	
	@Override
	protected String doIt() throws Exception {
		StringBuffer whereClause = new StringBuffer();
		if(p_AD_Org_ID != 0)
			whereClause.append("AND AD_Org_ID = ").append(p_AD_Org_ID);
		if(p_FTA_CreditDefinition_ID != 0)
			whereClause.append("AND FTA_CreditDefinition_ID = ").append(p_FTA_CreditDefinition_ID);
		
		//	Get Credit Definition
		List<MFTACreditDefinition> list = new Query(getCtx(), X_FTA_CreditDefinition.Table_Name, 
				whereClause.toString(), get_TrxName())
		.setClient_ID()
		.list();
		//	Loop
		for (MFTACreditDefinition m_FTA_CreditDefinition : list) {
			log.fine("Credit Definition: " + m_FTA_CreditDefinition.toString());
			
			MFTACreditDefinitionLine [] lines = m_FTA_CreditDefinition.getLines(false);
			//	For Category
			MFTACDLCategory category = MFTACDLCategory
					.getDefDistibutionCategory(getCtx(), MFTACDLCategory.T_CATEGORY, get_TrxName());
			if(category == null)
				return "@@";
			
			if(!existsCategory(lines, category.getFTA_CDL_Category_ID())){
				MFTACreditDefinitionLine line = new MFTACreditDefinitionLine(getCtx(), 0, get_TrxName());
				line.setFTA_CreditDefinition_ID(m_FTA_CreditDefinition.getFTA_CreditDefinition_ID());
				line.setFTA_CDL_Category_ID(category.getFTA_CDL_Category_ID());
				MProduct product = MProduct.get(getCtx(), m_FTA_CreditDefinition.getCategory_ID());
				line.setM_Product_ID(product.getM_Product_ID());
				line.setC_UOM_ID(product.getC_UOM_ID());
				line.setQty(Env.ZERO);
				line.setPrice(Env.ZERO);
				line.setAmt(Env.ZERO);
				line.setIsDistributionLine(false);
				line.setIsExceedCreditLimit(true);
				line.setProcessed(m_FTA_CreditDefinition.isProcessed());
				line.setLine(10);
				line.saveEx();	
				//	Log
				addLog(m_FTA_CreditDefinition.getDocumentNo() + " @FTA_CreditDefinitionLine_ID@: " + line.getLine() + " - " + category.getName());
				m_Created ++;
			}
			//	For Distribution
			category = MFTACDLCategory
					.getDefDistibutionCategory(getCtx(), MFTACDLCategory.T_DISTRIBUTION, get_TrxName());
			
			if(!existsCategory(lines, category.getFTA_CDL_Category_ID())){
				MFTACreditDefinitionLine line = new MFTACreditDefinitionLine(getCtx(), 0, get_TrxName());
				line.setFTA_CreditDefinition_ID(m_FTA_CreditDefinition.getFTA_CreditDefinition_ID());
				line.setFTA_CDL_Category_ID(category.getFTA_CDL_Category_ID());
				line.setC_UOM_ID(100);
				line.setQty(Env.ZERO);
				line.setPrice(Env.ZERO);
				line.setAmt(Env.ZERO);
				line.setIsDistributionLine(true);
				line.setIsExceedCreditLimit(true);
				line.setProcessed(m_FTA_CreditDefinition.isProcessed());
				line.setLine(20);
				line.saveEx();
				//	Log
				addLog(m_FTA_CreditDefinition.getDocumentNo() + " @FTA_CreditDefinitionLine_ID@: " + line.getLine() + " - " + category.getName());
				m_Created ++;
			}
		}		
		return "@Created@: " + m_Created;
	}
	
	/**
	 * Get Exists Category
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 21/11/2013, 11:13:31
	 * @param lines
	 * @param p_FTA_CDL_Category_ID
	 * @return
	 * @return boolean
	 */
	private boolean existsCategory(MFTACreditDefinitionLine [] lines, int p_FTA_CDL_Category_ID){
		for(MFTACreditDefinitionLine line : lines){
			if(line.getFTA_CDL_Category_ID() == p_FTA_CDL_Category_ID)
				return true;
		}
		//	False
		return false;
	}

}
