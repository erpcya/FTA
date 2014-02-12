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

/** Generated Model for FTA_Farm
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_Farm extends PO implements I_FTA_Farm, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140209L;

    /** Standard Constructor */
    public X_FTA_Farm (Properties ctx, int FTA_Farm_ID, String trxName)
    {
      super (ctx, FTA_Farm_ID, trxName);
      /** if (FTA_Farm_ID == 0)
        {
			setArea (Env.ZERO);
			setC_BPartner_ID (0);
			setC_BPartner_Location_ID (0);
			setFarmType (null);
			setFTA_Farm_ID (0);
			setIsValid (false);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_FTA_Farm (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_Farm[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Area.
		@param Area Area	  */
	public void setArea (BigDecimal Area)
	{
		set_Value (COLUMNNAME_Area, Area);
	}

	/** Get Area.
		@return Area	  */
	public BigDecimal getArea () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Area);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException
    {
		return (I_C_BPartner_Location)MTable.get(getCtx(), I_C_BPartner_Location.Table_Name)
			.getPO(getC_BPartner_Location_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param C_BPartner_Location_ID 
		Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
	{
		if (C_BPartner_Location_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_Location_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_Location_ID, Integer.valueOf(C_BPartner_Location_ID));
	}

	/** Get Partner Location.
		@return Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** FarmType AD_Reference_ID=53517 */
	public static final int FARMTYPE_AD_Reference_ID=53517;
	/** Own = O */
	public static final String FARMTYPE_Own = "O";
	/** Leased = L */
	public static final String FARMTYPE_Leased = "L";
	/** Set Farm Type.
		@param FarmType Farm Type	  */
	public void setFarmType (String FarmType)
	{

		set_ValueNoCheck (COLUMNNAME_FarmType, FarmType);
	}

	/** Get Farm Type.
		@return Farm Type	  */
	public String getFarmType () 
	{
		return (String)get_Value(COLUMNNAME_FarmType);
	}

	/** Set Frontier East.
		@param FrontierEast Frontier East	  */
	public void setFrontierEast (String FrontierEast)
	{
		set_Value (COLUMNNAME_FrontierEast, FrontierEast);
	}

	/** Get Frontier East.
		@return Frontier East	  */
	public String getFrontierEast () 
	{
		return (String)get_Value(COLUMNNAME_FrontierEast);
	}

	/** Set Frontier North.
		@param FrontierNorth Frontier North	  */
	public void setFrontierNorth (String FrontierNorth)
	{
		set_Value (COLUMNNAME_FrontierNorth, FrontierNorth);
	}

	/** Get Frontier North.
		@return Frontier North	  */
	public String getFrontierNorth () 
	{
		return (String)get_Value(COLUMNNAME_FrontierNorth);
	}

	/** Set Frontier South.
		@param FrontierSouth Frontier South	  */
	public void setFrontierSouth (String FrontierSouth)
	{
		set_Value (COLUMNNAME_FrontierSouth, FrontierSouth);
	}

	/** Get Frontier South.
		@return Frontier South	  */
	public String getFrontierSouth () 
	{
		return (String)get_Value(COLUMNNAME_FrontierSouth);
	}

	/** Set Frontier West.
		@param FrontierWest Frontier West	  */
	public void setFrontierWest (String FrontierWest)
	{
		set_Value (COLUMNNAME_FrontierWest, FrontierWest);
	}

	/** Get Frontier West.
		@return Frontier West	  */
	public String getFrontierWest () 
	{
		return (String)get_Value(COLUMNNAME_FrontierWest);
	}

	/** Set Farm.
		@param FTA_Farm_ID Farm	  */
	public void setFTA_Farm_ID (int FTA_Farm_ID)
	{
		if (FTA_Farm_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_Farm_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_Farm_ID, Integer.valueOf(FTA_Farm_ID));
	}

	/** Get Farm.
		@return Farm	  */
	public int getFTA_Farm_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Farm_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Valid.
		@param IsValid 
		Element is valid
	  */
	public void setIsValid (boolean IsValid)
	{
		set_Value (COLUMNNAME_IsValid, Boolean.valueOf(IsValid));
	}

	/** Get Valid.
		@return Element is valid
	  */
	public boolean isValid () 
	{
		Object oo = get_Value(COLUMNNAME_IsValid);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
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
}