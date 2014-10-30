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

/** Generated Interface for I_RecordWeight
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS
 */
public interface I_I_RecordWeight 
{

    /** TableName=I_RecordWeight */
    public static final String Table_Name = "I_RecordWeight";

    /** AD_Table_ID=53627 */
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

    /** Column name AnalysisType */
    public static final String COLUMNNAME_AnalysisType = "AnalysisType";

	/** Set Analysis Type	  */
	public void setAnalysisType (String AnalysisType);

	/** Get Analysis Type	  */
	public String getAnalysisType();

    /** Column name BPartnerValue */
    public static final String COLUMNNAME_BPartnerValue = "BPartnerValue";

	/** Set Business Partner Key.
	  * Key of the Business Partner
	  */
	public void setBPartnerValue (String BPartnerValue);

	/** Get Business Partner Key.
	  * Key of the Business Partner
	  */
	public String getBPartnerValue();

    /** Column name C_BPartner_ID */
    public static final String COLUMNNAME_C_BPartner_ID = "C_BPartner_ID";

	/** Set Business Partner .
	  * Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID);

	/** Get Business Partner .
	  * Identifies a Business Partner
	  */
	public int getC_BPartner_ID();

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException;

    /** Column name C_DocTypeMobilizationGuide_ID */
    public static final String COLUMNNAME_C_DocTypeMobilizationGuide_ID = "C_DocTypeMobilizationGuide_ID";

	/** Set Doc Type Mobilization Guide	  */
	public void setC_DocTypeMobilizationGuide_ID (int C_DocTypeMobilizationGuide_ID);

	/** Get Doc Type Mobilization Guide	  */
	public int getC_DocTypeMobilizationGuide_ID();

	public org.compiere.model.I_C_DocType getC_DocTypeMobilizationGuide() throws RuntimeException;

    /** Column name ChuteName */
    public static final String COLUMNNAME_ChuteName = "ChuteName";

	/** Set Chute Name	  */
	public void setChuteName (String ChuteName);

	/** Get Chute Name	  */
	public String getChuteName();

    /** Column name Col_0 */
    public static final String COLUMNNAME_Col_0 = "Col_0";

	/** Set Col_0	  */
	public void setCol_0 (String Col_0);

	/** Get Col_0	  */
	public String getCol_0();

    /** Column name Col_1 */
    public static final String COLUMNNAME_Col_1 = "Col_1";

	/** Set Col_1	  */
	public void setCol_1 (String Col_1);

	/** Get Col_1	  */
	public String getCol_1();

    /** Column name Col_2 */
    public static final String COLUMNNAME_Col_2 = "Col_2";

	/** Set Col_2	  */
	public void setCol_2 (String Col_2);

	/** Get Col_2	  */
	public String getCol_2();

    /** Column name Col_3 */
    public static final String COLUMNNAME_Col_3 = "Col_3";

	/** Set Col_3	  */
	public void setCol_3 (String Col_3);

	/** Get Col_3	  */
	public String getCol_3();

    /** Column name Col_4 */
    public static final String COLUMNNAME_Col_4 = "Col_4";

	/** Set Col_4	  */
	public void setCol_4 (String Col_4);

	/** Get Col_4	  */
	public String getCol_4();

    /** Column name Col_5 */
    public static final String COLUMNNAME_Col_5 = "Col_5";

	/** Set Col_5	  */
	public void setCol_5 (String Col_5);

	/** Get Col_5	  */
	public String getCol_5();

    /** Column name Col_6 */
    public static final String COLUMNNAME_Col_6 = "Col_6";

	/** Set Col_6	  */
	public void setCol_6 (String Col_6);

	/** Get Col_6	  */
	public String getCol_6();

    /** Column name Col_7 */
    public static final String COLUMNNAME_Col_7 = "Col_7";

	/** Set Col_7	  */
	public void setCol_7 (String Col_7);

	/** Get Col_7	  */
	public String getCol_7();

    /** Column name Col_8 */
    public static final String COLUMNNAME_Col_8 = "Col_8";

	/** Set Col_8	  */
	public void setCol_8 (String Col_8);

	/** Get Col_8	  */
	public String getCol_8();

    /** Column name Col_9 */
    public static final String COLUMNNAME_Col_9 = "Col_9";

	/** Set Col_9	  */
	public void setCol_9 (String Col_9);

