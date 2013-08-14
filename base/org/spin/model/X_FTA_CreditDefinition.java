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

/** Generated Model for FTA_CreditDefinition
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_CreditDefinition extends PO implements I_FTA_CreditDefinition, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130813L;

    /** Standard Constructor */
    public X_FTA_CreditDefinition (Properties ctx, int FTA_CreditDefinition_ID, String trxName)
    {
      super (ctx, FTA_CreditDefinition_ID, trxName);
      /** if (FTA_CreditDefinition_ID == 0)
        {
			setAmt (Env.ZERO);
			setFTA_CreditDefinition_ID (0);
			setName (null);
			setPlantingCycle_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_CreditDefinition (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_CreditDefinition[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amt 
		Amount
	  */
	public void setAmt (BigDecimal Amt)
	{
		set_Value (COLUMNNAME_Amt, Amt);
	}

	/** Get Amount.
		@return Amount
	  */
	public BigDecimal getAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Amt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Credit Definition.
		@param FTA_CreditDefinition_ID Credit Definition	  */
	public void setFTA_CreditDefinition_ID (int FTA_CreditDefinition_ID)
	{
		if (FTA_CreditDefinition_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_CreditDefinition_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_CreditDefinition_ID, Integer.valueOf(FTA_CreditDefinition_ID));
	}

	/** Get Credit Definition.
		@return Credit Definition	  */
	public int getFTA_CreditDefinition_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CreditDefinition_ID);
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

	public I_M_Lot getPlantingCycle() throws RuntimeException
    {
		return (I_M_Lot)MTable.get(getCtx(), I_M_Lot.Table_Name)
			.getPO(getPlantingCycle_ID(), get_TrxName());	}

	/** Set Planting Cycle.
		@param PlantingCycle_ID Planting Cycle	  */
	public void setPlantingCycle_ID (int PlantingCycle_ID)
	{
		if (PlantingCycle_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_PlantingCycle_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_PlantingCycle_ID, Integer.valueOf(PlantingCycle_ID));
	}

	/** Get Planting Cycle.
		@return Planting Cycle	  */
	public int getPlantingCycle_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PlantingCycle_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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