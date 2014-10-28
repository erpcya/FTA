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

/** Generated Model for FTA_CDL_ReportGroup
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_FTA_CDL_ReportGroup extends PO implements I_FTA_CDL_ReportGroup, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20141020L;

    /** Standard Constructor */
    public X_FTA_CDL_ReportGroup (Properties ctx, int FTA_CDL_ReportGroup_ID, String trxName)
    {
      super (ctx, FTA_CDL_ReportGroup_ID, trxName);
      /** if (FTA_CDL_ReportGroup_ID == 0)
        {
			setFTA_CDL_ReportGroup_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_FTA_CDL_ReportGroup (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_CDL_ReportGroup[")
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

	/** Set CDL Report Group ID.
		@param FTA_CDL_ReportGroup_ID CDL Report Group ID	  */
	public void setFTA_CDL_ReportGroup_ID (int FTA_CDL_ReportGroup_ID)
	{
		if (FTA_CDL_ReportGroup_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_CDL_ReportGroup_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_CDL_ReportGroup_ID, Integer.valueOf(FTA_CDL_ReportGroup_ID));
	}

	/** Get CDL Report Group ID.
		@return CDL Report Group ID	  */
	public int getFTA_CDL_ReportGroup_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CDL_ReportGroup_ID);
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

	/** Set Print Text.
		@param PrintName 
		The label text to be printed on a document or correspondence.
	  */
	public void setPrintName (String PrintName)
	{
		set_Value (COLUMNNAME_PrintName, PrintName);
	}

	/** Get Print Text.
		@return The label text to be printed on a document or correspondence.
	  */
	public String getPrintName () 
	{
		return (String)get_Value(COLUMNNAME_PrintName);
	}
}