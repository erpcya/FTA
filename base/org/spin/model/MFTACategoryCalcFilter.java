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
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.PO;
import org.compiere.model.Query;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTACategoryCalcFilter extends X_FTA_CategoryCalcFilter {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 339979305692160595L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/01/2014, 14:25:45
	 * @param ctx
	 * @param FTA_CategoryCalcFilter_ID
	 * @param trxName
	 */
	public MFTACategoryCalcFilter(Properties ctx,
			int FTA_CategoryCalcFilter_ID, String trxName) {
		super(ctx, FTA_CategoryCalcFilter_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/01/2014, 14:25:45
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTACategoryCalcFilter(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Get Category Calc Filter from Category Calc
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 08/02/2014, 15:10:44
	 * @param ctx
	 * @param p_FTA_CategoryCalc_ID
	 * @param trxName
	 * @return
	 * @return MFTACategoryCalcFilter
	 */
	public static MFTACategoryCalcFilter get(Properties ctx, int p_FTA_CategoryCalc_ID, String trxName){
		MFTACategoryCalcFilter m_FTA_CategoryCalcFilter = new Query(ctx, I_FTA_CategoryCalcFilter.Table_Name, "FTA_CategoryCalc_ID = ? ", trxName)
			.setOnlyActiveRecords(true).
			setParameters(p_FTA_CategoryCalc_ID).
			first();
		
		//	
		return m_FTA_CategoryCalcFilter;
	}

	public int copyLinesFrom (MFTACategoryCalc p_FTA_CategoryCalc, boolean counter, boolean setOrder)
	{
		MFTACategoryCalcFilter [] fromLines = p_FTA_CategoryCalc.getLines(false);
		
		
		
		int count = 0;
		//	Loop in line
		for (MFTACategoryCalcFilter mftaCategoryCalcFilter : fromLines)
		{
			MFTACategoryCalcFilter toLine = new MFTACategoryCalcFilter(getCtx(), 0, get_TrxName());
			
			MFTACategoryCalcFilter m_FTA_CategoryCalcFilter = MFTACategoryCalcFilter.get(getCtx(), mftaCategoryCalcFilter.getFTA_CategoryCalc_ID(), get_TrxName());
			
			if(counter)
				PO.copyValues(m_FTA_CategoryCalcFilter, toLine, getAD_Client_ID(),getAD_Org_ID());
			else
				PO.copyValues(m_FTA_CategoryCalcFilter, toLine, toLine.getAD_Client_ID(), toLine.getAD_Org_ID());
	 		
			if (toLine.save(get_TrxName()))
	 			count++;
		}
		
		if (fromLines.length != count)
			log.log(Level.SEVERE, "Line difference - From=" + fromLines.length + " <> Saved=" + count);

		return count;
	}	//	copyLinesFrom



	
	
}
