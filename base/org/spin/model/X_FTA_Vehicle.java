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
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Model for FTA_Vehicle
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_Vehicle extends PO implements I_FTA_Vehicle, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20131212L;

    /** Standard Constructor */
    public X_FTA_Vehicle (Properties ctx, int FTA_Vehicle_ID, String trxName)
    {
      super (ctx, FTA_Vehicle_ID, trxName);
      /** if (FTA_Vehicle_ID == 0)
        {
			setFTA_Vehicle_ID (0);
			setFTA_VehicleType_ID (0);
			setName (null);
			setVehiclePlate (null);
        } */
    }

    /** Load Constructor */
    public X_FTA_Vehicle (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_Vehicle[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	public org.spin.model.I_FTA_VehicleBrand getFTA_VehicleBrand() throws RuntimeException
    {
		return (org.spin.model.I_FTA_VehicleBrand)MTable.get(getCtx(), org.spin.model.I_FTA_VehicleBrand.Table_Name)
			.getPO(getFTA_VehicleBrand_ID(), get_TrxName());	}

	/** Set Vehicle Brand.
		@param FTA_VehicleBrand_ID Vehicle Brand	  */
	public void setFTA_VehicleBrand_ID (int FTA_VehicleBrand_ID)
	{
		if (FTA_VehicleBrand_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_VehicleBrand_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_VehicleBrand_ID, Integer.valueOf(FTA_VehicleBrand_ID));
	}

	/** Get Vehicle Brand.
		@return Vehicle Brand	  */
	public int getFTA_VehicleBrand_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_VehicleBrand_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Vehicle.
		@param FTA_Vehicle_ID Vehicle	  */
	public void setFTA_Vehicle_ID (int FTA_Vehicle_ID)
	{
		if (FTA_Vehicle_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_Vehicle_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_Vehicle_ID, Integer.valueOf(FTA_Vehicle_ID));
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

	public org.spin.model.I_FTA_VehicleModel getFTA_VehicleModel() throws RuntimeException
    {
		return (org.spin.model.I_FTA_VehicleModel)MTable.get(getCtx(), org.spin.model.I_FTA_VehicleModel.Table_Name)
			.getPO(getFTA_VehicleModel_ID(), get_TrxName());	}

	/** Set Vehicle Model.
		@param FTA_VehicleModel_ID Vehicle Model	  */
	public void setFTA_VehicleModel_ID (int FTA_VehicleModel_ID)
	{
		if (FTA_VehicleModel_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_VehicleModel_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_VehicleModel_ID, Integer.valueOf(FTA_VehicleModel_ID));
	}

	/** Get Vehicle Model.
		@return Vehicle Model	  */
	public int getFTA_VehicleModel_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_VehicleModel_ID);
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
			set_ValueNoCheck (COLUMNNAME_FTA_VehicleType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_VehicleType_ID, Integer.valueOf(FTA_VehicleType_ID));
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

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

	/** Set Vehicle Plate.
		@param VehiclePlate 
		Vehicle Plate or Identifier
	  */
	public void setVehiclePlate (String VehiclePlate)
	{
		set_Value (COLUMNNAME_VehiclePlate, VehiclePlate);
	}

	/** Get Vehicle Plate.
		@return Vehicle Plate or Identifier
	  */
	public String getVehiclePlate () 
	{
		return (String)get_Value(COLUMNNAME_VehiclePlate);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getVehiclePlate());
    }
}