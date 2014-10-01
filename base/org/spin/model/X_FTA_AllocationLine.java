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

/** Generated Model for FTA_AllocationLine
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_FTA_AllocationLine extends PO implements I_FTA_AllocationLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20141001L;

    /** Standard Constructor */
    public X_FTA_AllocationLine (Properties ctx, int FTA_AllocationLine_ID, String trxName)
    {
      super (ctx, FTA_AllocationLine_ID, trxName);
      /** if (FTA_AllocationLine_ID == 0)
        {
			setAmount (Env.ZERO);
			setDiscountAmt (Env.ZERO);
			setFTA_Allocation_ID (0);
			setFTA_AllocationLine_ID (0);
			setWriteOffAmt (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_FTA_AllocationLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_AllocationLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Allocation No.
		@param AllocationNo Allocation No	  */
	public void setAllocationNo (BigDecimal AllocationNo)
	{
		set_Value (COLUMNNAME_AllocationNo, AllocationNo);
	}

	/** Get Allocation No.
		@return Allocation No	  */
	public BigDecimal getAllocationNo () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_AllocationNo);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Amount.
		@param Amount 
		Amount in a defined currency
	  */
	public void setAmount (BigDecimal Amount)
	{
		set_Value (COLUMNNAME_Amount, Amount);
	}

	/** Get Amount.
		@return Amount in a defined currency
	  */
	public BigDecimal getAmount () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Amount);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_CashLine getC_CashLine() throws RuntimeException
    {
		return (org.compiere.model.I_C_CashLine)MTable.get(getCtx(), org.compiere.model.I_C_CashLine.Table_Name)
			.getPO(getC_CashLine_ID(), get_TrxName());	}

	/** Set Cash Journal Line.
		@param C_CashLine_ID 
		Cash Journal Line
	  */
	public void setC_CashLine_ID (int C_CashLine_ID)
	{
		if (C_CashLine_ID < 1) 
			set_Value (COLUMNNAME_C_CashLine_ID, null);
		else 
			set_Value (COLUMNNAME_C_CashLine_ID, Integer.valueOf(C_CashLine_ID));
	}

	/** Get Cash Journal Line.
		@return Cash Journal Line
	  */
	public int getC_CashLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_CashLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException
    {
		return (org.compiere.model.I_C_Invoice)MTable.get(getCtx(), org.compiere.model.I_C_Invoice.Table_Name)
			.getPO(getC_Invoice_ID(), get_TrxName());	}

	/** Set Invoice.
		@param C_Invoice_ID 
		Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID)
	{
		if (C_Invoice_ID < 1) 
			set_Value (COLUMNNAME_C_Invoice_ID, null);
		else 
			set_Value (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
	}

	/** Get Invoice.
		@return Invoice Identifier
	  */
	public int getC_Invoice_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Invoice_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Order getC_Order() throws RuntimeException
    {
		return (org.compiere.model.I_C_Order)MTable.get(getCtx(), org.compiere.model.I_C_Order.Table_Name)
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

	public org.compiere.model.I_C_Payment getC_Payment() throws RuntimeException
    {
		return (org.compiere.model.I_C_Payment)MTable.get(getCtx(), org.compiere.model.I_C_Payment.Table_Name)
			.getPO(getC_Payment_ID(), get_TrxName());	}

	/** Set Payment.
		@param C_Payment_ID 
		Payment identifier
	  */
	public void setC_Payment_ID (int C_Payment_ID)
	{
		if (C_Payment_ID < 1) 
			set_Value (COLUMNNAME_C_Payment_ID, null);
		else 
			set_Value (COLUMNNAME_C_Payment_ID, Integer.valueOf(C_Payment_ID));
	}

	/** Get Payment.
		@return Payment identifier
	  */
	public int getC_Payment_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Payment_ID);
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

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_Value (COLUMNNAME_DiscountAmt, DiscountAmt);
	}

	/** Get Discount Amount.
		@return Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.spin.model.I_FTA_Allocation getFTA_Allocation() throws RuntimeException
    {
		return (org.spin.model.I_FTA_Allocation)MTable.get(getCtx(), org.spin.model.I_FTA_Allocation.Table_Name)
			.getPO(getFTA_Allocation_ID(), get_TrxName());	}

	/** Set Liquidation Allocation.
		@param FTA_Allocation_ID Liquidation Allocation	  */
	public void setFTA_Allocation_ID (int FTA_Allocation_ID)
	{
		if (FTA_Allocation_ID < 1) 
			set_Value (COLUMNNAME_FTA_Allocation_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_Allocation_ID, Integer.valueOf(FTA_Allocation_ID));
	}

	/** Get Liquidation Allocation.
		@return Liquidation Allocation	  */
	public int getFTA_Allocation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Allocation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Allocation Line.
		@param FTA_AllocationLine_ID Allocation Line	  */
	public void setFTA_AllocationLine_ID (int FTA_AllocationLine_ID)
	{
		if (FTA_AllocationLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_AllocationLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_AllocationLine_ID, Integer.valueOf(FTA_AllocationLine_ID));
	}

	/** Get Allocation Line.
		@return Allocation Line	  */
	public int getFTA_AllocationLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_AllocationLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Over/Under Payment.
		@param OverUnderAmt 
		Over-Payment (unallocated) or Under-Payment (partial payment) Amount
	  */
	public void setOverUnderAmt (BigDecimal OverUnderAmt)
	{
		set_Value (COLUMNNAME_OverUnderAmt, OverUnderAmt);
	}

	/** Get Over/Under Payment.
		@return Over-Payment (unallocated) or Under-Payment (partial payment) Amount
	  */
	public BigDecimal getOverUnderAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_OverUnderAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Write-off Amount.
		@param WriteOffAmt 
		Amount to write-off
	  */
	public void setWriteOffAmt (BigDecimal WriteOffAmt)
	{
		set_Value (COLUMNNAME_WriteOffAmt, WriteOffAmt);
	}

	/** Get Write-off Amount.
		@return Amount to write-off
	  */
	public BigDecimal getWriteOffAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_WriteOffAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}