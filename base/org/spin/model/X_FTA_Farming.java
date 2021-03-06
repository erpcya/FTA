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

/** Generated Model for FTA_Farming
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_Farming extends PO implements I_FTA_Farming, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130813L;

    /** Standard Constructor */
    public X_FTA_Farming (Properties ctx, int FTA_Farming_ID, String trxName)
    {
      super (ctx, FTA_Farming_ID, trxName);
      /** if (FTA_Farming_ID == 0)
        {
			setArea (Env.ZERO);
			setCategory (0);
			setFinancingType (null);
			setFTA_FarmDivision_ID (0);
			setFTA_Farming_ID (0);
			setName (null);
			setPlantingCycle_ID (0);
			setStartDate (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_FTA_Farming (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_Farming[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Area.
		@param Area Area	  */
	public void setArea (BigDecimal Area)
	{
		set_ValueNoCheck (COLUMNNAME_Area, Area);
	}

	/** Get Area.
		@return Area	  */
	public BigDecimal getArea () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Area);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_M_Product getCateg() throws RuntimeException
    {
		return (I_M_Product)MTable.get(getCtx(), I_M_Product.Table_Name)
			.getPO(getCategory(), get_TrxName());	}

	/** Set Category.
		@param Category Category	  */
	public void setCategory (int Category)
	{
		set_ValueNoCheck (COLUMNNAME_Category, Integer.valueOf(Category));
	}

	/** Get Category.
		@return Category	  */
	public int getCategory () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Category);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Order getC_Order() throws RuntimeException
    {
		return (I_C_Order)MTable.get(getCtx(), I_C_Order.Table_Name)
			.getPO(getC_Order_ID(), get_TrxName());	}

	/** Set Order.
		@param C_Order_ID 
		Order
	  */
	public void setC_Order_ID (int C_Order_ID)
	{
		if (C_Order_ID < 1) 
			set_Value (COLUMNNAME_C_Order_ID, null);
		else 
			set_Value (COLUMNNAME_C_Order_ID, Integer.valueOf(C_Order_ID));
	}

	/** Get Order.
		@return Order
	  */
	public int getC_Order_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Order_ID);
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

	/** Set Estimated Date.
		@param EstimatedDate Estimated Date	  */
	public void setEstimatedDate (Timestamp EstimatedDate)
	{
		set_Value (COLUMNNAME_EstimatedDate, EstimatedDate);
	}

	/** Get Estimated Date.
		@return Estimated Date	  */
	public Timestamp getEstimatedDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_EstimatedDate);
	}

	/** Set Estimated Qty.
		@param EstimatedQty Estimated Qty	  */
	public void setEstimatedQty (BigDecimal EstimatedQty)
	{
		set_Value (COLUMNNAME_EstimatedQty, EstimatedQty);
	}

	/** Get Estimated Qty.
		@return Estimated Qty	  */
	public BigDecimal getEstimatedQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_EstimatedQty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Estimated Yield.
		@param EstimatedYield Estimated Yield	  */
	public void setEstimatedYield (BigDecimal EstimatedYield)
	{
		set_Value (COLUMNNAME_EstimatedYield, EstimatedYield);
	}

	/** Get Estimated Yield.
		@return Estimated Yield	  */
	public BigDecimal getEstimatedYield () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_EstimatedYield);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** FinancingType AD_Reference_ID=53515 */
	public static final int FINANCINGTYPE_AD_Reference_ID=53515;
	/** Self-financed = S */
	public static final String FINANCINGTYPE_Self_Financed = "S";
	/** Apply Financing = A */
	public static final String FINANCINGTYPE_ApplyFinancing = "A";
	/** Set Financing Type.
		@param FinancingType Financing Type	  */
	public void setFinancingType (String FinancingType)
	{

		set_ValueNoCheck (COLUMNNAME_FinancingType, FinancingType);
	}

	/** Get Financing Type.
		@return Financing Type	  */
	public String getFinancingType () 
	{
		return (String)get_Value(COLUMNNAME_FinancingType);
	}

	public org.spin.model.I_FTA_FarmDivision getFTA_FarmDivision() throws RuntimeException
    {
		return (org.spin.model.I_FTA_FarmDivision)MTable.get(getCtx(), org.spin.model.I_FTA_FarmDivision.Table_Name)
			.getPO(getFTA_FarmDivision_ID(), get_TrxName());	}

	/** Set Farm Division.
		@param FTA_FarmDivision_ID Farm Division	  */
	public void setFTA_FarmDivision_ID (int FTA_FarmDivision_ID)
	{
		if (FTA_FarmDivision_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_FarmDivision_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_FarmDivision_ID, Integer.valueOf(FTA_FarmDivision_ID));
	}

	/** Get Farm Division.
		@return Farm Division	  */
	public int getFTA_FarmDivision_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_FarmDivision_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Farming.
		@param FTA_Farming_ID Farming	  */
	public void setFTA_Farming_ID (int FTA_Farming_ID)
	{
		if (FTA_Farming_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_Farming_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_Farming_ID, Integer.valueOf(FTA_Farming_ID));
	}

	/** Get Farming.
		@return Farming	  */
	public int getFTA_Farming_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Farming_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Guide Generate.
		@param GuideGenerate Guide Generate	  */
	public void setGuideGenerate (String GuideGenerate)
	{
		set_Value (COLUMNNAME_GuideGenerate, GuideGenerate);
	}

	/** Get Guide Generate.
		@return Guide Generate	  */
	public String getGuideGenerate () 
	{
		return (String)get_Value(COLUMNNAME_GuideGenerate);
	}

	/** Set Harvest End Date.
		@param HarvestEndDate Harvest End Date	  */
	public void setHarvestEndDate (Timestamp HarvestEndDate)
	{
		set_Value (COLUMNNAME_HarvestEndDate, HarvestEndDate);
	}

	/** Get Harvest End Date.
		@return Harvest End Date	  */
	public Timestamp getHarvestEndDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_HarvestEndDate);
	}

	/** Set Harvest Start Date.
		@param HarvestStartDate Harvest Start Date	  */
	public void setHarvestStartDate (Timestamp HarvestStartDate)
	{
		set_Value (COLUMNNAME_HarvestStartDate, HarvestStartDate);
	}

	/** Get Harvest Start Date.
		@return Harvest Start Date	  */
	public Timestamp getHarvestStartDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_HarvestStartDate);
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
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

	/** Set Planting End Date.
		@param PlantingEndDate Planting End Date	  */
	public void setPlantingEndDate (Timestamp PlantingEndDate)
	{
		set_Value (COLUMNNAME_PlantingEndDate, PlantingEndDate);
	}

	/** Get Planting End Date.
		@return Planting End Date	  */
	public Timestamp getPlantingEndDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_PlantingEndDate);
	}

	/** Set Planting Start Date.
		@param PlantingStartDate Planting Start Date	  */
	public void setPlantingStartDate (Timestamp PlantingStartDate)
	{
		set_Value (COLUMNNAME_PlantingStartDate, PlantingStartDate);
	}

	/** Get Planting Start Date.
		@return Planting Start Date	  */
	public Timestamp getPlantingStartDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_PlantingStartDate);
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

	/** Set Start Date.
		@param StartDate 
		First effective day (inclusive)
	  */
	public void setStartDate (Timestamp StartDate)
	{
		set_ValueNoCheck (COLUMNNAME_StartDate, StartDate);
	}

	/** Get Start Date.
		@return First effective day (inclusive)
	  */
	public Timestamp getStartDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_StartDate);
	}
}