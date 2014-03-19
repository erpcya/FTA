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
package org.spin.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.spin.model.MFTAMobilizationGuide;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MobilizationGuideBatchProcess extends SvrProcess {

	/**	Document Date					*/
	private Timestamp 		p_DateDoc = null;
	/**	Document Date To				*/
	private Timestamp 		p_DateDoc_To = null;
	/**	Business Partner				*/
	private int				p_C_BPartner_ID = 0;
	/**	Document Type					*/
	private int 			p_C_DocType_ID = 0;
	/**	Mobilization Guide Identifier	*/
	private int 			p_FTA_MobilizationGuide_ID = 0;
	/**	Document Status					*/
	private String 			p_DocStatus = null;
	/**	Document Action					*/
	private String 			p_DocAction = null;
	/**	Is Sales Order Transaction		*/
	private boolean			p_IsSOTrx 	= false;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para.getParameterAsInt();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = para.getParameterAsInt();
			else if (name.equals("FTA_MobilizationGuide_ID"))
				p_FTA_MobilizationGuide_ID = para.getParameterAsInt();
			else if (name.equals("DocStatus"))
				p_DocStatus = (String) para.getParameter();
			else if (name.equals("DocAction"))
				p_DocAction = (String) para.getParameter();	
			else if(name.equals("IsSOTrx"))
				p_IsSOTrx = para.getParameterAsBoolean();
			else if (name.equals("DateDoc")){
				p_DateDoc = (Timestamp) para.getParameter();
				p_DateDoc_To = (Timestamp) para.getParameter_To();
			}
		}
	}

	@Override
	protected String doIt() throws Exception {
		//	Valid Mandatory
		if (p_DocStatus == null || p_DocStatus.length() != 2)
			throw new AdempiereUserError("@NotFound@: @DocStatus@");
		if (p_DocAction == null || p_DocAction.length() != 2)
			throw new AdempiereUserError("@NotFound@: @DocAction@");
		//	SQL
		StringBuffer sql = new StringBuffer("SELECT mg.* " +
				"FROM FTA_MobilizationGuide mg ");
		//	Where Clause
		sql.append("WHERE mg.DocStatus = ? " +
				"AND mg.IsSOTrx = ? ");
		//	Document Type
		if(p_C_DocType_ID != 0)
			sql.append("AND mg.C_DocType_ID = ? ");
		//	Business Partner
		if(p_C_BPartner_ID != 0)
			sql.append("AND mg.C_BPartner_ID = ? ");
		//	ID
		if(p_FTA_MobilizationGuide_ID != 0)
			sql.append("AND mg.FTA_MobilizationGuide_ID = ? ");
		//	Document Date
		if (p_DateDoc != null)
			sql.append(" AND TRUNC(mg.DateDoc, 'DD') >= ").append(DB.TO_DATE(p_DateDoc, true));
		if (p_DateDoc_To != null)
			sql.append(" AND TRUNC(mg.DateDoc, 'DD') <= ").append(DB.TO_DATE(p_DateDoc_To, true));
		
		int counter = 0;
		int errCounter = 0;
		int i = 1;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setString(i++, p_DocStatus);
			pstmt.setString(i++, p_IsSOTrx? "Y": "N");
			//	Document Type
			if(p_C_DocType_ID != 0)
				pstmt.setInt(i++, p_C_DocType_ID);
			//	Business Partner
			if(p_C_BPartner_ID != 0)
				pstmt.setInt(i++, p_C_BPartner_ID);
			//	ID
			if(p_FTA_MobilizationGuide_ID != 0)
				pstmt.setInt(i++, p_FTA_MobilizationGuide_ID);
			//	
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				if (process(new MFTAMobilizationGuide(getCtx(),rs, get_TrxName())))
					counter++;
				else
					errCounter++;
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		return "@Updated@=" + counter + ", @Errors@=" + errCounter;
	}
	
	/**
	 * 	Process Record Weight
	 *	@param mobilizationGuide
	 *	@return true if ok
	 */
	private boolean process (MFTAMobilizationGuide mobilizationGuide)
	{
		log.info(mobilizationGuide.toString());
		//
		mobilizationGuide.setDocAction(p_DocAction);
		if (mobilizationGuide.processIt(p_DocAction))
		{
			mobilizationGuide.save();
			addLog(0, null, null, mobilizationGuide.getDocumentNo() + ": OK");
			return true;
		}
		//	Log
		addLog (0, null, null, mobilizationGuide.getDocumentNo() + ": Error " + mobilizationGuide.getProcessMsg());
		return false;
	}	//	process
}
