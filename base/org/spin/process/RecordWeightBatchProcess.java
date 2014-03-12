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
import org.spin.model.MFTARecordWeight;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class RecordWeightBatchProcess extends SvrProcess {

	/**	Document Date			*/
	private Timestamp 		p_DateDoc = null;
	/**	Document Date To		*/
	private Timestamp 		p_DateDoc_To = null;
	/**	Operation Type			*/
	private String 			p_OperationType = null;
	/**	Document Type			*/
	private int 			p_C_DocType_ID = 0;
	/**	Record Weight Identifier*/
	private int 			p_FTA_RecordWeight_ID = 0;
	/**	Document Status			*/
	private String 			p_DocStatus = null;
	/**	Document Action			*/
	private String 			p_DocAction = null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("OperationType"))
				p_OperationType = (String) para.getParameter();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = para.getParameterAsInt();
			else if (name.equals("FTA_RecordWeight_ID"))
				p_FTA_RecordWeight_ID = para.getParameterAsInt();
			else if (name.equals("DocStatus"))
				p_DocStatus = (String) para.getParameter();
			else if (name.equals("DocAction"))
				p_DocAction = (String) para.getParameter();	
			else if (name.equals("DateDoc")){
				p_DateDoc = (Timestamp) para.getParameter();
				p_DateDoc_To = (Timestamp) para.getParameter_To();
			}
		}
	}

	@Override
	protected String doIt() throws Exception {
		//	Valid Mandatory
		if (p_OperationType == null)
			throw new AdempiereUserError("@NotFound@: @OperationType@");
		if (p_DocStatus == null || p_DocStatus.length() != 2)
			throw new AdempiereUserError("@NotFound@: @DocStatus@");
		if (p_DocAction == null || p_DocAction.length() != 2)
			throw new AdempiereUserError("@NotFound@: @DocAction@");
		//	SQL
		StringBuffer sql = new StringBuffer("SELECT rw.* " +
				"FROM FTA_RecordWeight rw ");
		//	Where Clause
		sql.append("rw.OperationType = ? ");
		sql.append("rw.DocStatus = ? ");
		//	Optional Parameter
		//	Document Type
		if(p_C_DocType_ID != 0)
			sql.append("rw.C_DocType_ID = ? ");
		//	ID
		if(p_FTA_RecordWeight_ID != 0)
			sql.append("rw.FTA_RecordWeight_ID = ? ");
		//	Document Date
		if (p_DateDoc != null)
			sql.append(" AND TRUNC(rw.DateDoc, 'DD') >= ").append(DB.TO_DATE(p_DateDoc, true));
		if (p_DateDoc_To != null)
			sql.append(" AND TRUNC(rw.DateDoc, 'DD') <= ").append(DB.TO_DATE(p_DateDoc_To, true));
		
		int counter = 0;
		int errCounter = 0;
		int i = 1;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setString(i++, p_OperationType);
			pstmt.setString(i++, p_DocStatus);
			if(p_C_DocType_ID != 0)
				pstmt.setInt(i++, p_C_DocType_ID);
			if(p_FTA_RecordWeight_ID != 0)
				pstmt.setInt(i++, p_FTA_RecordWeight_ID);
			//	
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				if (process(new MFTARecordWeight(getCtx(),rs, get_TrxName())))
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
	 *	@param recordWeight
	 *	@return true if ok
	 */
	private boolean process (MFTARecordWeight recordWeight)
	{
		log.info(recordWeight.toString());
		//
		recordWeight.setDocAction(p_DocAction);
		if (recordWeight.processIt(p_DocAction))
		{
			recordWeight.save();
			addLog(0, null, null, recordWeight.getDocumentNo() + ": OK");
			return true;
		}
		//	Log
		addLog (0, null, null, recordWeight.getDocumentNo() + ": Error " + recordWeight.getProcessMsg());
		return false;
	}	//	process
}
