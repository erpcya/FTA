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
import org.compiere.model.GridField;
import org.compiere.util.Env;
import org.eevolution.form.BrowserCallOutEngine;
import org.eevolution.form.BrowserRows;

/**
 * Callouts for FTA Payments 
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class BrowseCallOutFTAPayment extends BrowserCallOutEngine {
	
	/**
	 * Validation Null Values
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 30/10/2013, 09:18:59
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
	public String evaluatePayAmt(Properties ctx,  int WindowNo,BrowserRows mRow, GridField mField, Object value, Object oldValue,int current_Row, int current_Column){
		if (value==oldValue)
			return "";
		if (value ==null){
			mField.setValue(Env.ZERO, true);
			mRow.setValueOfColumn(current_Row, "Amt", mField);
			throw new AdempiereException("@Amt@ = @Null@");
		}
		Object fieldAvailableAmt=mRow.getValueOfColumn(current_Row, "AvailableAmt");
		BigDecimal m_Value = (BigDecimal) value;
		
		if(fieldAvailableAmt!=null){
			
			GridField gFieldAvaiableAmt = (GridField)fieldAvailableAmt;
			
			if(gFieldAvaiableAmt.getValue()!=null){
				BigDecimal m_AvailableAmt = (BigDecimal)gFieldAvaiableAmt.getValue();
				
				if (m_Value.compareTo(m_AvailableAmt)==1){
					mField.setValue(m_AvailableAmt, true);
					mRow.setValueOfColumn(current_Row, "PayAmt", mField);
					throw new AdempiereException("@PayAmt@ > @AvailableAmt@ ");
				}
					
			}
			
		}
		
		return "";
	}

}
