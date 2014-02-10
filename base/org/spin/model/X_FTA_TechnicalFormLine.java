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

/** Generated Model for FTA_TechnicalFormLine
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_TechnicalFormLine extends PO implements I_FTA_TechnicalFormLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140209L;

    /** Standard Constructor */
    public X_FTA_TechnicalFormLine (Properties ctx, int FTA_TechnicalFormLine_ID, String trxName)
    {
      super (ctx, FTA_TechnicalFormLine_ID, trxName);
      /** if (FTA_TechnicalFormLine_ID == 0)
        {
			setFTA_FarmDivision_ID (0);
			setFTA_Farm_ID (0);
// @FTA_Farm_ID@
			setFTA_Farming_ID (0);
			setFTA_FarmingStage_ID (0);
			setFTA_ObservationType_ID (0);
			setFTA_TechnicalForm_ID (0);
			setFTA_TechnicalFormLine_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_TechnicalFormLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_TechnicalFormLine[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	public org.spin.model.I_FTA_FarmDivision getFTA_FarmDivision() throws RuntimeException
    {
		return (org.spin.model.I_FTA_FarmDivision)MTable.get(getCtx(), org.spin.model.I_FTA_FarmDivision.Table_Name)
			.getPO(getFTA_FarmDivision_ID(), get_TrxName());	}

	/** Set Farm Division.
		@param FTA_FarmDivision_ID Farm Division	  */
	public void setFTA_FarmDivision_ID (int FTA_FarmDivision_ID)
	{
		if (FTA_FarmDivision_ID < 1) 
			set_Value (COLUMNNAME_FTA_FarmDivision_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_FarmDivision_ID, Integer.valueOf(FTA_FarmDivision_ID));
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

	public org.spin.model.I_FTA_Farm getFTA_Farm() throws RuntimeException
    {
		return (org.spin.model.I_FTA_Farm)MTable.get(getCtx(), org.spin.model.I_FTA_Farm.Table_Name)
			.getPO(getFTA_Farm_ID(), get_TrxName());	}

	/** Set Farm.
		@param FTA_Farm_ID Farm	  */
	public void setFTA_Farm_ID (int FTA_Farm_ID)
	{
		if (FTA_Farm_ID < 1) 
			set_Value (COLUMNNAME_FTA_Farm_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_Farm_ID, Integer.valueOf(FTA_Farm_ID));
	}

	/** Get Farm.
		@return Farm	  */
	public int getFTA_Farm_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Farm_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_Farming getFTA_Farming() throws RuntimeException
    {
		return (org.spin.model.I_FTA_Farming)MTable.get(getCtx(), org.spin.model.I_FTA_Farming.Table_Name)
			.getPO(getFTA_Farming_ID(), get_TrxName());	}

	/** Set Farming.
		@param FTA_Farming_ID Farming	  */
	public void setFTA_Farming_ID (int FTA_Farming_ID)
	{
		if (FTA_Farming_ID < 1) 
			set_Value (COLUMNNAME_FTA_Farming_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_Farming_ID, Integer.valueOf(FTA_Farming_ID));
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getFTA_Farming_ID()));
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

	public org.spin.model.I_FTA_TechnicalForm getFTA_TechnicalForm() throws RuntimeException
    {
		return (org.spin.model.I_FTA_TechnicalForm)MTable.get(getCtx(), org.spin.model.I_FTA_TechnicalForm.Table_Name)
			.getPO(getFTA_TechnicalForm_ID(), get_TrxName());	}

	/** Set Technical Form.
		@param FTA_TechnicalForm_ID Technical Form	  */
	public void setFTA_TechnicalForm_ID (int FTA_TechnicalForm_ID)
	{
		if (FTA_TechnicalForm_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_TechnicalForm_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_TechnicalForm_ID, Integer.valueOf(FTA_TechnicalForm_ID));
	}

	/** Get Technical Form.
		@return Technical Form	  */
	public int getFTA_TechnicalForm_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_TechnicalForm_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Technical Form Line.
		@param FTA_TechnicalFormLine_ID Technical Form Line	  */
	public void setFTA_TechnicalFormLine_ID (int FTA_TechnicalFormLine_ID)
	{
		if (FTA_TechnicalFormLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_TechnicalFormLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_TechnicalFormLine_ID, Integer.valueOf(FTA_TechnicalFormLine_ID));
	}

	/** Get Technical Form Line.
		@return Technical Form Line	  */
	public int getFTA_TechnicalFormLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_TechnicalFormLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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
}