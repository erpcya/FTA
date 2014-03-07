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
import org.compiere.util.KeyNamePair;

/** Generated Model for FTA_CategoryCalc
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_CategoryCalc extends PO implements I_FTA_CategoryCalc, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140307L;

    /** Standard Constructor */
    public X_FTA_CategoryCalc (Properties ctx, int FTA_CategoryCalc_ID, String trxName)
    {
      super (ctx, FTA_CategoryCalc_ID, trxName);
      /** if (FTA_CategoryCalc_ID == 0)
        {
			setAD_Rule_ID (0);
			setEventType (null);
			setFTA_CategoryCalc_ID (0);
			setM_Product_ID (0);
			setName (null);
			setStdPrecision (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_CategoryCalc (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_CategoryCalc[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_AD_Rule getAD_Rule() throws RuntimeException
    {
		return (I_AD_Rule)MTable.get(getCtx(), I_AD_Rule.Table_Name)
			.getPO(getAD_Rule_ID(), get_TrxName());	}

	/** Set Rule.
		@param AD_Rule_ID Rule	  */
	public void setAD_Rule_ID (int AD_Rule_ID)
	{
		if (AD_Rule_ID < 1) 
			set_Value (COLUMNNAME_AD_Rule_ID, null);
		else 
			set_Value (COLUMNNAME_AD_Rule_ID, Integer.valueOf(AD_Rule_ID));
	}

	/** Get Rule.
		@return Rule	  */
	public int getAD_Rule_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Rule_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getAD_Rule_ID()));
    }

	/** Set Copy From.
		@param CopyFrom 
		Copy From Record
	  */
	public void setCopyFrom (String CopyFrom)
	{
		set_Value (COLUMNNAME_CopyFrom, CopyFrom);
	}

	/** Get Copy From.
		@return Copy From Record
	  */
	public String getCopyFrom () 
	{
		return (String)get_Value(COLUMNNAME_CopyFrom);
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

	/** EventType AD_Reference_ID=53532 */
	public static final int EVENTTYPE_AD_Reference_ID=53532;
	/** Liquidation = LI */
	public static final String EVENTTYPE_Liquidation = "LI";
	/** Estimate = ES */
	public static final String EVENTTYPE_Estimate = "ES";
	/** Entry Weight = EW */
	public static final String EVENTTYPE_EntryWeight = "EW";
	/** Out Weight = OW */
	public static final String EVENTTYPE_OutWeight = "OW";
	/** Dried = DR */
	public static final String EVENTTYPE_Dried = "DR";
	/** Set Event Type.
		@param EventType 
		Type of Event
	  */
	public void setEventType (String EventType)
	{

		set_Value (COLUMNNAME_EventType, EventType);
	}

	/** Get Event Type.
		@return Type of Event
	  */
	public String getEventType () 
	{
		return (String)get_Value(COLUMNNAME_EventType);
	}

	public org.spin.model.I_FTA_CategoryCalcGroup getFTA_CategoryCalcGroup() throws RuntimeException
    {
		return (org.spin.model.I_FTA_CategoryCalcGroup)MTable.get(getCtx(), org.spin.model.I_FTA_CategoryCalcGroup.Table_Name)
			.getPO(getFTA_CategoryCalcGroup_ID(), get_TrxName());	}

	/** Set Category Calc Group.
		@param FTA_CategoryCalcGroup_ID Category Calc Group	  */
	public void setFTA_CategoryCalcGroup_ID (int FTA_CategoryCalcGroup_ID)
	{
		if (FTA_CategoryCalcGroup_ID < 1) 
			set_Value (COLUMNNAME_FTA_CategoryCalcGroup_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_CategoryCalcGroup_ID, Integer.valueOf(FTA_CategoryCalcGroup_ID));
	}

	/** Get Category Calc Group.
		@return Category Calc Group	  */
	public int getFTA_CategoryCalcGroup_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CategoryCalcGroup_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

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

	/** Set Is Pay Weight.
		@param IsPayWeight Is Pay Weight	  */
	public void setIsPayWeight (boolean IsPayWeight)
	{
		set_Value (COLUMNNAME_IsPayWeight, Boolean.valueOf(IsPayWeight));
	}

	/** Get Is Pay Weight.
		@return Is Pay Weight	  */
	public boolean isPayWeight () 
	{
		Object oo = get_Value(COLUMNNAME_IsPayWeight);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public I_M_AttributeSetInstance getM_AttributeSetInstance() throws RuntimeException
    {
		return (I_M_AttributeSetInstance)MTable.get(getCtx(), I_M_AttributeSetInstance.Table_Name)
			.getPO(getM_AttributeSetInstance_ID(), get_TrxName());	}

	/** Set Attribute Set Instance.
		@param M_AttributeSetInstance_ID 
		Product Attribute Set Instance
	  */
	public void setM_AttributeSetInstance_ID (int M_AttributeSetInstance_ID)
	{
		if (M_AttributeSetInstance_ID < 0) 
			set_Value (COLUMNNAME_M_AttributeSetInstance_ID, null);
		else 
			set_Value (COLUMNNAME_M_AttributeSetInstance_ID, Integer.valueOf(M_AttributeSetInstance_ID));
	}

	/** Get Attribute Set Instance.
		@return Product Attribute Set Instance
	  */
	public int getM_AttributeSetInstance_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_AttributeSetInstance_ID);
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
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
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

	/** Set Sequence.
		@param SeqNo 
		Method of ordering records; lowest number comes first
	  */
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Standard Precision.
		@param StdPrecision 
		Rule for rounding  calculated amounts
	  */
	public void setStdPrecision (int StdPrecision)
	{
		set_Value (COLUMNNAME_StdPrecision, Integer.valueOf(StdPrecision));
	}

	/** Get Standard Precision.
		@return Rule for rounding  calculated amounts
	  */
	public int getStdPrecision () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_StdPrecision);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}