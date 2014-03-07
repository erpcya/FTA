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
public class MFTAVehicle extends X_FTA_Vehicle {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3405830411526360019L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/10/2013, 15:55:25
	 * @param ctx
	 * @param FTA_Vehicle_ID
	 * @param trxName
	 */
	public MFTAVehicle(Properties ctx, int FTA_Vehicle_ID, String trxName) {
		super(ctx, FTA_Vehicle_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/10/2013, 15:55:25
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAVehicle(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Get Vehicle from Cache
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/12/2013, 14:10:45
	 * @param ctx
	 * @param FTA_Vehicle_ID
	 * @return
	 * @return MFTAVehicle
	 */
	public static MFTAVehicle get (Properties ctx, int FTA_Vehicle_ID)
	{
		Integer key = new Integer (FTA_Vehicle_ID);
		MFTAVehicle retValue = (MFTAVehicle) s_cache.get (key);
		if (retValue != null)
			return retValue;
		retValue = new MFTAVehicle (ctx, FTA_Vehicle_ID, null);
		if (retValue.get_ID () != 0)
			s_cache.put (key, retValue);
		return retValue;
	} //	get
	
	/**	Cache						*/
	private static CCache<Integer,MFTAVehicle>	s_cache	= new CCache<Integer,MFTAVehicle>("FTA_Vehicle", 20, 10);	//	10 minutes
	
	/**
     * Valid Capacity
     */
    @Override
    protected boolean beforeSave(boolean newRecord) {
    	super.beforeSave(newRecord);
    	if(getLoadCapacity() == null
    			|| getLoadCapacity().equals(Env.ZERO)) {
    		throw new AdempiereException("@LoadCapacity@ = @0@");
    	}else if(getMinLoadCapacity().compareTo(getLoadCapacity()) > 0 )
    		throw new AdempiereException("@MinLoadCapacity@ > @LoadCapcity@"  );
    	else if(getMinVolumeCapacity().compareTo(getVolumeCapacity()) > 0 )
    		throw new AdempiereException("@MinLoadCapacity@ > @LoadCapcity@"  );
    	
    	return true;
    }

}
