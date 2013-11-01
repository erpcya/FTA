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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import java.util.Properties;

import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.MFTAFarmerLiquidation;
import org.spin.model.MFTAFarmerLiquidationLine;



/**
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *	<br> Generate Liquidation 
 */
public class FarmerLiquidationGenerate extends SvrProcess {

	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp)para.getParameter();
			else if(name.equals("DocStatus"))
				p_DocStatus = para.getParameter().toString();
			else if(name.equals("C_DocType_ID"))
				p_C_DocType_ID = para.getParameterAsInt();
			else if(name.equals("C_Currency_ID"))
				p_C_Currency_ID = para.getParameterAsInt();
		}
		
		sql.append("Select \n "
				+"f.C_BPartner_ID, /*Identifier Business Partner*/ \n "
				+"fm.FTA_FarmerCredit_ID,/*Identifier Farmer Credit*/ \n "
				+"fm.Category_ID,/*Identifier Product*/ \n "
				+"rw.FTA_RecordWeight_ID, /*Identifier Record Weight*/ \n "
				+"rw.NetWeight,/*Net Weight*/ \n "
				+"tsb.PayWeight,/*Pay Weight*/ \n "
				+"tsb.Price,/*Price*/ \n "
				+"qa.QualityAnalysis_ID,/*Identifier Quality Analisis*/ \n "
				+"cc.FTA_CategoryCalc_ID, /*Identifier Category Calc*/ \n "
				+"tsb.PayAnalysis_ID,\n " 
				+"tsb.IsInDispute "
				+"From  \n "
				+"/*Selection Browse*/ \n "
				+"T_Selection ts  \n "
				+"/*Selection Browse Fields*/ \n "
				+"Inner Join (Select  tsb.AD_PInstance_ID, \n "
				+"		    tsb.T_Selection_ID, \n "
				+"		    Sum(Case When tsb.ColumnName = 'RWUL_Price' Then tsb.Value_Number Else 0 End) As Price, \n "
				+"		    Sum(Case When tsb.ColumnName = 'RWUL_PayWeight' Then tsb.Value_Number Else 0 End) As PayWeight, \n "
				+"		    Max(Case When tsb.ColumnName = 'RWUL_PayAnalysis_ID' Then tsb.Value_Number Else 0 End) As PayAnalysis_ID, \n "
				+"		    Max(Case When tsb.ColumnName = 'RWUL_IsInDispute' Then tsb.Value_String Else ''  End) As IsInDispute \n "
				+"	    From T_Selection_Browse tsb  \n "
				+"	    Group By  \n "
				+"	    tsb.AD_PInstance_ID, \n "
				+"	    tsb.T_Selection_ID) tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID \n "
				+"/*Record Weight*/ \n "
				+"Inner Join FTA_RecordWeight rw On ts.T_Selection_ID=rw.FTA_RecordWeight_ID \n "
				+"/*Quality Analysis*/ \n "
				+"Inner Join FTA_QualityAnalysis qa On rw.FTA_QualityAnalysis_ID=qa.FTA_QualityAnalysis_ID \n "
				+"/*Entry Ticket*/ \n "
				+"Inner Join FTA_EntryTicket et On qa.FTA_EntryTicket_ID=et.FTA_EntryTicket_ID \n "
				+"/*Mobilization Guide*/ \n "
				+"Inner Join FTA_MobilizationGuide mg On et.FTA_MobilizationGuide_ID=mg.FTA_MobilizationGuide_ID \n "
				+"/*Farming*/ \n "
				+"Inner Join FTA_Farming fm On mg.FTA_Farming_ID=fm.FTA_Farming_ID \n "
				+"/*Farm Division*/ \n "
				+"Inner Join FTA_FarmDivision fd On fm.FTA_FarmDivision_ID=fd.FTA_FarmDivision_ID \n "
				+"/*Farm*/ \n "
				+"Inner Join FTA_Farm f On fd.FTA_Farm_ID=f.FTA_Farm_ID \n "
				+"/*Category Calc*/ \n "
				+"Left Join FTA_CategoryCalc cc On fm.Category_ID=cc.M_Product_ID \n "
				+"Where  \n "
				+"/*Current Process Instance*/ \n "
				+"ts.AD_PInstance_ID=? \n "
				+"/*Record Weight Completed Or Closed*/ \n "
				+"And  \n "
				+"rw.DocStatus In ('CO','CL') \n "
				+"/*Record Weight Don't Exists in Another Liquidation Completed or Closed*/ \n "
				+"And  \n "
				+"Not Exists (Select 1 \n " 
				+"	    From FTA_FarmerLiquidation fl \n "
				+"	    Inner Join FTA_FarmerLiquidationLine fll On fl.FTA_FarmerLiquidation_ID= fll.FTA_FarmerLiquidation_ID \n "
				+"	    Where fll.FTA_RecordWeight_ID=rw.FTA_RecordWeight_ID And fl.DocStatus In ('CO','CL') \n "
				+"	    ) \n "
				+"And \n " 
				+"cc.IsActive='Y' \n "
				+"Order By f.C_BPartner_ID, \n "
				+"	 fm.Category_ID	" );
		log.fine("SQL Farmer Liquidation Generate=" + sql);
		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps =null;
		ResultSet rs = null;
		int m_C_BPartner_ID=0;
		int m_Category_ID=0;
		
		MFTAFarmerLiquidation liquidation=null;
		ps = DB.prepareStatement(sql.toString(), get_TrxName());
		ps.setInt(1, getAD_PInstance_ID());
		rs = ps.executeQuery();
		
		while (rs.next())
		{
			if (m_C_BPartner_ID!=rs.getInt("C_BPartner_ID") && m_Category_ID!=rs.getInt("Category_ID"))
			{
				if (liquidation!=null)
					processDocument(liquidation);
				
				liquidation=addDocument(rs);
				m_C_BPartner_ID=rs.getInt("C_BPartner_ID");
				m_Category_ID=rs.getInt("Category_ID");
			}
			
			if (liquidation!=null)
				addDetailtDocument(rs,liquidation);
		}
		if (liquidation!=null)
			processDocument(liquidation);
		
		DB.close(rs, ps);
		rs=null;
		ps=null;
		
		return m_Generated;
	}
	
	
	/**
	 * 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 12/09/2013, 17:45:15
	 * @param rs
	 * @return
	 * @throws SQLException
	 * @return MFTAFarmerLiquidation
	 */
	private MFTAFarmerLiquidation addDocument(ResultSet rs) throws SQLException
	{
		MFTAFarmerLiquidation liquidation = new MFTAFarmerLiquidation(ctx, 0, get_TrxName());
		liquidation.setC_DocType_ID(p_C_DocType_ID);
		liquidation.setDateDoc(p_DateDoc);
		liquidation.setC_BPartner_ID(rs.getInt("C_BPartner_ID"));
		liquidation.setFTA_FarmerCredit_ID(rs.getInt("FTA_FarmerCredit_ID"));
		liquidation.setM_Product_ID(rs.getInt("Category_ID"));
		liquidation.setNetWeight(Env.ZERO);
		liquidation.setAmt(Env.ZERO);
		liquidation.setFTA_CategoryCalc_ID(rs.getInt("FTA_CategoryCalc_ID"));
		liquidation.setC_Currency_ID(p_C_Currency_ID);
		liquidation.saveEx(get_TrxName());
		return liquidation;
	}
	
	/**
	 * 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 12/09/2013, 18:07:09
	 * @param rs
	 * @param liquidation
	 * @throws SQLException
	 * @return void
	 */
	private void addDetailtDocument(ResultSet rs,MFTAFarmerLiquidation liquidation) throws SQLException
	{
		MFTAFarmerLiquidationLine liquidationline = new MFTAFarmerLiquidationLine(ctx,0,get_TrxName());
		
		liquidationline.setFTA_FarmerLiquidation_ID(liquidation.getFTA_FarmerLiquidation_ID());
		liquidationline.setFTA_RecordWeight_ID(rs.getInt("FTA_RecordWeight_ID"));
		liquidationline.setNetWeight(rs.getBigDecimal("NetWeight"));
		liquidationline.setPayWeight(rs.getBigDecimal("PayWeight"));
		liquidationline.setPriceList(rs.getBigDecimal("Price"));
		liquidationline.setPrice(rs.getBigDecimal("Price"));
		if(rs.getString("IsInDispute").equals("Y"))
			liquidationline.setQualityAnalysis_ID(rs.getInt("PayAnalysis_ID"));
		else
			liquidationline.setQualityAnalysis_ID(rs.getInt("QualityAnalysis_ID"));
		
		liquidation.setNetWeight(liquidation.getNetWeight().add(liquidationline.getNetWeight()));
		liquidation.setAmt(liquidation.getAmt().add(liquidationline.getPrice().multiply(liquidationline.getPayWeight())));
		
		liquidationline.saveEx(get_TrxName());
		liquidation.saveEx(get_TrxName());
		
		
	}

	/**
	 * 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 12/09/2013, 18:07:33
	 * @param liquidation
	 * @return void
	 */
	private void processDocument(MFTAFarmerLiquidation liquidation)
	{
		m_Generated+=Msg.translate(ctx, "DocumentNo") + " : " +liquidation.getDocumentNo()+" \n";
		
		if(!p_DocStatus.equals(DocumentEngine.STATUS_Drafted)){
			liquidation.setDocAction(p_DocStatus);
			liquidation.processIt(p_DocStatus);
			liquidation.saveEx(get_TrxName());
			addLog (liquidation.getC_Invoice_ID(), liquidation.getUpdated(), null, 
					liquidation.getDocumentNo());
		}
	}

	/**	Invoiced	Date				*/
	private Timestamp	p_DateDoc			=	null;
	
	/**	Document Status				*/
	private String		p_DocStatus			=	"DR";
	
	/** Logger	 */
	private CLogger log = CLogger.getCLogger(FarmerLiquidationGenerate.class);
	
	/** Sql Filter	 */
	private StringBuffer sql = new StringBuffer();
	
	/** Context	 */
	private Properties ctx = Env.getCtx();
	
	/** String Message Generated*/
	private String m_Generated="";
	
	/** Document Type for Liquidation*/
	private int p_C_DocType_ID=0;
	
	/** Currency */
	private int p_C_Currency_ID = 0;
	
	
}//FarmerLiquidationGenerate
