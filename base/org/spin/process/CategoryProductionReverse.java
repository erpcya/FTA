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
import java.sql.Timestamp;
import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MClient;
import org.compiere.model.MLocator;
import org.compiere.model.MStorage;
import org.compiere.model.MTransaction;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.X_M_Production;
import org.compiere.model.X_M_ProductionLine;
import org.compiere.model.X_M_ProductionPlan;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * Generate Category Production
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CategoryProductionReverse extends SvrProcess {
	
	/**	Production					*/
	private int			p_M_Production_ID = 0;
	/**	Movement Date				*/
	private Timestamp	p_MovementDate = null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("M_Production_ID"))
				p_M_Production_ID = para.getParameterAsInt();
			else if(name.equals("MovementDate"))
				p_MovementDate = (Timestamp) para.getParameter();
		}
		//	Default Record Identifier
		if(p_M_Production_ID == 0)
			p_M_Production_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		//	Valid Operation Type
		if(p_M_Production_ID == 0)
			throw new AdempiereException("@M_Production_ID@ @NotFound@");
		//	Parameters
		X_M_Production m_Current_Production = new X_M_Production(getCtx(), p_M_Production_ID, get_TrxName());
		//	Valid Reverse Document
		if(m_Current_Production.get_ValueAsInt("Reversal_ID") > 0)
			return "Ok";
		//	Create Reverse
		X_M_Production m_Reversal_Production = new X_M_Production(getCtx(), 0, get_TrxName());
		//	Get Movement Date
		if(p_MovementDate == null)
			p_MovementDate = m_Current_Production.getMovementDate();
		//	Set Name and date for reverse document
		m_Reversal_Production.setName(Msg.parseTranslation(getCtx(), "@M_Production_ID@: " + p_MovementDate));
		m_Reversal_Production.setDescription("--> " + m_Current_Production.getName());
		m_Reversal_Production.setMovementDate(p_MovementDate);
		m_Reversal_Production.setIsCreated(true);
		m_Reversal_Production.set_ValueOfColumn("IsReversal", "Y");
		m_Reversal_Production.set_ValueOfColumn("Reversal_ID", m_Current_Production.getM_Production_ID());
		m_Reversal_Production.setAD_Org_ID(m_Current_Production.getAD_Org_ID());
		m_Reversal_Production.saveEx();
		//	Set Values for Current Production
		m_Current_Production.set_ValueOfColumn("Reversal_ID", m_Reversal_Production.getM_Production_ID());
		m_Current_Production.setName(Msg.getMsg(getCtx(), "Voided"));
		m_Current_Production.setDescription(m_Reversal_Production.getName() + " <--");
		m_Current_Production.set_ValueOfColumn("IsReversal", "Y");
		m_Current_Production.saveEx();
		
		//	Get Production Plan
		List<X_M_ProductionPlan> m_ProductionPlanList = new Query(getCtx(), X_M_ProductionPlan.Table_Name, 
				X_M_ProductionPlan.COLUMNNAME_M_Production_ID + " = ?", get_TrxName())
				.setParameters(p_M_Production_ID)
				.list();
		//	Copy Production Plan and Line
		for (X_M_ProductionPlan m_ProductionPlan : m_ProductionPlanList) {
			//	Create New Production Plan
			X_M_ProductionPlan m_ProductionPlanReversal = new X_M_ProductionPlan(getCtx(), 0, get_TrxName());
			//	Copy
			PO.copyValues(m_ProductionPlan, m_ProductionPlanReversal);
			//	Set New Values
			m_ProductionPlanReversal.setM_Production_ID(m_Reversal_Production.getM_Production_ID());
			m_ProductionPlanReversal.setProductionQty(m_ProductionPlan.getProductionQty().negate());
			m_ProductionPlanReversal.setAD_Org_ID(m_ProductionPlan.getAD_Org_ID());
			m_ProductionPlanReversal.saveEx();
			//	Copy Production Line
			List<X_M_ProductionLine> m_ProductionLineList = new Query(getCtx(), X_M_ProductionLine.Table_Name, 
					X_M_ProductionLine.COLUMNNAME_M_ProductionPlan_ID + " = ?", get_TrxName())
					.setParameters(m_ProductionPlan.getM_ProductionPlan_ID())
					.list();
			//	Loop
			for (X_M_ProductionLine m_ProductionLine : m_ProductionLineList) {
				//	Create New Production Line
				X_M_ProductionLine m_ProductionLineReversal = new X_M_ProductionLine(getCtx(), 0, get_TrxName());
				//	Copy
				PO.copyValues(m_ProductionLine, m_ProductionLineReversal);
				//	Set New Values
				m_ProductionLineReversal.setM_ProductionPlan_ID(m_ProductionPlanReversal.getM_ProductionPlan_ID());
				m_ProductionLineReversal.setMovementQty(m_ProductionLine.getMovementQty().negate());
				m_ProductionLineReversal.set_ValueOfColumn("ReversalLine_ID", m_ProductionLine.getM_ProductionLine_ID());
				m_ProductionLineReversal.setAD_Org_ID(m_ProductionLine.getAD_Org_ID());
				m_ProductionLineReversal.saveEx();
				//	Set Reversal to Current Line
				m_ProductionLine.set_ValueOfColumn("ReversalLine_ID", m_ProductionLineReversal.getM_ProductionLine_ID());
				m_ProductionLine.saveEx();
			}
		}
		//	Apply Production
		if(m_Reversal_Production != null)
			applyProduction(m_Reversal_Production);
		//	Return
		return (m_Reversal_Production != null? "@Created@: " + m_Reversal_Production.getName(): "");

	}
	
	/**
	 * Apply Reverse Production
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/11/2014, 20:21:48
	 * @param m_M_Production
	 * @throws AdempiereUserError
	 * @throws RuntimeException
	 * @return void
	 */
	private void applyProduction(X_M_Production m_M_Production) throws AdempiereUserError, RuntimeException{
		String whereClause = "M_Production_ID=? ";
		List<X_M_ProductionPlan> lines = new Query(getCtx(), X_M_ProductionPlan.Table_Name , whereClause, get_TrxName())
												  .setParameters(m_M_Production.getM_Production_ID())
												  .setOrderBy("Line, M_Product_ID")
												  .list();
			for (X_M_ProductionPlan pp :lines)
			{	

				whereClause = "M_ProductionPlan_ID= ? ";
				List<X_M_ProductionLine> production_lines = new Query(getCtx(), X_M_ProductionLine.Table_Name , whereClause, get_TrxName())
						.setParameters(pp.getM_ProductionPlan_ID())
						.setOrderBy("Line")
						.list();
			
				//	Reverse Movement Type
				for (X_M_ProductionLine pline : production_lines)
				{
					MLocator locator = MLocator.get(getCtx(), pline.getM_Locator_ID());
					String MovementType = MTransaction.MOVEMENTTYPE_Production_;					
					BigDecimal MovementQty = pline.getMovementQty();						
					if (MovementQty.signum() == 0)
						continue ;
					else if(MovementQty.signum() < 0) {
						MovementType = MTransaction.MOVEMENTTYPE_ProductionPlus;
					}
				
					if (!MStorage.add(getCtx(), locator.getM_Warehouse_ID(),
						locator.getM_Locator_ID(),
						pline.getM_Product_ID(), 
						pline.getM_AttributeSetInstance_ID(), 0 , 
						MovementQty,
						Env.ZERO,
						Env.ZERO,
						get_TrxName())) {
						throw new AdempiereUserError("Cannot correct Inventory");
					}
					
					//Create Transaction
					MTransaction mtrx = new MTransaction (getCtx(), pline.getAD_Org_ID(), 
						MovementType, locator.getM_Locator_ID(),
						pline.getM_Product_ID(), pline.getM_AttributeSetInstance_ID(), 
						MovementQty, m_M_Production.getMovementDate(), get_TrxName());
					mtrx.setM_ProductionLine_ID(pline.getM_ProductionLine_ID());
					mtrx.saveEx();
					
					pline.setProcessed(true);
					pline.saveEx();
				} // Production Line

				pp.setProcessed(true);
				pp.saveEx();
			} 			
			m_M_Production.setProcessed(true);
			m_M_Production.saveEx();	
		 
			/* Immediate accounting */
			if (MClient.isClientAccountingImmediate()) {
				DocumentEngine.postImmediate(getCtx(), getAD_Client_ID(), m_M_Production.get_Table_ID(), 
						m_M_Production.get_ID(), true, get_TrxName());						
			}
	}
}