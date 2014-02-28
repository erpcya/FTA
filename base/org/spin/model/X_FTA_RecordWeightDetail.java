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

/** Generated Model for FTA_RecordWeightDetail
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_RecordWeightDetail extends PO implements I_FTA_RecordWeightDetail, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140224L;

    /** Standard Constructor */
    public X_FTA_RecordWeightDetail (Properties ctx, int FTA_RecordWeightDetail_ID, String trxName)
    {
      super (ctx, FTA_RecordWeightDetail_ID, trxName);
      /** if (FTA_RecordWeightDetail_ID == 0)
        {
			setFTA_CategoryCalc_ID (0);
			setFTA_RecordWeight_ID (0);
			setProcessed (false);
// N
			setWeight (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_FTA_RecordWeightDetail (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_RecordWeightDetail[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.spin.model.I_FTA_CategoryCalc getFTA_CategoryCalc() throws RuntimeException
    {
		return (org.spin.model.I_FTA_CategoryCalc)MTable.get(getCtx(), org.spin.model.I_FTA_CategoryCalc.Table_Name)
			.getPO(getFTA_CategoryCalc_ID(), get_TrxName());	}

	/** Set Category Calc.
		@param FTA_CategoryCalc_ID Category Calc	  */
	public void setFTA_CategoryCalc_ID (int FTA_CategoryCalc_ID)
	{
		if (FTA_CategoryCalc_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_CategoryCalc_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_CategoryCalc_ID, Integer.valueOf(FTA_CategoryCalc_ID));
	}

	/** Get Category Calc.
		@return Category Calc	  */
	public int getFTA_CategoryCalc_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CategoryCalc_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_RecordWeight getFTA_RecordWeight() throws RuntimeException
    {
		return (org.spin.model.I_FTA_RecordWeight)MTable.get(getCtx(), org.spin.model.I_FTA_RecordWeight.Table_Name)
			.getPO(getFTA_RecordWeight_ID(), get_TrxName());	}

	/** Set Record Weight.
		@param FTA_RecordWeight_ID Record Weight	  */
	public void setFTA_RecordWeight_ID (int FTA_RecordWeight_ID)
	{
		if (FTA_RecordWeight_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_RecordWeight_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_RecordWeight_ID, Integer.valueOf(FTA_RecordWeight_ID));
	}

	/** Get Record Weight.
		@return Record Weight	  */
	public int getFTA_RecordWeight_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_RecordWeight_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Line No.
		@param Line 
		Unique line for this document
	  */
	public void setLine (int Line)
	{
		set_Value (COLUMNNAME_Line, Integer.valueOf(Line));
	}

	/** Get Line No.
		@return Unique line for this document
	  */
	public int getLine () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Line);
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
		set_ValueNoCheck (COLUMNNAME_Processed, Boolean.valueOf(Processed));
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

	/** Set Weight.
		@param Weight 
		Weight of a product
	  */
	public void setWeight (BigDecimal Weight)
	{
		set_Value (COLUMNNAME_Weight, Weight);
	}

	/** Get Weight.
		@return Weight of a product
	  */
	public BigDecimal getWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Weight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}