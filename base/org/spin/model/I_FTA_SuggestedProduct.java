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

/** Generated Interface for FTA_SuggestedProduct
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_FTA_SuggestedProduct 
{

    /** TableName=FTA_SuggestedProduct */
    public static final String Table_Name = "FTA_SuggestedProduct";

    /** AD_Table_ID=53513 */
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

    /** Column name Category */
    public static final String COLUMNNAME_Category = "Category";

	/** Set Category	  */
	public void setCategory (int Category);

	/** Get Category	  */
	public int getCategory();

	public I_M_Product getCateg() throws RuntimeException;

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

    /** Column name DayFrom */
    public static final String COLUMNNAME_DayFrom = "DayFrom";

	/** Set Day From	  */
	public void setDayFrom (BigDecimal DayFrom);

	/** Get Day From	  */
	public BigDecimal getDayFrom();

    /** Column name DayTo */
    public static final String COLUMNNAME_DayTo = "DayTo";

	/** Set Day To	  */
	public void setDayTo (BigDecimal DayTo);

	/** Get Day To	  */
	public BigDecimal getDayTo();

    /** Column name Dosage_Uom_ID */
    public static final String COLUMNNAME_Dosage_Uom_ID = "Dosage_Uom_ID";

	/** Set Dosage Uom	  */
	public void setDosage_Uom_ID (int Dosage_Uom_ID);

	/** Get Dosage Uom	  */
	public int getDosage_Uom_ID();

	public I_C_UOM getDosage_Uom() throws RuntimeException;

    /** Column name FTA_FarmingStage_ID */
    public static final String COLUMNNAME_FTA_FarmingStage_ID = "FTA_FarmingStage_ID";

	/** Set Farming Stage	  */
	public void setFTA_FarmingStage_ID (int FTA_FarmingStage_ID);

	/** Get Farming Stage	  */
	public int getFTA_FarmingStage_ID();

	public org.spin.model.I_FTA_FarmingStage getFTA_FarmingStage() throws RuntimeException;

    /** Column name FTA_ObservationType_ID */
    public static final String COLUMNNAME_FTA_ObservationType_ID = "FTA_ObservationType_ID";

	/** Set Observation Type	  */
	public void setFTA_ObservationType_ID (int FTA_ObservationType_ID);

	/** Get Observation Type	  */
	public int getFTA_ObservationType_ID();

	public org.spin.model.I_FTA_ObservationType getFTA_ObservationType() throws RuntimeException;

    /** Column name FTA_SuggestedProduct_ID */
    public static final String COLUMNNAME_FTA_SuggestedProduct_ID = "FTA_SuggestedProduct_ID";

	/** Set Suggested Product	  */
	public void setFTA_SuggestedProduct_ID (int FTA_SuggestedProduct_ID);

	/** Get Suggested Product	  */
	public int getFTA_SuggestedProduct_ID();

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

    /** Column name M_Product_Category_ID */
    public static final String COLUMNNAME_M_Product_Category_ID = "M_Product_Category_ID";

	/** Set Product Category.
	  * Category of a Product
	  */
	public void setM_Product_Category_ID (int M_Product_Category_ID);

	/** Get Product Category.
	  * Category of a Product
	  */
	public int getM_Product_Category_ID();

	public I_M_Product_Category getM_Product_Category() throws RuntimeException;

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

    /** Column name QtyDosage */
    public static final String COLUMNNAME_QtyDosage = "QtyDosage";

	/** Set Qty Dosage	  */
	public void setQtyDosage (BigDecimal QtyDosage);

	/** Get Qty Dosage	  */
	public BigDecimal getQtyDosage();

    /** Column name SeqNo */
    public static final String COLUMNNAME_SeqNo = "SeqNo";

	/** Set Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public void setSeqNo (int SeqNo);

	/** Get Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public int getSeqNo();

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
