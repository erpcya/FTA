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

import java.sql.ResultSet;
import java.util.Properties;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTARecordWeightDetail extends X_FTA_RecordWeightDetail {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 354955130474472421L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/02/2014, 10:37:57
	 * @param ctx
	 * @param FTA_RecordWeightDetail_ID
	 * @param trxName
	 */
	public MFTARecordWeightDetail(Properties ctx,
			int FTA_RecordWeightDetail_ID, String trxName) {
		super(ctx, FTA_RecordWeightDetail_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/02/2014, 10:37:57
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTARecordWeightDetail(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

}
