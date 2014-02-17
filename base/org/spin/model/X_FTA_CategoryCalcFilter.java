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
import org.compiere.util.KeyNamePair;

/** Generated Model for FTA_CategoryCalcFilter
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_CategoryCalcFilter extends PO implements I_FTA_CategoryCalcFilter, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140217L;

    /** Standard Constructor */
    public X_FTA_CategoryCalcFilter (Properties ctx, int FTA_CategoryCalcFilter_ID, String trxName)
    {
      super (ctx, FTA_CategoryCalcFilter_ID, trxName);
      /** if (FTA_CategoryCalcFilter_ID == 0)
        {
			setFTA_CategoryCalcFilter_ID (0);
			setFTA_CategoryCalc_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_CategoryCalcFilter (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_CategoryCalcFilter[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** AttributeValueType AD_Reference_ID=326 */
	public static final int ATTRIBUTEVALUETYPE_AD_Reference_ID=326;
	/** String (max 40) = S */
	public static final String ATTRIBUTEVALUETYPE_StringMax40 = "S";
	/** Number = N */
	public static final String ATTRIBUTEVALUETYPE_Number = "N";
	/** List = L */
	public static final String ATTRIBUTEVALUETYPE_List = "L";
	/** Set Attribute Value Type.
		@param AttributeValueType 
		Type of Attribute Value
	  */
	public void setAttributeValueType (String AttributeValueType)
	{

		set_Value (COLUMNNAME_AttributeValueType, AttributeValueType);
	}

	/** Get Attribute Value Type.
		@return Type of Attribute Value
	  */
	public String getAttributeValueType () 
	{
		return (String)get_Value(COLUMNNAME_AttributeValueType);
	}

	/** Set Category Calc Filter.
		@param FTA_CategoryCalcFilter_ID Category Calc Filter	  */
	public void setFTA_CategoryCalcFilter_ID (int FTA_CategoryCalcFilter_ID)
	{
		if (FTA_CategoryCalcFilter_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_CategoryCalcFilter_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_CategoryCalcFilter_ID, Integer.valueOf(FTA_CategoryCalcFilter_ID));
	}

	/** Get Category Calc Filter.
		@return Category Calc Filter	  */
	public int getFTA_CategoryCalcFilter_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CategoryCalcFilter_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Lot.
		@param IsLot 
		The product instances have a Lot Number
	  */
	public void setIsLot (boolean IsLot)
	{
		set_Value (COLUMNNAME_IsLot, Boolean.valueOf(IsLot));
	}

	/** Get Lot.
		@return The product instances have a Lot Number
	  */
	public boolean isLot () 
	{
		Object oo = get_Value(COLUMNNAME_IsLot);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public I_M_Attribute getM_Attribute() throws RuntimeException
    {
		return (I_M_Attribute)MTable.get(getCtx(), I_M_Attribute.Table_Name)
			.getPO(getM_Attribute_ID(), get_TrxName());	}

	/** Set Attribute.
		@param M_Attribute_ID 
		Product Attribute
	  */
	public void setM_Attribute_ID (int M_Attribute_ID)
	{
		if (M_Attribute_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_M_Attribute_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_M_Attribute_ID, Integer.valueOf(M_Attribute_ID));
	}

	/** Get Attribute.
		@return Product Attribute
	  */
	public int getM_Attribute_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Attribute_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_M_AttributeValue getM_AttributeValue2() throws RuntimeException
    {
		return (I_M_AttributeValue)MTable.get(getCtx(), I_M_AttributeValue.Table_Name)
			.getPO(getM_AttributeValue2_ID(), get_TrxName());	}

	/** Set Attribute Value To.
		@param M_AttributeValue2_ID Attribute Value To	  */
	public void setM_AttributeValue2_ID (int M_AttributeValue2_ID)
	{
		if (M_AttributeValue2_ID < 1) 
			set_Value (COLUMNNAME_M_AttributeValue2_ID, null);
		else 
			set_Value (COLUMNNAME_M_AttributeValue2_ID, Integer.valueOf(M_AttributeValue2_ID));
	}

	/** Get Attribute Value To.
		@return Attribute Value To	  */
	public int getM_AttributeValue2_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_AttributeValue2_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_M_AttributeValue getM_AttributeValue() throws RuntimeException
    {
		return (I_M_AttributeValue)MTable.get(getCtx(), I_M_AttributeValue.Table_Name)
			.getPO(getM_AttributeValue_ID(), get_TrxName());	}

	/** Set Attribute Value.
		@param M_AttributeValue_ID 
		Product Attribute Value
	  */
	public void setM_AttributeValue_ID (int M_AttributeValue_ID)
	{
		if (M_AttributeValue_ID < 1) 
			set_Value (COLUMNNAME_M_AttributeValue_ID, null);
		else 
			set_Value (COLUMNNAME_M_AttributeValue_ID, Integer.valueOf(M_AttributeValue_ID));
	}

	/** Get Attribute Value.
		@return Product Attribute Value
	  */
	public int getM_AttributeValue_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_AttributeValue_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getValue());
    }

	/** Set Value To.
		@param Value2 
		Value To
	  */
	public void setValue2 (String Value2)
	{
		set_Value (COLUMNNAME_Value2, Value2);
	}

	/** Get Value To.
		@return Value To
	  */
	public String getValue2 () 
	{
		return (String)get_Value(COLUMNNAME_Value2);
	}

	/** Set Value.
		@param ValueNumber 
		Numeric Value
	  */
	public void setValueNumber (BigDecimal ValueNumber)
	{
		set_Value (COLUMNNAME_ValueNumber, ValueNumber);
	}

	/** Get Value.
		@return Numeric Value
	  */
	public BigDecimal getValueNumber () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ValueNumber);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Value To.
		@param ValueNumber2 
		Numeric Value To
	  */
	public void setValueNumber2 (BigDecimal ValueNumber2)
	{
		set_Value (COLUMNNAME_ValueNumber2, ValueNumber2);
	}

	/** Get Value To.
		@return Numeric Value To
	  */
	public BigDecimal getValueNumber2 () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ValueNumber2);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}