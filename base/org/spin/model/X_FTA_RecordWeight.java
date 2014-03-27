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

/** Generated Model for FTA_RecordWeight
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_RecordWeight extends PO implements I_FTA_RecordWeight, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140327L;

    /** Standard Constructor */
    public X_FTA_RecordWeight (Properties ctx, int FTA_RecordWeight_ID, String trxName)
    {
      super (ctx, FTA_RecordWeight_ID, trxName);
      /** if (FTA_RecordWeight_ID == 0)
        {
			setC_DocType_ID (0);
			setC_UOM_ID (0);
// @SQL=SELECT MAX(ws.C_UOM_ID) FROM FTA_WeightScale ws INNER JOIN FTA_WeightScale_Role wsr ON(wsr.FTA_WeightScale_ID = ws.FTA_WeightScale_ID) WHERE wsr.AD_Role_ID = @#AD_Role_ID@
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setDocAction (null);
// CO
			setDocStatus (null);
// DR
			setFTA_EntryTicket_ID (0);
			setFTA_RecordWeight_ID (0);
			setGrossWeight (Env.ZERO);
			setIsApproved (false);
// N
			setIsSOTrx (false);
			setNetWeight (Env.ZERO);
			setOperationType (null);
			setProcessed (false);
			setTareWeight (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_FTA_RecordWeight (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_RecordWeight[")
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

	/** Set Create lines from.
		@param CreateFrom 
		Process which will generate a new document lines based on an existing document
	  */
	public void setCreateFrom (String CreateFrom)
	{
		set_Value (COLUMNNAME_CreateFrom, CreateFrom);
	}

	/** Get Create lines from.
		@return Process which will generate a new document lines based on an existing document
	  */
	public String getCreateFrom () 
	{
		return (String)get_Value(COLUMNNAME_CreateFrom);
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

	public org.spin.model.I_FTA_Chute getFTA_Chute() throws RuntimeException
    {
		return (org.spin.model.I_FTA_Chute)MTable.get(getCtx(), org.spin.model.I_FTA_Chute.Table_Name)
			.getPO(getFTA_Chute_ID(), get_TrxName());	}

	/** Set Chute.
		@param FTA_Chute_ID Chute	  */
	public void setFTA_Chute_ID (int FTA_Chute_ID)
	{
		if (FTA_Chute_ID < 1) 
			set_Value (COLUMNNAME_FTA_Chute_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_Chute_ID, Integer.valueOf(FTA_Chute_ID));
	}

	/** Get Chute.
		@return Chute	  */
	public int getFTA_Chute_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Chute_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_Driver getFTA_Driver() throws RuntimeException
    {
		return (org.spin.model.I_FTA_Driver)MTable.get(getCtx(), org.spin.model.I_FTA_Driver.Table_Name)
			.getPO(getFTA_Driver_ID(), get_TrxName());	}

	/** Set Driver.
		@param FTA_Driver_ID Driver	  */
	public void setFTA_Driver_ID (int FTA_Driver_ID)
	{
		throw new IllegalArgumentException ("FTA_Driver_ID is virtual column");	}

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
			set_ValueNoCheck (COLUMNNAME_FTA_LoadOrder_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_LoadOrder_ID, Integer.valueOf(FTA_LoadOrder_ID));
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

	public org.spin.model.I_FTA_QualityAnalysis getFTA_QualityAnalysis() throws RuntimeException
    {
		return (org.spin.model.I_FTA_QualityAnalysis)MTable.get(getCtx(), org.spin.model.I_FTA_QualityAnalysis.Table_Name)
			.getPO(getFTA_QualityAnalysis_ID(), get_TrxName());	}

	/** Set Quality Analysis.
		@param FTA_QualityAnalysis_ID Quality Analysis	  */
	public void setFTA_QualityAnalysis_ID (int FTA_QualityAnalysis_ID)
	{
		if (FTA_QualityAnalysis_ID < 1) 
			set_Value (COLUMNNAME_FTA_QualityAnalysis_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_QualityAnalysis_ID, Integer.valueOf(FTA_QualityAnalysis_ID));
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

	/** Set Record Weight.
		@param FTA_RecordWeight_ID Record Weight	  */
	public void setFTA_RecordWeight_ID (int FTA_RecordWeight_ID)
	{
		if (FTA_RecordWeight_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_RecordWeight_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_RecordWeight_ID, Integer.valueOf(FTA_RecordWeight_ID));
	}

	/** Get Record Weight.
		@return Record Weight	  */
	public int getFTA_RecordWeight_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_RecordWeight_ID);
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
		throw new IllegalArgumentException ("FTA_Vehicle_ID is virtual column");	}

	/** Get Vehicle.
		@return Vehicle	  */
	public int getFTA_Vehicle_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Vehicle_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Gross Weight.
		@param GrossWeight Gross Weight	  */
	public void setGrossWeight (BigDecimal GrossWeight)
	{
		set_Value (COLUMNNAME_GrossWeight, GrossWeight);
	}

	/** Get Gross Weight.
		@return Gross Weight	  */
	public BigDecimal getGrossWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrossWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Import Weight.
		@param ImportWeight Import Weight	  */
	public void setImportWeight (BigDecimal ImportWeight)
	{
		set_Value (COLUMNNAME_ImportWeight, ImportWeight);
	}

	/** Get Import Weight.
		@return Import Weight	  */
	public BigDecimal getImportWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ImportWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set In Date.
		@param InDate In Date	  */
	public void setInDate (Timestamp InDate)
	{
		set_Value (COLUMNNAME_InDate, InDate);
	}

	/** Get In Date.
		@return In Date	  */
	public Timestamp getInDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_InDate);
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

	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx)
	{
		set_Value (COLUMNNAME_IsSOTrx, Boolean.valueOf(IsSOTrx));
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public boolean isSOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_IsSOTrx);
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

	public I_M_ProductionLine getM_ProductionLine() throws RuntimeException
    {
		return (I_M_ProductionLine)MTable.get(getCtx(), I_M_ProductionLine.Table_Name)
			.getPO(getM_ProductionLine_ID(), get_TrxName());	}

	/** Set Production Line.
		@param M_ProductionLine_ID 
		Document Line representing a production
	  */
	public void setM_ProductionLine_ID (int M_ProductionLine_ID)
	{
		if (M_ProductionLine_ID < 1) 
			set_Value (COLUMNNAME_M_ProductionLine_ID, null);
		else 
			set_Value (COLUMNNAME_M_ProductionLine_ID, Integer.valueOf(M_ProductionLine_ID));
	}

	/** Get Production Line.
		@return Document Line representing a production
	  */
	public int getM_ProductionLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_ProductionLine_ID);
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
		throw new IllegalArgumentException ("M_Shipper_ID is virtual column");	}

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

	/** Set Net Weight.
		@param NetWeight Net Weight	  */
	public void setNetWeight (BigDecimal NetWeight)
	{
		set_Value (COLUMNNAME_NetWeight, NetWeight);
	}

	/** Get Net Weight.
		@return Net Weight	  */
	public BigDecimal getNetWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_NetWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Out Date.
		@param OutDate Out Date	  */
	public void setOutDate (Timestamp OutDate)
	{
		set_Value (COLUMNNAME_OutDate, OutDate);
	}

	/** Get Out Date.
		@return Out Date	  */
	public Timestamp getOutDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_OutDate);
	}

	/** Set Pay Weight.
		@param PayWeight Pay Weight	  */
	public void setPayWeight (BigDecimal PayWeight)
	{
		set_Value (COLUMNNAME_PayWeight, PayWeight);
	}

	/** Get Pay Weight.
		@return Pay Weight	  */
	public BigDecimal getPayWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PayWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.spin.model.I_FTA_EntryTicket getReferenc() throws RuntimeException
    {
		return (org.spin.model.I_FTA_EntryTicket)MTable.get(getCtx(), org.spin.model.I_FTA_EntryTicket.Table_Name)
			.getPO(getReferenceNo(), get_TrxName());	}

	/** Set Reference No.
		@param ReferenceNo 
		Your customer or vendor number at the Business Partner's site
	  */
	public void setReferenceNo (int ReferenceNo)
	{
		throw new IllegalArgumentException ("ReferenceNo is virtual column");	}

	/** Get Reference No.
		@return Your customer or vendor number at the Business Partner's site
	  */
	public int getReferenceNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_ReferenceNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** SelectionWeight AD_Reference_ID=53587 */
	public static final int SELECTIONWEIGHT_AD_Reference_ID=53587;
	/** Payment Weight = P */
	public static final String SELECTIONWEIGHT_PaymentWeight = "P";
	/** Import Weight = I */
	public static final String SELECTIONWEIGHT_ImportWeight = "I";
	/** Set Selection Weight.
		@param SelectionWeight Selection Weight	  */
	public void setSelectionWeight (String SelectionWeight)
	{

		set_Value (COLUMNNAME_SelectionWeight, SelectionWeight);
	}

	/** Get Selection Weight.
		@return Selection Weight	  */
	public String getSelectionWeight () 
	{
		return (String)get_Value(COLUMNNAME_SelectionWeight);
	}

	/** Set Tare Weight.
		@param TareWeight Tare Weight	  */
	public void setTareWeight (BigDecimal TareWeight)
	{
		set_Value (COLUMNNAME_TareWeight, TareWeight);
	}

	/** Get Tare Weight.
		@return Tare Weight	  */
	public BigDecimal getTareWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TareWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Trailer Plate.
		@param TrailerPlate Trailer Plate	  */
	public void setTrailerPlate (String TrailerPlate)
	{
		throw new IllegalArgumentException ("TrailerPlate is virtual column");	}

	/** Get Trailer Plate.
		@return Trailer Plate	  */
	public String getTrailerPlate () 
	{
		return (String)get_Value(COLUMNNAME_TrailerPlate);
	}

	/** WeightStatus AD_Reference_ID=53529 */
	public static final int WEIGHTSTATUS_AD_Reference_ID=53529;
	/** Waiting For Tare Weight = T */
	public static final String WEIGHTSTATUS_WaitingForTareWeight = "T";
	/** Waiting For Gross Weight = G */
	public static final String WEIGHTSTATUS_WaitingForGrossWeight = "G";
	/** Completed = C */
	public static final String WEIGHTSTATUS_Completed = "C";
	/** Set Weight Status.
		@param WeightStatus Weight Status	  */
	public void setWeightStatus (String WeightStatus)
	{

		set_Value (COLUMNNAME_WeightStatus, WeightStatus);
	}

	/** Get Weight Status.
		@return Weight Status	  */
	public String getWeightStatus () 
	{
		return (String)get_Value(COLUMNNAME_WeightStatus);
	}
}