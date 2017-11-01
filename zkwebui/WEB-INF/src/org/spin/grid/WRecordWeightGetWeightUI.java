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
package org.spin.grid;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.model.GridTab;
import org.compiere.util.Env;
import org.spin.model.MFTARecordWeight;
import org.spin.model.X_FTA_RecordWeight;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class WRecordWeightGetWeightUI extends WGetWeightUI {

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 14:54:39
	 * @param gridTab
	 */
	public WRecordWeightGetWeightUI(GridTab gridTab) {
		super(gridTab);
	}

	@Override
	public boolean processValue(String trxName) {
		int p_FTA_RecordWeight_ID = getGridTab().getRecord_ID();
		MFTARecordWeight recordWeight = new MFTARecordWeight(Env.getCtx(), p_FTA_RecordWeight_ID, trxName);
		BigDecimal weightReaded = weight;
	    BigDecimal grossWeight = recordWeight.getGrossWeight(); 
	    BigDecimal tareWeight = recordWeight.getTareWeight();
	    
	    //	Valid Weight
	    if(weightReaded == null)
	    	weightReaded = Env.ZERO;
	    if(grossWeight == null)
	    	grossWeight = Env.ZERO;
	    if(tareWeight == null)
	    	tareWeight = Env.ZERO;
	    
	    Timestamp today = new Timestamp(System.currentTimeMillis());
	    
	    if(!recordWeight.isSOTrx()){
	    	if(grossWeight.equals(Env.ZERO)){
	    		recordWeight.setGrossWeight(weightReaded);
	    		recordWeight.setInDate(today);
	    		grossWeight = weightReaded;
	    	} else{
	    		recordWeight.setTareWeight(weightReaded);
	    		recordWeight.setOutDate(today);
	    		tareWeight = weightReaded;
	    	}
    		//	Valid Weight Status
	    	if(grossWeight.equals(Env.ZERO))
	    		recordWeight.setWeightStatus(X_FTA_RecordWeight.WEIGHTSTATUS_WaitingForGrossWeight);
	    	else if(tareWeight.equals(Env.ZERO))
	    		recordWeight.setWeightStatus(X_FTA_RecordWeight.WEIGHTSTATUS_WaitingForTareWeight);
	    	else
	    		recordWeight.setWeightStatus(X_FTA_RecordWeight.WEIGHTSTATUS_Completed);
	    } else{
	    	if(tareWeight.equals(Env.ZERO)){
	    		recordWeight.setTareWeight(weightReaded);
	    		recordWeight.setInDate(today);
	    		tareWeight = weightReaded;
	    	} else{
	    		recordWeight.setGrossWeight(weightReaded);
	    		recordWeight.setOutDate(today);
	    		grossWeight = weightReaded;
	    	}
    		//	Valid Weight Status
	    	if(tareWeight.equals(Env.ZERO))
	    		recordWeight.setWeightStatus(X_FTA_RecordWeight.WEIGHTSTATUS_WaitingForTareWeight);
	    	else if(grossWeight.equals(Env.ZERO))
	    		recordWeight.setWeightStatus(X_FTA_RecordWeight.WEIGHTSTATUS_WaitingForGrossWeight);
	    	else
	    		recordWeight.setWeightStatus(X_FTA_RecordWeight.WEIGHTSTATUS_Completed);
	    }
	    //	Calculate Net Weight
	    recordWeight.setNetWeight(grossWeight.subtract(tareWeight));
	    //	Save
	    return recordWeight.save();
	}	
}
