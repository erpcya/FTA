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
 * Copyright (C) 2003-2015 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.process;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.spin.model.MFTAEntryTicket;
import org.spin.model.MFTALoadOrder;
import org.spin.model.MFTAVehicle;
import org.spin.model.X_FTA_EntryTicket;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class EntryTicketChange extends SvrProcess {

	/**	Entry Ticket				*/
	private int p_FTA_EntryTicket_ID 	= 0;
	/**	Shipper						*/
	private int p_M_Shipper_ID 			= 0;
	/**	Driver						*/
	private int p_FTA_Driver_ID 		= 0;
	/**	Vehicle						*/
	private int p_FTA_Vehicle_ID 		= 0;
	/**	Quantity					*/
	private int m_Updated				= 0;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if(name.equals("FTA_EntryTicket_ID"))
				p_FTA_EntryTicket_ID = para.getParameterAsInt();
			else if(name.equals("M_Shipper_ID"))
				p_M_Shipper_ID = para.getParameterAsInt();
			else if(name.equals("FTA_Driver_ID"))
				p_FTA_Driver_ID = para.getParameterAsInt();
			else if(name.equals("FTA_Vehicle_ID"))
				p_FTA_Vehicle_ID = para.getParameterAsInt();
		}
	}

	@Override
	protected String doIt() throws Exception {
		//	Valid Entry Ticket
		if(p_FTA_EntryTicket_ID == 0)
			throw new AdempiereUserError("@FTA_EntryTicket_ID@ @NotFound@");
		if(p_M_Shipper_ID == 0
				&& p_FTA_Driver_ID == 0
				&& p_FTA_Vehicle_ID == 0)
			throw new AdempiereUserError("[@M_Shipper_ID@ @FTA_Driver_ID@ @FTA_Vehicle_ID@] @NotFound@");
		//	Change Ticket
		MFTAEntryTicket m_FTA_EntryTicket = new MFTAEntryTicket(getCtx(), p_FTA_EntryTicket_ID, get_TrxName());
		//	Valid Document
		if(!m_FTA_EntryTicket.getDocStatus()
				.equals(X_FTA_EntryTicket.DOCSTATUS_Completed))
			throw new AdempiereUserError("@FTA_EntryTicket_ID@ @no@ @completed@");
		//	Change Shipper
		if(p_M_Shipper_ID != 0) {
			m_FTA_EntryTicket.setM_Shipper_ID(p_M_Shipper_ID);
		}
		//	Change Driver
		if(p_FTA_Driver_ID != 0) {
			m_FTA_EntryTicket.setFTA_Driver_ID(p_FTA_Driver_ID);
		}
		//	Change Vehicle
		if(p_FTA_Vehicle_ID != 0) {
			m_FTA_EntryTicket.setFTA_Vehicle_ID(p_FTA_Vehicle_ID);
		}
		m_FTA_EntryTicket.saveEx();
		//	Updated
		m_Updated ++;
		//	Add Log
		addLog("@FTA_EntryTicket_ID@ " + m_FTA_EntryTicket.getDocumentNo() + " @Updated@");
		//	Change Depend
		MFTALoadOrder[] m_LO = m_FTA_EntryTicket.getLoadOrder(null);
		
		//	For all Load Orders
		for(MFTALoadOrder m_FTA_LoadOrder : m_LO) {
			//	Change Shipper
			if(p_M_Shipper_ID != 0) {
				m_FTA_LoadOrder.setM_Shipper_ID(p_M_Shipper_ID);
			}
			//	Change Driver
			if(p_FTA_Driver_ID != 0) {
				m_FTA_LoadOrder.setFTA_Driver_ID(p_FTA_Driver_ID);
			}
			//	Change Vehicle
			if(p_FTA_Vehicle_ID != 0) {
				MFTAVehicle m_Vehicle = MFTAVehicle.get(getCtx(), p_FTA_Vehicle_ID);
				if(m_Vehicle.getLoadCapacity().doubleValue()
						< m_FTA_LoadOrder.getWeight().doubleValue()) {
					throw new AdempiereUserError("@LoadCapacity@ @less@ @Weight@ [@FTA_LoadOrder_ID@ " 
						+ m_FTA_LoadOrder.getDocumentNo() + "]");
				} else if(m_Vehicle.getVolumeCapacity().doubleValue() 
						< m_FTA_LoadOrder.getVolume().doubleValue()) {
					throw new AdempiereUserError("@VolumeCapacity@ @less@ @Volume@ [@FTA_LoadOrder_ID@ " 
						+ m_FTA_LoadOrder.getDocumentNo() + "]");	
				}
				//	
				m_FTA_LoadOrder.setFTA_Vehicle_ID(p_FTA_Vehicle_ID);
				m_FTA_LoadOrder.setLoadCapacity(m_Vehicle.getLoadCapacity());
				m_FTA_LoadOrder.setVolumeCapacity(m_Vehicle.getVolumeCapacity());
			}
			m_FTA_LoadOrder.saveEx();
			//	Add Log
			addLog("@FTA_LoadOrder_ID@ " + m_FTA_LoadOrder.getDocumentNo() + " @Updated@");
			//	Updated
			m_Updated ++;
		}
		//	Return
		return "@Updated@ " + m_Updated;
	}

}