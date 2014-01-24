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
import org.compiere.util.CCache;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTAVehicleType extends X_FTA_VehicleType {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2342958777445683078L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 17:04:10
	 * @param ctx
	 * @param FTA_VehicleType_ID
	 * @param trxName
	 */
	public MFTAVehicleType(Properties ctx, int FTA_VehicleType_ID,
			String trxName) {
		super(ctx, FTA_VehicleType_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/08/2013, 17:04:10
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAVehicleType(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Valid Capacity
	 */
	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		if(getLoadCapacity() == null
				|| getLoadCapacity().equals(Env.ZERO)) {
			throw new AdempiereException("@LoadCapacity@ = @0@");
		}
		return true;
	}
	
	/**
	 * Get Vehicle Type from Cache
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/12/2013, 14:23:14
	 * @param ctx
	 * @param FTA_VehicleType_ID
	 * @return
	 * @return MFTAVehicleType
	 */
	public static MFTAVehicleType get (Properties ctx, int FTA_VehicleType_ID)
	{
		Integer key = new Integer (FTA_VehicleType_ID);
		MFTAVehicleType retValue = (MFTAVehicleType) s_cache.get (key);
		if (retValue != null)
			return retValue;
		retValue = new MFTAVehicleType (ctx, FTA_VehicleType_ID, null);
		if (retValue.get_ID () != 0)
			s_cache.put (key, retValue);
		return retValue;
	} //	get
	
	/**	Cache						*/
	private static CCache<Integer,MFTAVehicleType>	s_cache	= new CCache<Integer,MFTAVehicleType>("FTA_VehicleType", 20, 10);	//	10 minutes

}
