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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for FTA_LoadOrder
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_LoadOrder extends PO implements I_FTA_LoadOrder, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20131118L;

    /** Standard Constructor */
    public X_FTA_LoadOrder (Properties ctx, int FTA_LoadOrder_ID, String trxName)
    {
      super (ctx, FTA_LoadOrder_ID, trxName);
      /** if (FTA_LoadOrder_ID == 0)
        {
			setC_DocType_ID (0);
			setC_UOM_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setDocAction (null);
// CO
			setDocStatus (null);
// DR
			setFTA_LoadOrder_ID (0);
			setFTA_VehicleType_ID (0);
			setInvoiceRule (null);
			setIsApproved (false);
// N
			setLoadCapacity (0);
			setM_Warehouse_ID (0);
			setOperationType (null);
			setProcessed (false);
// N
        } */
    }

    /** Load Constructor */
    public X_FTA_LoadOrder (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_LoadOrder[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set Confirmed Weight.
		@param ConfirmedWeight Confirmed Weight	  */
	public void setConfirmedWeight (BigDecimal ConfirmedWeight)
	{
		set_Value (COLUMNNAME_ConfirmedWeight, ConfirmedWeight);
	}

	/** Get Confirmed Weight.
		@return Confirmed Weight	  */
	public BigDecimal getConfirmedWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ConfirmedWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_C_UOM getC_UOM() throws RuntimeException
    {
		return (I_C_UOM)MTable.get(getCtx(), I_C_UOM.Table_Name)
			.getPO(getC_UOM_ID(), get_TrxName());	}

	/** Set UOM.
		@param C_UOM_ID 
		Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID < 1) 
			set_Value (COLUMNNAME_C_UOM_ID, null);
		else 
			set_Value (COLUMNNAME_C_UOM_ID, Integer.valueOf(C_UOM_ID));
	}

	/** Get UOM.
		@return Unit of Measure
	  */
	public int getC_UOM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_UOM_ID);
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

	/** DeliveryRule AD_Reference_ID=151 */
	public static final int DELIVERYRULE_AD_Reference_ID=151;
	/** After Receipt = R */
	public static final String DELIVERYRULE_AfterReceipt = "R";
	/** Availability = A */
	public static final String DELIVERYRULE_Availability = "A";
	/** Complete Line = L */
	public static final String DELIVERYRULE_CompleteLine = "L";
	/** Complete Order = O */
	public static final String DELIVERYRULE_CompleteOrder = "O";
	/** Force = F */
	public static final String DELIVERYRULE_Force = "F";
	/** Manual = M */
	public static final String DELIVERYRULE_Manual = "M";
	/** Set Delivery Rule.
		@param DeliveryRule 
		Defines the timing of Delivery
	  */
	public void setDeliveryRule (String DeliveryRule)
	{

		set_Value (COLUMNNAME_DeliveryRule, DeliveryRule);
	}

	/** Get Delivery Rule.
		@return Defines the timing of Delivery
	  */
	public String getDeliveryRule () 
	{
		return (String)get_Value(COLUMNNAME_DeliveryRule);
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getDocumentNo());
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

	public org.spin.model.I_FTA_EntryTicket getFTA_EntryTicket() throws RuntimeException
    {
		return (org.spin.model.I_FTA_EntryTicket)MTable.get(getCtx(), org.spin.model.I_FTA_EntryTicket.Table_Name)
			.getPO(getFTA_EntryTicket_ID(), get_TrxName());	}

	/** Set Entry Ticket.
		@param FTA_EntryTicket_ID Entry Ticket	  */
	public void setFTA_EntryTicket_ID (int FTA_EntryTicket_ID)
	{
		if (FTA_EntryTicket_ID < 1) 
			set_Value (COLUMNNAME_FTA_EntryTicket_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_EntryTicket_ID, Integer.valueOf(FTA_EntryTicket_ID));
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

	/** Set Load Order ID.
		@param FTA_LoadOrder_ID Load Order ID	  */
	public void setFTA_LoadOrder_ID (int FTA_LoadOrder_ID)
	{
		if (FTA_LoadOrder_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_LoadOrder_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_LoadOrder_ID, Integer.valueOf(FTA_LoadOrder_ID));
	}

	/** Get Load Order ID.
		@return Load Order ID	  */
	public int getFTA_LoadOrder_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_LoadOrder_ID);
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

	public org.spin.model.I_FTA_VehicleType getFTA_VehicleType() throws RuntimeException
    {
		return (org.spin.model.I_FTA_VehicleType)MTable.get(getCtx(), org.spin.model.I_FTA_VehicleType.Table_Name)
			.getPO(getFTA_VehicleType_ID(), get_TrxName());	}

	/** Set Vehicle Type.
		@param FTA_VehicleType_ID Vehicle Type	  */
	public void setFTA_VehicleType_ID (int FTA_VehicleType_ID)
	{
		if (FTA_VehicleType_ID < 1) 
			set_Value (COLUMNNAME_FTA_VehicleType_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_VehicleType_ID, Integer.valueOf(FTA_VehicleType_ID));
	}

	/** Get Vehicle Type.
		@return Vehicle Type	  */
	public int getFTA_VehicleType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_VehicleType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** InvoiceRule AD_Reference_ID=150 */
	public static final int INVOICERULE_AD_Reference_ID=150;
	/** After Order delivered = O */
	public static final String INVOICERULE_AfterOrderDelivered = "O";
	/** After Delivery = D */
	public static final String INVOICERULE_AfterDelivery = "D";
	/** Customer Schedule after Delivery = S */
	public static final String INVOICERULE_CustomerScheduleAfterDelivery = "S";
	/** Immediate = I */
	public static final String INVOICERULE_Immediate = "I";
	/** Set Invoice Rule.
		@param InvoiceRule 
		Frequency and method of invoicing 
	  */
	public void setInvoiceRule (String InvoiceRule)
	{

		set_Value (COLUMNNAME_InvoiceRule, InvoiceRule);
	}

	/** Get Invoice Rule.
		@return Frequency and method of invoicing 
	  */
	public String getInvoiceRule () 
	{
		return (String)get_Value(COLUMNNAME_InvoiceRule);
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

	/** Set Bulk.
		@param IsBulk Bulk	  */
	public void setIsBulk (boolean IsBulk)
	{
		set_ValueNoCheck (COLUMNNAME_IsBulk, Boolean.valueOf(IsBulk));
	}

	/** Get Bulk.
		@return Bulk	  */
	public boolean isBulk () 
	{
		Object oo = get_Value(COLUMNNAME_IsBulk);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Delivered.
		@param IsDelivered Delivered	  */
	public void setIsDelivered (boolean IsDelivered)
	{
		set_Value (COLUMNNAME_IsDelivered, Boolean.valueOf(IsDelivered));
	}

	/** Get Delivered.
		@return Delivered	  */
	public boolean isDelivered () 
	{
		Object oo = get_Value(COLUMNNAME_IsDelivered);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Invoiced.
		@param IsInvoiced 
		Is this invoiced?
	  */
	public void setIsInvoiced (boolean IsInvoiced)
	{
		set_Value (COLUMNNAME_IsInvoiced, Boolean.valueOf(IsInvoiced));
	}

	/** Get Invoiced.
		@return Is this invoiced?
	  */
	public boolean isInvoiced () 
	{
		Object oo = get_Value(COLUMNNAME_IsInvoiced);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Moved.
		@param IsMoved Moved	  */
	public void setIsMoved (boolean IsMoved)
	{
		set_Value (COLUMNNAME_IsMoved, Boolean.valueOf(IsMoved));
	}

	/** Get Moved.
		@return Moved	  */
	public boolean isMoved () 
	{
		Object oo = get_Value(COLUMNNAME_IsMoved);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Weight Register.
		@param IsWeightRegister Weight Register	  */
	public void setIsWeightRegister (boolean IsWeightRegister)
	{
		set_Value (COLUMNNAME_IsWeightRegister, Boolean.valueOf(IsWeightRegister));
	}

	/** Get Weight Register.
		@return Weight Register	  */
	public boolean isWeightRegister () 
	{
		Object oo = get_Value(COLUMNNAME_IsWeightRegister);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Load Capacity.
		@param LoadCapacity Load Capacity	  */
	public void setLoadCapacity (int LoadCapacity)
	{
		set_Value (COLUMNNAME_LoadCapacity, Integer.valueOf(LoadCapacity));
	}

	/** Get Load Capacity.
		@return Load Capacity	  */
	public int getLoadCapacity () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LoadCapacity);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	public I_M_Warehouse getM_Warehouse() throws RuntimeException
    {
		return (I_M_Warehouse)MTable.get(getCtx(), I_M_Warehouse.Table_Name)
			.getPO(getM_Warehouse_ID(), get_TrxName());	}

	/** Set Warehouse.
		@param M_Warehouse_ID 
		Storage Warehouse and Service Point
	  */
	public void setM_Warehouse_ID (int M_Warehouse_ID)
	{
		if (M_Warehouse_ID < 1) 
			set_Value (COLUMNNAME_M_Warehouse_ID, null);
		else 
			set_Value (COLUMNNAME_M_Warehouse_ID, Integer.valueOf(M_Warehouse_ID));
	}

	/** Get Warehouse.
		@return Storage Warehouse and Service Point
	  */
	public int getM_Warehouse_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Warehouse_ID);
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
	/** Delivery Bull Material = DBM */
	public static final String OPERATIONTYPE_DeliveryBullMaterial = "DBM";
	/** Delivery Raw Material = DRM */
	public static final String OPERATIONTYPE_DeliveryRawMaterial = "DRM";
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

	/** Set Volume.
		@param Volume 
		Volume of a product
	  */
	public void setVolume (BigDecimal Volume)
	{
		set_Value (COLUMNNAME_Volume, Volume);
	}

	/** Get Volume.
		@return Volume of a product
	  */
	public BigDecimal getVolume () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Volume);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Weight.
		@param Weight 
		Weight of a product
	  */
	public void setWeight (BigDecimal Weight)
	{
		set_Value (COLUMNNAME_Weight, Weight);
	}

	/** Get Weight.
		@return Weight of a product
	  */
	public BigDecimal getWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Weight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}