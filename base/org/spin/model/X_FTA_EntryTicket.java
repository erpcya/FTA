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

/** Generated Model for FTA_EntryTicket
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_EntryTicket extends PO implements I_FTA_EntryTicket, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140124L;

    /** Standard Constructor */
    public X_FTA_EntryTicket (Properties ctx, int FTA_EntryTicket_ID, String trxName)
    {
      super (ctx, FTA_EntryTicket_ID, trxName);
      /** if (FTA_EntryTicket_ID == 0)
        {
			setC_DocType_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setFTA_Driver_ID (0);
			setFTA_EntryTicket_ID (0);
			setFTA_Vehicle_ID (0);
			setIsApproved (false);
			setOperationType (null);
        } */
    }

    /** Load Constructor */
    public X_FTA_EntryTicket (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_EntryTicket[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	public I_C_Order getC_Order() throws RuntimeException
    {
		return (I_C_Order)MTable.get(getCtx(), I_C_Order.Table_Name)
			.getPO(getC_Order_ID(), get_TrxName());	}

	/** Set Order.
		@param C_Order_ID 
		Order
	  */
	public void setC_Order_ID (int C_Order_ID)
	{
		if (C_Order_ID < 1) 
			set_Value (COLUMNNAME_C_Order_ID, null);
		else 
			set_Value (COLUMNNAME_C_Order_ID, Integer.valueOf(C_Order_ID));
	}

	/** Get Order.
		@return Order
	  */
	public int getC_Order_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Order_ID);
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
		set_ValueNoCheck (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set Document Print.
		@param DocumentPrint Document Print	  */
	public void setDocumentPrint (String DocumentPrint)
	{
		set_Value (COLUMNNAME_DocumentPrint, DocumentPrint);
	}

	/** Get Document Print.
		@return Document Print	  */
	public String getDocumentPrint () 
	{
		return (String)get_Value(COLUMNNAME_DocumentPrint);
	}

	/** Set Ext. Guide.
		@param Ext_Guide Ext. Guide	  */
	public void setExt_Guide (String Ext_Guide)
	{
		set_Value (COLUMNNAME_Ext_Guide, Ext_Guide);
	}

	/** Get Ext. Guide.
		@return Ext. Guide	  */
	public String getExt_Guide () 
	{
		return (String)get_Value(COLUMNNAME_Ext_Guide);
	}

	public org.spin.model.I_FTA_Driver getFTA_Driver() throws RuntimeException
    {
		return (org.spin.model.I_FTA_Driver)MTable.get(getCtx(), org.spin.model.I_FTA_Driver.Table_Name)
			.getPO(getFTA_Driver_ID(), get_TrxName());	}

	/** Set Driver.
		@param FTA_Driver_ID Driver	  */
	public void setFTA_Driver_ID (int FTA_Driver_ID)
	{
		if (FTA_Driver_ID < 1) 
			set_Value (COLUMNNAME_FTA_Driver_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_Driver_ID, Integer.valueOf(FTA_Driver_ID));
	}

	/** Get Driver.
		@return Driver	  */
	public int getFTA_Driver_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Driver_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

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

	public org.spin.model.I_FTA_LoadOrder getFTA_LoadOrder() throws RuntimeException
    {
		return (org.spin.model.I_FTA_LoadOrder)MTable.get(getCtx(), org.spin.model.I_FTA_LoadOrder.Table_Name)
			.getPO(getFTA_LoadOrder_ID(), get_TrxName());	}

	/** Set Load Order.
		@param FTA_LoadOrder_ID Load Order	  */
	public void setFTA_LoadOrder_ID (int FTA_LoadOrder_ID)
	{
		if (FTA_LoadOrder_ID < 1) 
			set_Value (COLUMNNAME_FTA_LoadOrder_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_LoadOrder_ID, Integer.valueOf(FTA_LoadOrder_ID));
	}

	/** Get Load Order.
		@return Load Order	  */
	public int getFTA_LoadOrder_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_LoadOrder_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_MobilizationGuide getFTA_MobilizationGuide() throws RuntimeException
    {
		return (org.spin.model.I_FTA_MobilizationGuide)MTable.get(getCtx(), org.spin.model.I_FTA_MobilizationGuide.Table_Name)
			.getPO(getFTA_MobilizationGuide_ID(), get_TrxName());	}

	/** Set Mobilization Guide.
		@param FTA_MobilizationGuide_ID Mobilization Guide	  */
	public void setFTA_MobilizationGuide_ID (int FTA_MobilizationGuide_ID)
	{
		if (FTA_MobilizationGuide_ID < 1) 
			set_Value (COLUMNNAME_FTA_MobilizationGuide_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_MobilizationGuide_ID, Integer.valueOf(FTA_MobilizationGuide_ID));
	}

	/** Get Mobilization Guide.
		@return Mobilization Guide	  */
	public int getFTA_MobilizationGuide_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_MobilizationGuide_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_Vehicle getFTA_Vehicle() throws RuntimeException
    {
		return (org.spin.model.I_FTA_Vehicle)MTable.get(getCtx(), org.spin.model.I_FTA_Vehicle.Table_Name)
			.getPO(getFTA_Vehicle_ID(), get_TrxName());	}

	/** Set Vehicle.
		@param FTA_Vehicle_ID Vehicle	  */
	public void setFTA_Vehicle_ID (int FTA_Vehicle_ID)
	{
		if (FTA_Vehicle_ID < 1) 
			set_Value (COLUMNNAME_FTA_Vehicle_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_Vehicle_ID, Integer.valueOf(FTA_Vehicle_ID));
	}

	/** Get Vehicle.
		@return Vehicle	  */
	public int getFTA_Vehicle_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Vehicle_ID);
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

	/** Set Printed.
		@param IsPrinted 
		Indicates if this document / line is printed
	  */
	public void setIsPrinted (boolean IsPrinted)
	{
		set_Value (COLUMNNAME_IsPrinted, Boolean.valueOf(IsPrinted));
	}

	/** Get Printed.
		@return Indicates if this document / line is printed
	  */
	public boolean isPrinted () 
	{
		Object oo = get_Value(COLUMNNAME_IsPrinted);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public I_M_Shipper getM_Shipper() throws RuntimeException
    {
		return (I_M_Shipper)MTable.get(getCtx(), I_M_Shipper.Table_Name)
			.getPO(getM_Shipper_ID(), get_TrxName());	}

	/** Set Shipper.
		@param M_Shipper_ID 
		Method or manner of product delivery
	  */
	public void setM_Shipper_ID (int M_Shipper_ID)
	{
		if (M_Shipper_ID < 1) 
			set_Value (COLUMNNAME_M_Shipper_ID, null);
		else 
			set_Value (COLUMNNAME_M_Shipper_ID, Integer.valueOf(M_Shipper_ID));
	}

	/** Get Shipper.
		@return Method or manner of product delivery
	  */
	public int getM_Shipper_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Shipper_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** OperationType AD_Reference_ID=53597 */
	public static final int OPERATIONTYPE_AD_Reference_ID=53597;
	/** Raw Material Receipt = RMR */
	public static final String OPERATIONTYPE_RawMaterialReceipt = "RMR";
	/** Product Bulk Receipt = PBR */
	public static final String OPERATIONTYPE_ProductBulkReceipt = "PBR";
	/** Receipt More than one Product = RMP */
	public static final String OPERATIONTYPE_ReceiptMoreThanOneProduct = "RMP";
	/** Material Input Movement = MIM */
	public static final String OPERATIONTYPE_MaterialInputMovement = "MIM";
	/** Delivery Bulk Material = DBM */
	public static final String OPERATIONTYPE_DeliveryBulkMaterial = "DBM";
	/** Delivery Finished Product = DFP */
	public static final String OPERATIONTYPE_DeliveryFinishedProduct = "DFP";
	/** Material Output Movement = MOM */
	public static final String OPERATIONTYPE_MaterialOutputMovement = "MOM";
	/** Other Record Weight = ORW */
	public static final String OPERATIONTYPE_OtherRecordWeight = "ORW";
	/** Set Operation Type.
		@param OperationType Operation Type	  */
	public void setOperationType (String OperationType)
	{

		set_ValueNoCheck (COLUMNNAME_OperationType, OperationType);
	}

	/** Get Operation Type.
		@return Operation Type	  */
	public String getOperationType () 
	{
		return (String)get_Value(COLUMNNAME_OperationType);
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

	/** Set Reference No.
		@param ReferenceNo 
		Your customer or vendor number at the Business Partner's site
	  */
	public void setReferenceNo (String ReferenceNo)
	{
		set_Value (COLUMNNAME_ReferenceNo, ReferenceNo);
	}

	/** Get Reference No.
		@return Your customer or vendor number at the Business Partner's site
	  */
	public String getReferenceNo () 
	{
		return (String)get_Value(COLUMNNAME_ReferenceNo);
	}
}