	/** Get Col_9	  */
	public String getCol_9();

    /** Column name C_Order_ID */
    public static final String COLUMNNAME_C_Order_ID = "C_Order_ID";

	/** Set Order.
	  * Order
	  */
	public void setC_Order_ID (int C_Order_ID);

	/** Get Order.
	  * Order
	  */
	public int getC_Order_ID();

	public org.compiere.model.I_C_Order getC_Order() throws RuntimeException;

    /** Column name C_OrderLine_ID */
    public static final String COLUMNNAME_C_OrderLine_ID = "C_OrderLine_ID";

	/** Set Sales Order Line.
	  * Sales Order Line
	  */
	public void setC_OrderLine_ID (int C_OrderLine_ID);

	/** Get Sales Order Line.
	  * Sales Order Line
	  */
	public int getC_OrderLine_ID();

	public org.compiere.model.I_C_OrderLine getC_OrderLine() throws RuntimeException;

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

    /** Column name C_UOM_ID */
    public static final String COLUMNNAME_C_UOM_ID = "C_UOM_ID";

	/** Set UOM.
	  * Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID);

	/** Get UOM.
	  * Unit of Measure
	  */
	public int getC_UOM_ID();

	public org.compiere.model.I_C_UOM getC_UOM() throws RuntimeException;

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

    /** Column name DocTypeNameMobilizationGuide */
    public static final String COLUMNNAME_DocTypeNameMobilizationGuide = "DocTypeNameMobilizationGuide";

	/** Set Document Type Name Mobilization Guide	  */
	public void setDocTypeNameMobilizationGuide (String DocTypeNameMobilizationGuide);

	/** Get Document Type Name Mobilization Guide	  */
	public String getDocTypeNameMobilizationGuide();

    /** Column name DriverName */
    public static final String COLUMNNAME_DriverName = "DriverName";

	/** Set Driver Name	  */
	public void setDriverName (String DriverName);

	/** Get Driver Name	  */
	public String getDriverName();

    /** Column name DriverValue */
    public static final String COLUMNNAME_DriverValue = "DriverValue";

	/** Set Driver Value	  */
	public void setDriverValue (String DriverValue);

	/** Get Driver Value	  */
	public String getDriverValue();

    /** Column name Entry_Doc_Type_ID */
    public static final String COLUMNNAME_Entry_Doc_Type_ID = "Entry_Doc_Type_ID";

	/** Set Entry Ticket Document Type.
	  * Entry Ticket Document Type
	  */
	public void setEntry_Doc_Type_ID (int Entry_Doc_Type_ID);

	/** Get Entry Ticket Document Type.
	  * Entry Ticket Document Type
	  */
	public int getEntry_Doc_Type_ID();

	public org.compiere.model.I_C_DocType getEntry_Doc_Type() throws RuntimeException;

    /** Column name Entry_Doc_Type_Name */
    public static final String COLUMNNAME_Entry_Doc_Type_Name = "Entry_Doc_Type_Name";

	/** Set Entry Ticket Document Type Name.
	  * Entry Ticket Document Type Name
	  */
	public void setEntry_Doc_Type_Name (String Entry_Doc_Type_Name);

	/** Get Entry Ticket Document Type Name.
	  * Entry Ticket Document Type Name
	  */
	public String getEntry_Doc_Type_Name();

    /** Column name Ext_Guide */
    public static final String COLUMNNAME_Ext_Guide = "Ext_Guide";

	/** Set Ext. Guide	  */
	public void setExt_Guide (String Ext_Guide);

	/** Get Ext. Guide	  */
	public String getExt_Guide();

    /** Column name FTA_Chute_ID */
    public static final String COLUMNNAME_FTA_Chute_ID = "FTA_Chute_ID";

	/** Set Chute	  */
	public void setFTA_Chute_ID (int FTA_Chute_ID);

	/** Get Chute	  */
	public int getFTA_Chute_ID();

	public org.spin.model.I_FTA_Chute getFTA_Chute() throws RuntimeException;

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

	public org.spin.model.I_FTA_LoadOrder getFTA_LoadOrder() throws RuntimeException;

    /** Column name FTA_LoadOrderLine_ID */
    public static final String COLUMNNAME_FTA_LoadOrderLine_ID = "FTA_LoadOrderLine_ID";

