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
package org.spin.model;

import java.math.BigDecimal;
import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutFarming extends CalloutEngine {
	
	/**
	 * Set Quantity from Area and Estimated Yield
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/10/2013, 12:18:05
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String estimatedQty (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		if (value == null)
			return "";
		//	Get Quantity
		BigDecimal m_EstimatedYield = (BigDecimal) mTab.getValue("EstimatedYield");
		BigDecimal m_Area = (BigDecimal) mTab.getValue("Area");
		//	Valid Quantity
		if(m_EstimatedYield == null)
			m_EstimatedYield = Env.ZERO;
		if(m_Area == null)
			m_Area = Env.ZERO;
		//	Calculate Quantity
		BigDecimal m_EstimatedQty = m_EstimatedYield.multiply(m_Area);
		//	Set Quantity
		mTab.setValue("EstimatedQty", m_EstimatedQty);
		mTab.setValue("Qty", m_EstimatedQty);
		return "";
	}
}