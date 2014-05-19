/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
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
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.util.DB;
import org.spin.model.MFTAFact;

/**
 *	Copy Order and optionally close
 *	
 *  @author Jorg Janke
 *  @version $Id: CopyOrder.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class CopyOrder extends SvrProcess
{
	/** Order to Copy				*/
	private int 		p_C_Order_ID = 0;
	/** Document Type of new Order	*/
	private int 		p_C_DocType_ID = 0;
	/** New Doc Date				*/
	private Timestamp	p_DateDoc = null;
	/** Close/Process Old Order		*/
	private boolean 	p_IsCloseDocument = false;
	/** Sql*/
	private StringBuffer sql = new StringBuffer();
	
	/** Credit Distribution */
	private HashMap<Integer, BigDecimal> m_dist = new HashMap<Integer, BigDecimal>();
	
	/**Process From Browse*/
	private boolean processFromBrowse = false;
	
	/**Farmer Credit*/
	private int p_FTA_FarmerCredit_ID = 0;
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("C_Order_ID"))
				p_C_Order_ID = ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para[i].getParameter();
			else if (name.equals("IsCloseDocument"))
				p_IsCloseDocument = "Y".equals(para[i].getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		//2014-02-12 Add Support to SmartBrowse
		PreparedStatement ps = null ;
		ResultSet rs = null;
		sql.append("Select " +
					"ts.AD_PInstance_ID, " +  
					"ts.T_Selection_ID As FTA_FarmerCreditLine_ID, " +  
					"tsb.FTA_FarmerCredit_ID, " + 
					"tsb.AllocatedAmt, " + 
					"tsb.C_Order_ID " + 
					"From " +    
					"T_Selection ts " +  
					"Inner Join (Select  tsb.AD_PInstance_ID, " +  
					"tsb.T_Selection_ID, " +  
					"Max(Case When tsb.ColumnName = 'CSOALL_FTA_FarmerCredit_ID' Then tsb.Value_Number Else Null End) As FTA_FarmerCredit_ID, " +  
					"Max(Case When tsb.ColumnName = 'CSOALL_AllocatedAmt' Then tsb.Value_Number Else Null End) As AllocatedAmt, " +   
					"Max(Case When tsb.ColumnName = 'CSOALL_C_Order_ID' Then tsb.Value_Number Else Null End) As C_Order_ID " +   
					"From T_Selection_Browse tsb " +   
					"Group By " +  
					"tsb.AD_PInstance_ID, " +  
					"tsb.T_Selection_ID) " +   
					"tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID  " );
		sql.append("Where ts.AD_PInstance_ID=?");
		try{
			ps = DB.prepareStatement(sql.toString(), null);
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			while (rs.next()){
				processFromBrowse = true;
				//Set Farmer Credit From Selection
				if (p_FTA_FarmerCredit_ID == 0)
					p_FTA_FarmerCredit_ID = rs.getInt("FTA_FarmerCredit_ID");
					
				//Set Amount From Selection
				if (p_C_Order_ID == 0)
					p_C_Order_ID = rs.getInt("C_Order_ID");
				
				m_dist.put(rs.getInt("FTA_FarmerCreditLine_ID"), rs.getBigDecimal("AllocatedAmt"));
			}
		}
		catch (SQLException ex){
			new AdempiereException(ex.getMessage());
		}
		finally{
			DB.close(rs, ps);
			rs=null; ps=null;
		}
		//End Carlos Parada
		
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (clear text)
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("C_Order_ID=" + p_C_Order_ID 
			+ ", C_DocType_ID=" + p_C_DocType_ID 
			+ ", CloseDocument=" + p_IsCloseDocument);
		if (p_C_Order_ID == 0)
			throw new IllegalArgumentException("No Order");
		MDocType dt = MDocType.get(getCtx(), p_C_DocType_ID);
		if (dt.get_ID() == 0)
			throw new IllegalArgumentException("No DocType");
		if (p_DateDoc == null)
			p_DateDoc = new Timestamp (System.currentTimeMillis());
		//
		MOrder from = new MOrder (getCtx(), p_C_Order_ID, get_TrxName());
		MOrder newOrder = MOrder.copyFrom (from, p_DateDoc, 
			dt.getC_DocType_ID(), dt.isSOTrx(), false, true, get_TrxName());		//	copy ASI
		newOrder.setC_DocTypeTarget_ID(p_C_DocType_ID);
		boolean OK = newOrder.save();
		if (!OK)
			throw new IllegalStateException("Could not create new Order");
		//
		if (p_IsCloseDocument)
		{
			MOrder original = new MOrder (getCtx(), p_C_Order_ID, get_TrxName());
			original.setDocAction(MOrder.DOCACTION_Complete);
			original.processIt(MOrder.DOCACTION_Complete);
			original.save();
			original.setDocAction(MOrder.DOCACTION_Close);
			original.processIt(MOrder.DOCACTION_Close);
			original.save();
		}
		
		if (processFromBrowse)
			allocateOrder(newOrder.getC_Order_ID());
		//
	//	Env.setSOTrx(getCtx(), newOrder.isSOTrx());
	//	return "@C_Order_ID@ " + newOrder.getDocumentNo();
		return dt.getName() + ": " + newOrder.getDocumentNo();
	}	//	doIt

	/**
	 * Allocation Credit Order
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> Feb 18, 2014, 03:15:04 AM
	 * @param p_C_Order_ID
	 * @return void
	 */
	private void allocateOrder(int p_C_Order_ID){
		
		Iterator<?> it =  m_dist.entrySet().iterator();
		MOrder order = new MOrder(getCtx(), p_C_Order_ID, get_TrxName());
		order.set_ValueOfColumn("IsCreditFactManual", true);
		order.save(get_TrxName());
		MFTAFact.deleteFact(MOrder.Table_ID, order.getC_Order_ID(), true, get_TrxName());
		while (it.hasNext()){
			Entry<?, ?> selection = (Entry<?, ?>) it.next();
			
			MFTAFact fact=  new MFTAFact(getCtx(), 0, get_TrxName());
			
			fact.setAD_Table_ID(MOrder.Table_ID);
			fact.setAmt((BigDecimal)selection.getValue());
			fact.setC_BPartner_ID(order.getC_BPartner_ID());
			fact.setFTA_CreditDefinitionLine_ID((Integer)selection.getKey());
			fact.setFTA_CreditDefinition_ID(fact.getFTA_CreditDefinitionLine().getFTA_CreditDefinition_ID());
			fact.setFTA_FarmerCredit_ID(p_FTA_FarmerCredit_ID);
			fact.setIsCreditFactManual(true);
			fact.setRecord_ID(order.getC_Order_ID());
			fact.setDateDoc(order.getDateOrdered());
			fact.setDescription(order.getDescription());
			fact.saveEx(get_TrxName());
		}
	}
}	//	CopyOrder