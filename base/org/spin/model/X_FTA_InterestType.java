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

/** Generated Model for FTA_InterestType
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_InterestType extends PO implements I_FTA_InterestType, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20131118L;

    /** Standard Constructor */
    public X_FTA_InterestType (Properties ctx, int FTA_InterestType_ID, String trxName)
    {
      super (ctx, FTA_InterestType_ID, trxName);
      /** if (FTA_InterestType_ID == 0)
        {
			setCalculationType (null);
// C
			setC_DocTypeTarget_ID (0);
			setFTA_InterestType_ID (0);
			setName (null);
			setType (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_FTA_InterestType (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_InterestType[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** CalculationType AD_Reference_ID=53590 */
	public static final int CALCULATIONTYPE_AD_Reference_ID=53590;
	/** Credit Definition Category = C */
	public static final String CALCULATIONTYPE_CreditDefinitionCategory = "C";
	/** Documents = D */
	public static final String CALCULATIONTYPE_Documents = "D";
	/** Set Calculation.
		@param CalculationType Calculation	  */
	public void setCalculationType (String CalculationType)
	{

		set_ValueNoCheck (COLUMNNAME_CalculationType, CalculationType);
	}

	/** Get Calculation.
		@return Calculation	  */
	public String getCalculationType () 
	{
		return (String)get_Value(COLUMNNAME_CalculationType);
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
			set_ValueNoCheck (COLUMNNAME_C_Charge_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Charge_ID, Integer.valueOf(C_Charge_ID));
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

	public I_C_DocType getC_DocTypeTarget() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getC_DocTypeTarget_ID(), get_TrxName());	}

	/** Set Target Document Type.
		@param C_DocTypeTarget_ID 
		Target document type for conversing documents
	  */
	public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID)
	{
		if (C_DocTypeTarget_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_DocTypeTarget_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_DocTypeTarget_ID, Integer.valueOf(C_DocTypeTarget_ID));
	}

	/** Get Target Document Type.
		@return Target document type for conversing documents
	  */
	public int getC_DocTypeTarget_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocTypeTarget_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Days due.
		@param DaysDue 
		Number of days due (negative: due in number of days)
	  */
	public void setDaysDue (int DaysDue)
	{
		set_Value (COLUMNNAME_DaysDue, Integer.valueOf(DaysDue));
	}

	/** Get Days due.
		@return Number of days due (negative: due in number of days)
	  */
	public int getDaysDue () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_DaysDue);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Days Fixed.
		@param DaysFixed Days Fixed	  */
	public void setDaysFixed (boolean DaysFixed)
	{
		set_Value (COLUMNNAME_DaysFixed, Boolean.valueOf(DaysFixed));
	}

	/** Get Days Fixed.
		@return Days Fixed	  */
	public boolean isDaysFixed () 
	{
		Object oo = get_Value(COLUMNNAME_DaysFixed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Interest Type.
		@param FTA_InterestType_ID Interest Type	  */
	public void setFTA_InterestType_ID (int FTA_InterestType_ID)
	{
		if (FTA_InterestType_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_InterestType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_InterestType_ID, Integer.valueOf(FTA_InterestType_ID));
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

	public I_M_Product getM_Product() throws RuntimeException
    {
		return (I_M_Product)MTable.get(getCtx(), I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
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

	/** Set Percent Fixed.
		@param RateFixed Percent Fixed	  */
	public void setRateFixed (boolean RateFixed)
	{
		set_Value (COLUMNNAME_RateFixed, Boolean.valueOf(RateFixed));
	}

	/** Get Percent Fixed.
		@return Percent Fixed	  */
	public boolean isRateFixed () 
	{
		Object oo = get_Value(COLUMNNAME_RateFixed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Type AD_Reference_ID=53580 */
	public static final int TYPE_AD_Reference_ID=53580;
	/** Farmer Credit = FC */
	public static final String TYPE_FarmerCredit = "FC";
	/** Set Type.
		@param Type 
		Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type)
	{

		set_ValueNoCheck (COLUMNNAME_Type, Type);
	}

	/** Get Type.
		@return Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType () 
	{
		return (String)get_Value(COLUMNNAME_Type);
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
}