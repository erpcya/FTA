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

/** Generated Model for I_RecordWeight
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_I_RecordWeight extends PO implements I_I_RecordWeight, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150214L;

    /** Standard Constructor */
    public X_I_RecordWeight (Properties ctx, int I_RecordWeight_ID, String trxName)
    {
      super (ctx, I_RecordWeight_ID, trxName);
      /** if (I_RecordWeight_ID == 0)
        {
			setI_RecordWeight_ID (0);
        } */
    }

    /** Load Constructor */
    public X_I_RecordWeight (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_I_RecordWeight[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** AnalysisType AD_Reference_ID=53539 */
	public static final int ANALYSISTYPE_AD_Reference_ID=53539;
	/** Quality Analysis = QA */
	public static final String ANALYSISTYPE_QualityAnalysis = "QA";
	/** Chute Analysis = CA */
	public static final String ANALYSISTYPE_ChuteAnalysis = "CA";
	/** Set Analysis Type.
		@param AnalysisType Analysis Type	  */
	public void setAnalysisType (String AnalysisType)
	{

		set_Value (COLUMNNAME_AnalysisType, AnalysisType);
	}

	/** Get Analysis Type.
		@return Analysis Type	  */
	public String getAnalysisType () 
	{
		return (String)get_Value(COLUMNNAME_AnalysisType);
	}

	/** Set Business Partner Key.
		@param BPartnerValue 
		Key of the Business Partner
	  */
	public void setBPartnerValue (String BPartnerValue)
	{
		set_Value (COLUMNNAME_BPartnerValue, BPartnerValue);
	}

	/** Get Business Partner Key.
		@return Key of the Business Partner
	  */
	public String getBPartnerValue () 
	{
		return (String)get_Value(COLUMNNAME_BPartnerValue);
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

	public org.compiere.model.I_C_DocType getC_DocTypeMobilizationGuide() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getC_DocTypeMobilizationGuide_ID(), get_TrxName());	}

	/** Set Doc Type Mobilization Guide.
		@param C_DocTypeMobilizationGuide_ID Doc Type Mobilization Guide	  */
	public void setC_DocTypeMobilizationGuide_ID (int C_DocTypeMobilizationGuide_ID)
	{
		if (C_DocTypeMobilizationGuide_ID < 1) 
			set_Value (COLUMNNAME_C_DocTypeMobilizationGuide_ID, null);
		else 
			set_Value (COLUMNNAME_C_DocTypeMobilizationGuide_ID, Integer.valueOf(C_DocTypeMobilizationGuide_ID));
	}

	/** Get Doc Type Mobilization Guide.
		@return Doc Type Mobilization Guide	  */
	public int getC_DocTypeMobilizationGuide_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocTypeMobilizationGuide_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Chute Name.
		@param ChuteName Chute Name	  */
	public void setChuteName (String ChuteName)
	{
		set_Value (COLUMNNAME_ChuteName, ChuteName);
	}

	/** Get Chute Name.
		@return Chute Name	  */
	public String getChuteName () 
	{
		return (String)get_Value(COLUMNNAME_ChuteName);
	}

	/** Set Col_0.
		@param Col_0 Col_0	  */
	public void setCol_0 (String Col_0)
	{
		set_Value (COLUMNNAME_Col_0, Col_0);
	}

	/** Get Col_0.
		@return Col_0	  */
	public String getCol_0 () 
	{
		return (String)get_Value(COLUMNNAME_Col_0);
	}

	/** Set Col_1.
		@param Col_1 Col_1	  */
	public void setCol_1 (String Col_1)
	{
		set_Value (COLUMNNAME_Col_1, Col_1);
	}

	/** Get Col_1.
		@return Col_1	  */
	public String getCol_1 () 
	{
		return (String)get_Value(COLUMNNAME_Col_1);
	}

	/** Set Col_2.
		@param Col_2 Col_2	  */
	public void setCol_2 (String Col_2)
	{
		set_Value (COLUMNNAME_Col_2, Col_2);
	}

	/** Get Col_2.
		@return Col_2	  */
	public String getCol_2 () 
	{
		return (String)get_Value(COLUMNNAME_Col_2);
	}

	/** Set Col_3.
		@param Col_3 Col_3	  */
	public void setCol_3 (String Col_3)
	{
		set_Value (COLUMNNAME_Col_3, Col_3);
	}

	/** Get Col_3.
		@return Col_3	  */
	public String getCol_3 () 
	{
		return (String)get_Value(COLUMNNAME_Col_3);
	}

	/** Set Col_4.
		@param Col_4 Col_4	  */
	public void setCol_4 (String Col_4)
	{
		set_Value (COLUMNNAME_Col_4, Col_4);
	}

	/** Get Col_4.
		@return Col_4	  */
	public String getCol_4 () 
	{
		return (String)get_Value(COLUMNNAME_Col_4);
	}

	/** Set Col_5.
		@param Col_5 Col_5	  */
	public void setCol_5 (String Col_5)
	{
		set_Value (COLUMNNAME_Col_5, Col_5);
	}

	/** Get Col_5.
		@return Col_5	  */
	public String getCol_5 () 
	{
		return (String)get_Value(COLUMNNAME_Col_5);
	}

	/** Set Col_6.
		@param Col_6 Col_6	  */
	public void setCol_6 (String Col_6)
	{
		set_Value (COLUMNNAME_Col_6, Col_6);
	}

	/** Get Col_6.
		@return Col_6	  */
	public String getCol_6 () 
	{
		return (String)get_Value(COLUMNNAME_Col_6);
	}

	/** Set Col_7.
		@param Col_7 Col_7	  */
	public void setCol_7 (String Col_7)
	{
		set_Value (COLUMNNAME_Col_7, Col_7);
	}

	/** Get Col_7.
		@return Col_7	  */
	public String getCol_7 () 
	{
		return (String)get_Value(COLUMNNAME_Col_7);
	}

	/** Set Col_8.
		@param Col_8 Col_8	  */
	public void setCol_8 (String Col_8)
	{
		set_Value (COLUMNNAME_Col_8, Col_8);
	}

	/** Get Col_8.
		@return Col_8	  */
	public String getCol_8 () 
	{
		return (String)get_Value(COLUMNNAME_Col_8);
	}

	/** Set Col_9.
		@param Col_9 Col_9	  */
	public void setCol_9 (String Col_9)
	{
		set_Value (COLUMNNAME_Col_9, Col_9);
	}

	/** Get Col_9.
		@return Col_9	  */
	public String getCol_9 () 
	{
		return (String)get_Value(COLUMNNAME_Col_9);
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

	public org.compiere.model.I_C_OrderLine getC_OrderLine() throws RuntimeException
    {
		return (org.compiere.model.I_C_OrderLine)MTable.get(getCtx(), org.compiere.model.I_C_OrderLine.Table_Name)
			.getPO(getC_OrderLine_ID(), get_TrxName());	}

	/** Set Sales Order Line.
		@param C_OrderLine_ID 
		Sales Order Line
	  */
	public void setC_OrderLine_ID (int C_OrderLine_ID)
	{
		if (C_OrderLine_ID < 1) 
			set_Value (COLUMNNAME_C_OrderLine_ID, null);
		else 
			set_Value (COLUMNNAME_C_OrderLine_ID, Integer.valueOf(C_OrderLine_ID));
	}

	/** Get Sales Order Line.
		@return Sales Order Line
	  */
	public int getC_OrderLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_OrderLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_UOM getC_UOM() throws RuntimeException
    {
		return (org.compiere.model.I_C_UOM)MTable.get(getCtx(), org.compiere.model.I_C_UOM.Table_Name)
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

	/** Set Document Type Name Mobilization Guide.
		@param DocTypeNameMobilizationGuide Document Type Name Mobilization Guide	  */
	public void setDocTypeNameMobilizationGuide (String DocTypeNameMobilizationGuide)
	{
		set_Value (COLUMNNAME_DocTypeNameMobilizationGuide, DocTypeNameMobilizationGuide);
	}

	/** Get Document Type Name Mobilization Guide.
		@return Document Type Name Mobilization Guide	  */
	public String getDocTypeNameMobilizationGuide () 
	{
		return (String)get_Value(COLUMNNAME_DocTypeNameMobilizationGuide);
	}

	/** Set Driver Name.
		@param DriverName Driver Name	  */
	public void setDriverName (String DriverName)
	{
		set_Value (COLUMNNAME_DriverName, DriverName);
	}

	/** Get Driver Name.
		@return Driver Name	  */
	public String getDriverName () 
	{
		return (String)get_Value(COLUMNNAME_DriverName);
	}

	/** Set Driver Value.
		@param DriverValue Driver Value	  */
	public void setDriverValue (String DriverValue)
	{
		set_Value (COLUMNNAME_DriverValue, DriverValue);
	}

	/** Get Driver Value.
		@return Driver Value	  */
	public String getDriverValue () 
	{
		return (String)get_Value(COLUMNNAME_DriverValue);
	}

	public org.compiere.model.I_C_DocType getEntry_Doc_Type() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getEntry_Doc_Type_ID(), get_TrxName());	}

	/** Set Entry Ticket Document Type.
		@param Entry_Doc_Type_ID 
		Entry Ticket Document Type
	  */
	public void setEntry_Doc_Type_ID (int Entry_Doc_Type_ID)
	{
		if (Entry_Doc_Type_ID < 1) 
			set_Value (COLUMNNAME_Entry_Doc_Type_ID, null);
		else 
			set_Value (COLUMNNAME_Entry_Doc_Type_ID, Integer.valueOf(Entry_Doc_Type_ID));
	}

	/** Get Entry Ticket Document Type.
		@return Entry Ticket Document Type
	  */
	public int getEntry_Doc_Type_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Entry_Doc_Type_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Entry Ticket Document Type Name.
		@param Entry_Doc_Type_Name 
		Entry Ticket Document Type Name
	  */
	public void setEntry_Doc_Type_Name (String Entry_Doc_Type_Name)
	{
		set_Value (COLUMNNAME_Entry_Doc_Type_Name, Entry_Doc_Type_Name);
	}

	/** Get Entry Ticket Document Type Name.
		@return Entry Ticket Document Type Name
	  */
	public String getEntry_Doc_Type_Name () 
	{
		return (String)get_Value(COLUMNNAME_Entry_Doc_Type_Name);
	}

	/** Set Ext. Guide.
		@param Ext_Guide Ext. Guide	  */
	public void setExt_Guide (String Ext_Guide)
	{
		set_Value (COLUMNNAME_Ext_Guide, Ext_Guide);
	}

	/** Get Ext. Guide.
		@return Ext. Guide	  */
	public String getExt_Guide () 
	{
		return (String)get_Value(COLUMNNAME_Ext_Guide);
	}

	public org.spin.model.I_FTA_Chute getFTA_Chute() throws RuntimeException
    {
		return (org.spin.model.I_FTA_Chute)MTable.get(getCtx(), org.spin.model.I_FTA_Chute.Table_Name)
			.getPO(getFTA_Chute_ID(), get_TrxName());	}

	/** Set Chute.
		@param FTA_Chute_ID Chute	  */
	public void setFTA_Chute_ID (int FTA_Chute_ID)
	{
		if (FTA_Chute_ID < 1) 
			set_Value (COLUMNNAME_FTA_Chute_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_Chute_ID, Integer.valueOf(FTA_Chute_ID));
	}

	/** Get Chute.
		@return Chute	  */
	public int getFTA_Chute_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Chute_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_Driver getFTA_Driver() throws RuntimeException
    {
		return (org.spin.model.I_FTA_Driver)MTable.get(getCtx(), org.spin.model.I_FTA_Driver.Table_Name)
			.getPO(getFTA_Driver_ID(), get_TrxName());	}

	/** Set Driver.
		@param FTA_Driver_ID Driver	  */
	public void setFTA_Driver_ID (int FTA_Driver_ID)
	{
		if (FTA_Driver_ID < 1) 
			set_Value (COLUMNNAME_FTA_Driver_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_Driver_ID, Integer.valueOf(FTA_Driver_ID));
	}

	/** Get Driver.
		@return Driver	  */
	public int getFTA_Driver_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Driver_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_EntryTicket getFTA_EntryTicket() throws RuntimeException
    {
		return (org.spin.model.I_FTA_EntryTicket)MTable.get(getCtx(), org.spin.model.I_FTA_EntryTicket.Table_Name)
			.getPO(getFTA_EntryTicket_ID(), get_TrxName());	}

	/** Set Entry Ticket.
		@param FTA_EntryTicket_ID Entry Ticket	  */
	public void setFTA_EntryTicket_ID (int FTA_EntryTicket_ID)
	{
		if (FTA_EntryTicket_ID < 1) 
			set_Value (COLUMNNAME_FTA_EntryTicket_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_EntryTicket_ID, Integer.valueOf(FTA_EntryTicket_ID));
	}

	/** Get Entry Ticket.
		@return Entry Ticket	  */
	public int getFTA_EntryTicket_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_EntryTicket_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_LoadOrder getFTA_LoadOrder() throws RuntimeException
    {
		return (org.spin.model.I_FTA_LoadOrder)MTable.get(getCtx(), org.spin.model.I_FTA_LoadOrder.Table_Name)
			.getPO(getFTA_LoadOrder_ID(), get_TrxName());	}

	/** Set Load Order.
		@param FTA_LoadOrder_ID Load Order	  */
	public void setFTA_LoadOrder_ID (int FTA_LoadOrder_ID)
	{
		if (FTA_LoadOrder_ID < 1) 
			set_Value (COLUMNNAME_FTA_LoadOrder_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_LoadOrder_ID, Integer.valueOf(FTA_LoadOrder_ID));
	}

	/** Get Load Order.
		@return Load Order	  */
	public int getFTA_LoadOrder_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_LoadOrder_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_LoadOrderLine getFTA_LoadOrderLine() throws RuntimeException
    {
		return (org.spin.model.I_FTA_LoadOrderLine)MTable.get(getCtx(), org.spin.model.I_FTA_LoadOrderLine.Table_Name)
			.getPO(getFTA_LoadOrderLine_ID(), get_TrxName());	}

	/** Set Load Order Line.
		@param FTA_LoadOrderLine_ID Load Order Line	  */
	public void setFTA_LoadOrderLine_ID (int FTA_LoadOrderLine_ID)
	{
		if (FTA_LoadOrderLine_ID < 1) 
			set_Value (COLUMNNAME_FTA_LoadOrderLine_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_LoadOrderLine_ID, Integer.valueOf(FTA_LoadOrderLine_ID));
	}

	/** Get Load Order Line.
		@return Load Order Line	  */
	public int getFTA_LoadOrderLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_LoadOrderLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_MobilizationGuide getFTA_MobilizationGuide() throws RuntimeException
    {
		return (org.spin.model.I_FTA_MobilizationGuide)MTable.get(getCtx(), org.spin.model.I_FTA_MobilizationGuide.Table_Name)
			.getPO(getFTA_MobilizationGuide_ID(), get_TrxName());	}

	/** Set Mobilization Guide.
		@param FTA_MobilizationGuide_ID Mobilization Guide	  */
	public void setFTA_MobilizationGuide_ID (int FTA_MobilizationGuide_ID)
	{
		if (FTA_MobilizationGuide_ID < 1) 
			set_Value (COLUMNNAME_FTA_MobilizationGuide_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_MobilizationGuide_ID, Integer.valueOf(FTA_MobilizationGuide_ID));
	}

	/** Get Mobilization Guide.
		@return Mobilization Guide	  */
	public int getFTA_MobilizationGuide_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_MobilizationGuide_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_QualityAnalysis getFTA_QualityAnalysis() throws RuntimeException
    {
		return (org.spin.model.I_FTA_QualityAnalysis)MTable.get(getCtx(), org.spin.model.I_FTA_QualityAnalysis.Table_Name)
			.getPO(getFTA_QualityAnalysis_ID(), get_TrxName());	}

	/** Set Quality Analysis.
		@param FTA_QualityAnalysis_ID Quality Analysis	  */
	public void setFTA_QualityAnalysis_ID (int FTA_QualityAnalysis_ID)
	{
		if (FTA_QualityAnalysis_ID < 1) 
			set_Value (COLUMNNAME_FTA_QualityAnalysis_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_QualityAnalysis_ID, Integer.valueOf(FTA_QualityAnalysis_ID));
	}

	/** Get Quality Analysis.
		@return Quality Analysis	  */
	public int getFTA_QualityAnalysis_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_QualityAnalysis_ID);
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

	public org.spin.model.I_FTA_Vehicle getFTA_Vehicle() throws RuntimeException
    {
		return (org.spin.model.I_FTA_Vehicle)MTable.get(getCtx(), org.spin.model.I_FTA_Vehicle.Table_Name)
			.getPO(getFTA_Vehicle_ID(), get_TrxName());	}

	/** Set Vehicle.
		@param FTA_Vehicle_ID Vehicle	  */
	public void setFTA_Vehicle_ID (int FTA_Vehicle_ID)
	{
		if (FTA_Vehicle_ID < 1) 
			set_Value (COLUMNNAME_FTA_Vehicle_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_Vehicle_ID, Integer.valueOf(FTA_Vehicle_ID));
	}

	/** Get Vehicle.
		@return Vehicle	  */
	public int getFTA_Vehicle_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_Vehicle_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_VehicleType getFTA_VehicleType() throws RuntimeException
    {
		return (org.spin.model.I_FTA_VehicleType)MTable.get(getCtx(), org.spin.model.I_FTA_VehicleType.Table_Name)
			.getPO(getFTA_VehicleType_ID(), get_TrxName());	}

	/** Set Vehicle Type.
		@param FTA_VehicleType_ID Vehicle Type	  */
	public void setFTA_VehicleType_ID (int FTA_VehicleType_ID)
	{
		if (FTA_VehicleType_ID < 1) 
			set_Value (COLUMNNAME_FTA_VehicleType_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_VehicleType_ID, Integer.valueOf(FTA_VehicleType_ID));
	}

	/** Get Vehicle Type.
		@return Vehicle Type	  */
	public int getFTA_VehicleType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_VehicleType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Gross Weight.
		@param GrossWeight Gross Weight	  */
	public void setGrossWeight (BigDecimal GrossWeight)
	{
		set_Value (COLUMNNAME_GrossWeight, GrossWeight);
	}

	/** Get Gross Weight.
		@return Gross Weight	  */
	public BigDecimal getGrossWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrossWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Mobilization Guide Document No.
		@param GuideDocumentNo 
		Mobilization Guide Document No
	  */
	public void setGuideDocumentNo (String GuideDocumentNo)
	{
		set_Value (COLUMNNAME_GuideDocumentNo, GuideDocumentNo);
	}

	/** Get Mobilization Guide Document No.
		@return Mobilization Guide Document No
	  */
	public String getGuideDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_GuideDocumentNo);
	}

	/** Set Import Error Message.
		@param I_ErrorMsg 
		Messages generated from import process
	  */
	public void setI_ErrorMsg (String I_ErrorMsg)
	{
		set_Value (COLUMNNAME_I_ErrorMsg, I_ErrorMsg);
	}

	/** Get Import Error Message.
		@return Messages generated from import process
	  */
	public String getI_ErrorMsg () 
	{
		return (String)get_Value(COLUMNNAME_I_ErrorMsg);
	}

	/** Set Imported.
		@param I_IsImported 
		Has this import been processed
	  */
	public void setI_IsImported (boolean I_IsImported)
	{
		set_Value (COLUMNNAME_I_IsImported, Boolean.valueOf(I_IsImported));
	}

	/** Get Imported.
		@return Has this import been processed
	  */
	public boolean isI_IsImported () 
	{
		Object oo = get_Value(COLUMNNAME_I_IsImported);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Import Weight.
		@param ImportWeight Import Weight	  */
	public void setImportWeight (BigDecimal ImportWeight)
	{
		set_Value (COLUMNNAME_ImportWeight, ImportWeight);
	}

	/** Get Import Weight.
		@return Import Weight	  */
	public BigDecimal getImportWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ImportWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set In Date.
		@param InDate In Date	  */
	public void setInDate (Timestamp InDate)
	{
		set_Value (COLUMNNAME_InDate, InDate);
	}

	/** Get In Date.
		@return In Date	  */
	public Timestamp getInDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_InDate);
	}

	/** Set Import Record Weight ID.
		@param I_RecordWeight_ID Import Record Weight ID	  */
	public void setI_RecordWeight_ID (int I_RecordWeight_ID)
	{
		if (I_RecordWeight_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_I_RecordWeight_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_I_RecordWeight_ID, Integer.valueOf(I_RecordWeight_ID));
	}

	/** Get Import Record Weight ID.
		@return Import Record Weight ID	  */
	public int getI_RecordWeight_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_I_RecordWeight_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getI_RecordWeight_ID()));
    }

	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx)
	{
		set_Value (COLUMNNAME_IsSOTrx, Boolean.valueOf(IsSOTrx));
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public boolean isSOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_IsSOTrx);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Load Capacity.
		@param LoadCapacity Load Capacity	  */
	public void setLoadCapacity (BigDecimal LoadCapacity)
	{
		set_Value (COLUMNNAME_LoadCapacity, LoadCapacity);
	}

	/** Get Load Capacity.
		@return Load Capacity	  */
	public BigDecimal getLoadCapacity () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LoadCapacity);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.compiere.model.I_C_DocType getLO_Doc_Type() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getLO_Doc_Type_ID(), get_TrxName());	}

	/** Set Load Order Document Type.
		@param LO_Doc_Type_ID Load Order Document Type	  */
	public void setLO_Doc_Type_ID (int LO_Doc_Type_ID)
	{
		if (LO_Doc_Type_ID < 1) 
			set_Value (COLUMNNAME_LO_Doc_Type_ID, null);
		else 
			set_Value (COLUMNNAME_LO_Doc_Type_ID, Integer.valueOf(LO_Doc_Type_ID));
	}

	/** Get Load Order Document Type.
		@return Load Order Document Type	  */
	public int getLO_Doc_Type_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LO_Doc_Type_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Load Order Document Type Name.
		@param LO_Doc_Type_Name Load Order Document Type Name	  */
	public void setLO_Doc_Type_Name (String LO_Doc_Type_Name)
	{
		set_Value (COLUMNNAME_LO_Doc_Type_Name, LO_Doc_Type_Name);
	}

	/** Get Load Order Document Type Name.
		@return Load Order Document Type Name	  */
	public String getLO_Doc_Type_Name () 
	{
		return (String)get_Value(COLUMNNAME_LO_Doc_Type_Name);
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

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_Name)
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

	public org.compiere.model.I_M_Shipper getM_Shipper() throws RuntimeException
    {
		return (org.compiere.model.I_M_Shipper)MTable.get(getCtx(), org.compiere.model.I_M_Shipper.Table_Name)
			.getPO(getM_Shipper_ID(), get_TrxName());	}

	/** Set Shipper.
		@param M_Shipper_ID 
		Method or manner of product delivery
	  */
	public void setM_Shipper_ID (int M_Shipper_ID)
	{
		if (M_Shipper_ID < 1) 
			set_Value (COLUMNNAME_M_Shipper_ID, null);
		else 
			set_Value (COLUMNNAME_M_Shipper_ID, Integer.valueOf(M_Shipper_ID));
	}

	/** Get Shipper.
		@return Method or manner of product delivery
	  */
	public int getM_Shipper_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Shipper_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** OperationType AD_Reference_ID=53597 */
	public static final int OPERATIONTYPE_AD_Reference_ID=53597;
	/** Raw Material Receipt = RMR */
	public static final String OPERATIONTYPE_RawMaterialReceipt = "RMR";
	/** Product Bulk Receipt = PBR */
	public static final String OPERATIONTYPE_ProductBulkReceipt = "PBR";
	/** Receipt More than one Product = RMP */
	public static final String OPERATIONTYPE_ReceiptMoreThanOneProduct = "RMP";
	/** Material Input Movement = MIM */
	public static final String OPERATIONTYPE_MaterialInputMovement = "MIM";
	/** Delivery Bulk Material = DBM */
	public static final String OPERATIONTYPE_DeliveryBulkMaterial = "DBM";
	/** Delivery Finished Product = DFP */
	public static final String OPERATIONTYPE_DeliveryFinishedProduct = "DFP";
	/** Material Output Movement = MOM */
	public static final String OPERATIONTYPE_MaterialOutputMovement = "MOM";
	/** Other Record Weight = ORW */
	public static final String OPERATIONTYPE_OtherRecordWeight = "ORW";
	/** Set Operation Type.
		@param OperationType Operation Type	  */
	public void setOperationType (String OperationType)
	{

		set_Value (COLUMNNAME_OperationType, OperationType);
	}

	/** Get Operation Type.
		@return Operation Type	  */
	public String getOperationType () 
	{
		return (String)get_Value(COLUMNNAME_OperationType);
	}

	public org.compiere.model.I_C_DocType getOrder_Doc_Type() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getOrder_Doc_Type_ID(), get_TrxName());	}

	/** Set Order Document Type.
		@param Order_Doc_Type_ID Order Document Type	  */
	public void setOrder_Doc_Type_ID (int Order_Doc_Type_ID)
	{
		if (Order_Doc_Type_ID < 1) 
			set_Value (COLUMNNAME_Order_Doc_Type_ID, null);
		else 
			set_Value (COLUMNNAME_Order_Doc_Type_ID, Integer.valueOf(Order_Doc_Type_ID));
	}

	/** Get Order Document Type.
		@return Order Document Type	  */
	public int getOrder_Doc_Type_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Order_Doc_Type_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Order Document Type Name.
		@param Order_Doc_Type_Name Order Document Type Name	  */
	public void setOrder_Doc_Type_Name (String Order_Doc_Type_Name)
	{
		set_Value (COLUMNNAME_Order_Doc_Type_Name, Order_Doc_Type_Name);
	}

	/** Get Order Document Type Name.
		@return Order Document Type Name	  */
	public String getOrder_Doc_Type_Name () 
	{
		return (String)get_Value(COLUMNNAME_Order_Doc_Type_Name);
	}

	/** Set Sales/Purchase Order Document Number.
		@param OrderDocumentNo Sales/Purchase Order Document Number	  */
	public void setOrderDocumentNo (String OrderDocumentNo)
	{
		set_Value (COLUMNNAME_OrderDocumentNo, OrderDocumentNo);
	}

	/** Get Sales/Purchase Order Document Number.
		@return Sales/Purchase Order Document Number	  */
	public String getOrderDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_OrderDocumentNo);
	}

	/** Set Org Key.
		@param OrgValue 
		Key of the Organization
	  */
	public void setOrgValue (String OrgValue)
	{
		set_Value (COLUMNNAME_OrgValue, OrgValue);
	}

	/** Get Org Key.
		@return Key of the Organization
	  */
	public String getOrgValue () 
	{
		return (String)get_Value(COLUMNNAME_OrgValue);
	}

	/** Set Out Date.
		@param OutDate Out Date	  */
	public void setOutDate (Timestamp OutDate)
	{
		set_Value (COLUMNNAME_OutDate, OutDate);
	}

	/** Get Out Date.
		@return Out Date	  */
	public Timestamp getOutDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_OutDate);
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

	/** ProductStatus AD_Reference_ID=53528 */
	public static final int PRODUCTSTATUS_AD_Reference_ID=53528;
	/** Accepted = A */
	public static final String PRODUCTSTATUS_Accepted = "A";
	/** Rejected = R */
	public static final String PRODUCTSTATUS_Rejected = "R";
	/** ReGuided = G */
	public static final String PRODUCTSTATUS_ReGuided = "G";
	/** Set Product Status.
		@param ProductStatus Product Status	  */
	public void setProductStatus (String ProductStatus)
	{

		set_Value (COLUMNNAME_ProductStatus, ProductStatus);
	}

	/** Get Product Status.
		@return Product Status	  */
	public String getProductStatus () 
	{
		return (String)get_Value(COLUMNNAME_ProductStatus);
	}

	/** Set Product Key.
		@param ProductValue 
		Key of the Product
	  */
	public void setProductValue (String ProductValue)
	{
		set_Value (COLUMNNAME_ProductValue, ProductValue);
	}

	/** Get Product Key.
		@return Key of the Product
	  */
	public String getProductValue () 
	{
		return (String)get_Value(COLUMNNAME_ProductValue);
	}

	public org.compiere.model.I_C_DocType getQA_Doc_Type() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getQA_Doc_Type_ID(), get_TrxName());	}

	/** Set Quality Analysis Document Type.
		@param QA_Doc_Type_ID 
		Quality Analysis Document Type
	  */
	public void setQA_Doc_Type_ID (int QA_Doc_Type_ID)
	{
		if (QA_Doc_Type_ID < 1) 
			set_Value (COLUMNNAME_QA_Doc_Type_ID, null);
		else 
			set_Value (COLUMNNAME_QA_Doc_Type_ID, Integer.valueOf(QA_Doc_Type_ID));
	}

	/** Get Quality Analysis Document Type.
		@return Quality Analysis Document Type
	  */
	public int getQA_Doc_Type_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_QA_Doc_Type_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Quality Analysis Document Type Name.
		@param QA_Doc_Type_Name 
		Quality Analysis Document Type Name
	  */
	public void setQA_Doc_Type_Name (String QA_Doc_Type_Name)
	{
		set_Value (COLUMNNAME_QA_Doc_Type_Name, QA_Doc_Type_Name);
	}

	/** Get Quality Analysis Document Type Name.
		@return Quality Analysis Document Type Name
	  */
	public String getQA_Doc_Type_Name () 
	{
		return (String)get_Value(COLUMNNAME_QA_Doc_Type_Name);
	}

	/** Set Quality Analysis Document Number.
		@param QA_DocumentNo Quality Analysis Document Number	  */
	public void setQA_DocumentNo (String QA_DocumentNo)
	{
		set_Value (COLUMNNAME_QA_DocumentNo, QA_DocumentNo);
	}

	/** Get Quality Analysis Document Number.
		@return Quality Analysis Document Number	  */
	public String getQA_DocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_QA_DocumentNo);
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

	/** Set Reference No.
		@param ReferenceNo 
		Your customer or vendor number at the Business Partner's site
	  */
	public void setReferenceNo (String ReferenceNo)
	{
		set_Value (COLUMNNAME_ReferenceNo, ReferenceNo);
	}

	/** Get Reference No.
		@return Your customer or vendor number at the Business Partner's site
	  */
	public String getReferenceNo () 
	{
		return (String)get_Value(COLUMNNAME_ReferenceNo);
	}

	public org.compiere.model.I_C_DocType getRW_Doc_Type() throws RuntimeException
    {
		return (org.compiere.model.I_C_DocType)MTable.get(getCtx(), org.compiere.model.I_C_DocType.Table_Name)
			.getPO(getRW_Doc_Type_ID(), get_TrxName());	}

	/** Set Record Weight Document Type.
		@param RW_Doc_Type_ID Record Weight Document Type	  */
	public void setRW_Doc_Type_ID (int RW_Doc_Type_ID)
	{
		if (RW_Doc_Type_ID < 1) 
			set_Value (COLUMNNAME_RW_Doc_Type_ID, null);
		else 
			set_Value (COLUMNNAME_RW_Doc_Type_ID, Integer.valueOf(RW_Doc_Type_ID));
	}

	/** Get Record Weight Document Type.
		@return Record Weight Document Type	  */
	public int getRW_Doc_Type_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_RW_Doc_Type_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Record Weight Document Name.
		@param RW_Doc_Type_Name Record Weight Document Name	  */
	public void setRW_Doc_Type_Name (String RW_Doc_Type_Name)
	{
		set_Value (COLUMNNAME_RW_Doc_Type_Name, RW_Doc_Type_Name);
	}

	/** Get Record Weight Document Name.
		@return Record Weight Document Name	  */
	public String getRW_Doc_Type_Name () 
	{
		return (String)get_Value(COLUMNNAME_RW_Doc_Type_Name);
	}

	/** Set Record Weight Document Number.
		@param RW_DocumentNo Record Weight Document Number	  */
	public void setRW_DocumentNo (String RW_DocumentNo)
	{
		set_Value (COLUMNNAME_RW_DocumentNo, RW_DocumentNo);
	}

	/** Get Record Weight Document Number.
		@return Record Weight Document Number	  */
	public String getRW_DocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_RW_DocumentNo);
	}

	/** Set ShipperName.
		@param ShipperName ShipperName	  */
	public void setShipperName (String ShipperName)
	{
		set_Value (COLUMNNAME_ShipperName, ShipperName);
	}

	/** Get ShipperName.
		@return ShipperName	  */
	public String getShipperName () 
	{
		return (String)get_Value(COLUMNNAME_ShipperName);
	}

	/** Set Tare Weight.
		@param TareWeight Tare Weight	  */
	public void setTareWeight (BigDecimal TareWeight)
	{
		set_Value (COLUMNNAME_TareWeight, TareWeight);
	}

	/** Get Tare Weight.
		@return Tare Weight	  */
	public BigDecimal getTareWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TareWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Trailer Plate.
		@param TrailerPlate Trailer Plate	  */
	public void setTrailerPlate (String TrailerPlate)
	{
		set_Value (COLUMNNAME_TrailerPlate, TrailerPlate);
	}

	/** Get Trailer Plate.
		@return Trailer Plate	  */
	public String getTrailerPlate () 
	{
		return (String)get_Value(COLUMNNAME_TrailerPlate);
	}

	/** Set Val_0.
		@param Val_0 Val_0	  */
	public void setVal_0 (String Val_0)
	{
		set_Value (COLUMNNAME_Val_0, Val_0);
	}

	/** Get Val_0.
		@return Val_0	  */
	public String getVal_0 () 
	{
		return (String)get_Value(COLUMNNAME_Val_0);
	}

	/** Set Val_1.
		@param Val_1 Val_1	  */
	public void setVal_1 (String Val_1)
	{
		set_Value (COLUMNNAME_Val_1, Val_1);
	}

	/** Get Val_1.
		@return Val_1	  */
	public String getVal_1 () 
	{
		return (String)get_Value(COLUMNNAME_Val_1);
	}

	/** Set Val_2.
		@param Val_2 Val_2	  */
	public void setVal_2 (String Val_2)
	{
		set_Value (COLUMNNAME_Val_2, Val_2);
	}

	/** Get Val_2.
		@return Val_2	  */
	public String getVal_2 () 
	{
		return (String)get_Value(COLUMNNAME_Val_2);
	}

	/** Set Val_3.
		@param Val_3 Val_3	  */
	public void setVal_3 (String Val_3)
	{
		set_Value (COLUMNNAME_Val_3, Val_3);
	}

	/** Get Val_3.
		@return Val_3	  */
	public String getVal_3 () 
	{
		return (String)get_Value(COLUMNNAME_Val_3);
	}

	/** Set Val_4.
		@param Val_4 Val_4	  */
	public void setVal_4 (String Val_4)
	{
		set_Value (COLUMNNAME_Val_4, Val_4);
	}

	/** Get Val_4.
		@return Val_4	  */
	public String getVal_4 () 
	{
		return (String)get_Value(COLUMNNAME_Val_4);
	}

	/** Set Val_5.
		@param Val_5 Val_5	  */
	public void setVal_5 (String Val_5)
	{
		set_Value (COLUMNNAME_Val_5, Val_5);
	}

	/** Get Val_5.
		@return Val_5	  */
	public String getVal_5 () 
	{
		return (String)get_Value(COLUMNNAME_Val_5);
	}

	/** Set Val_6.
		@param Val_6 Val_6	  */
	public void setVal_6 (String Val_6)
	{
		set_Value (COLUMNNAME_Val_6, Val_6);
	}

	/** Get Val_6.
		@return Val_6	  */
	public String getVal_6 () 
	{
		return (String)get_Value(COLUMNNAME_Val_6);
	}

	/** Set Val_7.
		@param Val_7 Val_7	  */
	public void setVal_7 (String Val_7)
	{
		set_Value (COLUMNNAME_Val_7, Val_7);
	}

	/** Get Val_7.
		@return Val_7	  */
	public String getVal_7 () 
	{
		return (String)get_Value(COLUMNNAME_Val_7);
	}

	/** Set Val_8.
		@param Val_8 Val_8	  */
	public void setVal_8 (String Val_8)
	{
		set_Value (COLUMNNAME_Val_8, Val_8);
	}

	/** Get Val_8.
		@return Val_8	  */
	public String getVal_8 () 
	{
		return (String)get_Value(COLUMNNAME_Val_8);
	}

	/** Set Val_9.
		@param Val_9 Val_9	  */
	public void setVal_9 (String Val_9)
	{
		set_Value (COLUMNNAME_Val_9, Val_9);
	}

	/** Get Val_9.
		@return Val_9	  */
	public String getVal_9 () 
	{
		return (String)get_Value(COLUMNNAME_Val_9);
	}

	/** Set Vehicle Name.
		@param VehicleName 
		Vehicle Name
	  */
	public void setVehicleName (String VehicleName)
	{
		set_Value (COLUMNNAME_VehicleName, VehicleName);
	}

	/** Get Vehicle Name.
		@return Vehicle Name
	  */
	public String getVehicleName () 
	{
		return (String)get_Value(COLUMNNAME_VehicleName);
	}

	/** Set Vehicle Plate.
		@param VehiclePlate 
		Vehicle Plate or Identifier
	  */
	public void setVehiclePlate (String VehiclePlate)
	{
		set_Value (COLUMNNAME_VehiclePlate, VehiclePlate);
	}

	/** Get Vehicle Plate.
		@return Vehicle Plate or Identifier
	  */
	public String getVehiclePlate () 
	{
		return (String)get_Value(COLUMNNAME_VehiclePlate);
	}

	/** Set Vehicle Type.
		@param VehicleType Vehicle Type	  */
	public void setVehicleType (String VehicleType)
	{
		set_Value (COLUMNNAME_VehicleType, VehicleType);
	}

	/** Get Vehicle Type.
		@return Vehicle Type	  */
	public String getVehicleType () 
	{
		return (String)get_Value(COLUMNNAME_VehicleType);
	}

	/** WeightStatus AD_Reference_ID=53529 */
	public static final int WEIGHTSTATUS_AD_Reference_ID=53529;
	/** Waiting For Tare Weight = T */
	public static final String WEIGHTSTATUS_WaitingForTareWeight = "T";
	/** Waiting For Gross Weight = G */
	public static final String WEIGHTSTATUS_WaitingForGrossWeight = "G";
	/** Completed = C */
	public static final String WEIGHTSTATUS_Completed = "C";
	/** Set Weight Status.
		@param WeightStatus Weight Status	  */
	public void setWeightStatus (String WeightStatus)
	{

		set_Value (COLUMNNAME_WeightStatus, WeightStatus);
	}

	/** Get Weight Status.
		@return Weight Status	  */
	public String getWeightStatus () 
	{
		return (String)get_Value(COLUMNNAME_WeightStatus);
	}

	/** Set UOM Code.
		@param X12DE355 
		UOM EDI X12 Code
	  */
	public void setX12DE355 (String X12DE355)
	{
		set_Value (COLUMNNAME_X12DE355, X12DE355);
	}

	/** Get UOM Code.
		@return UOM EDI X12 Code
	  */
	public String getX12DE355 () 
	{
		return (String)get_Value(COLUMNNAME_X12DE355);
	}
}