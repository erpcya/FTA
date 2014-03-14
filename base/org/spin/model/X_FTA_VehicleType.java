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
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for FTA_VehicleType
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_VehicleType extends PO implements I_FTA_VehicleType, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140312L;

    /** Standard Constructor */
    public X_FTA_VehicleType (Properties ctx, int FTA_VehicleType_ID, String trxName)
    {
      super (ctx, FTA_VehicleType_ID, trxName);
      /** if (FTA_VehicleType_ID == 0)
        {
			setFTA_VehicleType_ID (0);
			setLoadCapacity (Env.ZERO);
			setName (null);
			setValue (null);
			setVolumeCapacity (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_FTA_VehicleType (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_VehicleType[")
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

	/** Set Load Capacity.
		@param LoadCapacity Load Capacity	  */
	public void setLoadCapacity (BigDecimal LoadCapacity)
	{
		set_Value (COLUMNNAME_LoadCapacity, LoadCapacity);
	}

	/** Get Load Capacity.
		@return Load Capacity	  */
	public BigDecimal getLoadCapacity () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LoadCapacity);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Minimum Load Capacity.
		@param MinLoadCapacity Minimum Load Capacity	  */
	public void setMinLoadCapacity (BigDecimal MinLoadCapacity)
	{
		set_Value (COLUMNNAME_MinLoadCapacity, MinLoadCapacity);
	}

	/** Get Minimum Load Capacity.
		@return Minimum Load Capacity	  */
	public BigDecimal getMinLoadCapacity () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MinLoadCapacity);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Minimum Volume Capacity.
		@param MinVolumeCapacity Minimum Volume Capacity	  */
	public void setMinVolumeCapacity (BigDecimal MinVolumeCapacity)
	{
		set_Value (COLUMNNAME_MinVolumeCapacity, MinVolumeCapacity);
	}

	/** Get Minimum Volume Capacity.
		@return Minimum Volume Capacity	  */
	public BigDecimal getMinVolumeCapacity () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MinVolumeCapacity);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
    }

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}

	/** Set Volume Capacity.
		@param VolumeCapacity Volume Capacity	  */
	public void setVolumeCapacity (BigDecimal VolumeCapacity)
	{
		set_Value (COLUMNNAME_VolumeCapacity, VolumeCapacity);
	}

	/** Get Volume Capacity.
		@return Volume Capacity	  */
	public BigDecimal getVolumeCapacity () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_VolumeCapacity);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}