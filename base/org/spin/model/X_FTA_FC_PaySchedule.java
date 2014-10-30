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
import org.compiere.util.KeyNamePair;

/** Generated Model for FTA_FC_PaySchedule
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_FTA_FC_PaySchedule extends PO implements I_FTA_FC_PaySchedule, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20141020L;

    /** Standard Constructor */
    public X_FTA_FC_PaySchedule (Properties ctx, int FTA_FC_PaySchedule_ID, String trxName)
    {
      super (ctx, FTA_FC_PaySchedule_ID, trxName);
      /** if (FTA_FC_PaySchedule_ID == 0)
        {
			setDiscountAmt (Env.ZERO);
			setDiscountDate (new Timestamp( System.currentTimeMillis() ));
			setDueAmt (Env.ZERO);
			setDueDate (new Timestamp( System.currentTimeMillis() ));
			setFTA_FarmerCredit_ID (0);
			setFTA_FC_PaySchedule_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_FC_PaySchedule (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_FC_PaySchedule[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_PaySchedule getC_PaySchedule() throws RuntimeException
    {
		return (org.compiere.model.I_C_PaySchedule)MTable.get(getCtx(), org.compiere.model.I_C_PaySchedule.Table_Name)
			.getPO(getC_PaySchedule_ID(), get_TrxName());	}

	/** Set Payment Schedule.
		@param C_PaySchedule_ID 
		Payment Schedule Template
	  */
	public void setC_PaySchedule_ID (int C_PaySchedule_ID)
	{
		if (C_PaySchedule_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_PaySchedule_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_PaySchedule_ID, Integer.valueOf(C_PaySchedule_ID));
	}

	/** Get Payment Schedule.
		@return Payment Schedule Template
	  */
	public int getC_PaySchedule_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_PaySchedule_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_Value (COLUMNNAME_DiscountAmt, DiscountAmt);
	}

	/** Get Discount Amount.
		@return Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Discount Date.
		@param DiscountDate 
		Last Date for payments with discount
	  */
	public void setDiscountDate (Timestamp DiscountDate)
	{
		set_Value (COLUMNNAME_DiscountDate, DiscountDate);
	}

	/** Get Discount Date.
		@return Last Date for payments with discount
	  */
	public Timestamp getDiscountDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DiscountDate);
	}

	/** Set Amount due.
		@param DueAmt 
		Amount of the payment due
	  */
	public void setDueAmt (BigDecimal DueAmt)
	{
		set_Value (COLUMNNAME_DueAmt, DueAmt);
	}

	/** Get Amount due.
		@return Amount of the payment due
	  */
	public BigDecimal getDueAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DueAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Due Date.
		@param DueDate 
		Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate)
	{
		set_Value (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
	}

	public org.spin.model.I_FTA_FarmerCredit getFTA_FarmerCredit() throws RuntimeException
    {
		return (org.spin.model.I_FTA_FarmerCredit)MTable.get(getCtx(), org.spin.model.I_FTA_FarmerCredit.Table_Name)
			.getPO(getFTA_FarmerCredit_ID(), get_TrxName());	}

	/** Set Credit/Loan.
		@param FTA_FarmerCredit_ID 
		Farmer Credit or Loan
	  */
	public void setFTA_FarmerCredit_ID (int FTA_FarmerCredit_ID)
	{
		if (FTA_FarmerCredit_ID < 1) 
			set_Value (COLUMNNAME_FTA_FarmerCredit_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_FarmerCredit_ID, Integer.valueOf(FTA_FarmerCredit_ID));
	}

	/** Get Credit/Loan.
		@return Farmer Credit or Loan
	  */
	public int getFTA_FarmerCredit_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_FarmerCredit_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getFTA_FarmerCredit_ID()));
    }

	/** Set Farmer Credit Payment Schedule.
		@param FTA_FC_PaySchedule_ID Farmer Credit Payment Schedule	  */
	public void setFTA_FC_PaySchedule_ID (int FTA_FC_PaySchedule_ID)
	{
		if (FTA_FC_PaySchedule_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_FC_PaySchedule_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_FC_PaySchedule_ID, Integer.valueOf(FTA_FC_PaySchedule_ID));
	}

	/** Get Farmer Credit Payment Schedule.
		@return Farmer Credit Payment Schedule	  */
	public int getFTA_FC_PaySchedule_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_FC_PaySchedule_ID);
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