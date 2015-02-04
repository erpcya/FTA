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

/** Generated Model for FTA_CD_Category
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_FTA_CD_Category extends PO implements I_FTA_CD_Category, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150203L;

    /** Standard Constructor */
    public X_FTA_CD_Category (Properties ctx, int FTA_CD_Category_ID, String trxName)
    {
      super (ctx, FTA_CD_Category_ID, trxName);
      /** if (FTA_CD_Category_ID == 0)
        {
			setCategory_ID (0);
			setFTA_CreditDefinition_ID (0);
			setPlantingCycle_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_CD_Category (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_CD_Category[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_M_Product getCategory() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_Name)
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

	public org.spin.model.I_FTA_CreditDefinition getFTA_CreditDefinition() throws RuntimeException
    {
		return (org.spin.model.I_FTA_CreditDefinition)MTable.get(getCtx(), org.spin.model.I_FTA_CreditDefinition.Table_Name)
			.getPO(getFTA_CreditDefinition_ID(), get_TrxName());	}

	/** Set Credit Definition.
		@param FTA_CreditDefinition_ID Credit Definition	  */
	public void setFTA_CreditDefinition_ID (int FTA_CreditDefinition_ID)
	{
		if (FTA_CreditDefinition_ID < 1) 
			set_Value (COLUMNNAME_FTA_CreditDefinition_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_CreditDefinition_ID, Integer.valueOf(FTA_CreditDefinition_ID));
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

	public org.compiere.model.I_M_Lot getPlantingCycle() throws RuntimeException
    {
		return (org.compiere.model.I_M_Lot)MTable.get(getCtx(), org.compiere.model.I_M_Lot.Table_Name)
			.getPO(getPlantingCycle_ID(), get_TrxName());	}

	/** Set Planting Cycle.
		@param PlantingCycle_ID Planting Cycle	  */
	public void setPlantingCycle_ID (int PlantingCycle_ID)
	{
		if (PlantingCycle_ID < 1) 
			set_Value (COLUMNNAME_PlantingCycle_ID, null);
		else 
			set_Value (COLUMNNAME_PlantingCycle_ID, Integer.valueOf(PlantingCycle_ID));
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
}