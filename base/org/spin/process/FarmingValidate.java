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
import org.spin.model.MFTAFarmDivision;
import org.spin.model.MFTAFarming;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FarmingValidate extends SvrProcess {
	/**	Farming		*/
	private int 	p_FTA_Farming_ID = 0;
	
	@Override
	protected void prepare() {
		p_FTA_Farming_ID = getRecord_ID();
	}

	
	@Override
	protected String doIt() throws Exception {
		//	
		if(p_FTA_Farming_ID == 0)
			throw new AdempiereException("@FTA_Farming_ID@ = 0");
		MFTAFarming m_FTA_Farming = new MFTAFarming(getCtx(), p_FTA_Farming_ID, get_TrxName());
		//	Valid
		if(m_FTA_Farming.isValid())
			return "@IsValid@";
		//	
		MFTAFarmDivision m_FTA_FarmDivision = (MFTAFarmDivision) m_FTA_Farming.getFTA_FarmDivision();
		
		if(!m_FTA_FarmDivision.getFTA_Farm().isValid())
			throw new AdempiereException("@FTA_Farm_ID@ @invalid@");
			
		BigDecimal m_FarmingArea = m_FTA_Farming.getArea();
		BigDecimal m_Area = m_FTA_FarmDivision.getArea();
		//	Get Area
		BigDecimal m_TotalFarmingArea = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(frm.Area) " +
				"FROM FTA_Farming frm " +
				"WHERE frm.FTA_Farming_ID <> ? " +
				"AND frm.FTA_FarmDivision_ID = ? " +
				"AND frm.Status = ? " +
				"AND frm.IsActive = ?", 
				new Object[]{p_FTA_Farming_ID, m_FTA_FarmDivision.getFTA_FarmDivision_ID(), "A", "Y"});
		//	Set Default Value
		if(m_TotalFarmingArea == null)
			m_TotalFarmingArea = Env.ZERO;
		//	Compare Area
		if(m_Area.compareTo(m_TotalFarmingArea.add(m_FarmingArea)) >= 0){
			m_FTA_Farming.setIsValid(true);
			m_FTA_Farming.saveEx();
		} else
			throw new AdempiereException("@Area@ > @Area@ @of@ @FTA_FarmDivision_ID@");
		return "@IsValid@";
	}
}