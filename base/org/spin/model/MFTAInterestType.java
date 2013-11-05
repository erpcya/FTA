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
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.Query;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTAInterestType extends X_FTA_InterestType {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8308713276192727842L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/10/2013, 21:18:05
	 * @param ctx
	 * @param FTA_InterestType_ID
	 * @param trxName
	 */
	public MFTAInterestType(Properties ctx, int FTA_InterestType_ID,
			String trxName) {
		super(ctx, FTA_InterestType_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/10/2013, 21:18:05
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAInterestType(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Get Current Rate from Date
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/10/2013, 15:54:00
	 * @param p_DateDoc
	 * @return
	 * @return MFTAInterestRate
	 */
	public MFTAInterestRate getCurrentInterest(Timestamp p_DateDoc){
		return new Query(getCtx(), MFTAInterestRate.Table_Name, "FTA_InterestType_ID=? AND ValidFrom <=?", get_TrxName())
		.setParameters(getFTA_InterestType_ID(), p_DateDoc)
		.setOrderBy("ValidFrom DESC")
		.firstOnly();
	}
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		if(isRateFixed()){
			setDaysFixed(true);
			setDaysDue(1);
		}
		if(!isDaysFixed())
			setDaysDue(0);
		return true;
	}

}
