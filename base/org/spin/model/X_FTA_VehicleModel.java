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

/** Generated Model for FTA_VehicleModel
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_VehicleModel extends PO implements I_FTA_VehicleModel, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140111L;

    /** Standard Constructor */
    public X_FTA_VehicleModel (Properties ctx, int FTA_VehicleModel_ID, String trxName)
    {
      super (ctx, FTA_VehicleModel_ID, trxName);
      /** if (FTA_VehicleModel_ID == 0)
        {
			setFTA_VehicleBrand_ID (0);
			setFTA_VehicleModel_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_FTA_VehicleModel (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_VehicleModel[")
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
}