	/** Set Load Order Line	  */
	public void setFTA_LoadOrderLine_ID (int FTA_LoadOrderLine_ID);

	/** Get Load Order Line	  */
	public int getFTA_LoadOrderLine_ID();

	public org.spin.model.I_FTA_LoadOrderLine getFTA_LoadOrderLine() throws RuntimeException;

    /** Column name FTA_MobilizationGuide_ID */
    public static final String COLUMNNAME_FTA_MobilizationGuide_ID = "FTA_MobilizationGuide_ID";

	/** Set Mobilization Guide	  */
	public void setFTA_MobilizationGuide_ID (int FTA_MobilizationGuide_ID);

	/** Get Mobilization Guide	  */
	public int getFTA_MobilizationGuide_ID();

	public org.spin.model.I_FTA_MobilizationGuide getFTA_MobilizationGuide() throws RuntimeException;

    /** Column name FTA_QualityAnalysis_ID */
    public static final String COLUMNNAME_FTA_QualityAnalysis_ID = "FTA_QualityAnalysis_ID";

	/** Set Quality Analysis	  */
	public void setFTA_QualityAnalysis_ID (int FTA_QualityAnalysis_ID);

	/** Get Quality Analysis	  */
	public int getFTA_QualityAnalysis_ID();

	public org.spin.model.I_FTA_QualityAnalysis getFTA_QualityAnalysis() throws RuntimeException;

    /** Column name FTA_RecordWeight_ID */
    public static final String COLUMNNAME_FTA_RecordWeight_ID = "FTA_RecordWeight_ID";

	/** Set Record Weight	  */
	public void setFTA_RecordWeight_ID (int FTA_RecordWeight_ID);

	/** Get Record Weight	  */
	public int getFTA_RecordWeight_ID();

	public org.spin.model.I_FTA_RecordWeight getFTA_RecordWeight() throws RuntimeException;

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

    /** Column name GrossWeight */
    public static final String COLUMNNAME_GrossWeight = "GrossWeight";

	/** Set Gross Weight	  */
	public void setGrossWeight (BigDecimal GrossWeight);

	/** Get Gross Weight	  */
	public BigDecimal getGrossWeight();

    /** Column name GuideDocumentNo */
    public static final String COLUMNNAME_GuideDocumentNo = "GuideDocumentNo";

	/** Set Mobilization Guide Document No.
	  * Mobilization Guide Document No
	  */
	public void setGuideDocumentNo (String GuideDocumentNo);

	/** Get Mobilization Guide Document No.
	  * Mobilization Guide Document No
	  */
	public String getGuideDocumentNo();

    /** Column name I_ErrorMsg */
    public static final String COLUMNNAME_I_ErrorMsg = "I_ErrorMsg";

	/** Set Import Error Message.
	  * Messages generated from import process
	  */
	public void setI_ErrorMsg (String I_ErrorMsg);

	/** Get Import Error Message.
	  * Messages generated from import process
	  */
	public String getI_ErrorMsg();

    /** Column name I_IsImported */
    public static final String COLUMNNAME_I_IsImported = "I_IsImported";

	/** Set Imported.
	  * Has this import been processed
	  */
	public void setI_IsImported (boolean I_IsImported);

	/** Get Imported.
	  * Has this import been processed
	  */
	public boolean isI_IsImported();

    /** Column name ImportWeight */
    public static final String COLUMNNAME_ImportWeight = "ImportWeight";

	/** Set Import Weight	  */
	public void setImportWeight (BigDecimal ImportWeight);

	/** Get Import Weight	  */
	public BigDecimal getImportWeight();

    /** Column name InDate */
    public static final String COLUMNNAME_InDate = "InDate";

	/** Set In Date	  */
	public void setInDate (Timestamp InDate);

	/** Get In Date	  */
	public Timestamp getInDate();

    /** Column name I_RecordWeight_ID */
    public static final String COLUMNNAME_I_RecordWeight_ID = "I_RecordWeight_ID";

	/** Set Import Record Weight ID	  */
	public void setI_RecordWeight_ID (int I_RecordWeight_ID);

	/** Get Import Record Weight ID	  */
	public int getI_RecordWeight_ID();

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

    /** Column name IsSOTrx */
    public static final String COLUMNNAME_IsSOTrx = "IsSOTrx";

