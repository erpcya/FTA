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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttributeSetInstance;
import org.compiere.model.MClient;
import org.compiere.model.MLocator;
import org.compiere.model.MStorage;
import org.compiere.model.MTransaction;
import org.compiere.model.Query;
import org.compiere.model.X_M_Attribute;
import org.compiere.model.X_M_Production;
import org.compiere.model.X_M_ProductionLine;
import org.compiere.model.X_M_ProductionPlan;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.MFTACategoryCalc;
import org.spin.model.MFTACategoryCalcFilter;
import org.spin.model.MFTACategoryCalcGroup;
import org.spin.model.MFTARecordWeight;

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
	/**	Locator						*/
	private int 		p_M_Locator_ID = 0;
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
	/**	Org Trx						*/
	private int 		p_AD_OrgTrx_ID = 0;
	/**	Project						*/
	private int 		p_C_Project_ID = 0;
	/**	Activity					*/
	private int 		p_C_Activity_ID = 0;
	/**	Campaign					*/
	private int 		p_C_Campaign_ID = 0;
	/**	Locator To					*/
	private int 		p_M_LocatorTo_ID = 0;
	/**	Movement Date				*/
	private Timestamp	p_MovementDate = null;
	/**	Must be stocked				*/
	private boolean		p_MustBeStocked = false;
	
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
			else if(name.equals("M_Locator_ID"))
				p_M_Locator_ID = para.getParameterAsInt();
			else if(name.equals("OperationType"))
				p_OperationType = (String) para.getParameter();
			else if(name.equals("DateDoc")){
				p_DateDoc = (Timestamp) para.getParameter();
				p_DateDoc_To = (Timestamp) para.getParameter_To();
			} else if(name.equals("FTA_CategoryCalcGroup_ID"))
				p_FTA_CategoryCalcGroup_ID = para.getParameterAsInt();
			else if(name.equals("FTA_CategoryCalc_ID"))
				p_FTA_CategoryCalc_ID = para.getParameterAsInt();
			else if(name.equals("AD_OrgTrx_ID"))
				p_AD_OrgTrx_ID = para.getParameterAsInt();
			else if(name.equals("M_LocatorTo_ID"))
				p_M_LocatorTo_ID = para.getParameterAsInt();
			else if(name.equals("MovementDate"))
				p_MovementDate = (Timestamp) para.getParameter();
			else if(name.equals("C_Project_ID"))
				p_C_Project_ID = para.getParameterAsInt();
			else if(name.equals("C_Activity_ID"))
				p_C_Activity_ID = para.getParameterAsInt();
			else if(name.equals("C_Campaign_ID"))
				p_C_Campaign_ID = para.getParameterAsInt();
			else if(name.equals("MustBeStocked"))
				p_MustBeStocked = para.getParameterAsBoolean();
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
		//	Get From Group
		if(p_FTA_CategoryCalc_ID != 0){
			MFTACategoryCalc m_cCalc = new MFTACategoryCalc(getCtx(), p_FTA_CategoryCalc_ID, get_TrxName());
			String msg = productionGenerate(m_cCalc);
			//	Get Message
			if(msg != null
					&& msg.length() != 0)
				addLog(msg);
		} else if(p_FTA_CategoryCalcGroup_ID != 0){
			MFTACategoryCalcGroup m_ccGroup = new MFTACategoryCalcGroup(getCtx(), p_FTA_CategoryCalcGroup_ID, get_TrxName());
			MFTACategoryCalc [] m_categoryCalc = m_ccGroup.getLines(false);
			//	generate all from group
			for(MFTACategoryCalc m_cCalc : m_categoryCalc){
				String msg = productionGenerate(m_cCalc);
				//	Get Message
				if(msg != null
						&& msg.length() != 0)
					addLog(msg);
			}
		}
		//	
		return "";
	}
	
	/**
	 * Production Generate from Category Calculation
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/01/2014, 16:20:33
	 * @param m_cCalc
	 * @return
	 * @return String
	 * @throws SQLException 
	 * @throws RuntimeException 
	 * @throws AdempiereUserError 
	 */
	private String productionGenerate(MFTACategoryCalc m_cCalc) throws SQLException, AdempiereUserError, RuntimeException{
		//	Get Filters
		MFTACategoryCalcFilter [] m_filters = m_cCalc.getLines(false);
		//			
		PreparedStatement ps=null;
		ResultSet rs =null;
		//	SQL
		StringBuffer sql = new StringBuffer("SELECT qa.M_Product_ID, qa.QualityAnalysis_ID, rw.FTA_RecordWeight_ID, rw.DocumentNo, rw.NetWeight, rw.PayWeight, iol.M_Locator_ID " +
				"FROM FTA_RecordWeight rw " +
				"INNER JOIN FTA_QualityAnalysis qa ON(qa.FTA_QualityAnalysis_ID = rw.FTA_QualityAnalysis_ID) " +
				"INNER JOIN FTA_CategoryCalc cc ON(cc.M_Product_ID = qa.M_Product_ID) " +
				"INNER JOIN M_InOut io ON(io.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID) " +
				"INNER JOIN M_InOutLine iol ON(iol.M_InOut_ID = io.M_InOut_ID) ");
		//	Where
		sql.append("WHERE cc.FTA_CategoryCalc_ID = ? " +
				"AND rw.DocStatus = 'CO' " +
				"AND io.DocStatus = 'CO' " +
				"AND rw.M_ProductionLine_ID IS NULL ");
		
		//	Add search criteria
		for(MFTACategoryCalcFilter m_filter : m_filters){
			//	Add Exists
			sql.append("AND ")
				.append("EXISTS(")
				.append("SELECT 1 ")
				.append("FROM FTA_RV_AttributeValue av ")
				.append("WHERE av.M_AttributeSetInstance_ID = qa.QualityAnalysis_ID ")
				.append("AND av.M_Attribute_ID = ").append(m_filter.getM_Attribute_ID())
				.append(" ");
			//	Just Lot
			if(m_filter.isLot()){
				sql.append("AND av.M_Lot_ID = ").append(m_filter.getPlantingCycle_ID());
			}
			//	Just Number
			else if(m_filter.getAttributeValueType().equals(X_M_Attribute.ATTRIBUTEVALUETYPE_Number)){
				//	Operator
				BigDecimal valueNumber = m_filter.getValueNumber();
				BigDecimal valueNumber2 = m_filter.getValueNumber2();
				//	Equal both
				if(valueNumber != null
						&& valueNumber2 != null
						&& valueNumber.equals(valueNumber2)){
					sql.append("AND av.ValueNumber = ").append(valueNumber);
				} else if(valueNumber != null
						&& valueNumber2 == null){
					sql.append("AND av.ValueNumber >= ").append(valueNumber);
				} else if(valueNumber == null
						&& valueNumber2 != null){
					sql.append("AND av.ValueNumber <= ").append(valueNumber2);
				} else if(valueNumber != null
						&& valueNumber2 != null
						& !valueNumber.equals(valueNumber2)){
					sql.append("AND (av.ValueNumber >= ").append(valueNumber)
							.append(" AND av.ValueNumber <= ").append(valueNumber2).append(")");
				}	
			}
			//	Just String Value
			else if(m_filter.getAttributeValueType().equals(X_M_Attribute.ATTRIBUTEVALUETYPE_StringMax40)){
				//	Operator
				String value = m_filter.getValue();
				String value2 = m_filter.getValue2();
				if(value != null
						&& value2 != null
						&& value.equals(value2)){
					sql.append("AND av.Value = ").append("'").append(value).append("'");
				} else if(value != null
						&& value2 == null){
					sql.append("AND av.Value >= ").append("'").append(value).append("'");
				} else if(value == null
						&& value2 != null){
					sql.append("AND av.Value <= ").append("'").append(value2).append("'");
				} else if(value != null
						&& value2 != null
						& !value.equals(value2)){
					sql.append("AND (av.Value >= ").append("'").append(value).append("'")
					.append(" AND av.Value <= ").append("'").append(value2).append("')");
				}
			}
			else if(m_filter.getAttributeValueType().equals(X_M_Attribute.ATTRIBUTEVALUETYPE_List)){
				//	Operator
				int m_M_AttributeValue_ID = m_filter.getM_AttributeValue_ID();
				int m_M_AttributeValue2_ID = m_filter.getM_AttributeValue2_ID();
				//	Equal both
				if(m_M_AttributeValue_ID != 0
						&& m_M_AttributeValue_ID != 0
						&& m_M_AttributeValue_ID == m_M_AttributeValue2_ID){
					sql.append("AND av.M_AttributeValue_ID = ").append(m_M_AttributeValue_ID);
				} else if(m_M_AttributeValue_ID != 0
						&& m_M_AttributeValue2_ID == 0){
					sql.append("AND av.M_AttributeValue_ID >= ").append(m_M_AttributeValue_ID);
				} else if(m_M_AttributeValue_ID == 0
						&& m_M_AttributeValue2_ID != 0){
					sql.append("AND av.M_AttributeValue_ID <= ").append(m_M_AttributeValue2_ID);
				} else if(m_M_AttributeValue_ID != 0
						&& m_M_AttributeValue2_ID != 0
						& m_M_AttributeValue_ID != m_M_AttributeValue2_ID){
					sql.append("AND (av.M_AttributeValue_ID >= ").append(m_M_AttributeValue_ID)
						.append(" AND av.M_AttributeValue_ID <= ").append(m_M_AttributeValue2_ID).append(")");
				}
			}
			//	Add
			sql.append(")");
		}
		//	Parameters
		if(p_AD_Org_ID != 0)
			sql.append(" AND rw.AD_Org_ID = ? ");
		if(p_M_Warehouse_ID != 0)
			sql.append(" AND io.M_Warehouse_ID = ? ");
		if(p_M_Locator_ID != 0)
			sql.append(" AND iol.M_Locator_ID = ? ");
		if(p_OperationType != null)
			sql.append(" AND rw.OperationType = ? ");
		if(p_DateDoc != null)
			sql.append(" AND rw.DateDoc >= ? ");
		if(p_DateDoc_To != null)
			sql.append(" AND rw.DateDoc <= ? ");
		
		//	Group By
		sql.append(" GROUP BY qa.M_Product_ID, rw.FTA_RecordWeight_ID, qa.QualityAnalysis_ID, iol.M_Locator_ID ");
		//	Order By
		sql.append("ORDER BY qa.M_Product_ID, rw.FTA_RecordWeight_ID");
		//	
		int m_FTA_CategoryCalc_ID = m_cCalc.getFTA_CategoryCalc_ID();
		//	Log
		log.fine("SQL=" + sql);
		log.fine("FTA_CategoryCalc_ID=" + m_FTA_CategoryCalc_ID);
		//	Prepare
		ps = DB.prepareStatement(sql.toString(), get_TrxName());
		//	Parameters
		int i = 1;
		ps.setInt(i++, m_FTA_CategoryCalc_ID);
		//	Values
		if(p_AD_Org_ID != 0)
			ps.setInt(i++, p_AD_Org_ID);
		if(p_M_Warehouse_ID != 0)
			ps.setInt(i++, p_M_Warehouse_ID);
		if(p_M_Locator_ID != 0)
			ps.setInt(i++, p_M_Locator_ID);
		if(p_OperationType != null)
			ps.setString(i++, p_OperationType);
		if(p_DateDoc != null)
			ps.setTimestamp(i++, p_DateDoc);
		if(p_DateDoc_To != null)
			ps.setTimestamp(i++, p_DateDoc_To);
		//	
		rs = ps.executeQuery();
		//	Loop
		int m_Current_M_Product_ID = 0;
		X_M_Production m_Current_Production = null;
		X_M_ProductionPlan m_Current_ProductionPlan = null;
		BigDecimal m_ProductionQty = Env.ZERO;
		int m_level = 1;
		int m_line = 10;
		while(rs.next()){
			int m_M_Product_ID = rs.getInt("M_Product_ID");
			int m_QualityAnalysis_ID = rs.getInt("QualityAnalysis_ID");
			int m_FTA_RecordWeight_ID = rs.getInt("FTA_RecordWeight_ID");
			String m_DocumentNo = rs.getString("DocumentNo");
			BigDecimal m_NetWeight = rs.getBigDecimal("NetWeight");
			BigDecimal m_PayWeight = rs.getBigDecimal("PayWeight");
			int m_M_Locator_ID = rs.getInt("M_Locator_ID");
			//	Calculate Payment Weight
			MAttributeSetInstance att = new MAttributeSetInstance(getCtx(), m_QualityAnalysis_ID, get_TrxName());
			BigDecimal m_PayWeight2 = m_cCalc.getPaidWeight(m_NetWeight, att, get_TrxName());
			
			log.info("Difference=" + m_PayWeight.subtract(m_PayWeight2));
			
			//	Create new
			if(m_Current_Production == null){
				m_Current_Production = new X_M_Production(getCtx(), 0, get_TrxName());
				m_Current_Production.setName(Msg.parseTranslation(getCtx(), "@M_Production_ID@: " + p_MovementDate));
				m_Current_Production.setMovementDate(p_MovementDate);
				m_Current_Production.setIsCreated(true);
				//	Set optional values
				if(p_C_Project_ID != 0)
					m_Current_Production.setC_Project_ID(p_C_Project_ID);
				if(p_C_Activity_ID != 0)
					m_Current_Production.setC_Activity_ID(p_C_Activity_ID);
				if(p_C_Campaign_ID != 0)
					m_Current_Production.setC_Campaign_ID(p_C_Campaign_ID);
				//	Save
				m_Current_Production.saveEx();
			}
			//	Create production plan
			if(m_Current_M_Product_ID != m_M_Product_ID){
				//	Create Line Production
				if(m_Current_M_Product_ID != 0){
					X_M_ProductionLine pl = new X_M_ProductionLine(getCtx(), 0 , get_TrxName());
					pl.setAD_Org_ID(p_AD_OrgTrx_ID);
					pl.setLine(m_line);
					pl.setM_Product_ID(m_Current_M_Product_ID);
					pl.setM_Locator_ID(p_M_LocatorTo_ID);
					pl.setM_ProductionPlan_ID(m_Current_ProductionPlan.getM_ProductionPlan_ID());
					pl.setM_AttributeSetInstance_ID(m_cCalc.getM_AttributeSetInstance_ID());
					pl.setMovementQty(m_ProductionQty);
					pl.saveEx();
					//	Set Production Quantity
					m_Current_ProductionPlan.setProductionQty(m_ProductionQty);
					m_Current_ProductionPlan.saveEx();
					//	Set Production Quantity
					m_ProductionQty = Env.ZERO;
				}
				//	Create Plan
				m_Current_ProductionPlan = new X_M_ProductionPlan(getCtx(), 0, get_TrxName());
				m_Current_ProductionPlan.setM_Production_ID(m_Current_Production.getM_Production_ID());
				m_Current_ProductionPlan.setM_Product_ID(m_M_Product_ID);
				//m_Current_ProductionPlan.set_ValueOfColumn("M_AttributeSetInstance_ID", m_cCalc.getM_AttributeSetInstance_ID());
				m_Current_ProductionPlan.setM_Locator_ID(p_M_LocatorTo_ID);
				m_Current_ProductionPlan.setLine(m_level);
				m_Current_ProductionPlan.saveEx();
				m_level += 1;
				//	Set Current Product
				m_Current_M_Product_ID = m_M_Product_ID;
			}
			//	Create Lines
			X_M_ProductionLine pl = new X_M_ProductionLine(getCtx(), 0 , get_TrxName());
			pl.setAD_Org_ID(p_AD_OrgTrx_ID);
			pl.setLine(m_line);
			pl.setDescription(Msg.parseTranslation(getCtx(), "@FTA_RecordWeight_ID@: " + m_DocumentNo));
			pl.setM_Product_ID(m_M_Product_ID);
			pl.setM_Locator_ID(m_M_Locator_ID);
			pl.setM_ProductionPlan_ID(m_Current_ProductionPlan.getM_ProductionPlan_ID());
			pl.setM_AttributeSetInstance_ID(m_QualityAnalysis_ID);
			pl.setMovementQty(m_NetWeight.negate());
			pl.saveEx();
			//	Update Record Weight
			MFTARecordWeight recordWeight = new MFTARecordWeight(getCtx(), m_FTA_RecordWeight_ID, get_TrxName());
			recordWeight.setM_ProductionLine_ID(pl.getM_ProductionLine_ID());
			recordWeight.saveEx();
			//	Set Values
			m_line += 10;
			m_ProductionQty = m_ProductionQty.add(m_PayWeight2);
		}
		//	Create last
		if(m_Current_M_Product_ID != 0){
			X_M_ProductionLine pl = new X_M_ProductionLine(getCtx(), 0 , get_TrxName());
			pl.setAD_Org_ID(p_AD_OrgTrx_ID);
			pl.setLine(m_line);
			pl.setM_Product_ID(m_Current_M_Product_ID);
			pl.setM_Locator_ID(p_M_LocatorTo_ID);
			pl.setM_ProductionPlan_ID(m_Current_ProductionPlan.getM_ProductionPlan_ID());
			pl.setM_AttributeSetInstance_ID(m_cCalc.getM_AttributeSetInstance_ID());
			pl.setMovementQty(m_ProductionQty);
			pl.saveEx();
			//	Set Production Quantity
			m_Current_ProductionPlan.setProductionQty(m_ProductionQty);
			m_Current_ProductionPlan.saveEx();
			//	Set Production Quantity
			m_ProductionQty = Env.ZERO;
		}
		//	Apply Production
		if(m_Current_Production != null)
			applyProduction(m_Current_Production);
		//	Return
		return (m_Current_Production != null? "@Created@: " + m_Current_Production.getName(): "");
	}
	
	/**
	 * Apply Production
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 16/01/2014, 19:12:59
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
			
				for (X_M_ProductionLine pline : production_lines)
				{
					MLocator locator = MLocator.get(getCtx(), pline.getM_Locator_ID());
					String MovementType = MTransaction.MOVEMENTTYPE_ProductionPlus;					
					BigDecimal MovementQty = pline.getMovementQty();						
					if (MovementQty.signum() == 0)
						continue ;
					else if(MovementQty.signum() < 0)
					{
						BigDecimal QtyAvailable = MStorage.getQtyAvailable(
								locator.getM_Warehouse_ID(), 
								locator.getM_Locator_ID(), 
								pline.getM_Product_ID(), 
								pline.getM_AttributeSetInstance_ID(),
								get_TrxName());
						
						if(p_MustBeStocked && QtyAvailable.add(MovementQty).signum() < 0){	
							throw new AdempiereUserError("@NotEnoughStocked@: " + pline.getM_Product().getName());
						}
						
						MovementType = MTransaction.MOVEMENTTYPE_Production_;
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