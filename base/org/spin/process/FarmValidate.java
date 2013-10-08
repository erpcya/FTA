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

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTAFarm;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FarmValidate extends SvrProcess {
	/**	Farm			*/
	private int 	p_FTA_Farm_ID = 0;
	
	@Override
	protected void prepare() {
		p_FTA_Farm_ID = getRecord_ID();
	}

	
	@Override
	protected String doIt() throws Exception {
		//	
		if(p_FTA_Farm_ID == 0)
			throw new AdempiereException("@FTA_Farm_ID@ = 0");
		MFTAFarm m_FTA_Farm = new MFTAFarm(getCtx(), p_FTA_Farm_ID, get_TrxName());
		//	Valid
		if(m_FTA_Farm.isValid())
			return "@IsValid@";
		
		BigDecimal m_FarmArea = m_FTA_Farm.getArea();
		//	Get Area
		BigDecimal m_TotalFarmDivisionArea = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(frmd.Area) " +
				"FROM FTA_FarmDivision frmd " +
				"WHERE frmd.FTA_Farm_ID = ? ", 
				new Object[]{p_FTA_Farm_ID});
		//	Set Default Value
		if(m_TotalFarmDivisionArea == null)
			m_TotalFarmDivisionArea = Env.ZERO;
		//	Compare Area
		if(m_FarmArea.compareTo(m_TotalFarmDivisionArea) > 0){
			m_FTA_Farm.setIsValid(true);
			m_FTA_Farm.saveEx();
		} else
			throw new AdempiereException("@Area@ < @Sum@ @of@ @Area@ @of@ @FTA_FarmDivision_ID@");	
		return "@IsValid@";
	}
}