	/** Set Sales Transaction.
	  * This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx);

	/** Get Sales Transaction.
	  * This is a Sales Transaction
	  */
	public boolean isSOTrx();

    /** Column name LoadCapacity */
    public static final String COLUMNNAME_LoadCapacity = "LoadCapacity";

	/** Set Load Capacity	  */
	public void setLoadCapacity (BigDecimal LoadCapacity);

	/** Get Load Capacity	  */
	public BigDecimal getLoadCapacity();

    /** Column name LO_Doc_Type_ID */
    public static final String COLUMNNAME_LO_Doc_Type_ID = "LO_Doc_Type_ID";

	/** Set Load Order Document Type	  */
	public void setLO_Doc_Type_ID (int LO_Doc_Type_ID);

	/** Get Load Order Document Type	  */
	public int getLO_Doc_Type_ID();

	public org.compiere.model.I_C_DocType getLO_Doc_Type() throws RuntimeException;

    /** Column name LO_Doc_Type_Name */
    public static final String COLUMNNAME_LO_Doc_Type_Name = "LO_Doc_Type_Name";

	/** Set Load Order Document Type Name	  */
	public void setLO_Doc_Type_Name (String LO_Doc_Type_Name);

	/** Get Load Order Document Type Name	  */
	public String getLO_Doc_Type_Name();

    /** Column name M_AttributeSetInstance_ID */
    public static final String COLUMNNAME_M_AttributeSetInstance_ID = "M_AttributeSetInstance_ID";

	/** Set Attribute Set Instance.
	  * Product Attribute Set Instance
	  */
	public void setM_AttributeSetInstance_ID (int M_AttributeSetInstance_ID);

	/** Get Attribute Set Instance.
	  * Product Attribute Set Instance
	  */
	public int getM_AttributeSetInstance_ID();

	public I_M_AttributeSetInstance getM_AttributeSetInstance() throws RuntimeException;

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

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException;

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

	public org.compiere.model.I_M_Shipper getM_Shipper() throws RuntimeException;

    /** Column name NetWeight */
    public static final String COLUMNNAME_NetWeight = "NetWeight";

	/** Set Net Weight	  */
	public void setNetWeight (BigDecimal NetWeight);

	/** Get Net Weight	  */
	public BigDecimal getNetWeight();

    /** Column name OperationType */
    public static final String COLUMNNAME_OperationType = "OperationType";

	/** Set Operation Type	  */
	public void setOperationType (String OperationType);

	/** Get Operation Type	  */
	public String getOperationType();

    /** Column name Order_Doc_Type_ID */
    public static final String COLUMNNAME_Order_Doc_Type_ID = "Order_Doc_Type_ID";

	/** Set Order Document Type	  */
	public void setOrder_Doc_Type_ID (int Order_Doc_Type_ID);

	/** Get Order Document Type	  */
	public int getOrder_Doc_Type_ID();

	public org.compiere.model.I_C_DocType getOrder_Doc_Type() throws RuntimeException;

    /** Column name Order_Doc_Type_Name */
    public static final String COLUMNNAME_Order_Doc_Type_Name = "Order_Doc_Type_Name";

	/** Set Order Document Type Name	  */
	public void setOrder_Doc_Type_Name (String Order_Doc_Type_Name);

	/** Get Order Document Type Name	  */
	public String getOrder_Doc_Type_Name();

    /** Column name OrderDocumentNo */
    public static final String COLUMNNAME_OrderDocumentNo = "OrderDocumentNo";

	/** Set Sales/Purchase Order Document Number	  */
	public void setOrderDocumentNo (String OrderDocumentNo);

	/** Get Sales/Purchase Order Document Number	  */
	public String getOrderDocumentNo();

    /** Column name OrgValue */
    public static final String COLUMNNAME_OrgValue = "OrgValue";

	/** Set Org Key.
	  * Key of the Organization
	  */
	public void setOrgValue (String OrgValue);

	/** Get Org Key.
	  * Key of the Organization
	  */
	public String getOrgValue();

    /** Column name OutDate */
    public static final String COLUMNNAME_OutDate = "OutDate";

	/** Set Out Date	  */
	public void setOutDate (Timestamp OutDate);

	/** Get Out Date	  */
	public Timestamp getOutDate();

    /** Column name PayWeight */
    public static final String COLUMNNAME_PayWeight = "PayWeight";

