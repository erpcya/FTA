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

/** Generated Model for FTA_CategoryCalcGroup
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_FTA_CategoryCalcGroup extends PO implements I_FTA_CategoryCalcGroup, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140525L;

    /** Standard Constructor */
    public X_FTA_CategoryCalcGroup (Properties ctx, int FTA_CategoryCalcGroup_ID, String trxName)
    {
      super (ctx, FTA_CategoryCalcGroup_ID, trxName);
      /** if (FTA_CategoryCalcGroup_ID == 0)
        {
			setFTA_CategoryCalcGroup_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_FTA_CategoryCalcGroup (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_CategoryCalcGroup[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Category Calc Group.
		@param FTA_CategoryCalcGroup_ID Category Calc Group	  */
	public void setFTA_CategoryCalcGroup_ID (int FTA_CategoryCalcGroup_ID)
	{
		if (FTA_CategoryCalcGroup_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_CategoryCalcGroup_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_CategoryCalcGroup_ID, Integer.valueOf(FTA_CategoryCalcGroup_ID));
	}

	/** Get Category Calc Group.
		@return Category Calc Group	  */
	public int getFTA_CategoryCalcGroup_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CategoryCalcGroup_ID);
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getValue());
    }
}