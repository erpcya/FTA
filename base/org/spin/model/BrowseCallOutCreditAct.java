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
package org.spin.model;

import java.math.BigDecimal;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.minigrid.IDColumn;
import org.compiere.model.GridField;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.eevolution.form.BrowserCalloutEngine;
import org.eevolution.form.BrowserRows;

/**
 * BrowseCallOut for Credit Act Smart Browse
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class BrowseCallOutCreditAct extends BrowserCalloutEngine{

	/**
	 * Calculate Approved Amt For Credit
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 26/10/2013, 06:20:08
	 * @param ctx
	 * @param WindowNo
	 * @param mRow
	 * @param mField
	 * @param value
	 * @param oldValue
	 * @param current_Row
	 * @param current_Column
	 * @return
	 * @return String
	 */
	public String calculateApprovedAmt(Properties ctx,  int WindowNo,BrowserRows mRow, GridField mField, Object value, Object oldValue,int current_Row, int current_Column){
		
		if (value==oldValue)
			return "";
		
		if (value ==null)
			throw new AdempiereException("@ApprovedQty@ == @Null@");
	
		BigDecimal m_Qty = Env.ZERO;
		BigDecimal m_Amount = Env.ZERO;
		BigDecimal m_QtyApproved = (BigDecimal) value;
		Object fieldFarmerCredit=mRow.getValueofColumn("FTA_FarmerCredit_ID",current_Row);
		Object fieldQty=mRow.getValueofColumn("Qty",current_Row);
		
		if(fieldFarmerCredit!=null){
			GridField gFieldFC = (GridField)fieldFarmerCredit;
			GridField gFieldQty = (GridField)fieldQty;
			
			if (gFieldFC.getValue()!=null ){
				
				IDColumn FCValue = (IDColumn)gFieldFC.getValue();
				m_Qty = (BigDecimal)gFieldQty.getValue();
				//Farmer Credit And Farming
				MFTAFarmerCredit fc = new MFTAFarmerCredit(ctx, FCValue.getRecord_ID(), null);
				
				if (fc.getFTA_FarmerCredit_ID()!=0){
					if (fc.getC_DocType().getDocBaseType().equals("FFL"))
						mRow.setValueofColumn("ApprovedQty",Env.ZERO, current_Row);
					else{
								
						MFTACreditDefinition cd = new MFTACreditDefinition(ctx, fc.getFTA_CreditDefinition_ID(), null);
						
						X_FTA_CreditDefinitionLine [] cdl = cd.getLines(true);
						
						for (int i=0;i<cdl.length;i++)
							m_Amount = m_Amount.add(m_QtyApproved.multiply(cdl[i].getAmt()));
			
						if (m_QtyApproved.compareTo(m_Qty)==1 ){
							mRow.setValueofColumn("ApprovedAmt",Env.ZERO, current_Row);
							throw new AdempiereException("@Qty@ > @QtyApproved@");
						}
						else
							mRow.setValueofColumn("ApprovedAmt",m_Amount , current_Row);
					}
				}
				
			}
		}
		
		return "";
	}
	
	/**
	 * Set Approved Amt For Loan
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 26/10/2013, 06:20:37
	 * @param ctx
	 * @param WindowNo
	 * @param mRow
	 * @param mField
	 * @param value
	 * @param oldValue
	 * @param current_Row
	 * @param current_Column
	 * @return
	 * @return String
	 */
	public String approvedAmt(Properties ctx,  int WindowNo,BrowserRows mRow, GridField mField, Object value, Object oldValue,int current_Row, int current_Column){
		if (value==oldValue)
			return "";
		
		if (value ==null)
			return "";
		
		BigDecimal m_Amount = Env.ZERO;
		BigDecimal m_AmtApproved = (BigDecimal) value;
		Object fieldFarmerCredit=mRow.getValueofColumn("FTA_FarmerCredit_ID",current_Row);
		Object fieldAmt=mRow.getValueofColumn("Amt",current_Row);
		
		if(fieldFarmerCredit!=null){
			GridField gFieldFC = (GridField)fieldFarmerCredit;
			GridField gFieldAmt = (GridField)fieldAmt;
			
			if (gFieldFC.getValue()!=null && gFieldAmt!=null){
				
				IDColumn FCValue = (IDColumn)gFieldFC.getValue();
				m_Amount = (BigDecimal)gFieldAmt.getValue();
				MFTAFarmerCredit fc = new MFTAFarmerCredit(ctx, FCValue.getRecord_ID(), null);
				
				if (fc.getFTA_FarmerCredit_ID()!=0 ){
					if (!fc.getC_DocType().getDocBaseType().equals("FFL")){
						mRow.setValueofColumn("ApprovedAmt",Env.ZERO, current_Row);
						mRow.setValueofColumn("ApprovedQty",Env.ZERO , current_Row);
					}
					else{
						if(m_AmtApproved.compareTo(m_Amount)==1){
							mRow.setValueofColumn("ApprovedAmt",Env.ZERO, current_Row);
							throw new AdempiereException("@Amt@ > @AmtApproved@");
						}
						else
							mRow.setValueofColumn("ApprovedAmt",m_AmtApproved , current_Row);
							
					}
					
				}
				
			}
		}
		return "";
	}
	
	static CLogger log = CLogger.getCLogger(BrowseCallOutCreditAct.class);

}
