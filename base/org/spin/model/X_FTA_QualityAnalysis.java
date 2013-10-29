/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.spin.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for FTA_QualityAnalysis
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_QualityAnalysis extends PO implements I_FTA_QualityAnalysis, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20131029L;

    /** Standard Constructor */
    public X_FTA_QualityAnalysis (Properties ctx, int FTA_QualityAnalysis_ID, String trxName)
    {
      super (ctx, FTA_QualityAnalysis_ID, trxName);
      /** if (FTA_QualityAnalysis_ID == 0)
        {
			setAnalysisType (null);
// QA
			setC_DocType_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setFTA_EntryTicket_ID (0);
			setFTA_QualityAnalysis_ID (0);
			setIsApproved (false);
// 'N'
			setProductStatus (null);
// A
        } */
    }

    /** Load Constructor */
    public X_FTA_QualityAnalysis (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_FTA_QualityAnalysis[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** AnalysisType AD_Reference_ID=53539 */
	public static final int ANALYSISTYPE_AD_Reference_ID=53539;
	/** Quality Analysis = QA */
	public static final String ANALYSISTYPE_QualityAnalysis = "QA";
	/** Chute Analysis = CA */
	public static final String ANALYSISTYPE_ChuteAnalysis = "CA";
	/** Set Analysis Type.
		@param AnalysisType Analysis Type	  */
	public void setAnalysisType (String AnalysisType)
	{

		set_Value (COLUMNNAME_AnalysisType, AnalysisType);
	}

	/** Get Analysis Type.
		@return Analysis Type	  */
	public String getAnalysisType () 
	{
		return (String)get_Value(COLUMNNAME_AnalysisType);
	}

	public I_C_DocType getC_DocType() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getC_DocType_ID(), get_TrxName());	}

	/** Set Document Type.
		@param C_DocType_ID 
		Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID)
	{
		if (C_DocType_ID < 0) 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
	}

	/** Get Document Type.
		@return Document type or rules
	  */
	public int getC_DocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** DocAction AD_Reference_ID=135 */
	public static final int DOCACTION_AD_Reference_ID=135;
	/** Complete = CO */
	public static final String DOCACTION_Complete = "CO";
	/** Approve = AP */
	public static final String DOCACTION_Approve = "AP";
	/** Reject = RJ */
	public static final String DOCACTION_Reject = "RJ";
	/** Post = PO */
	public static final String DOCACTION_Post = "PO";
	/** Void = VO */
	public static final String DOCACTION_Void = "VO";
	/** Close = CL */
	public static final String DOCACTION_Close = "CL";
	/** Reverse - Correct = RC */
	public static final String DOCACTION_Reverse_Correct = "RC";
	/** Reverse - Accrual = RA */
	public static final String DOCACTION_Reverse_Accrual = "RA";
	/** Invalidate = IN */
	public static final String DOCACTION_Invalidate = "IN";
	/** Re-activate = RE */
	public static final String DOCACTION_Re_Activate = "RE";
	/** <None> = -- */
	public static final String DOCACTION_None = "--";
	/** Prepare = PR */
	public static final String DOCACTION_Prepare = "PR";
	/** Unlock = XL */
	public static final String DOCACTION_Unlock = "XL";
	/** Wait Complete = WC */
	public static final String DOCACTION_WaitComplete = "WC";
	/** Set Document Action.
		@param DocAction 
		The targeted status of the document
	  */
	public void setDocAction (String DocAction)
	{

		set_Value (COLUMNNAME_DocAction, DocAction);
	}

	/** Get Document Action.
		@return The targeted status of the document
	  */
	public String getDocAction () 
	{
		return (String)get_Value(COLUMNNAME_DocAction);
	}

	/** DocStatus AD_Reference_ID=131 */
	public static final int DOCSTATUS_AD_Reference_ID=131;
	/** Drafted = DR */
	public static final String DOCSTATUS_Drafted = "DR";
	/** Completed = CO */
	public static final String DOCSTATUS_Completed = "CO";
	/** Approved = AP */
	public static final String DOCSTATUS_Approved = "AP";
	/** Not Approved = NA */
	public static final String DOCSTATUS_NotApproved = "NA";
	/** Voided = VO */
	public static final String DOCSTATUS_Voided = "VO";
	/** Invalid = IN */
	public static final String DOCSTATUS_Invalid = "IN";
	/** Reversed = RE */
	public static final String DOCSTATUS_Reversed = "RE";
	/** Closed = CL */
	public static final String DOCSTATUS_Closed = "CL";
	/** Unknown = ?? */
	public static final String DOCSTATUS_Unknown = "??";
	/** In Progress = IP */
	public static final String DOCSTATUS_InProgress = "IP";
	/** Waiting Payment = WP */
	public static final String DOCSTATUS_WaitingPayment = "WP";
	/** Waiting Confirmation = WC */
	public static final String DOCSTATUS_WaitingConfirmation = "WC";
	/** Set Document Status.
		@param DocStatus 
		The current status of the document
	  */
	public void setDocStatus (String DocStatus)
	{

		set_Value (COLUMNNAME_DocStatus, DocStatus);
	}

	/** Get Document Status.
		@return The current status of the document
	  */
	public String getDocStatus () 
	{
		return (String)get_Value(COLUMNNAME_DocStatus);
	}

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_Value (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	public org.spin.model.I_FTA_EntryTicket getFTA_EntryTicket() throws RuntimeException
    {
		return (org.spin.model.I_FTA_EntryTicket)MTable.get(getCtx(), org.spin.model.I_FTA_EntryTicket.Table_Name)
			.getPO(getFTA_EntryTicket_ID(), get_TrxName());	}

	/** Set Entry Ticket.
		@param FTA_EntryTicket_ID Entry Ticket	  */
	public void setFTA_EntryTicket_ID (int FTA_EntryTicket_ID)
	{
		if (FTA_EntryTicket_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_EntryTicket_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_EntryTicket_ID, Integer.valueOf(FTA_EntryTicket_ID));
	}

	/** Get Entry Ticket.
		@return Entry Ticket	  */
	public int getFTA_EntryTicket_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_EntryTicket_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Quality Analysis.
		@param FTA_QualityAnalysis_ID Quality Analysis	  */
	public void setFTA_QualityAnalysis_ID (int FTA_QualityAnalysis_ID)
	{
		if (FTA_QualityAnalysis_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_QualityAnalysis_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_QualityAnalysis_ID, Integer.valueOf(FTA_QualityAnalysis_ID));
	}

	/** Get Quality Analysis.
		@return Quality Analysis	  */
	public int getFTA_QualityAnalysis_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_QualityAnalysis_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Imported.
		@param I_IsImported 
		Has this import been processed
	  */
	public void setI_IsImported (boolean I_IsImported)
	{
		set_Value (COLUMNNAME_I_IsImported, Boolean.valueOf(I_IsImported));
	}

	/** Get Imported.
		@return Has this import been processed
	  */
	public boolean isI_IsImported () 
	{
		Object oo = get_Value(COLUMNNAME_I_IsImported);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Approved.
		@param IsApproved 
		Indicates if this document requires approval
	  */
	public void setIsApproved (boolean IsApproved)
	{
		set_Value (COLUMNNAME_IsApproved, Boolean.valueOf(IsApproved));
	}

	/** Get Approved.
		@return Indicates if this document requires approval
	  */
	public boolean isApproved () 
	{
		Object oo = get_Value(COLUMNNAME_IsApproved);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public I_M_Product getM_Product() throws RuntimeException
    {
		return (I_M_Product)MTable.get(getCtx(), I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_QualityAnalysis getOrig_QualityAnalysis() throws RuntimeException
    {
		return (org.spin.model.I_FTA_QualityAnalysis)MTable.get(getCtx(), org.spin.model.I_FTA_QualityAnalysis.Table_Name)
			.getPO(getOrig_QualityAnalysis_ID(), get_TrxName());	}

	/** Set Original Quality Analysis.
		@param Orig_QualityAnalysis_ID Original Quality Analysis	  */
	public void setOrig_QualityAnalysis_ID (int Orig_QualityAnalysis_ID)
	{
		if (Orig_QualityAnalysis_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_Orig_QualityAnalysis_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_Orig_QualityAnalysis_ID, Integer.valueOf(Orig_QualityAnalysis_ID));
	}

	/** Get Original Quality Analysis.
		@return Original Quality Analysis	  */
	public int getOrig_QualityAnalysis_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Orig_QualityAnalysis_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** ProductStatus AD_Reference_ID=53528 */
	public static final int PRODUCTSTATUS_AD_Reference_ID=53528;
	/** Accepted = A */
	public static final String PRODUCTSTATUS_Accepted = "A";
	/** Rejected = R */
	public static final String PRODUCTSTATUS_Rejected = "R";
	/** ReGuided = G */
	public static final String PRODUCTSTATUS_ReGuided = "G";
	/** Set Product Status.
		@param ProductStatus Product Status	  */
	public void setProductStatus (String ProductStatus)
	{

		set_Value (COLUMNNAME_ProductStatus, ProductStatus);
	}

	/** Get Product Status.
		@return Product Status	  */
	public String getProductStatus () 
	{
		return (String)get_Value(COLUMNNAME_ProductStatus);
	}

	public I_M_AttributeSetInstance getQualityAnalysis() throws RuntimeException
    {
		return (I_M_AttributeSetInstance)MTable.get(getCtx(), I_M_AttributeSetInstance.Table_Name)
			.getPO(getQualityAnalysis_ID(), get_TrxName());	}

	/** Set Quality Analysis.
		@param QualityAnalysis_ID Quality Analysis	  */
	public void setQualityAnalysis_ID (int QualityAnalysis_ID)
	{
		if (QualityAnalysis_ID < 1) 
			set_Value (COLUMNNAME_QualityAnalysis_ID, null);
		else 
			set_Value (COLUMNNAME_QualityAnalysis_ID, Integer.valueOf(QualityAnalysis_ID));
	}

	/** Get Quality Analysis.
		@return Quality Analysis	  */
	public int getQualityAnalysis_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_QualityAnalysis_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}