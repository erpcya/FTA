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
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.util.DB;
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

	protected boolean beforeSave(boolean newRecord){
		super.beforeSave(newRecord);
		
		//	Dixon Martinez 23/04/2014 15:31:00
		//	Add support to validate farm business partner
		
		if(getFTA_Farm_ID() > 0){
			String msg = validateFarmingFarm();
			if(msg.length() > 0)
				throw new AdempiereException(msg);
			else
				return true;
		}		

		// End Dixon Martinez
    	return true;
	}//	beforeSave
	
	/**
	 * Validate Farming of Farm
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 23/04/2014, 16:30:10
	 * @return
	 * @return String
	 */
	private String validateFarmingFarm() {
		String sql = "SELECT FTA_Farm_ID "
				+ " FROM FTA_FarmDivision fd "
				+ " INNER JOIN FTA_Farming f ON(fd.FTA_FarmDivision_ID = f.FTA_FarmDivision_ID ) "
				+ " WHERE FTA_Farming_ID = ?";
		
		int farm = DB.getSQLValue(get_TrxName(), sql,getFTA_Farming_ID());
		
		if(farm != getFTA_Farm_ID())
			return "@Verify@ @FTA_Farming_ID@ @of@ @FTA_Farm_ID@";
		else 
			return "";
	}

}
