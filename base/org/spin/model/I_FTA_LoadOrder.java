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
package org.spin.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for FTA_LoadOrder
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_FTA_LoadOrder 
{

    /** TableName=FTA_LoadOrder */
    public static final String Table_Name = "FTA_LoadOrder";

    /** AD_Table_ID=53667 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name C_DocType_ID */
    public static final String COLUMNNAME_C_DocType_ID = "C_DocType_ID";

	/** Set Document Type.
	  * Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID);

	/** Get Document Type.
	  * Document type or rules
	  */
	public int getC_DocType_ID();

	public I_C_DocType getC_DocType() throws RuntimeException;

    /** Column name ConfirmedWeight */
    public static final String COLUMNNAME_ConfirmedWeight = "ConfirmedWeight";

	/** Set Confirmed Weight	  */
	public void setConfirmedWeight (BigDecimal ConfirmedWeight);

	/** Get Confirmed Weight	  */
	public BigDecimal getConfirmedWeight();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name C_UOM_Volume_ID */
    public static final String COLUMNNAME_C_UOM_Volume_ID = "C_UOM_Volume_ID";

	/** Set UOM for Volume.
	  * Standard Unit of Measure for Volume
	  */
	public void setC_UOM_Volume_ID (int C_UOM_Volume_ID);

	/** Get UOM for Volume.
	  * Standard Unit of Measure for Volume
	  */
	public int getC_UOM_Volume_ID();

	public I_C_UOM getC_UOM_Volume() throws RuntimeException;

    /** Column name C_UOM_Weight_ID */
    public static final String COLUMNNAME_C_UOM_Weight_ID = "C_UOM_Weight_ID";

	/** Set UOM for Weight.
	  * Standard Unit of Measure for Weight
	  */
	public void setC_UOM_Weight_ID (int C_UOM_Weight_ID);

	/** Get UOM for Weight.
	  * Standard Unit of Measure for Weight
	  */
	public int getC_UOM_Weight_ID();

	public I_C_UOM getC_UOM_Weight() throws RuntimeException;

    /** Column name DateDoc */
    public static final String COLUMNNAME_DateDoc = "DateDoc";

	/** Set Document Date.
	  * Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc);

	/** Get Document Date.
	  * Date of the Document
	  */
	public Timestamp getDateDoc();

    /** Column name DeliveryRule */
    public static final String COLUMNNAME_DeliveryRule = "DeliveryRule";

	/** Set Delivery Rule.
	  * Defines the timing of Delivery
	  */
	public void setDeliveryRule (String DeliveryRule);

	/** Get Delivery Rule.
	  * Defines the timing of Delivery
	  */
	public String getDeliveryRule();

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name DocAction */
    public static final String COLUMNNAME_DocAction = "DocAction";

	/** Set Document Action.
	  * The targeted status of the document
	  */
	public void setDocAction (String DocAction);

	/** Get Document Action.
	  * The targeted status of the document
	  */
	public String getDocAction();

    /** Column name DocStatus */
    public static final String COLUMNNAME_DocStatus = "DocStatus";

	/** Set Document Status.
	  * The current status of the document
	  */
	public void setDocStatus (String DocStatus);

	/** Get Document Status.
	  * The current status of the document
	  */
	public String getDocStatus();

    /** Column name DocumentNo */
    public static final String COLUMNNAME_DocumentNo = "DocumentNo";

	/** Set Document No.
	  * Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo);

	/** Get Document No.
	  * Document sequence number of the document
	  */
	public String getDocumentNo();

    /** Column name FTA_Driver_ID */
    public static final String COLUMNNAME_FTA_Driver_ID = "FTA_Driver_ID";

	/** Set Driver	  */
	public void setFTA_Driver_ID (int FTA_Driver_ID);

	/** Get Driver	  */
	public int getFTA_Driver_ID();

	public org.spin.model.I_FTA_Driver getFTA_Driver() throws RuntimeException;

    /** Column name FTA_EntryTicket_ID */
    public static final String COLUMNNAME_FTA_EntryTicket_ID = "FTA_EntryTicket_ID";

	/** Set Entry Ticket	  */
	public void setFTA_EntryTicket_ID (int FTA_EntryTicket_ID);

	/** Get Entry Ticket	  */
	public int getFTA_EntryTicket_ID();

	public org.spin.model.I_FTA_EntryTicket getFTA_EntryTicket() throws RuntimeException;

    /** Column name FTA_LoadOrder_ID */
    public static final String COLUMNNAME_FTA_LoadOrder_ID = "FTA_LoadOrder_ID";

	/** Set Load Order	  */
	public void setFTA_LoadOrder_ID (int FTA_LoadOrder_ID);

	/** Get Load Order	  */
	public int getFTA_LoadOrder_ID();

    /** Column name FTA_Vehicle_ID */
    public static final String COLUMNNAME_FTA_Vehicle_ID = "FTA_Vehicle_ID";

	/** Set Vehicle	  */
	public void setFTA_Vehicle_ID (int FTA_Vehicle_ID);

	/** Get Vehicle	  */
	public int getFTA_Vehicle_ID();

	public org.spin.model.I_FTA_Vehicle getFTA_Vehicle() throws RuntimeException;

    /** Column name FTA_VehicleType_ID */
    public static final String COLUMNNAME_FTA_VehicleType_ID = "FTA_VehicleType_ID";

	/** Set Vehicle Type	  */
	public void setFTA_VehicleType_ID (int FTA_VehicleType_ID);

	/** Get Vehicle Type	  */
	public int getFTA_VehicleType_ID();

	public org.spin.model.I_FTA_VehicleType getFTA_VehicleType() throws RuntimeException;

    /** Column name InvoiceRule */
    public static final String COLUMNNAME_InvoiceRule = "InvoiceRule";

	/** Set Invoice Rule.
	  * Frequency and method of invoicing 
	  */
	public void setInvoiceRule (String InvoiceRule);

	/** Get Invoice Rule.
	  * Frequency and method of invoicing 
	  */
	public String getInvoiceRule();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name IsApproved */
    public static final String COLUMNNAME_IsApproved = "IsApproved";

	/** Set Approved.
	  * Indicates if this document requires approval
	  */
	public void setIsApproved (boolean IsApproved);

	/** Get Approved.
	  * Indicates if this document requires approval
	  */
	public boolean isApproved();

    /** Column name IsDelivered */
    public static final String COLUMNNAME_IsDelivered = "IsDelivered";

	/** Set Delivered	  */
	public void setIsDelivered (boolean IsDelivered);

	/** Get Delivered	  */
	public boolean isDelivered();

    /** Column name IsHandleRecordWeight */
    public static final String COLUMNNAME_IsHandleRecordWeight = "IsHandleRecordWeight";

	/** Set Is Handle Record Weight	  */
	public void setIsHandleRecordWeight (boolean IsHandleRecordWeight);

	/** Get Is Handle Record Weight	  */
	public boolean isHandleRecordWeight();

    /** Column name IsInvoiced */
    public static final String COLUMNNAME_IsInvoiced = "IsInvoiced";

	/** Set Invoiced.
	  * Is this invoiced?
	  */
	public void setIsInvoiced (boolean IsInvoiced);

	/** Get Invoiced.
	  * Is this invoiced?
	  */
	public boolean isInvoiced();

    /** Column name IsMoved */
    public static final String COLUMNNAME_IsMoved = "IsMoved";

	/** Set Moved	  */
	public void setIsMoved (boolean IsMoved);

	/** Get Moved	  */
	public boolean isMoved();

    /** Column name IsWeightRegister */
    public static final String COLUMNNAME_IsWeightRegister = "IsWeightRegister";

	/** Set Weight Register	  */
	public void setIsWeightRegister (boolean IsWeightRegister);

	/** Get Weight Register	  */
	public boolean isWeightRegister();

    /** Column name LoadCapacity */
    public static final String COLUMNNAME_LoadCapacity = "LoadCapacity";

	/** Set Load Capacity	  */
	public void setLoadCapacity (BigDecimal LoadCapacity);

	/** Get Load Capacity	  */
	public BigDecimal getLoadCapacity();

    /** Column name M_Product_ID */
    public static final String COLUMNNAME_M_Product_ID = "M_Product_ID";

	/** Set Product.
	  * Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID);

	/** Get Product.
	  * Product, Service, Item
	  */
	public int getM_Product_ID();

	public I_M_Product getM_Product() throws RuntimeException;

    /** Column name M_Shipper_ID */
    public static final String COLUMNNAME_M_Shipper_ID = "M_Shipper_ID";

	/** Set Shipper.
	  * Method or manner of product delivery
	  */
	public void setM_Shipper_ID (int M_Shipper_ID);

	/** Get Shipper.
	  * Method or manner of product delivery
	  */
	public int getM_Shipper_ID();

	public I_M_Shipper getM_Shipper() throws RuntimeException;

    /** Column name M_Warehouse_ID */
    public static final String COLUMNNAME_M_Warehouse_ID = "M_Warehouse_ID";

	/** Set Warehouse.
	  * Storage Warehouse and Service Point
	  */
	public void setM_Warehouse_ID (int M_Warehouse_ID);

	/** Get Warehouse.
	  * Storage Warehouse and Service Point
	  */
	public int getM_Warehouse_ID();

	public I_M_Warehouse getM_Warehouse() throws RuntimeException;

    /** Column name OperationType */
    public static final String COLUMNNAME_OperationType = "OperationType";

	/** Set Operation Type	  */
	public void setOperationType (String OperationType);

	/** Get Operation Type	  */
	public String getOperationType();

    /** Column name Processed */
    public static final String COLUMNNAME_Processed = "Processed";

	/** Set Processed.
	  * The document has been processed
	  */
	public void setProcessed (boolean Processed);

	/** Get Processed.
	  * The document has been processed
	  */
	public boolean isProcessed();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name ShipDate */
    public static final String COLUMNNAME_ShipDate = "ShipDate";

	/** Set Ship Date.
	  * Shipment Date/Time
	  */
	public void setShipDate (Timestamp ShipDate);

	/** Get Ship Date.
	  * Shipment Date/Time
	  */
	public Timestamp getShipDate();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();

    /** Column name Volume */
    public static final String COLUMNNAME_Volume = "Volume";

	/** Set Volume.
	  * Volume of a product
	  */
	public void setVolume (BigDecimal Volume);

	/** Get Volume.
	  * Volume of a product
	  */
	public BigDecimal getVolume();

    /** Column name VolumeCapacity */
    public static final String COLUMNNAME_VolumeCapacity = "VolumeCapacity";

	/** Set Volume Capacity	  */
	public void setVolumeCapacity (BigDecimal VolumeCapacity);

	/** Get Volume Capacity	  */
	public BigDecimal getVolumeCapacity();

    /** Column name Weight */
    public static final String COLUMNNAME_Weight = "Weight";

	/** Set Weight.
	  * Weight of a product
	  */
	public void setWeight (BigDecimal Weight);

	/** Get Weight.
	  * Weight of a product
	  */
	public BigDecimal getWeight();
}
