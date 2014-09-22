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

/** Generated Model for FTA_AttributeReportLine
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_FTA_AttributeReportLine extends PO implements I_FTA_AttributeReportLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140922L;

    /** Standard Constructor */
    public X_FTA_AttributeReportLine (Properties ctx, int FTA_AttributeReportLine_ID, String trxName)
    {
      super (ctx, FTA_AttributeReportLine_ID, trxName);
      /** if (FTA_AttributeReportLine_ID == 0)
        {
			setFTA_AttributeReport_ID (0);
			setFTA_AttributeReportLine_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_AttributeReportLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_AttributeReportLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.spin.model.I_FTA_AttributeReport getFTA_AttributeReport() throws RuntimeException
    {
		return (org.spin.model.I_FTA_AttributeReport)MTable.get(getCtx(), org.spin.model.I_FTA_AttributeReport.Table_Name)
			.getPO(getFTA_AttributeReport_ID(), get_TrxName());	}

	/** Set Attribute Report.
		@param FTA_AttributeReport_ID Attribute Report	  */
	public void setFTA_AttributeReport_ID (int FTA_AttributeReport_ID)
	{
		if (FTA_AttributeReport_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_AttributeReport_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_AttributeReport_ID, Integer.valueOf(FTA_AttributeReport_ID));
	}

	/** Get Attribute Report.
		@return Attribute Report	  */
	public int getFTA_AttributeReport_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_AttributeReport_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Attributes.
		@param FTA_AttributeReportLine_ID Attributes	  */
	public void setFTA_AttributeReportLine_ID (int FTA_AttributeReportLine_ID)
	{
		if (FTA_AttributeReportLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_AttributeReportLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_AttributeReportLine_ID, Integer.valueOf(FTA_AttributeReportLine_ID));
	}

	/** Get Attributes.
		@return Attributes	  */
	public int getFTA_AttributeReportLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_AttributeReportLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	public org.spin.model.I_FTA_CategoryCalc getFTA_CategoryCalc() throws RuntimeException
    {
		return (org.spin.model.I_FTA_CategoryCalc)MTable.get(getCtx(), org.spin.model.I_FTA_CategoryCalc.Table_Name)
			.getPO(getFTA_CategoryCalc_ID(), get_TrxName());	}

	/** Set Category Calc.
		@param FTA_CategoryCalc_ID Category Calc	  */
	public void setFTA_CategoryCalc_ID (int FTA_CategoryCalc_ID)
	{
		if (FTA_CategoryCalc_ID < 1) 
			set_Value (COLUMNNAME_FTA_CategoryCalc_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_CategoryCalc_ID, Integer.valueOf(FTA_CategoryCalc_ID));
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

	public org.compiere.model.I_M_Attribute getM_Attribute() throws RuntimeException
    {
		return (org.compiere.model.I_M_Attribute)MTable.get(getCtx(), org.compiere.model.I_M_Attribute.Table_Name)
			.getPO(getM_Attribute_ID(), get_TrxName());	}

	/** Set Attribute.
		@param M_Attribute_ID 
		Product Attribute
	  */
	public void setM_Attribute_ID (int M_Attribute_ID)
	{
		if (M_Attribute_ID < 1) 
			set_Value (COLUMNNAME_M_Attribute_ID, null);
		else 
			set_Value (COLUMNNAME_M_Attribute_ID, Integer.valueOf(M_Attribute_ID));
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

	public org.compiere.model.I_M_AttributeSet getM_AttributeSet() throws RuntimeException
    {
		return (org.compiere.model.I_M_AttributeSet)MTable.get(getCtx(), org.compiere.model.I_M_AttributeSet.Table_Name)
			.getPO(getM_AttributeSet_ID(), get_TrxName());	}

	/** Set Attribute Set.
		@param M_AttributeSet_ID 
		Product Attribute Set
	  */
	public void setM_AttributeSet_ID (int M_AttributeSet_ID)
	{
		if (M_AttributeSet_ID < 0) 
			set_Value (COLUMNNAME_M_AttributeSet_ID, null);
		else 
			set_Value (COLUMNNAME_M_AttributeSet_ID, Integer.valueOf(M_AttributeSet_ID));
	}

	/** Get Attribute Set.
		@return Product Attribute Set
	  */
	public int getM_AttributeSet_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_AttributeSet_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Print Text.
		@param PrintName 
		The label text to be printed on a document or correspondence.
	  */
	public void setPrintName (String PrintName)
	{
		set_Value (COLUMNNAME_PrintName, PrintName);
	}

	/** Get Print Text.
		@return The label text to be printed on a document or correspondence.
	  */
	public String getPrintName () 
	{
		return (String)get_Value(COLUMNNAME_PrintName);
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