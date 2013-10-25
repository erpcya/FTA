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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados.                    *
 * All Rights Reserved.                                                       *
 * Contributor(s): Carlos Parada www.erpconsultoresyasociados.com             *
 *****************************************************************************/

package org.spin.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.adempiere.exceptions.DBException;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MPeriod;
import org.compiere.model.MTable;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.MFTACreditDefinitionLine;
import org.spin.model.MFTAFact;


/**
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *	<br> Credit SO Allocation
 */
public class CreditSOAllocation extends SvrProcess {

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub	
		sql.append("Select \n"+ 
				"ts.AD_PInstance_ID , \n"+
				"ts.T_Selection_ID AS FTA_CreditDefinitionLine_ID, \n"+
				"tsb.C_BPartner_ID, \n"+
				"tsb.C_Order_ID, \n"+
				"tsb.C_Invoice_ID, \n"+
				"tsb.FTA_FarmerCredit_ID, \n"+
				"tsb.AllocatedAmt, \n"+
				"'Y' IsManual, \n"+
				"tsb.CreditLimit \n"+
				"From   \n"+
				"T_Selection ts \n"+ 
				"Inner Join (Select  tsb.AD_PInstance_ID, \n"+
				"	tsb.T_Selection_ID, \n"+
				"	Max(Case When tsb.ColumnName = 'CSOALL_C_Order_ID' Then tsb.Value_Number Else Null End) As C_Order_ID, \n"+ 
				"	Max(Case When tsb.ColumnName = 'CSOALL_C_Invoice_ID' Then tsb.Value_Number Else Null End) As C_Invoice_ID,  \n"+
				"	Max(Case When tsb.ColumnName = 'CSOALL_C_BPartner_ID' Then tsb.Value_Number Else Null End) As C_BPartner_ID,  \n"+
				"	Max(Case When tsb.ColumnName = 'CSOALL_FTA_FarmerCredit_ID' Then tsb.Value_Number Else Null End) As FTA_FarmerCredit_ID,  \n"+
				"	Max(Case When tsb.ColumnName = 'CSOALL_AllocatedAmt' Then tsb.Value_Number Else Null End) As AllocatedAmt,  \n"+
				"	Max(Case When tsb.ColumnName = 'CSOALL_SO_CreditLimit' Then tsb.Value_Number Else Null End) As CreditLimit  \n"+
				"	From T_Selection_Browse tsb  \n"+
				"	Group By \n"+
				"	tsb.AD_PInstance_ID, \n"+
				"	tsb.T_Selection_ID)  \n"+
				"tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID ");
		sql.append("Where ts.AD_PInstance_ID=?");
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		int updates =createFacts();
		
