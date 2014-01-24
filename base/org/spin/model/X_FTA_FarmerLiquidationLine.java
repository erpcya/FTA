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

/** Generated Model for FTA_FarmerLiquidationLine
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_FarmerLiquidationLine extends PO implements I_FTA_FarmerLiquidationLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140124L;

    /** Standard Constructor */
    public X_FTA_FarmerLiquidationLine (Properties ctx, int FTA_FarmerLiquidationLine_ID, String trxName)
    {
      super (ctx, FTA_FarmerLiquidationLine_ID, trxName);
      /** if (FTA_FarmerLiquidationLine_ID == 0)
        {
			setFTA_FarmerLiquidation_ID (0);
			setFTA_FarmerLiquidationLine_ID (0);
			setFTA_RecordWeight_ID (0);
			setNetWeight (Env.ZERO);
			setPayWeight (Env.ZERO);
			setPrice (Env.ZERO);
			setProcessed (false);
			setQualityAnalysis_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_FarmerLiquidationLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_FarmerLiquidationLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.spin.model.I_FTA_FarmerLiquidation getFTA_FarmerLiquidation() throws RuntimeException
    {
		return (org.spin.model.I_FTA_FarmerLiquidation)MTable.get(getCtx(), org.spin.model.I_FTA_FarmerLiquidation.Table_Name)
			.getPO(getFTA_FarmerLiquidation_ID(), get_TrxName());	}

	/** Set Farmer Liquidation.
		@param FTA_FarmerLiquidation_ID Farmer Liquidation	  */
	public void setFTA_FarmerLiquidation_ID (int FTA_FarmerLiquidation_ID)
	{
		if (FTA_FarmerLiquidation_ID < 1) 
			set_Value (COLUMNNAME_FTA_FarmerLiquidation_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_FarmerLiquidation_ID, Integer.valueOf(FTA_FarmerLiquidation_ID));
	}

	/** Get Farmer Liquidation.
		@return Farmer Liquidation	  */
	public int getFTA_FarmerLiquidation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_FarmerLiquidation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Farmer Liquidation Line.
		@param FTA_FarmerLiquidationLine_ID Farmer Liquidation Line	  */
	public void setFTA_FarmerLiquidationLine_ID (int FTA_FarmerLiquidationLine_ID)
	{
		if (FTA_FarmerLiquidationLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_FarmerLiquidationLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_FarmerLiquidationLine_ID, Integer.valueOf(FTA_FarmerLiquidationLine_ID));
	}

	/** Get Farmer Liquidation Line.
		@return Farmer Liquidation Line	  */
	public int getFTA_FarmerLiquidationLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_FarmerLiquidationLine_ID);
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
			set_Value (COLUMNNAME_FTA_RecordWeight_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_RecordWeight_ID, Integer.valueOf(FTA_RecordWeight_ID));
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

	/** Set Line Amount.
		@param LineNetAmt 
		Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public void setLineNetAmt (BigDecimal LineNetAmt)
	{
		set_Value (COLUMNNAME_LineNetAmt, LineNetAmt);
	}

	/** Get Line Amount.
		@return Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public BigDecimal getLineNetAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LineNetAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Net Weight.
		@param NetWeight Net Weight	  */
	public void setNetWeight (BigDecimal NetWeight)
	{
		set_Value (COLUMNNAME_NetWeight, NetWeight);
	}

	/** Get Net Weight.
		@return Net Weight	  */
	public BigDecimal getNetWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_NetWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Pay Weight.
		@param PayWeight Pay Weight	  */
	public void setPayWeight (BigDecimal PayWeight)
	{
		set_Value (COLUMNNAME_PayWeight, PayWeight);
	}

	/** Get Pay Weight.
		@return Pay Weight	  */
	public BigDecimal getPayWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PayWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set List Price.
		@param PriceList 
		List Price
	  */
	public void setPriceList (BigDecimal PriceList)
	{
		set_Value (COLUMNNAME_PriceList, PriceList);
	}

	/** Get List Price.
		@return List Price
	  */
	public BigDecimal getPriceList () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PriceList);
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

	public I_M_AttributeSetInstance getQualityAnalysis() throws RuntimeException
    {
		return (I_M_AttributeSetInstance)MTable.get(getCtx(), I_M_AttributeSetInstance.Table_Name)
			.getPO(getQualityAnalysis_ID(), get_TrxName());	}

	/** Set Quality Analysis.
		@param QualityAnalysis_ID Quality Analysis	  */
	public void setQualityAnalysis_ID (int QualityAnalysis_ID)
	{
		if (QualityAnalysis_ID < 1) 
			set_Value (COLUMNNAME_QualityAnalysis_ID, null);
		else 
			set_Value (COLUMNNAME_QualityAnalysis_ID, Integer.valueOf(QualityAnalysis_ID));
	}

	/** Get Quality Analysis.
		@return Quality Analysis	  */
	public int getQualityAnalysis_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_QualityAnalysis_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}