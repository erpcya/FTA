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

/** Generated Model for FTA_FarmerCreditLine
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_FarmerCreditLine extends PO implements I_FTA_FarmerCreditLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130813L;

    /** Standard Constructor */
    public X_FTA_FarmerCreditLine (Properties ctx, int FTA_FarmerCreditLine_ID, String trxName)
    {
      super (ctx, FTA_FarmerCreditLine_ID, trxName);
      /** if (FTA_FarmerCreditLine_ID == 0)
        {
			setAmt (Env.ZERO);
			setC_Charge_ID (0);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
			setFTA_FarmerCredit_ID (0);
			setFTA_FarmerCreditLine_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_FarmerCreditLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_FarmerCreditLine[")
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

	public I_C_Charge getC_Charge() throws RuntimeException
    {
		return (I_C_Charge)MTable.get(getCtx(), I_C_Charge.Table_Name)
			.getPO(getC_Charge_ID(), get_TrxName());	}

	/** Set Charge.
		@param C_Charge_ID 
		Additional document charges
	  */
	public void setC_Charge_ID (int C_Charge_ID)
	{
		if (C_Charge_ID < 1) 
			set_Value (COLUMNNAME_C_Charge_ID, null);
		else 
			set_Value (COLUMNNAME_C_Charge_ID, Integer.valueOf(C_Charge_ID));
	}

	/** Get Charge.
		@return Additional document charges
	  */
	public int getC_Charge_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Charge_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Invoice getCreditMemo() throws RuntimeException
    {
		return (I_C_Invoice)MTable.get(getCtx(), I_C_Invoice.Table_Name)
			.getPO(getCreditMemo_ID(), get_TrxName());	}

	/** Set Credit Memo.
		@param CreditMemo_ID Credit Memo	  */
	public void setCreditMemo_ID (int CreditMemo_ID)
	{
		if (CreditMemo_ID < 1) 
			set_Value (COLUMNNAME_CreditMemo_ID, null);
		else 
			set_Value (COLUMNNAME_CreditMemo_ID, Integer.valueOf(CreditMemo_ID));
	}

	/** Get Credit Memo.
		@return Credit Memo	  */
	public int getCreditMemo_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_CreditMemo_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	public I_C_Invoice getDebitMemo() throws RuntimeException
    {
		return (I_C_Invoice)MTable.get(getCtx(), I_C_Invoice.Table_Name)
			.getPO(getDebitMemo_ID(), get_TrxName());	}

	/** Set Debit Memo.
		@param DebitMemo_ID Debit Memo	  */
	public void setDebitMemo_ID (int DebitMemo_ID)
	{
		if (DebitMemo_ID < 1) 
			set_Value (COLUMNNAME_DebitMemo_ID, null);
		else 
			set_Value (COLUMNNAME_DebitMemo_ID, Integer.valueOf(DebitMemo_ID));
	}

	/** Get Debit Memo.
		@return Debit Memo	  */
	public int getDebitMemo_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_DebitMemo_ID);
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

	public org.spin.model.I_FTA_FarmerCredit getFTA_FarmerCredit() throws RuntimeException
    {
		return (org.spin.model.I_FTA_FarmerCredit)MTable.get(getCtx(), org.spin.model.I_FTA_FarmerCredit.Table_Name)
			.getPO(getFTA_FarmerCredit_ID(), get_TrxName());	}

	/** Set Farmer Credit/Debt.
		@param FTA_FarmerCredit_ID 
		Farmer Credit or Debts
	  */
	public void setFTA_FarmerCredit_ID (int FTA_FarmerCredit_ID)
	{
		if (FTA_FarmerCredit_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_FarmerCredit_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_FarmerCredit_ID, Integer.valueOf(FTA_FarmerCredit_ID));
	}

	/** Get Farmer Credit/Debt.
		@return Farmer Credit or Debts
	  */
	public int getFTA_FarmerCredit_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_FarmerCredit_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Farmer Credit Line.
		@param FTA_FarmerCreditLine_ID Farmer Credit Line	  */
	public void setFTA_FarmerCreditLine_ID (int FTA_FarmerCreditLine_ID)
	{
		if (FTA_FarmerCreditLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_FarmerCreditLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_FarmerCreditLine_ID, Integer.valueOf(FTA_FarmerCreditLine_ID));
	}

	/** Get Farmer Credit Line.
		@return Farmer Credit Line	  */
	public int getFTA_FarmerCreditLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_FarmerCreditLine_ID);
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