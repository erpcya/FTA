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

/** Generated Model for FTA_SuggestedProduct
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_SuggestedProduct extends PO implements I_FTA_SuggestedProduct, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20131210L;

    /** Standard Constructor */
    public X_FTA_SuggestedProduct (Properties ctx, int FTA_SuggestedProduct_ID, String trxName)
    {
      super (ctx, FTA_SuggestedProduct_ID, trxName);
      /** if (FTA_SuggestedProduct_ID == 0)
        {
			setFTA_SuggestedProduct_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_FTA_SuggestedProduct (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_SuggestedProduct[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_M_Product getCategory() throws RuntimeException
    {
		return (I_M_Product)MTable.get(getCtx(), I_M_Product.Table_Name)
			.getPO(getCategory_ID(), get_TrxName());	}

	/** Set Category.
		@param Category_ID Category	  */
	public void setCategory_ID (int Category_ID)
	{
		if (Category_ID < 1) 
			set_Value (COLUMNNAME_Category_ID, null);
		else 
			set_Value (COLUMNNAME_Category_ID, Integer.valueOf(Category_ID));
	}

	/** Get Category.
		@return Category	  */
	public int getCategory_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Category_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Comments.
		@param Comments 
		Comments or additional information
	  */
	public void setComments (String Comments)
	{
		set_Value (COLUMNNAME_Comments, Comments);
	}

	/** Get Comments.
		@return Comments or additional information
	  */
	public String getComments () 
	{
		return (String)get_Value(COLUMNNAME_Comments);
	}

	/** Set Day From.
		@param DayFrom Day From	  */
	public void setDayFrom (BigDecimal DayFrom)
	{
		set_Value (COLUMNNAME_DayFrom, DayFrom);
	}

	/** Get Day From.
		@return Day From	  */
	public BigDecimal getDayFrom () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DayFrom);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Day To.
		@param DayTo Day To	  */
	public void setDayTo (BigDecimal DayTo)
	{
		set_Value (COLUMNNAME_DayTo, DayTo);
	}

	/** Get Day To.
		@return Day To	  */
	public BigDecimal getDayTo () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DayTo);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_C_UOM getDosage_Uom() throws RuntimeException
    {
		return (I_C_UOM)MTable.get(getCtx(), I_C_UOM.Table_Name)
			.getPO(getDosage_Uom_ID(), get_TrxName());	}

	/** Set Dosage Uom.
		@param Dosage_Uom_ID Dosage Uom	  */
	public void setDosage_Uom_ID (int Dosage_Uom_ID)
	{
		if (Dosage_Uom_ID < 1) 
			set_Value (COLUMNNAME_Dosage_Uom_ID, null);
		else 
			set_Value (COLUMNNAME_Dosage_Uom_ID, Integer.valueOf(Dosage_Uom_ID));
	}

	/** Get Dosage Uom.
		@return Dosage Uom	  */
	public int getDosage_Uom_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Dosage_Uom_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_FarmingStage getFTA_FarmingStage() throws RuntimeException
    {
		return (org.spin.model.I_FTA_FarmingStage)MTable.get(getCtx(), org.spin.model.I_FTA_FarmingStage.Table_Name)
			.getPO(getFTA_FarmingStage_ID(), get_TrxName());	}

	/** Set Farming Stage.
		@param FTA_FarmingStage_ID Farming Stage	  */
	public void setFTA_FarmingStage_ID (int FTA_FarmingStage_ID)
	{
		if (FTA_FarmingStage_ID < 1) 
			set_Value (COLUMNNAME_FTA_FarmingStage_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_FarmingStage_ID, Integer.valueOf(FTA_FarmingStage_ID));
	}

	/** Get Farming Stage.
		@return Farming Stage	  */
	public int getFTA_FarmingStage_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_FarmingStage_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_ObservationType getFTA_ObservationType() throws RuntimeException
    {
		return (org.spin.model.I_FTA_ObservationType)MTable.get(getCtx(), org.spin.model.I_FTA_ObservationType.Table_Name)
			.getPO(getFTA_ObservationType_ID(), get_TrxName());	}

	/** Set Observation Type.
		@param FTA_ObservationType_ID Observation Type	  */
	public void setFTA_ObservationType_ID (int FTA_ObservationType_ID)
	{
		if (FTA_ObservationType_ID < 1) 
			set_Value (COLUMNNAME_FTA_ObservationType_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_ObservationType_ID, Integer.valueOf(FTA_ObservationType_ID));
	}

	/** Get Observation Type.
		@return Observation Type	  */
	public int getFTA_ObservationType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_ObservationType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Suggested Product.
		@param FTA_SuggestedProduct_ID Suggested Product	  */
	public void setFTA_SuggestedProduct_ID (int FTA_SuggestedProduct_ID)
	{
		if (FTA_SuggestedProduct_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_SuggestedProduct_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_SuggestedProduct_ID, Integer.valueOf(FTA_SuggestedProduct_ID));
	}

	/** Get Suggested Product.
		@return Suggested Product	  */
	public int getFTA_SuggestedProduct_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_SuggestedProduct_ID);
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

	/** Set Qty Dosage.
		@param QtyDosage Qty Dosage	  */
	public void setQtyDosage (BigDecimal QtyDosage)
	{
		set_Value (COLUMNNAME_QtyDosage, QtyDosage);
	}

	/** Get Qty Dosage.
		@return Qty Dosage	  */
	public BigDecimal getQtyDosage () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_QtyDosage);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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
}