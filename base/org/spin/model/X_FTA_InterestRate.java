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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for FTA_InterestRate
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_InterestRate extends PO implements I_FTA_InterestRate, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140115L;

    /** Standard Constructor */
    public X_FTA_InterestRate (Properties ctx, int FTA_InterestRate_ID, String trxName)
    {
      super (ctx, FTA_InterestRate_ID, trxName);
      /** if (FTA_InterestRate_ID == 0)
        {
			setFTA_InterestRate_ID (0);
			setFTA_InterestType_ID (0);
			setRate (Env.ZERO);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_FTA_InterestRate (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_InterestRate[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Interest Rate.
		@param FTA_InterestRate_ID Interest Rate	  */
	public void setFTA_InterestRate_ID (int FTA_InterestRate_ID)
	{
		if (FTA_InterestRate_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_InterestRate_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_InterestRate_ID, Integer.valueOf(FTA_InterestRate_ID));
	}

	/** Get Interest Rate.
		@return Interest Rate	  */
	public int getFTA_InterestRate_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_InterestRate_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_InterestType getFTA_InterestType() throws RuntimeException
    {
		return (org.spin.model.I_FTA_InterestType)MTable.get(getCtx(), org.spin.model.I_FTA_InterestType.Table_Name)
			.getPO(getFTA_InterestType_ID(), get_TrxName());	}

	/** Set Interest Type.
		@param FTA_InterestType_ID Interest Type	  */
	public void setFTA_InterestType_ID (int FTA_InterestType_ID)
	{
		if (FTA_InterestType_ID < 1) 
			set_Value (COLUMNNAME_FTA_InterestType_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_InterestType_ID, Integer.valueOf(FTA_InterestType_ID));
	}

	/** Get Interest Type.
		@return Interest Type	  */
	public int getFTA_InterestType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_InterestType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Rate.
		@param Rate 
		Rate or Tax or Exchange
	  */
	public void setRate (BigDecimal Rate)
	{
		set_Value (COLUMNNAME_Rate, Rate);
	}

	/** Get Rate.
		@return Rate or Tax or Exchange
	  */
	public BigDecimal getRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Rate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Valid from.
		@param ValidFrom 
		Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}
}