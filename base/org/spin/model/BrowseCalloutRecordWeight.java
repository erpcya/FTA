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

import org.compiere.model.GridField;
import org.compiere.model.MAttributeSetInstance;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.eevolution.form.BrowserCalloutEngine;
import org.eevolution.form.BrowserRows;

/**
 * Browse Call Out Record Weight
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class BrowseCalloutRecordWeight extends BrowserCalloutEngine {

	/**
	 * Calculate Paid Weight
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 22/10/2013, 22:13:23
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
	public String calculatePaidWeight(Properties ctx,  int WindowNo,BrowserRows mRow, GridField mField, Object value, Object oldValue,int current_Row, int current_Column) 
	{
		if (value==oldValue && value!=null)
			return "";
		
		BigDecimal paidWeight=Env.ZERO;
		//get Category Calc
		Object fieldCategoryCalc=mRow.getValueofColumn("FTA_CategoryCalc_ID",current_Row);
		Object fieldNetWeight=mRow.getValueofColumn("NetWeight",current_Row);
		Object fieldInDispute=mRow.getValueofColumn("IsInDispute",current_Row);
		
		
		if(fieldCategoryCalc!=null && fieldInDispute!=null){
			GridField gField = (GridField)fieldCategoryCalc;
			GridField gFieldDispute = (GridField)fieldInDispute;
			if (gField.getValue()!=null && gFieldDispute.getValue()!=null){
				if((Boolean)gFieldDispute.getValue()){
					int M_FTACategoryCalc_ID=Integer.parseInt(gField.getValue().toString());
					MFTACategoryCalc ccal = new MFTACategoryCalc(ctx, M_FTACategoryCalc_ID, null);
					
					if (fieldNetWeight!=null){
						GridField gFieldNetWeight = (GridField)fieldNetWeight;
						
						if (gFieldNetWeight.getValue()!=null)
							paidWeight = ccal.getPaidWeight((BigDecimal)gFieldNetWeight.getValue(), new MAttributeSetInstance(ctx, Integer.parseInt(value.toString()), null));
					}
				}
			}
		}
		
		mRow.setValueofColumn("PayWeight", (paidWeight==null?Env.ZERO:paidWeight), current_Row);
		
		return "";
	}
	
	static CLogger log = CLogger.getCLogger(BrowseCalloutRecordWeight.class);
}
