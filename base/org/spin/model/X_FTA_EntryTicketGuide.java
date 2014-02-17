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

/** Generated Model for FTA_EntryTicketGuide
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_EntryTicketGuide extends PO implements I_FTA_EntryTicketGuide, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140217L;

    /** Standard Constructor */
    public X_FTA_EntryTicketGuide (Properties ctx, int FTA_EntryTicketGuide_ID, String trxName)
    {
      super (ctx, FTA_EntryTicketGuide_ID, trxName);
      /** if (FTA_EntryTicketGuide_ID == 0)
        {
			setFTA_EntryTicketGuide_ID (0);
			setFTA_MobilizationGuide_ID (0);
			setProcessed (false);
        } */
    }

    /** Load Constructor */
    public X_FTA_EntryTicketGuide (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_EntryTicketGuide[")
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

	/** Set Ext. Guide.
		@param Ext_Guide Ext. Guide	  */
	public void setExt_Guide (String Ext_Guide)
	{
		set_Value (COLUMNNAME_Ext_Guide, Ext_Guide);
	}

	/** Get Ext. Guide.
		@return Ext. Guide	  */
	public String getExt_Guide () 
	{
		return (String)get_Value(COLUMNNAME_Ext_Guide);
	}

	/** Set Guide Detail ID.
		@param FTA_EntryTicketGuide_ID Guide Detail ID	  */
	public void setFTA_EntryTicketGuide_ID (int FTA_EntryTicketGuide_ID)
	{
		if (FTA_EntryTicketGuide_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_EntryTicketGuide_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_EntryTicketGuide_ID, Integer.valueOf(FTA_EntryTicketGuide_ID));
	}

	/** Get Guide Detail ID.
		@return Guide Detail ID	  */
	public int getFTA_EntryTicketGuide_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_EntryTicketGuide_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_EntryTicket getFTA_EntryTicket() throws RuntimeException
    {
		return (org.spin.model.I_FTA_EntryTicket)MTable.get(getCtx(), org.spin.model.I_FTA_EntryTicket.Table_Name)
			.getPO(getFTA_EntryTicket_ID(), get_TrxName());	}

	/** Set Entry Ticket.
		@param FTA_EntryTicket_ID Entry Ticket	  */
	public void setFTA_EntryTicket_ID (int FTA_EntryTicket_ID)
	{
		if (FTA_EntryTicket_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_EntryTicket_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_EntryTicket_ID, Integer.valueOf(FTA_EntryTicket_ID));
	}

	/** Get Entry Ticket.
		@return Entry Ticket	  */
	public int getFTA_EntryTicket_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_EntryTicket_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_MobilizationGuide getFTA_MobilizationGuide() throws RuntimeException
    {
		return (org.spin.model.I_FTA_MobilizationGuide)MTable.get(getCtx(), org.spin.model.I_FTA_MobilizationGuide.Table_Name)
			.getPO(getFTA_MobilizationGuide_ID(), get_TrxName());	}

	/** Set Mobilization Guide.
		@param FTA_MobilizationGuide_ID Mobilization Guide	  */
	public void setFTA_MobilizationGuide_ID (int FTA_MobilizationGuide_ID)
	{
		if (FTA_MobilizationGuide_ID < 1) 
			set_Value (COLUMNNAME_FTA_MobilizationGuide_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_MobilizationGuide_ID, Integer.valueOf(FTA_MobilizationGuide_ID));
	}

	/** Get Mobilization Guide.
		@return Mobilization Guide	  */
	public int getFTA_MobilizationGuide_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_MobilizationGuide_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}
}