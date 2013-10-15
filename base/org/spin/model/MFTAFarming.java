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

import java.sql.ResultSet;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTAFarming extends X_FTA_Farming {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7020799529814961712L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 16:58:12
	 * @param ctx
	 * @param FTA_Farming_ID
	 * @param trxName
	 */
	public MFTAFarming(Properties ctx, int FTA_Farming_ID, String trxName) {
		super(ctx, FTA_Farming_ID, trxName);
		//	Set Initial Value
		if(FTA_Farming_ID == 0){
			setIsValid(false);
			setFTA_FarmerCredit_ID(0);
			setStatus(X_FTA_Farming.STATUS_Active);
		}
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 16:58:12
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAFarming(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * Valid Area
	 */
	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		//	Set Default Values
		if(newRecord
				|| is_ValueChanged("Area")){
			setIsValid(false);
			setFTA_FarmerCredit_ID(0);
			setStatus(X_FTA_Farming.STATUS_Active);
			setC_OrderLine_ID(0);
		}
		//		
		if(getArea() == null
				|| getArea().equals(Env.ZERO)) {
			throw new AdempiereException("@Area@ = @0@");
		} else if(getArea().compareTo(getFTA_FarmDivision().getArea()) > 0){
			throw new AdempiereException("@Area@ > @Area@ @of@ @FTA_FarmDivision_ID@");
		}
		return true;
	}
	
	@Override
	public String toString() {
		return "Name=" + getName() +
				"\nFTA_FarmerCredit_ID=" + getFTA_FarmerCredit_ID();
	}
	
}
