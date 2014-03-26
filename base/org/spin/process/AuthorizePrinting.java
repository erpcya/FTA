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

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.spin.model.MFTAEntryTicket;
import org.spin.model.MFTAQualityAnalysis;
import org.spin.model.MFTARecordWeight;
import org.spin.model.X_FTA_EntryTicket;
import org.spin.model.X_FTA_QualityAnalysis;
import org.spin.model.X_FTA_RecordWeight;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 */
public class AuthorizePrinting extends SvrProcess {

	/** AuthorizePrinting AD_Reference_ID=53549 */
	public static final int AUTHORIZE_PRINTING_AD_REFERENCE_ID=53673;
	
	/**	Authorize Printing Name					*/
	public static final String AUTHORIZE_PRINTING_NAME = "AuthorizePrinting";
	/** Entry Ticket = ET */
	public static final String AUTHORIZE_PRINTING_ENTRY_TICKET = "ET";
	
	/** Quality Analysis = QA */
	public static final String AUTHORIZE_PRINTING_QUALITY_ANALYSIS = "QA";

	/** Record Weight = RW */
	public static final String AUTHORIZE_PRINTING_RECORD_WEIGHT = "RW";
	
	//	Parameters
	/**	Entry Tikcet							*/
	int p_FTA_EntryTicket_ID						= 	0;
	
	/**	Record Weight 							*/
	int p_FTA_RecordWeight_ID					= 	0;
	
	/** Quality Analysis 						*/
	int p_FTA_QualityAnalysis_ID					= 	0;
	
	/**	Authorize Printing						*/
	String p_AuthorizePrinting 					= 	"";
	
	
	
	MFTAEntryTicket m_FTAEntryTicket		= null;
	
	MFTAQualityAnalysis	m_FTAQualityAnalysis	= null;
	
	MFTARecordWeight m_FTARecordWeight			= null;
	
	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			//	
			if (para.getParameter() == null)
				;
			else if(name.equals(AUTHORIZE_PRINTING_NAME))
				p_AuthorizePrinting	= para.getParameter().toString();
			else if(name.equals(X_FTA_EntryTicket.COLUMNNAME_FTA_EntryTicket_ID))
				p_FTA_EntryTicket_ID= para.getParameterAsInt();
			else if(name.equals(X_FTA_QualityAnalysis.COLUMNNAME_FTA_QualityAnalysis_ID))
				p_FTA_QualityAnalysis_ID = para.getParameterAsInt();
			else if(name.equals(X_FTA_RecordWeight.COLUMNNAME_FTA_RecordWeight_ID))
				p_FTA_RecordWeight_ID = para.getParameterAsInt();
		}
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
	
		//	Valid Entry Ticket
		if(p_AuthorizePrinting.equals(AUTHORIZE_PRINTING_ENTRY_TICKET)
				&&	p_FTA_EntryTicket_ID == 0)
			throw new AdempiereUserError("@FTA_EntryTicket_ID@ @NotFound@");
		
		//	Valid Quality Analysis
		if(p_AuthorizePrinting.equals(AUTHORIZE_PRINTING_QUALITY_ANALYSIS)
				&& p_FTA_QualityAnalysis_ID== 0)
			throw new AdempiereUserError("@FTA_QualityAnalysis_ID@ @NotFound@");
		
		//	Valid Record Weight
		if(p_AuthorizePrinting.equals(AUTHORIZE_PRINTING_RECORD_WEIGHT)
				&& p_FTA_RecordWeight_ID == 0)
			throw new AdempiereUserError("@FTA_RecordWeight_ID@ @NotFound@");

		String m_DocumentNo = null;

		if(p_FTA_EntryTicket_ID > 0){//	If Entry Ticket is not equals zero instance model class Entry Ticket
			m_FTAEntryTicket = new MFTAEntryTicket(getCtx(), p_FTA_EntryTicket_ID, get_TrxName());
			m_FTAEntryTicket.setIsPrinted(false);
			m_FTAEntryTicket.saveEx();
			m_DocumentNo = m_FTAEntryTicket.getDocumentNo();
		}else if(p_FTA_QualityAnalysis_ID > 0){	//	If Quality Analysis is not equals zero instance model class Quality Analysis
			m_FTAQualityAnalysis = new MFTAQualityAnalysis(getCtx(), p_FTA_QualityAnalysis_ID, get_TrxName());
			m_FTAQualityAnalysis.setIsPrinted(false);
			m_FTAQualityAnalysis.saveEx();
			m_DocumentNo = m_FTAQualityAnalysis.getDocumentNo();
		}else{// instance model class Record Weight
			m_FTARecordWeight = new MFTARecordWeight(getCtx(), p_FTA_RecordWeight_ID, get_TrxName());
			m_FTARecordWeight.setIsPrinted(false);
			m_FTARecordWeight.saveEx();
			m_DocumentNo = m_FTARecordWeight.getDocumentNo();
		}
			
		//	Updated
		if(m_DocumentNo == null)
			return "";
		//	
		return "@DocumentNo@: " + m_DocumentNo + " @Updated@";
	}

}