		if(updates==-1)
			return m_processMsg;
		else
			return "@Updated@="+updates;
	}

	private int createFacts()
	{

		int updates=0;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			ps = DB.prepareStatement(sql.toString(),get_TrxName());
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			
			
			while (rs.next()){
				//Get Facts
				FTA_CreditDefinitionLine_ID =rs.getInt("FTA_CreditDefinitionLine_ID");
				C_BPartner_ID=rs.getInt("C_BPartner_ID");
				C_Invoice_ID=rs.getInt("C_Invoice_ID");
				C_Order_ID=rs.getInt("C_Order_ID");
				AD_Table_ID=(C_Order_ID==0?MInvoice.Table_ID:MOrder.Table_ID);
				FTA_FarmerCredit_ID =rs.getInt("FTA_FarmerCredit_ID");
				boolean IsManual= rs.getString("IsManual").equals("Y");
				BigDecimal AllocatedAmt = rs.getBigDecimal("AllocatedAmt");
				
				if (AD_Table_ID==0){
					m_processMsg = Msg.translate(getCtx(), "Invalid") + " " + Msg.translate(getCtx(), "SelectDocument") ;
					return -1;
				}
				
				//Delete Fact When First Record of ResultSet
				if (Record_ID==0)
					MFTAFact.deleteFact(AD_Table_ID, (C_Order_ID==0?C_Invoice_ID:C_Order_ID),true, get_TrxName());
				
				MFTAFact fact=  new MFTAFact(getCtx(), 0, get_TrxName());

				
				
				if (fact!=null)
				{
					System.out.println(fact.getAmt());
					
					fact.setAD_Table_ID(AD_Table_ID);
					fact.setAmt(AllocatedAmt);
					fact.setC_BPartner_ID(C_BPartner_ID);
					fact.setFTA_CreditDefinitionLine_ID(FTA_CreditDefinitionLine_ID);
					fact.setFTA_FarmerCredit_ID(FTA_FarmerCredit_ID);
					fact.setIsCreditFactManual(IsManual);
					
					System.out.println(fact.getAmt());
					
					//Set Credit Definition
					MFTACreditDefinitionLine cdfl = new MFTACreditDefinitionLine(getCtx(), FTA_CreditDefinitionLine_ID, get_TrxName());
					if (cdfl.getFTA_CreditDefinitionLine_ID()!=0)
						fact.setFTA_CreditDefinition_ID(cdfl.getFTA_CreditDefinition_ID());
					
					//Set Document
					if (C_Invoice_ID!=0){
						//Invoice
						MInvoice in = new MInvoice(getCtx(), C_Invoice_ID, get_TrxName());
						if (in.getC_Invoice_ID()!=0){
							fact.setRecord_ID(in.getC_Invoice_ID());
							fact.setDateDoc(in.getDateInvoiced());
							fact.setDescription(in.getDescription());
							in.set_ValueOfColumn("FTA_FarmerCredit_ID", FTA_FarmerCredit_ID);
							in.save(get_TrxName());
							Record_ID = in.getC_Invoice_ID();
							if (!MPeriod.isOpen(getCtx(), in.getDateAcct(), in.getC_DocTypeTarget().getDocBaseType(), in.getAD_Org_ID())){
								m_processMsg = "@PeriodClosed@";
								return -1;
							}
						}
					}
					else if(C_Order_ID!=0) {
						//Order
						MOrder or = new MOrder(getCtx(), C_Order_ID, get_TrxName());
						if (or.getC_Order_ID()!=0){
							fact.setRecord_ID(or.getC_Order_ID());
							fact.setDateDoc(or.getDateOrdered());
							fact.setDescription(or.getDescription());
							or.set_ValueOfColumn("FTA_FarmerCredit_ID", FTA_FarmerCredit_ID);
							or.save(get_TrxName());
							Record_ID = or.getC_Order_ID();
							if (!MPeriod.isOpen(getCtx(), or.getDateAcct(), or.getC_DocTypeTarget().getDocBaseType(), or.getAD_Org_ID())){
								m_processMsg = "@PeriodClosed@";
								return -1;
							}
						}
					}
					
				}
				fact.saveEx(get_TrxName());
				System.out.println(fact.getAmt());
				updates++;
			}
			
			if (AD_Table_ID!=0){
				BigDecimal Line = inValidLines(Record_ID,AD_Table_ID);
				if (!Line.equals(Env.ZERO)){
					rollback();
					m_processMsg= Msg.translate(getCtx(), "amount.difference") +" " + Line;
					return -1;
				}
			}
			ps.close();
			rs.close();
		}catch (SQLException e){
			log.severe(e.getMessage());
			throw new DBException(e, sql.toString());      
		}
		finally{
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}
		
		return updates;
	}
	
	private BigDecimal getFactBalance(int C_BPartner_ID,int FTA_FarmerCredit_ID,int FTA_CreditDefinitionLine_ID,int AD_Table_ID,int Record_ID)
	{
			//	Get Area
			BigDecimal m_TotalFarmingArea = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(Amt) " +
					"FROM FTA_Fact fact " +
					"WHERE fact.FTA_FarmerCredit_ID = ? " +
					"AND fact.FTA_CreditDefinitionLine_ID = ? " +
					"AND fact.C_BPartner_ID = ? " +
					"AND fact.C_Order_ID <> ? " +
					"AND fact.C_OrderLine_ID <> ? " +
					"AND fact.C_Invoice_ID <> ? " +
					"AND fact.C_invoiceLine_ID <> ? ", 
					new Object[]{FTA_FarmerCredit_ID, FTA_CreditDefinitionLine_ID});
			
			return m_TotalFarmingArea;
	}
	
	/**
	 * invalid Lines
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 21/10/2013, 01:14:49
	 * @param Record_ID
	 * @param AD_Table_ID
	 * @return
	 * @return int
	 */
	private BigDecimal inValidLines(int Record_ID,int AD_Table_ID)
	{
		
		MTable table = new MTable(getCtx(), AD_Table_ID, get_TrxName());
		
		BigDecimal Line = DB.getSQLValueBD(get_TrxName(), "SELECT Coalesce(fact.Amt,0)-Coalesce(doc.Amt,0) " +
				" FROM (Select fact.AD_Table_ID,fact.Record_ID,fact.Line_ID,Sum(fact.Amt) As Amt From FTA_Fact fact " +
				" Where fact.Record_ID = ? " +
				" AND fact.AD_Table_ID=?" +
				" Group By fact.AD_Table_ID,fact.Record_ID,fact.Line_ID) fact Inner Join " +
				" (Select Line,"+table.getAD_Table_ID()+" AD_Table_ID," + table.getTableName()+ "_ID Record_ID," + table.getTableName()+ "Line_ID Line_ID,Sum(LineNetAmt) Amt From " + table.getTableName()+ "Line " +
				" Where " + table.getTableName()+ "_ID =" + Record_ID +
				" Group By Line," + table.getTableName()+ "_ID," + table.getTableName()+ "Line_ID) doc  "+
				" On fact.AD_Table_ID=doc.AD_Table_ID AND fact.Record_ID=doc.Record_ID AND fact.Line_ID=doc.Line_ID "+
				" Where Coalesce(fact.Amt,0)-Coalesce(doc.Amt,0)<>0 "
				, 
				new Object[]{Record_ID, AD_Table_ID});
		return (Line==null?Env.ZERO:Line);
	}
	
	private CLogger log = CLogger.getCLogger(CreditSOAllocation.class);
		
	/** Sql **/
	private StringBuffer sql = new StringBuffer();
	
	/** Record ID*/
	int Record_ID=0;
	
	/** Farmer Credit*/
	int FTA_FarmerCredit_ID =0;

	/** Table */
	int AD_Table_ID=0;

	/** Credit Definition Line*/
	int FTA_CreditDefinitionLine_ID =0;
	
	/** Business Partner*/
	int C_BPartner_ID=0;
	
	/** Invoice Line */
	int C_Invoice_ID=0;
	
	/** Order Line */
	int C_Order_ID= 0;
	
	/**Process Msg*/
	String m_processMsg="";
}//CreditSOAllocation
