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

/** Generated Interface for FTA_QualityAnalysis
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_FTA_QualityAnalysis 
{

    /** TableName=FTA_QualityAnalysis */
    public static final String Table_Name = "FTA_QualityAnalysis";

    /** AD_Table_ID=53560 */
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

    /** Column name FTA_EntryTicket_ID */
    public static final String COLUMNNAME_FTA_EntryTicket_ID = "FTA_EntryTicket_ID";

	/** Set Entry Ticket	  */
	public void setFTA_EntryTicket_ID (int FTA_EntryTicket_ID);

	/** Get Entry Ticket	  */
	public int getFTA_EntryTicket_ID();

	public org.spin.model.I_FTA_EntryTicket getFTA_EntryTicket() throws RuntimeException;

    /** Column name FTA_QualityAnalysis_ID */
    public static final String COLUMNNAME_FTA_QualityAnalysis_ID = "FTA_QualityAnalysis_ID";

	/** Set Quality Analysis	  */
	public void setFTA_QualityAnalysis_ID (int FTA_QualityAnalysis_ID);

	/** Get Quality Analysis	  */
	public int getFTA_QualityAnalysis_ID();

    /** Column name FTA_RecordWeight_ID */
    public static final String COLUMNNAME_FTA_RecordWeight_ID = "FTA_RecordWeight_ID";

	/** Set Record Weight	  */
	public void setFTA_RecordWeight_ID (int FTA_RecordWeight_ID);

	/** Get Record Weight	  */
	public int getFTA_RecordWeight_ID();

	public org.spin.model.I_FTA_RecordWeight getFTA_RecordWeight() throws RuntimeException;

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

    /** Column name IsPrinted */
    public static final String COLUMNNAME_IsPrinted = "IsPrinted";

	/** Set Printed.
	  * Indicates if this document / line is printed
	  */
	public void setIsPrinted (boolean IsPrinted);

	/** Get Printed.
	  * Indicates if this document / line is printed
	  */
	public boolean isPrinted();

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

    /** Column name OperationType */
    public static final String COLUMNNAME_OperationType = "OperationType";

	/** Set Operation Type	  */
	public void setOperationType (String OperationType);

	/** Get Operation Type	  */
	public String getOperationType();

    /** Column name Orig_QualityAnalysis_ID */
    public static final String COLUMNNAME_Orig_QualityAnalysis_ID = "Orig_QualityAnalysis_ID";

	/** Set Original Quality Analysis	  */
	public void setOrig_QualityAnalysis_ID (int Orig_QualityAnalysis_ID);

	/** Get Original Quality Analysis	  */
	public int getOrig_QualityAnalysis_ID();

	public org.spin.model.I_FTA_QualityAnalysis getOrig_QualityAnalysis() throws RuntimeException;

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

    /** Column name ProductStatus */
    public static final String COLUMNNAME_ProductStatus = "ProductStatus";

	/** Set Product Status	  */
	public void setProductStatus (String ProductStatus);

	/** Get Product Status	  */
	public String getProductStatus();

    /** Column name QualityAnalysis_ID */
    public static final String COLUMNNAME_QualityAnalysis_ID = "QualityAnalysis_ID";

	/** Set Quality Analysis	  */
	public void setQualityAnalysis_ID (int QualityAnalysis_ID);

	/** Get Quality Analysis	  */
	public int getQualityAnalysis_ID();

	public I_M_AttributeSetInstance getQualityAnalysis() throws RuntimeException;

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
}
