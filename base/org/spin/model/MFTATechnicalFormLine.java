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

import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTATechnicalFormLine extends X_FTA_TechnicalFormLine {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 9174653595964192770L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 17:03:33
	 * @param ctx
	 * @param FTA_TechnicalFormLine_ID
	 * @param trxName
	 */
	public MFTATechnicalFormLine(Properties ctx, int FTA_TechnicalFormLine_ID,
			String trxName) {
		super(ctx, FTA_TechnicalFormLine_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 17:03:33
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTATechnicalFormLine(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * 	Get Technical Form Line with Value
	 *	@param ctx context 
	 *	@param Value value
	 *	@return MFTATechnicalFormLine or null
	 */
	public static MFTATechnicalFormLine get (Properties ctx, int FTA_TechnicalFormLine_ID)
	{
		final String whereClause = "FTA_TechnicalFormLine_ID=? AND AD_Client_ID=?";
		MFTATechnicalFormLine retValue = new Query(ctx,I_FTA_TechnicalFormLine.Table_Name,whereClause,null)
		.setParameters(FTA_TechnicalFormLine_ID,Env.getAD_Client_ID(ctx))
		.firstOnly();
		return retValue;
	}	//	get

}
