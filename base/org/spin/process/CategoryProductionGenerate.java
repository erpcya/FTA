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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.spin.model.MFTACategoryCalc;
import org.spin.model.MFTACategoryCalcGroup;

/**
 * Generate Category Production
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CategoryProductionGenerate extends SvrProcess {
	
	/**	Organization				*/
	private int			p_AD_Org_ID = 0;
	/**	Warehouse					*/
	private int			p_M_Warehouse_ID = 0;
	/**	Operation Type				*/
	private String 		p_OperationType = null;
	/**	Document Date from			*/
	private Timestamp 	p_DateDoc = null;
	/**	Document Date to			*/
	private Timestamp 	p_DateDoc_To = null;
	/**	Category Calculation Group	*/
	private int 		p_FTA_CategoryCalcGroup_ID = 0;
	/**	Category Calculation		*/
	private int 		p_FTA_CategoryCalc_ID = 0;
	/**	Document Action				*/
	private String 		p_DocAction	= DocAction.ACTION_Prepare;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if(name.equals("OperationType"))
				p_OperationType = (String) para.getParameter();
			else if(name.equals("DateDoc")){
				p_DateDoc = (Timestamp) para.getParameter();
				p_DateDoc_To = (Timestamp) para.getParameter_To();
			} else if(name.equals("FTA_CategoryCalcGroup_ID"))
				p_FTA_CategoryCalcGroup_ID = para.getParameterAsInt();
			else if(name.equals("FTA_CategoryCalc_ID"))
				p_FTA_CategoryCalc_ID = para.getParameterAsInt();
			else if(name.equals("DocAction"))
				p_DocAction = (String) para.getParameter();
		}
	}

	@Override
	protected String doIt() throws Exception {
		//	Valid Operation Type
		if(p_OperationType == null)
			throw new AdempiereException("@OperationType@ @NotFound@");
		//	Valid category calc group and category calc
		if(p_FTA_CategoryCalcGroup_ID == 0
				&& p_FTA_CategoryCalc_ID == 0)
			throw new AdempiereException("@FTA_CategoryCalcGroup_ID@ @AND@ @FTA_CategoryCalc_ID@ @NotFound@");
		//	Message
		StringBuffer m_msg = new StringBuffer();
		//	Get From Group
		if(p_FTA_CategoryCalcGroup_ID != 0){
			MFTACategoryCalcGroup m_ccGroup = new MFTACategoryCalcGroup(getCtx(), p_FTA_CategoryCalcGroup_ID, get_TrxName());
			MFTACategoryCalc [] m_categoryCalc = m_ccGroup.getLines(false);
			//	generate all from group
			for(MFTACategoryCalc m_cCalc : m_categoryCalc){
				String msg = productionGenerate(m_cCalc);
				//	Get Message
				if(msg != null){
					if(m_msg.length() > 0)
						m_msg.append("\n").append(msg);
					else
						m_msg.append(msg);
				}
			}
		} else if(p_FTA_CategoryCalc_ID != 0){
			MFTACategoryCalc m_cCalc = new MFTACategoryCalc(getCtx(), p_FTA_CategoryCalc_ID, get_TrxName());
			String msg = productionGenerate(m_cCalc);
			//	Get Message
			if(msg != null)
				m_msg.append(msg);
		}
		//	
		return m_msg.toString();
	}
	
	/**
	 * Production Generate from Category Calculation
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/01/2014, 16:20:33
	 * @param m_cCalc
	 * @return
	 * @return String
	 * @throws SQLException 
	 */
	private String productionGenerate(MFTACategoryCalc m_cCalc) throws SQLException{
		PreparedStatement ps=null;
		ResultSet rs =null;
		
		StringBuffer sql = new StringBuffer("SELECT qa.M_Product_ID, qa.QualityAnalysis_ID, rw.DocumentNo, rw.NetWeight, rw.PayWeight " +
				"FROM FTA_RecordWeight rw " +
				"INNER JOIN FTA_QualityAnalysis qa ON(qa.FTA_QualityAnalysis_ID = rw.FTA_QualityAnalysis_ID) " +
				"INNER JOIN FTA_CategoryCalc cc ON(cc.M_Product_ID = qa.M_Product_ID) " +
				"INNER JOIN FTA_RV_AttributeValue av ON(av.M_AttributeSetInstance_ID = qa.QualityAnalysis_ID) ");
		
		//	Group By
		sql.append("GROUP BY qa.M_Product_ID, rw.FTA_RecordWeight_ID, qa.QualityAnalysis_ID ");
		//	Order By
		sql.append("ORDER BY qa.M_Product_ID, rw.FTA_RecordWeight_ID");
		ps = DB.prepareStatement(sql.toString(), get_TrxName());
		ps.setInt(1, m_cCalc.getFTA_CategoryCalc_ID());
		rs = ps.executeQuery();
		
		while(rs.next()){
			
		}
		
		return null;
	}
}