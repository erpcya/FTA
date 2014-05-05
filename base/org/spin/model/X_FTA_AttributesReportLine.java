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

/** Generated Model for FTA_AttributesReportLine
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_FTA_AttributesReportLine extends PO implements I_FTA_AttributesReportLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140505L;

    /** Standard Constructor */
    public X_FTA_AttributesReportLine (Properties ctx, int FTA_AttributesReportLine_ID, String trxName)
    {
      super (ctx, FTA_AttributesReportLine_ID, trxName);
      /** if (FTA_AttributesReportLine_ID == 0)
        {
			setFTA_AttributesReport_ID (0);
			setFTA_AttributesReportLine_ID (0);
			setM_Attribute_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_AttributesReportLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_AttributesReportLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.spin.model.I_FTA_AttributesReport getFTA_AttributesReport() throws RuntimeException
    {
		return (org.spin.model.I_FTA_AttributesReport)MTable.get(getCtx(), org.spin.model.I_FTA_AttributesReport.Table_Name)
			.getPO(getFTA_AttributesReport_ID(), get_TrxName());	}

	/** Set Attributes Report.
		@param FTA_AttributesReport_ID Attributes Report	  */
	public void setFTA_AttributesReport_ID (int FTA_AttributesReport_ID)
	{
		if (FTA_AttributesReport_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_AttributesReport_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_AttributesReport_ID, Integer.valueOf(FTA_AttributesReport_ID));
	}

	/** Get Attributes Report.
		@return Attributes Report	  */
	public int getFTA_AttributesReport_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_AttributesReport_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Attributes.
		@param FTA_AttributesReportLine_ID Attributes	  */
	public void setFTA_AttributesReportLine_ID (int FTA_AttributesReportLine_ID)
	{
		if (FTA_AttributesReportLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_AttributesReportLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_AttributesReportLine_ID, Integer.valueOf(FTA_AttributesReportLine_ID));
	}

	/** Get Attributes.
		@return Attributes	  */
	public int getFTA_AttributesReportLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_AttributesReportLine_ID);
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