	/** Set Pay Weight	  */
	public void setPayWeight (BigDecimal PayWeight);

	/** Get Pay Weight	  */
	public BigDecimal getPayWeight();

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

    /** Column name ProductStatus */
    public static final String COLUMNNAME_ProductStatus = "ProductStatus";

	/** Set Product Status	  */
	public void setProductStatus (String ProductStatus);

	/** Get Product Status	  */
	public String getProductStatus();

    /** Column name ProductValue */
    public static final String COLUMNNAME_ProductValue = "ProductValue";

	/** Set Product Key.
	  * Key of the Product
	  */
	public void setProductValue (String ProductValue);

	/** Get Product Key.
	  * Key of the Product
	  */
	public String getProductValue();

    /** Column name QA_Doc_Type_ID */
    public static final String COLUMNNAME_QA_Doc_Type_ID = "QA_Doc_Type_ID";

	/** Set Quality Analysis Document Type.
	  * Quality Analysis Document Type
	  */
	public void setQA_Doc_Type_ID (int QA_Doc_Type_ID);

	/** Get Quality Analysis Document Type.
	  * Quality Analysis Document Type
	  */
	public int getQA_Doc_Type_ID();

	public org.compiere.model.I_C_DocType getQA_Doc_Type() throws RuntimeException;

    /** Column name QA_Doc_Type_Name */
    public static final String COLUMNNAME_QA_Doc_Type_Name = "QA_Doc_Type_Name";

	/** Set Quality Analysis Document Type Name.
	  * Quality Analysis Document Type Name
	  */
	public void setQA_Doc_Type_Name (String QA_Doc_Type_Name);

	/** Get Quality Analysis Document Type Name.
	  * Quality Analysis Document Type Name
	  */
	public String getQA_Doc_Type_Name();

    /** Column name QA_DocumentNo */
    public static final String COLUMNNAME_QA_DocumentNo = "QA_DocumentNo";

	/** Set Quality Analysis Document Number	  */
	public void setQA_DocumentNo (String QA_DocumentNo);

	/** Get Quality Analysis Document Number	  */
	public String getQA_DocumentNo();

    /** Column name Qty */
    public static final String COLUMNNAME_Qty = "Qty";

	/** Set Quantity.
	  * Quantity
	  */
	public void setQty (BigDecimal Qty);

	/** Get Quantity.
	  * Quantity
	  */
	public BigDecimal getQty();

    /** Column name ReferenceNo */
    public static final String COLUMNNAME_ReferenceNo = "ReferenceNo";

	/** Set Reference No.
	  * Your customer or vendor number at the Business Partner's site
	  */
	public void setReferenceNo (String ReferenceNo);

	/** Get Reference No.
	  * Your customer or vendor number at the Business Partner's site
	  */
	public String getReferenceNo();

    /** Column name RW_Doc_Type_ID */
    public static final String COLUMNNAME_RW_Doc_Type_ID = "RW_Doc_Type_ID";

	/** Set Record Weight Document Type	  */
	public void setRW_Doc_Type_ID (int RW_Doc_Type_ID);

	/** Get Record Weight Document Type	  */
	public int getRW_Doc_Type_ID();

	public org.compiere.model.I_C_DocType getRW_Doc_Type() throws RuntimeException;

    /** Column name RW_Doc_Type_Name */
    public static final String COLUMNNAME_RW_Doc_Type_Name = "RW_Doc_Type_Name";

	/** Set Record Weight Document Name	  */
	public void setRW_Doc_Type_Name (String RW_Doc_Type_Name);

	/** Get Record Weight Document Name	  */
	public String getRW_Doc_Type_Name();

    /** Column name RW_DocumentNo */
    public static final String COLUMNNAME_RW_DocumentNo = "RW_DocumentNo";

	/** Set Record Weight Document Number	  */
	public void setRW_DocumentNo (String RW_DocumentNo);

	/** Get Record Weight Document Number	  */
	public String getRW_DocumentNo();

    /** Column name ShipperName */
    public static final String COLUMNNAME_ShipperName = "ShipperName";

	/** Set Shipper Name	  */
	public void setShipperName (String ShipperName);

	/** Get Shipper Name	  */
	public String getShipperName();

    /** Column name TareWeight */
    public static final String COLUMNNAME_TareWeight = "TareWeight";

	/** Set Tare Weight	  */
	public void setTareWeight (BigDecimal TareWeight);

