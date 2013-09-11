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
package org.spin.process;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FarmingGuideGenerate extends SvrProcess {

	/**	Organization				*/
	private int 		m_AD_Org_ID				= 0;
	
	/**	Warehouse					*/
	private int 		m_M_Warehouse_ID		= 0;
	
	/**	Document Type Target		*/
	private int 		m_C_DocTypeTarget_ID	= 0;
	
	/**	Document Date				*/
	private Timestamp 	m_DateDoc 				= null;
	
	/**	Vehicle Type				*/
	private int 		m_FTA_VehicleType_ID 	= 0;
	
	/**	Max Quantity				*/
	private int 		m_MaxQty				= 0;
	
	/**	Farming						*/
	private int 		m_FTA_Farming_ID		= 0;
	
	/**	Business Partner			*/
	private int 		m_C_BPartner_ID			= 0;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				m_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals("M_Warehouse_ID"))
				m_M_Warehouse_ID = para.getParameterAsInt();
			else if (name.equals("C_DocTypeTarget_ID"))
				m_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc"))
				m_DateDoc = (Timestamp) para.getParameter();
			else if (name.equals("FTA_VehicleType_ID"))
				m_FTA_VehicleType_ID = para.getParameterAsInt();
			else if (name.equals("MaxQty"))
				m_MaxQty = para.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				m_C_BPartner_ID = para.getParameterAsInt();
		}
		//	Get Record Identifier
		m_FTA_Farming_ID = getRecord_ID();
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		BigDecimal m_MaxReceipt = DB.getSQLValueBD(get_TrxName(), "SELECT rc.Qty - SUM(COALESCE(mg.QtyToDeliver, 0)) " +
				"FROM FTA_ReceptionCapacity rc " +
				"LEFT JOIN FTA_MobilizationGuide mg ON(mg.M_Warehouse_ID = rc.M_Warehouse_ID) " +
				"WHERE rc.ValidFrom <= ? " +
				"AND rc.IsActive = 'Y' " +
				"AND mg.DateDoc >= rc.ValidFrom " +
				"GROUP BY rc.Qty, rc.ValidFrom " +
				"ORDER BY rc.ValidFrom DESC", m_DateDoc);
		
		
		return null;
	}

}
