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

/** Generated Model for FTA_CDL_ReportLine
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_CDL_ReportLine extends PO implements I_FTA_CDL_ReportLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140312L;

    /** Standard Constructor */
    public X_FTA_CDL_ReportLine (Properties ctx, int FTA_CDL_ReportLine_ID, String trxName)
    {
      super (ctx, FTA_CDL_ReportLine_ID, trxName);
      /** if (FTA_CDL_ReportLine_ID == 0)
        {
			setFTA_CDL_Report_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_CDL_ReportLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_CDL_ReportLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.spin.model.I_FTA_CDL_Category getFTA_CDL_Category() throws RuntimeException
    {
		return (org.spin.model.I_FTA_CDL_Category)MTable.get(getCtx(), org.spin.model.I_FTA_CDL_Category.Table_Name)
			.getPO(getFTA_CDL_Category_ID(), get_TrxName());	}

	/** Set Credit Definition Line Category.
		@param FTA_CDL_Category_ID Credit Definition Line Category	  */
	public void setFTA_CDL_Category_ID (int FTA_CDL_Category_ID)
	{
		if (FTA_CDL_Category_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_CDL_Category_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_CDL_Category_ID, Integer.valueOf(FTA_CDL_Category_ID));
	}

	/** Get Credit Definition Line Category.
		@return Credit Definition Line Category	  */
	public int getFTA_CDL_Category_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CDL_Category_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_CDL_Report getFTA_CDL_Report() throws RuntimeException
    {
		return (org.spin.model.I_FTA_CDL_Report)MTable.get(getCtx(), org.spin.model.I_FTA_CDL_Report.Table_Name)
			.getPO(getFTA_CDL_Report_ID(), get_TrxName());	}

	/** Set CDL Report.
		@param FTA_CDL_Report_ID CDL Report	  */
	public void setFTA_CDL_Report_ID (int FTA_CDL_Report_ID)
	{
		if (FTA_CDL_Report_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_CDL_Report_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_CDL_Report_ID, Integer.valueOf(FTA_CDL_Report_ID));
	}

	/** Get CDL Report.
		@return CDL Report	  */
	public int getFTA_CDL_Report_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CDL_Report_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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