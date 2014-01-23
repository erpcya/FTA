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

/** Generated Model for FTA_CreditDefinitionLine
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_CreditDefinitionLine extends PO implements I_FTA_CreditDefinitionLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140123L;

    /** Standard Constructor */
    public X_FTA_CreditDefinitionLine (Properties ctx, int FTA_CreditDefinitionLine_ID, String trxName)
    {
      super (ctx, FTA_CreditDefinitionLine_ID, trxName);
      /** if (FTA_CreditDefinitionLine_ID == 0)
        {
			setAmt (Env.ZERO);
			setC_UOM_ID (0);
			setFTA_CDL_Category_ID (0);
			setFTA_CreditDefinition_ID (0);
			setFTA_CreditDefinitionLine_ID (0);
			setLine (0);
// @SQL=SELECT NVL(MAX(Line),0)+10 AS DefaultValue FROM FTA_CreditDefinitionLine WHERE FTA_CreditDefinition_ID=@FTA_CreditDefinition_ID@
			setPrice (Env.ZERO);
			setQty (Env.ZERO);
// 1
        } */
    }

    /** Load Constructor */
    public X_FTA_CreditDefinitionLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_CreditDefinitionLine[")
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

	public I_C_ChargeType getC_ChargeType() throws RuntimeException
    {
		return (I_C_ChargeType)MTable.get(getCtx(), I_C_ChargeType.Table_Name)
			.getPO(getC_ChargeType_ID(), get_TrxName());	}

	/** Set Charge Type.
		@param C_ChargeType_ID Charge Type	  */
	public void setC_ChargeType_ID (int C_ChargeType_ID)
	{
		if (C_ChargeType_ID < 1) 
			set_Value (COLUMNNAME_C_ChargeType_ID, null);
		else 
			set_Value (COLUMNNAME_C_ChargeType_ID, Integer.valueOf(C_ChargeType_ID));
	}

	/** Get Charge Type.
		@return Charge Type	  */
	public int getC_ChargeType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_ChargeType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_UOM getC_UOM() throws RuntimeException
    {
		return (I_C_UOM)MTable.get(getCtx(), I_C_UOM.Table_Name)
			.getPO(getC_UOM_ID(), get_TrxName());	}

	/** Set UOM.
		@param C_UOM_ID 
		Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID < 1) 
			set_Value (COLUMNNAME_C_UOM_ID, null);
		else 
			set_Value (COLUMNNAME_C_UOM_ID, Integer.valueOf(C_UOM_ID));
	}

	/** Get UOM.
		@return Unit of Measure
	  */
	public int getC_UOM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_UOM_ID);
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

	public org.spin.model.I_FTA_CDL_Category getFTA_CDL_Category() throws RuntimeException
    {
		return (org.spin.model.I_FTA_CDL_Category)MTable.get(getCtx(), org.spin.model.I_FTA_CDL_Category.Table_Name)
			.getPO(getFTA_CDL_Category_ID(), get_TrxName());	}

	/** Set Credit Definition Line Category.
		@param FTA_CDL_Category_ID Credit Definition Line Category	  */
	public void setFTA_CDL_Category_ID (int FTA_CDL_Category_ID)
	{
		if (FTA_CDL_Category_ID < 1) 
			set_Value (COLUMNNAME_FTA_CDL_Category_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_CDL_Category_ID, Integer.valueOf(FTA_CDL_Category_ID));
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

	public org.spin.model.I_FTA_CreditDefinition getFTA_CreditDefinition() throws RuntimeException
    {
		return (org.spin.model.I_FTA_CreditDefinition)MTable.get(getCtx(), org.spin.model.I_FTA_CreditDefinition.Table_Name)
			.getPO(getFTA_CreditDefinition_ID(), get_TrxName());	}

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

	/** Set Credit Definition Line.
		@param FTA_CreditDefinitionLine_ID Credit Definition Line	  */
	public void setFTA_CreditDefinitionLine_ID (int FTA_CreditDefinitionLine_ID)
	{
		if (FTA_CreditDefinitionLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_CreditDefinitionLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_CreditDefinitionLine_ID, Integer.valueOf(FTA_CreditDefinitionLine_ID));
	}

	/** Get Credit Definition Line.
		@return Credit Definition Line	  */
	public int getFTA_CreditDefinitionLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CreditDefinitionLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Is Distribution Line.
		@param IsDistributionLine Is Distribution Line	  */
	public void setIsDistributionLine (boolean IsDistributionLine)
	{
		set_Value (COLUMNNAME_IsDistributionLine, Boolean.valueOf(IsDistributionLine));
	}

	/** Get Is Distribution Line.
		@return Is Distribution Line	  */
	public boolean isDistributionLine () 
	{
		Object oo = get_Value(COLUMNNAME_IsDistributionLine);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Exceed Credit Limit.
		@param IsExceedCreditLimit Exceed Credit Limit	  */
	public void setIsExceedCreditLimit (boolean IsExceedCreditLimit)
	{
		set_Value (COLUMNNAME_IsExceedCreditLimit, Boolean.valueOf(IsExceedCreditLimit));
	}

	/** Get Exceed Credit Limit.
		@return Exceed Credit Limit	  */
	public boolean isExceedCreditLimit () 
	{
		Object oo = get_Value(COLUMNNAME_IsExceedCreditLimit);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
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

	public I_M_Product_Category getM_Product_Category() throws RuntimeException
    {
		return (I_M_Product_Category)MTable.get(getCtx(), I_M_Product_Category.Table_Name)
			.getPO(getM_Product_Category_ID(), get_TrxName());	}

	/** Set Product Category.
		@param M_Product_Category_ID 
		Category of a Product
	  */
	public void setM_Product_Category_ID (int M_Product_Category_ID)
	{
		if (M_Product_Category_ID < 1) 
			set_Value (COLUMNNAME_M_Product_Category_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_Category_ID, Integer.valueOf(M_Product_Category_ID));
	}

	/** Get Product Category.
		@return Category of a Product
	  */
	public int getM_Product_Category_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_Category_ID);
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

	/** Set Price.
		@param Price 
		Price
	  */
	public void setPrice (BigDecimal Price)
	{
		set_Value (COLUMNNAME_Price, Price);
	}

	/** Get Price.
		@return Price
	  */
	public BigDecimal getPrice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Price);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}