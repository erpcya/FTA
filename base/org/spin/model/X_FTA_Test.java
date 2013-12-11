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

/** Generated Model for FTA_Test
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_Test extends PO implements I_FTA_Test, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20131210L;

    /** Standard Constructor */
    public X_FTA_Test (Properties ctx, int FTA_Test_ID, String trxName)
    {
      super (ctx, FTA_Test_ID, trxName);
      /** if (FTA_Test_ID == 0)
        {
			setFTA_Test_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_Test (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_Test[")
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

	/** Set FTA Test ID.
		@param FTA_Test_ID FTA Test ID	  */
	public void setFTA_Test_ID (int FTA_Test_ID)
	{
		if (FTA_Test_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_Test_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_Test_ID, Integer.valueOf(FTA_Test_ID));
	}

	/** Get FTA Test ID.
		@return FTA Test ID	  */
	public int getFTA_Test_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Test_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}