	/** Get Tare Weight	  */
	public BigDecimal getTareWeight();

    /** Column name TrailerPlate */
    public static final String COLUMNNAME_TrailerPlate = "TrailerPlate";

	/** Set Trailer Plate	  */
	public void setTrailerPlate (String TrailerPlate);

	/** Get Trailer Plate	  */
	public String getTrailerPlate();

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

    /** Column name Val_0 */
    public static final String COLUMNNAME_Val_0 = "Val_0";

	/** Set Val_0	  */
	public void setVal_0 (String Val_0);

	/** Get Val_0	  */
	public String getVal_0();

    /** Column name Val_1 */
    public static final String COLUMNNAME_Val_1 = "Val_1";

	/** Set Val_1	  */
	public void setVal_1 (String Val_1);

	/** Get Val_1	  */
	public String getVal_1();

    /** Column name Val_2 */
    public static final String COLUMNNAME_Val_2 = "Val_2";

	/** Set Val_2	  */
	public void setVal_2 (String Val_2);

	/** Get Val_2	  */
	public String getVal_2();

    /** Column name Val_3 */
    public static final String COLUMNNAME_Val_3 = "Val_3";

	/** Set Val_3	  */
	public void setVal_3 (String Val_3);

	/** Get Val_3	  */
	public String getVal_3();

    /** Column name Val_4 */
    public static final String COLUMNNAME_Val_4 = "Val_4";

	/** Set Val_4	  */
	public void setVal_4 (String Val_4);

	/** Get Val_4	  */
	public String getVal_4();

    /** Column name Val_5 */
    public static final String COLUMNNAME_Val_5 = "Val_5";

	/** Set Val_5	  */
	public void setVal_5 (String Val_5);

	/** Get Val_5	  */
	public String getVal_5();

    /** Column name Val_6 */
    public static final String COLUMNNAME_Val_6 = "Val_6";

	/** Set Val_6	  */
	public void setVal_6 (String Val_6);

	/** Get Val_6	  */
	public String getVal_6();

    /** Column name Val_7 */
    public static final String COLUMNNAME_Val_7 = "Val_7";

	/** Set Val_7	  */
	public void setVal_7 (String Val_7);

	/** Get Val_7	  */
	public String getVal_7();

    /** Column name Val_8 */
    public static final String COLUMNNAME_Val_8 = "Val_8";

	/** Set Val_8	  */
	public void setVal_8 (String Val_8);

	/** Get Val_8	  */
	public String getVal_8();

    /** Column name Val_9 */
    public static final String COLUMNNAME_Val_9 = "Val_9";

	/** Set Val_9	  */
	public void setVal_9 (String Val_9);

	/** Get Val_9	  */
	public String getVal_9();

    /** Column name VehicleName */
    public static final String COLUMNNAME_VehicleName = "VehicleName";

	/** Set Vehicle Name.
	  * Vehicle Name
	  */
	public void setVehicleName (String VehicleName);

	/** Get Vehicle Name.
	  * Vehicle Name
	  */
	public String getVehicleName();

    /** Column name VehiclePlate */
    public static final String COLUMNNAME_VehiclePlate = "VehiclePlate";

	/** Set Vehicle Plate.
	  * Vehicle Plate or Identifier
	  */
	public void setVehiclePlate (String VehiclePlate);

	/** Get Vehicle Plate.
	  * Vehicle Plate or Identifier
	  */
	public String getVehiclePlate();

    /** Column name VehicleType */
    public static final String COLUMNNAME_VehicleType = "VehicleType";

	/** Set Vehicle Type	  */
	public void setVehicleType (String VehicleType);

	/** Get Vehicle Type	  */
	public String getVehicleType();

    /** Column name WeightStatus */
    public static final String COLUMNNAME_WeightStatus = "WeightStatus";

	/** Set Weight Status	  */
	public void setWeightStatus (String WeightStatus);

	/** Get Weight Status	  */
	public String getWeightStatus();

    /** Column name X12DE355 */
    public static final String COLUMNNAME_X12DE355 = "X12DE355";

	/** Set UOM Code.
	  * UOM EDI X12 Code
	  */
	public void setX12DE355 (String X12DE355);

	/** Get UOM Code.
	  * UOM EDI X12 Code
	  */
	public String getX12DE355();
}
