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

/** Generated Interface for FTA_Vehicle
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_FTA_Vehicle 
{

    /** TableName=FTA_Vehicle */
    public static final String Table_Name = "FTA_Vehicle";

    /** AD_Table_ID=53610 */
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

    /** Column name FTA_VehicleBrand_ID */
    public static final String COLUMNNAME_FTA_VehicleBrand_ID = "FTA_VehicleBrand_ID";

	/** Set Vehicle Brand	  */
	public void setFTA_VehicleBrand_ID (int FTA_VehicleBrand_ID);

	/** Get Vehicle Brand	  */
	public int getFTA_VehicleBrand_ID();

	public org.spin.model.I_FTA_VehicleBrand getFTA_VehicleBrand() throws RuntimeException;

    /** Column name FTA_Vehicle_ID */
    public static final String COLUMNNAME_FTA_Vehicle_ID = "FTA_Vehicle_ID";

	/** Set Vehicle	  */
	public void setFTA_Vehicle_ID (int FTA_Vehicle_ID);

	/** Get Vehicle	  */
	public int getFTA_Vehicle_ID();

    /** Column name FTA_VehicleModel_ID */
    public static final String COLUMNNAME_FTA_VehicleModel_ID = "FTA_VehicleModel_ID";

	/** Set Vehicle Model	  */
	public void setFTA_VehicleModel_ID (int FTA_VehicleModel_ID);

	/** Get Vehicle Model	  */
	public int getFTA_VehicleModel_ID();

	public org.spin.model.I_FTA_VehicleModel getFTA_VehicleModel() throws RuntimeException;

    /** Column name FTA_VehicleType_ID */
    public static final String COLUMNNAME_FTA_VehicleType_ID = "FTA_VehicleType_ID";

	/** Set Vehicle Type	  */
	public void setFTA_VehicleType_ID (int FTA_VehicleType_ID);

	/** Get Vehicle Type	  */
	public int getFTA_VehicleType_ID();

	public org.spin.model.I_FTA_VehicleType getFTA_VehicleType() throws RuntimeException;

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

    /** Column name LoadCapacity */
    public static final String COLUMNNAME_LoadCapacity = "LoadCapacity";

	/** Set Load Capacity	  */
	public void setLoadCapacity (BigDecimal LoadCapacity);

	/** Get Load Capacity	  */
	public BigDecimal getLoadCapacity();

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

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

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

    /** Column name VolumeCapacity */
    public static final String COLUMNNAME_VolumeCapacity = "VolumeCapacity";

	/** Set Volume Capacity	  */
	public void setVolumeCapacity (BigDecimal VolumeCapacity);

	/** Get Volume Capacity	  */
	public BigDecimal getVolumeCapacity();
}
