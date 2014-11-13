/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.spin.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.ImportValidator;
import org.adempiere.process.ImportProcess;
import org.compiere.model.MAttribute;
import org.compiere.model.MAttributeInstance;
import org.compiere.model.MAttributeSetInstance;
import org.compiere.model.MAttributeValue;
import org.compiere.model.MClientInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.model.MUOMConversion;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.Query;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.spin.model.MFTADriver;
import org.spin.model.MFTAEntryTicket;
import org.spin.model.MFTALoadOrder;
import org.spin.model.MFTALoadOrderLine;
import org.spin.model.MFTAMobilizationGuide;
import org.spin.model.MFTAQualityAnalysis;
import org.spin.model.MFTARecordWeight;
import org.spin.model.MFTAVehicle;
import org.spin.model.MFTAVehicleType;
import org.spin.model.X_I_RecordWeight;

/**
 *	Import Record Weight from I_RecordWeight
 *
 * 	@author 	Carlos Parada
 * 	@version 	$Id: ImportRecordWeight.java,v 1.0 2013/08/08 00:00:00
 */
public class ImportRecordWeight extends SvrProcess implements ImportProcess
{
	/**	Client to be imported to		*/
	private int				m_AD_Client_ID = 0;
	
	/**	Delete old Imported				*/
	private boolean			m_deleteOldImported = false;

	/** Effective						*/
	private Timestamp		m_DateValue = null;
	
	/**	Only validate, don't import		*/
	private boolean			p_IsValidateOnly = false;
	
	/** Err Messagge */
	private String errMsg = "";
	
	/** Context */
	private Properties ctx ;

	/** Inserted Entry Ticket*/
	private int noInsertET = 0;
	
	/** Update Entry Ticket*/
	private int noUpdateET = 0;
	
	/** Inserted Quality Analysis*/
	private int noInsertQA = 0;
	
	/** Update Quality Analysis*/
	private int noUpdateQA = 0;
	
	/** Inserted Record Weight*/
	private int noInsertRW = 0;
	
	/** Update Record Weight*/
	private int noUpdateRW = 0;
	
	/** Inserted Quality Analysis*/
	private int noInsertLO = 0;
	
	/** Update Quality Analysis*/
	private int noUpdateLO = 0;
	
	/** Inserted Shipping Guide*/
	private int noInsertMG = 0;
	
	/** Update Shipping Guide*/
	private int noUpdateMG = 0;
	
	/**	Document Action					*/
	private String			m_docAction = MFTAEntryTicket.DOCACTION_Prepare;
	
	/** */
	private int p_AD_User_ID = 0 ;
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (name.equals("AD_Client_ID"))
				m_AD_Client_ID = ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("DeleteOldImported"))
				m_deleteOldImported = "Y".equals(para[i].getParameter());
			else if (name.equals("IsValidateOnly"))
				p_IsValidateOnly = para[i].getParameterAsBoolean();
			else if (name.equals("DocAction"))
				m_docAction = (String)para[i].getParameter();
			else if (name.equals("AD_User_ID"))
				p_AD_User_ID = ((BigDecimal)para[i].getParameter()).intValue();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		ctx= getCtx();
		if (m_DateValue == null)
			m_DateValue = new Timestamp (System.currentTimeMillis());
	}	//	prepare


	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception
	 */
	protected String doIt() throws java.lang.Exception
	{
		StringBuffer sql = null;
		int no = 0;
		String clientCheck = getWhereClause();

		//	****	Prepare	****

		//	Delete Old Imported
		if (m_deleteOldImported)
		{
			sql = new StringBuffer ("DELETE I_RecordWeight "
				+ "WHERE I_IsImported='Y'").append(clientCheck);
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.info("Delete Old Imported =" + no);
		}

		//	Set Org, IaActive, Created/Updated, 
		sql = new StringBuffer ("UPDATE I_RecordWeight "
			+ "SET AD_Org_ID = COALESCE (AD_Org_ID, 0),"
			+ " IsActive = COALESCE (IsActive, 'Y'),"
			+ " Created = COALESCE (Created, SysDate),"
			+ " CreatedBy = COALESCE (CreatedBy, 0),"
			+ " Updated = COALESCE (Updated, SysDate),"
			+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
			+ " I_ErrorMsg = ' ',"
			+ " I_IsImported = 'N' "
			+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL");
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Reset=" + no);

		ModelValidationEngine.get().fireImportValidate(this, null, null, ImportValidator.TIMING_BEFORE_VALIDATE);
		
		//		-------------------------------------------------------------------
		//Locate Data
		
		//	****	Find Guide DocumentNo
		//	Guide DocumentNo
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET FTA_MobilizationGuide_ID=(SELECT FTA_MobilizationGuide_ID FROM FTA_MobilizationGuide mg"
			+ " WHERE i.GuideDocumentNo=mg.DocumentNo AND i.AD_Client_ID=mg.AD_Client_ID) "
			+ "WHERE FTA_MobilizationGuide_ID IS NULL AND OperationType='RMR' "
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Mobilization Guide Found=" + no);


		//****	Find from Org Mobilization Guide
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET AD_Org_ID=(SELECT AD_Org_ID FROM FTA_MobilizationGuide mg "
			+ " WHERE i.FTA_MobilizationGuide_ID=mg.FTA_MobilizationGuide_ID AND i.AD_Client_ID=mg.AD_Client_ID)  "
			+ "WHERE FTA_MobilizationGuide_ID IS NOT NULL "
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Org Found=" + no);
		
		
		//		****	Find Entry DocType
		//	Entry DocType
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET Entry_Doc_Type_ID=(SELECT C_DocType_ID FROM C_DocType dt"
			+ " WHERE i.Entry_Doc_Type_Name=dt.Name AND i.AD_Client_ID=dt.AD_Client_ID AND dt.DocBaseType='FET') "
			+ "WHERE Entry_Doc_Type_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Entry DocType Found=" + no);
		
		//		****	Find BPartner From Mobilization Guide
		//	BPartner
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ " SET C_BPartner_ID=(SELECT f.C_BPartner_ID FROM FTA_MobilizationGuide mg INNER JOIN FTA_Farming fming On mg.FTA_Farming_ID=fming.FTA_Farming_ID "
			+   " INNER JOIN FTA_FarmDivision fd ON fming.FTA_FarmDivision_ID=fd.FTA_FarmDivision_ID " 
			+   " INNER JOIN FTA_Farm f ON f.FTA_Farm_ID=fd.FTA_Farm_ID "
			+ " WHERE i.FTA_MobilizationGuide_ID=mg.FTA_MobilizationGuide_ID AND i.AD_Client_ID=mg.AD_Client_ID) "
			+ " WHERE C_BPartner_ID IS NULL AND FTA_MobilizationGuide_ID IS NOT NULL "
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("BPartner Found=" + no);
		
		//		****	Find BPartner BPartnerValue
		//	BPartner
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ " SET C_BPartner_ID=(SELECT bp.C_BPartner_ID FROM C_BPartner bp "
			+ " WHERE i.BPartnerValue=bp.Value AND i.AD_Client_ID=bp.AD_Client_ID) "
			+ " WHERE C_BPartner_ID IS NULL "
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("BPartner Found=" + no);
		
		
		//		****	Find Shipper
		//	Shipper
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET M_Shipper_ID=(SELECT M_Shipper_ID FROM M_Shipper s"
			+ " WHERE i.ShipperName=s.Name AND i.AD_Client_ID=s.AD_Client_ID) "
			+ "WHERE M_Shipper_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Shipper Found=" + no);
		
		//		****	Find Driver
		//	Driver
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET FTA_Driver_ID=(SELECT FTA_Driver_ID FROM FTA_Driver d"
			+ " WHERE i.DriverValue=d.Value AND i.AD_Client_ID=d.AD_Client_ID) "
			+ "WHERE FTA_Driver_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Driver Found=" + no);
		
		//		****	Vehicle Type
		//	Vehicle Type
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET FTA_VehicleType_ID=(SELECT FTA_VehicleType_ID FROM FTA_VehicleType vt"
			+ " WHERE i.VehicleType=vt.Value AND i.AD_Client_ID=vt.AD_Client_ID) "
			+ "WHERE FTA_VehicleType_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Vehicle Type Found=" + no);
		
		//		****	Vehicle Type
		//	Vehicle Type
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET FTA_VehicleType_ID=(SELECT mg.FTA_VehicleType_ID FROM FTA_MobilizationGuide mg "
			+ " WHERE i.FTA_MobilizationGuide_ID=mg.FTA_MobilizationGuide_ID AND i.AD_Client_ID=mg.AD_Client_ID) "
			+ "WHERE FTA_VehicleType_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Vehicle Type Found=" + no);
		
		//		****	Vehicle 
		//	Vehicle 
		//2014-04-02 Change for max Vehicle 
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET FTA_Vehicle_ID=(SELECT Max(FTA_Vehicle_ID) FROM FTA_Vehicle v"
			+ " WHERE i.VehiclePlate=v.VehiclePlate AND i.AD_Client_ID=v.AD_Client_ID) "
			+ "WHERE FTA_Vehicle_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Vehicle Found=" + no);
		
		//		****	Find Quality Analysis DocType 
		//	Quality Analysis DocType  
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET QA_Doc_Type_ID=(SELECT C_DocType_ID FROM C_DocType dt"
			+ " WHERE i.QA_Doc_Type_Name=dt.Name AND i.AD_Client_ID=dt.AD_Client_ID AND dt.DocBaseType In ('FQA','FCA')) "
			+ "WHERE QA_Doc_Type_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Quality Analysis DocType Found=" + no);
		
		//		****	Find Product From Mobilization Guide
		//	Product 
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET M_Product_ID=(SELECT fming.Category_ID FROM FTA_MobilizationGuide mg INNER JOIN FTA_Farming fming ON mg.FTA_Farming_ID=fming.FTA_Farming_ID "
			+ " WHERE i.FTA_MobilizationGuide_ID=mg.FTA_MobilizationGuide_ID AND i.AD_Client_ID=mg.AD_Client_ID) "
			+ "WHERE M_Product_ID IS NULL AND FTA_MobilizationGuide_ID IS NOT NULL "
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Product Found=" + no);
		
		//		****	Find Record Weight DocType 
		//	Record Weight DocType  
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET RW_Doc_Type_ID=(SELECT C_DocType_ID FROM C_DocType dt"
			+ " WHERE i.RW_Doc_Type_Name=dt.Name AND i.AD_Client_ID=dt.AD_Client_ID AND dt.DocBaseType In ('FRW')) "
			+ "WHERE RW_Doc_Type_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Record Weight DocType Found=" + no);
		
		//		****	Find UOM 
		//	UOM 
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET C_UOM_ID=(SELECT C_UOM_ID FROM C_UOM um"
			+ " WHERE i.X12DE355=um.X12DE355) "
			+ "WHERE C_UOM_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("UOM Found=" + no);
		
		//		****	Find UOM From Role 
		//	UOM 
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET C_UOM_ID=(SELECT MAX(ws.C_UOM_ID) FROM FTA_WeightScale ws INNER JOIN FTA_WeightScale_Role wsr ON wsr.FTA_WeightScale_ID = ws.FTA_WeightScale_ID "
			+ " WHERE wsr.AD_Role_ID = " + Env.getContextAsInt(Env.getCtx(), "#AD_Role_ID") + ")"
			+ " WHERE C_UOM_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("UOM From Role Found=" + no);
		
		//		****	Set InDate From Date Doc
		//	InDate 
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET InDate = DateDoc " 
			+ "WHERE InDate IS NULL "
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Set InDate=" + no);
		
		//		****	Set OutDate From Date Doc
		//	OutDate 
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET OutDate = DateDoc " 
			+ "WHERE OutDate IS NULL "
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Set OutDate=" + no);
		
		// Carlos Parada 2014-01-20
		// Find Chute
		//		****	Find Record Weight DocType 
		//	Record Weight DocType  
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET FTA_Chute_ID=(SELECT FTA_Chute_ID FROM FTA_Chute ch"
			+ " WHERE i.ChuteName=ch.Name AND i.AD_Client_ID=ch.AD_Client_ID) "
			+ "WHERE FTA_Chute_ID IS NULL "
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Chute Found=" + no);
		//End Carlos Parada
		
		//Carlos Parada 2014-02-07 Find Load order Data
		//		****	Find BPartner From Purchase or Sales Order
		//	BPartner
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ " SET C_BPartner_ID=(SELECT o.C_BPartner_ID FROM C_Order o "
			+ " WHERE o.C_Order_ID=i.C_Order_ID AND i.AD_Client_ID=o.AD_Client_ID) "
			+ " WHERE C_BPartner_ID IS NULL AND C_Order_ID IS NOT NULL "
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("BPartner Found=" + no);
		
		//		****	Find Load Order DocType 
		//	Load Order DocType  
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET LO_Doc_Type_ID=(SELECT C_DocType_ID FROM C_DocType dt"
			+ " WHERE i.LO_Doc_Type_Name=dt.Name AND i.AD_Client_ID=dt.AD_Client_ID AND dt.DocBaseType In ('FLO')) "
			+ "WHERE LO_Doc_Type_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Load Order DocType Found=" + no);
		
		//		****	Find Purchase or Sales Order DocType 
		//	Purchase or Sales Order DocType  
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET Order_Doc_Type_ID=(SELECT C_DocType_ID FROM C_DocType dt"
			+ " WHERE i.Order_Doc_Type_Name=dt.Name AND i.AD_Client_ID=dt.AD_Client_ID AND dt.DocBaseType In ('SOO','POO')) "
			+ "WHERE Order_Doc_Type_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Purchase/Sales Order DocType Found=" + no);

		//		****	Find Product From Value
		//	Product 
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET M_Product_ID=(SELECT M_Product_ID FROM M_Product p "
			+ " WHERE i.ProductValue=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
			+ "WHERE M_Product_ID IS NULL "
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Product Found=" + no);

		//		****	Find Purchase or Sales Order 
		//	Purchase or Sales Order DocType  
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET C_Order_ID=(SELECT C_Order_ID FROM C_Order co"
			+ " WHERE i.OrderDocumentNo=co.DocumentNo AND i.Order_Doc_Type_ID= co.C_DocType_ID AND i.C_BPartner_ID=co.C_BPartner_ID AND i.AD_Client_ID=co.AD_Client_ID ) "
			+ "WHERE C_Order_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Purchase/Sales Order Found=" + no);
		
		//		****	Find Purchase or Sales Order Line 
		//	Purchase or Sales Order DocType  
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET C_OrderLine_ID=(SELECT MIN(C_OrderLine_ID) FROM C_OrderLine col"
			+ " WHERE i.C_Order_ID=col.C_Order_ID AND i.M_Product_ID=col.M_Product_ID AND i.AD_Client_ID=col.AD_Client_ID ) "
			+ "WHERE C_OrderLine_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Purchase/Sales Order Found=" + no);
		
		//End Carlos Parada
		
		//Carlos Parada 2014-03-20 Locate Document Type For Mobilization Guide
		//	****	Find Purchase or Mobilization Guide DocType 
		//	Purchase or Sales Order DocType  
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET C_DocTypeMobilizationGuide_ID=(SELECT C_DocType_ID FROM C_DocType dt"
			+ " WHERE i.DocTypeNameMobilizationGuide=dt.Name AND i.AD_Client_ID=dt.AD_Client_ID AND dt.DocBaseType In ('FMG') AND dt.IsSOTrx='Y') "
			+ "WHERE C_DocTypeMobilizationGuide_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Purchase/Sales Order DocType Found=" + no);
		//End Carlos Parada
		
		//		-------------------------------------------------------------------
		//Locate Existing Movements

		//		****	Find Entry Tickets 
		//	Entry Tickets 
		/** 2014-11-13 Carlos Parada Don't Locate Reversed or Void Movements*/
		/** 
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET FTA_EntryTicket_ID=(SELECT FTA_EntryTicket_ID FROM FTA_EntryTicket et"
			+ " WHERE i.AD_Org_ID=et.AD_Org_ID AND i.C_BPartner_ID=et.C_BPartner_ID AND i.ReferenceNo=et.ReferenceNo AND i.Ext_Guide=et.Ext_Guide AND i.FTA_MobilizationGuide_ID=et.FTA_MobilizationGuide_ID ) "
			+ "WHERE FTA_EntryTicket_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Entry Tickects Found=" + no);
		*/
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
				+ "SET FTA_EntryTicket_ID=(SELECT FTA_EntryTicket_ID FROM FTA_EntryTicket et"
				+ " WHERE i.AD_Org_ID=et.AD_Org_ID AND i.C_BPartner_ID=et.C_BPartner_ID AND i.ReferenceNo=et.ReferenceNo AND i.Ext_Guide=et.Ext_Guide AND i.FTA_MobilizationGuide_ID=et.FTA_MobilizationGuide_ID " +
				"	AND et.DocStatus NOT IN ('VO','RE')) "
				+ "WHERE FTA_EntryTicket_ID IS NULL"
				+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Entry Tickects Found=" + no);
		
		//		****	Find Quality Analysis 
		//	Quality Analysis
		/**
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET FTA_QualityAnalysis_ID=(SELECT FTA_QualityAnalysis_ID FROM FTA_QualityAnalysis qa"
			+ " WHERE i.FTA_EntryTicket_ID=qa.FTA_EntryTicket_ID) "
			+ "WHERE FTA_QualityAnalysis_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Quality Analysis Found=" + no);
		*/
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
				+ "SET FTA_QualityAnalysis_ID=(SELECT FTA_QualityAnalysis_ID FROM FTA_QualityAnalysis qa"
				+ " WHERE i.FTA_EntryTicket_ID=qa.FTA_EntryTicket_ID AND qa.DocStatus NOT IN ('VO','RE')) "
				+ "WHERE FTA_QualityAnalysis_ID IS NULL"
				+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Quality Analysis Found=" + no);
		
		//		****	Find Record Weight 
		//	Record Weight
		//	Yamel Senih 2014-10-22, Get Max Value in Record Weight
		/**sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET FTA_RecordWeight_ID=(SELECT MAX(FTA_RecordWeight_ID) FROM FTA_RecordWeight rw"
			+ " WHERE i.FTA_EntryTicket_ID=rw.FTA_EntryTicket_ID AND i.FTA_QualityAnalysis_ID=rw.FTA_QualityAnalysis_ID) "
			+ "WHERE FTA_RecordWeight_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Record Weight Found=" + no);
		*/
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET FTA_RecordWeight_ID=(SELECT MAX(FTA_RecordWeight_ID) FROM FTA_RecordWeight rw"
			+ " WHERE i.FTA_EntryTicket_ID=rw.FTA_EntryTicket_ID AND i.FTA_QualityAnalysis_ID=rw.FTA_QualityAnalysis_ID AND rw.DocStatus NOT IN ('VO','RE')) "
			+ "WHERE FTA_RecordWeight_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Record Weight Found=" + no);
		//	End Yamel Senih
		/** End Carlos Parada*/
		//		-------------------------------------------------------------------
		//Validating Data
		
		//	Not Mobilization Guide
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "FTA_MobilizationGuide_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND FTA_MobilizationGuide_ID IS NULL AND OperationType='RMR' ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid External Guide
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Ext_Guide");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND (Ext_Guide IS NULL  OR Ext_Guide='') AND OperationType='RMR'  ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Entry DocType
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Entry_Doc_Type_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Entry_Doc_Type_ID IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Bussines Partner
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "C_BPartner_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND C_BPartner_ID IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());

		// Invalid Bussines Partner
		errMsg =  Msg.translate(ctx, "Difference") + " " + Msg.translate(ctx, "C_BPartner_ID") + " " + Msg.translate(ctx, "FTA_MobilizationGuide_ID") + " "+ Msg.translate(ctx, "C_BPartner_ID")  ;
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND C_BPartner_ID IS NOT NULL AND " 
			+ " NOT Exists (Select 1 From " 
			+ " 			FTA_MobilizationGuide mg " 
			+ "				Inner Join FTA_Farming fming On mg.FTA_Farming_ID=fming.FTA_Farming_ID " 
			+ "				Inner Join FTA_FarmDivision fd On fd.FTA_FarmDivision_ID=fming.FTA_FarmDivision_ID " 
			+ "				Inner Join FTA_Farm f On f.FTA_Farm_ID=fd.FTA_Farm_ID " 
			+ "				Where f.C_BPartner_ID=i.C_BPartner_ID) AND OperationType='RMR' ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());

		// Invalid Date Doc
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "DateDoc");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND DateDoc IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid ReferenceNo
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "ReferenceNo");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ReferenceNo IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Driver
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "FTA_Driver_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND FTA_Driver_ID IS NULL AND ((DriverValue IS NULL OR DriverValue ='') AND (DriverName IS NULL OR DriverName ='')) ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Vehicle
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "FTA_Vehicle_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND FTA_Vehicle_ID IS NULL "
			+ " AND ("
			+ "			((VehiclePlate IS NULL OR VehiclePlate ='') AND (VehicleName IS NULL OR VehicleName ='')) "
			+ " 	OR ((FTA_VehicleType_ID IS NULL) AND ((VehicleType IS NULL OR VehicleType='') AND (LoadCapacity IS NULL Or LoadCapacity=0)))"
			+ "		)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Quality Analysis DocType
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "QA_Doc_Type_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND QA_Doc_Type_ID IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Analysis Type
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "AnalysisType");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND AnalysisType IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
				
		// Invalid Product
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "M_Product_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND M_Product_ID IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Product Status
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "ProductStatus");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ProductStatus IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Col_0
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Col_0") + " " + Msg.translate(ctx, "NotFound")+ " " + Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Col_0 IS NOT NULL AND Not Exists(Select 1 From M_Attribute Where M_Attribute.Name=i.Col_0)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Val_0
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Val_0") +" "+ Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ((Val_0 IS NOT NULL AND Not Exists(Select 1 From " +
													"M_Attribute atr " +
													"Left Join M_AttributeValue atrv ON atr.M_Attribute_ID=atrv.M_Attribute_ID " +
													"Where (atr.Name=i.Col_0 AND atr.AttributeValueType='L' AND atrv.Value=i.Val_0)" +
															"OR (atr.Name=i.Col_0 AND atr.AttributeValueType<>'L')" +
													")) OR (Col_0 IS NOT NULL AND Val_0 IS NULL)) ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());

		// Invalid Col_1
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Col_1") + " " + Msg.translate(ctx, "NotFound")+ " " + Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Col_1 IS NOT NULL AND Not Exists(Select 1 From M_Attribute Where M_Attribute.Name=i.Col_1)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Val_1
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Val_1") +" "+ Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ((Val_1 IS NOT NULL AND Not Exists(Select 1 From " +
													"M_Attribute atr " +
													"Left Join M_AttributeValue atrv ON atr.M_Attribute_ID=atrv.M_Attribute_ID " +
													"Where (atr.Name=i.Col_1 AND atr.AttributeValueType='L' AND atrv.Value=i.Val_1)" +
															"OR (atr.Name=i.Col_1 AND atr.AttributeValueType<>'L')" +
													")) OR (Col_1 IS NOT NULL AND Val_1 IS NULL))").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());

		// Invalid Col_2
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Col_2") + " " + Msg.translate(ctx, "NotFound")+ " " + Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Col_2 IS NOT NULL AND Not Exists(Select 1 From M_Attribute Where M_Attribute.Name=i.Col_2)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Val_2
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Val_2") +" "+ Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ((Val_2 IS NOT NULL AND Not Exists(Select 1 From " +
													"M_Attribute atr " +
													"Left Join M_AttributeValue atrv ON atr.M_Attribute_ID=atrv.M_Attribute_ID " +
													"Where (atr.Name=i.Col_2 AND atr.AttributeValueType='L' AND atrv.Value=i.Val_2)" +
															"OR (atr.Name=i.Col_2 AND atr.AttributeValueType<>'L')" +
													")) OR (Col_2 IS NOT NULL AND Val_2 IS NULL))").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Col_3
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Col_3") + " " + Msg.translate(ctx, "NotFound")+ " " + Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Col_3 IS NOT NULL AND Not Exists(Select 1 From M_Attribute Where M_Attribute.Name=i.Col_3)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Val_3
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Val_3") +" "+ Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ((Val_3 IS NOT NULL AND Not Exists(Select 1 From " +
													"M_Attribute atr " +
													"Left Join M_AttributeValue atrv ON atr.M_Attribute_ID=atrv.M_Attribute_ID " +
													"Where (atr.Name=i.Col_3 AND atr.AttributeValueType='L' AND atrv.Value=i.Val_3)" +
															"OR (atr.Name=i.Col_3 AND atr.AttributeValueType<>'L')" +
													")) OR (Col_3 IS NOT NULL AND Val_3 IS NULL))").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());

		// Invalid Col_4
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Col_4") + " " + Msg.translate(ctx, "NotFound")+ " " + Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Col_4 IS NOT NULL AND Not Exists(Select 1 From M_Attribute Where M_Attribute.Name=i.Col_4)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Val_4
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Val_4") +" "+ Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ((Val_4 IS NOT NULL AND Not Exists(Select 1 From " +
													"M_Attribute atr " +
													"Left Join M_AttributeValue atrv ON atr.M_Attribute_ID=atrv.M_Attribute_ID " +
													"Where (atr.Name=i.Col_4 AND atr.AttributeValueType='L' AND atrv.Value=i.Val_4)" +
															"OR (atr.Name=i.Col_4 AND atr.AttributeValueType<>'L')" +
													")) OR (Col_4 IS NOT NULL AND Val_4 IS NULL))").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());		
		
		// Invalid Col_5
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Col_5") + " " + Msg.translate(ctx, "NotFound")+ " " + Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Col_5 IS NOT NULL AND Not Exists(Select 1 From M_Attribute Where M_Attribute.Name=i.Col_5)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Val_5
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Val_5") +" "+ Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ((Val_5 IS NOT NULL AND Not Exists(Select 1 From " +
													"M_Attribute atr " +
													"Left Join M_AttributeValue atrv ON atr.M_Attribute_ID=atrv.M_Attribute_ID " +
													"Where (atr.Name=i.Col_5 AND atr.AttributeValueType='L' AND atrv.Value=i.Val_5)" +
															"OR (atr.Name=i.Col_5 AND atr.AttributeValueType<>'L')" +
													")) OR (Col_5 IS NOT NULL AND Val_5 IS NULL))").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());	

		// Invalid Col_6
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Col_6") + " " + Msg.translate(ctx, "NotFound")+ " " + Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Col_6 IS NOT NULL AND Not Exists(Select 1 From M_Attribute Where M_Attribute.Name=i.Col_6)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Val_6
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Val_6") +" "+ Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ((Val_6 IS NOT NULL AND Not Exists(Select 1 From " +
													"M_Attribute atr " +
													"Left Join M_AttributeValue atrv ON atr.M_Attribute_ID=atrv.M_Attribute_ID " +
													"Where (atr.Name=i.Col_6 AND atr.AttributeValueType='L' AND atrv.Value=i.Val_6)" +
															"OR (atr.Name=i.Col_6 AND atr.AttributeValueType<>'L')" +
													")) OR (Col_6 IS NOT NULL AND Val_6 IS NULL))").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());			

		// Invalid Col_7
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Col_7") + " " + Msg.translate(ctx, "NotFound")+ " " + Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Col_7 IS NOT NULL AND Not Exists(Select 1 From M_Attribute Where M_Attribute.Name=i.Col_7)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Val_7
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Val_7") +" "+ Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ((Val_7 IS NOT NULL AND Not Exists(Select 1 From " +
													"M_Attribute atr " +
													"Left Join M_AttributeValue atrv ON atr.M_Attribute_ID=atrv.M_Attribute_ID " +
													"Where (atr.Name=i.Col_7 AND atr.AttributeValueType='L' AND atrv.Value=i.Val_7)" +
															"OR (atr.Name=i.Col_7 AND atr.AttributeValueType<>'L')" +
													")) OR (Col_7 IS NOT NULL AND Val_7 IS NULL))").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());			

		// Invalid Col_8
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Col_8") + " " + Msg.translate(ctx, "NotFound")+ " " + Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Col_8 IS NOT NULL AND Not Exists(Select 1 From M_Attribute Where M_Attribute.Name=i.Col_8)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Val_8
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Val_8") +" "+ Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ((Val_8 IS NOT NULL AND Not Exists(Select 1 From " +
													"M_Attribute atr " +
													"Left Join M_AttributeValue atrv ON atr.M_Attribute_ID=atrv.M_Attribute_ID " +
													"Where (atr.Name=i.Col_8 AND atr.AttributeValueType='L' AND atrv.Value=i.Val_8)" +
															"OR (atr.Name=i.Col_8 AND atr.AttributeValueType<>'L')" +
													")) OR (Col_8 IS NOT NULL AND Val_8 IS NULL))").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());	

		// Invalid Col_9
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Col_9") + " " + Msg.translate(ctx, "NotFound")+ " " + Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Col_9 IS NOT NULL AND Not Exists(Select 1 From M_Attribute Where M_Attribute.Name=i.Col_9)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Val_9
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Val_9") +" "+ Msg.translate(ctx, "M_Attribute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND ((Val_9 IS NOT NULL AND Not Exists(Select 1 From " +
													"M_Attribute atr " +
													"Left Join M_AttributeValue atrv ON atr.M_Attribute_ID=atrv.M_Attribute_ID " +
													"Where (atr.Name=i.Col_9 AND atr.AttributeValueType='L' AND atrv.Value=i.Val_9)" +
															"OR (atr.Name=i.Col_9 AND atr.AttributeValueType<>'L')" +
													")) OR (Col_9 IS NOT NULL AND Val_9 IS NULL))").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());	
		
		// Invalid Record Weight DocType
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "RW_Doc_Type_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND RW_Doc_Type_ID IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid UOM 
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "C_UOM_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND C_UOM_ID IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		/*// Invalid Gross Weight
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "GrossWeight");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND GrossWeight IS NULL OR GrossWeight =0 ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Tare Weight
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "TareWeight");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND TareWeight IS NULL OR TareWeight =0 ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());*/

		// Invalid Net Weight
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "NetWeight");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND NetWeight IS NULL OR NetWeight =0 ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());

		// Invalid Weight Status
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "WeightStatus");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND WeightStatus IS NULL OR WeightStatus ='' ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid In Date
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "InDate");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND InDate IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());

		// Invalid Out Date
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "OutDate");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND OutDate IS NULL ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		/** 2014-11-12 Fix Error Referenced Mobilization Guide in Another Entry Ticket 
		// Duplicate Guide
		/*errMsg =  Msg.translate(ctx, "Duplicate") + " " + Msg.translate(ctx, "FTA_MobilizationGuide_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND FTA_MobilizationGuide_ID IS NOT NULL AND Exists (Select 1 From I_RecordWeight irw " 
			+ " INNER JOIN FTA_EntryTicket et on (et.FTA_EntryTicket_id=irw.FTA_EntryTicket_id and et.docstatus='CO')" 
			+ "Where irw.FTA_MobilizationGuide_ID=i.FTA_MobilizationGuide_ID " +
			"Having Count(FTA_MobilizationGuide_ID)>1 )").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		*/
		errMsg =  Msg.translate(ctx, "Duplicate") + " " + Msg.translate(ctx, "FTA_MobilizationGuide_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND FTA_MobilizationGuide_ID IS NOT NULL AND Exists (Select 1 From I_RecordWeight irw " 
			// " INNER JOIN FTA_EntryTicket et on (et.FTA_EntryTicket_id=irw.FTA_EntryTicket_id and et.docstatus='CO')" 
			+ "Where irw.FTA_MobilizationGuide_ID=i.FTA_MobilizationGuide_ID AND irw.I_IsImported<>'Y'" +
			"Having Count(FTA_MobilizationGuide_ID)>1 )").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		errMsg =   Msg.translate(ctx, "FTA_MobilizationGuide_ID") + Msg.translate(ctx, "SQLErrorReferenced") + Msg.translate(ctx, "FTA_EntryTicket_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND FTA_MobilizationGuide_ID IS NOT NULL AND Exists (Select 1 From FTA_EntryTicket_ID et " 
			+ "Where et.FTA_MobilizationGuide_ID=i.FTA_MobilizationGuide_ID AND et.OperationType=i.OperationType AND et.DocStatus NOT IN ('VO','RE')) " +
			" AND OperationType = 'RMR' ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		/** End Carlos Parada*/
		
		// 2014-01-20 Carlos Parada Validation Chute 
		// Invalid Chute
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "FTA_Chute_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND FTA_Chute_ID IS NULL AND OperationType In ('RMR') ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		//End Carlos Parada
		// Invalid Load Order Doc Type
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "LO_Doc_Type_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND LO_Doc_Type_ID IS NULL AND OperationType In ('DBM') ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Purchase/Sales Order Doc Type
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "Order_Doc_Type_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND Order_Doc_Type_ID IS NULL AND OperationType In ('DBM') ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Purchase/Sales Order
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "C_Order_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND C_Order_ID IS NULL AND OperationType In ('DBM') ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		// Invalid Purchase/Sales Order Line
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "C_OrderLine_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND C_OrderLine_ID IS NULL AND OperationType In ('DBM') ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		//2014-02-07 Carlos Parada Validation Load Order Data
		
		//End Carlos Parada
		
		// Invalid Document Type Shipping Guide 
		errMsg =  Msg.translate(ctx, "Invalid") + " " + Msg.translate(ctx, "C_DocTypeMobilizationGuide_ID");
		sql = new StringBuffer ("UPDATE I_RecordWeight i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||',ERR=' || ?"   
			+ " WHERE I_IsImported<>'Y'"
			+ " AND C_DocTypeMobilizationGuide_ID IS NULL AND OperationType In ('DBM') ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(),new Object[]{errMsg},true, get_TrxName());
		
		ModelValidationEngine.get().fireImportValidate(this, null, null, ImportValidator.TIMING_AFTER_VALIDATE);

		commitEx();
		
		if (p_IsValidateOnly)
		{
			return "Validated";
		}
		
		//	-------------------------------------------------------------------
		String trxImp ="IMPRW";
		Trx trx = Trx.get(trxImp, true);
		
		//	Go through Records
		log.fine("start inserting/updating ...");
		//
		List <X_I_RecordWeight> imps =  new Query(ctx,X_I_RecordWeight.Table_Name,"I_IsImported='N' " + (p_AD_User_ID!=0 ? " AND CreatedBy= "+p_AD_User_ID : "" ) + clientCheck,trxImp)
		.setOnlyActiveRecords(true)
		.setOrderBy("AD_Org_ID,OperationType,GuideDocumentNo,Ext_Guide,ReferenceNo")
		.list();
		for (X_I_RecordWeight imp:imps)
		{
			//Get Entry Tickect 
			int FTA_EntryTicket_ID =getEntryTickect(imp);
			int FTA_QualityAnalysis_ID =0;
			int FTA_RecordWeight_ID =0;
			int FTA_LoadOrder_ID =0;
			
			if(FTA_EntryTicket_ID==0){
				rollback();
				imp.setI_ErrorMsg(Msg.translate(ctx, "SaveError") + " " +Msg.translate(ctx, "FTA_EntryTickect_ID"));
				imp.saveEx(trxImp);
				trx.commit();
				new AdempiereException(imp.getI_ErrorMsg());
			}
			else{
				
				imp.setFTA_EntryTicket_ID(FTA_EntryTicket_ID);
				//2014-02-07 Carlos Parada Create Quality Analysis And Record Weight By Operation Type
				if (imp.getOperationType().equals("RMR")
						||imp.getOperationType().equals("PBR")){
					FTA_QualityAnalysis_ID=getQualityAnalysis(imp);
					if (FTA_QualityAnalysis_ID==0)
					{
						rollback();
						imp.setI_ErrorMsg(Msg.translate(ctx, "SaveError") + " " +Msg.translate(ctx, "FTA_QualityAnalysis_ID"));
						imp.saveEx(trxImp);
						trx.commit();
						new AdempiereException(imp.getI_ErrorMsg());
					}
					else
					{
						imp.setFTA_QualityAnalysis_ID(FTA_QualityAnalysis_ID);
						FTA_RecordWeight_ID=getRecordWeight(imp);
					
						if (FTA_RecordWeight_ID==0)
						{
							rollback();
							imp.setI_ErrorMsg(Msg.translate(ctx, "SaveError") + " " +Msg.translate(ctx, "FTA_RecordWeight_ID"));
							imp.saveEx(trxImp);
							trx.commit();
							new AdempiereException(imp.getI_ErrorMsg());
						}
						else
						{
							imp.setFTA_RecordWeight_ID(FTA_RecordWeight_ID);
							imp.setI_ErrorMsg("");
							imp.setProcessed(true);
							imp.setI_IsImported(true);
							imp.saveEx(trxImp);
						}
						
					}
				}
				else if (imp.getOperationType().equals("DBM")){
					FTA_LoadOrder_ID = getLoadOrder(imp);
					
					if (FTA_LoadOrder_ID==0){
						rollback();
						imp.setI_ErrorMsg(Msg.translate(ctx, "SaveError") + " " +Msg.translate(ctx, "FTA_LoadOrder_ID"));
						imp.saveEx(trxImp);
						trx.commit();
						new AdempiereException(imp.getI_ErrorMsg());
					}
					else{
						imp.setFTA_LoadOrder_ID(FTA_LoadOrder_ID);
						FTA_RecordWeight_ID = getRecordWeight(imp);
						if (FTA_RecordWeight_ID==0)
						{
							rollback();
							imp.setI_ErrorMsg(Msg.translate(ctx, "SaveError") + " " +Msg.translate(ctx, "FTA_RecordWeight_ID"));
							imp.saveEx(trxImp);
							trx.commit();
							new AdempiereException(imp.getI_ErrorMsg());
						}
						else
						{
							imp.setFTA_RecordWeight_ID(FTA_RecordWeight_ID);
							FTA_QualityAnalysis_ID=getQualityAnalysis(imp);
							imp.setFTA_QualityAnalysis_ID(FTA_QualityAnalysis_ID);
							
							//Set Shipping Guide When Delivery Bulk Material
							//if (imp.getC_DocTypeMobilizationGuide_ID()!=0){
							
							if (imp.getOperationType().equals("DBM")){
								int FTA_MobilizationGuide_ID = getLoadShippingGuide(imp);
								imp.setFTA_MobilizationGuide_ID(FTA_MobilizationGuide_ID) ;
							}
							
							imp.setI_ErrorMsg("");
							imp.setProcessed(true);
							imp.setI_IsImported(true);
							imp.saveEx(trxImp);
							
						}
						
						
					}
					 
				}
				//End Carlos Parada
			}
			
		}	//	for all RecordWeight
		trx.commit();
		commitEx();

		addLog (0, null, new BigDecimal (noInsertET), "@FTA_EntryTicket_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noUpdateET), "@FTA_EntryTicket_ID@: @Updated@");
		
		addLog (0, null, new BigDecimal (noInsertQA), "@FTA_QualityAnalysis_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noUpdateQA), "@FTA_QualityAnalysis_ID@: @Updated@");

		addLog (0, null, new BigDecimal (noInsertRW), "@FTA_RecordWeight_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noUpdateRW), "@FTA_RecordWeight_ID@: @Updated@");

		addLog (0, null, new BigDecimal (noInsertLO), "@FTA_LoadOrder_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noUpdateLO), "@FTA_LoadOrder_ID@: @Updated@");
		
		addLog (0, null, new BigDecimal (noInsertMG), "@FTA_MobilizationGuide_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noUpdateMG), "@FTA_MobilizationGuide_ID@: @Updated@");

		return "";
	}	//	doIt

	/**
	 * Create Entry Tickect If Don't Exists
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 19/10/2013, 00:26:49
	 * @param imp
	 * @return
	 * @return int
	 */
	private int getEntryTickect(X_I_RecordWeight imp)
	{
		MFTAEntryTicket et = new MFTAEntryTicket(ctx, imp.getFTA_EntryTicket_ID(), get_TrxName());
		//Create New
		if (et.is_new()){
			et.setAD_Org_ID(imp.getAD_Org_ID());
			et.setFTA_MobilizationGuide_ID(imp.getFTA_MobilizationGuide_ID());
			et.setExt_Guide(imp.getExt_Guide());
			et.setC_DocType_ID(imp.getEntry_Doc_Type_ID());
			et.setC_BPartner_ID(imp.getC_BPartner_ID());
			et.setDateDoc(imp.getDateDoc());
			et.setReferenceNo(imp.getReferenceNo());
			et.setM_Shipper_ID(imp.getM_Shipper_ID());
			et.setDescription(imp.getDescription());
			et.setIsApproved(false);
			et.setI_IsImported(true);
			et.setOperationType(imp.getOperationType());
			et.set_ValueOfColumn("TrailerPlate", imp.getTrailerPlate());
			
			//Create Driver
			if (imp.getFTA_Driver_ID()==0)
				et.setFTA_Driver_ID(getDriver(imp));
			else
				et.setFTA_Driver_ID(imp.getFTA_Driver_ID());
			
			//Create Vehicle
			if (imp.getFTA_Vehicle_ID()==0)
				et.setFTA_Vehicle_ID(getVehicle(imp));
			else
				et.setFTA_Vehicle_ID(imp.getFTA_Vehicle_ID());
			
			et.saveEx(get_TrxName());
			
			if (m_docAction != null && m_docAction.length() > 0)
			{
				et.setDocAction(m_docAction);
				et.processIt (m_docAction);
			}
			et.saveEx(get_TrxName());
			
			noInsertET++;
		}
		return et.getFTA_EntryTicket_ID();
	}
	
	/**
	 * Create Driver if Don't Exists
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 19/10/2013, 00:17:16
	 * @param imp
	 * @return
	 * @return int
	 */
	private int getDriver (X_I_RecordWeight imp)
	{
		int Record_ID = getRecord_ID(MFTADriver.Table_Name, "Value", imp.getDriverValue());
		if (Record_ID ==0){
			MFTADriver driver = new MFTADriver(ctx, imp.getFTA_Driver_ID(), get_TrxName());
			if (driver.is_new()){
				driver.setAD_Org_ID(imp.getAD_Org_ID());
				driver.setValue(imp.getDriverValue());
				driver.setName(imp.getDriverName());
				driver.saveEx(get_TrxName());
				Record_ID =driver.getFTA_Driver_ID();
			}
		}
		return Record_ID;
	}
	
	/**
	 * Create Vehicle if Don't Exists
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 19/10/2013, 00:27:54
	 * @param imp
	 * @return
	 * @return int
	 */
	private int getVehicle (X_I_RecordWeight imp)
	{
		int Record_ID = getRecord_ID(MFTAVehicle.Table_Name, "VehiclePlate", imp.getVehiclePlate());
		if (Record_ID ==0){
			MFTAVehicle vehicle= new MFTAVehicle(ctx, imp.getFTA_Vehicle_ID(), get_TrxName());
			if (vehicle.is_new()){
				vehicle.setAD_Org_ID(imp.getAD_Org_ID());
				vehicle.setVehiclePlate(imp.getVehiclePlate());
				vehicle.setName(imp.getVehicleName());
				
				if (imp.getFTA_VehicleType_ID()==0){
					vehicle.setFTA_VehicleType_ID(getVehicleType(imp));
					imp.setFTA_VehicleType_ID(vehicle.getFTA_VehicleType_ID());
				}
				else
					vehicle.setFTA_VehicleType_ID(imp.getFTA_VehicleType_ID());
				
				vehicle.setLoadCapacity(vehicle.getFTA_VehicleType().getLoadCapacity());
				vehicle.setVolumeCapacity(vehicle.getFTA_VehicleType().getVolumeCapacity());
				vehicle.saveEx(get_TrxName());
				Record_ID = vehicle.getFTA_Vehicle_ID();
			}
		}
		
		return Record_ID;
	}
	
	/**
	 * Create Vehicle Type if Don't Exists
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 19/10/2013, 00:24:12
	 * @param imp
	 * @return
	 * @return int
	 */
	private int getVehicleType (X_I_RecordWeight imp)
	{
		int Record_ID = getRecord_ID(MFTAVehicleType.Table_Name, "Value", imp.getVehicleType());
		if (Record_ID ==0){
			MFTAVehicleType vehicletype= new MFTAVehicleType(ctx, imp.getFTA_VehicleType_ID(), get_TrxName());
			if (vehicletype.is_new()){
				vehicletype.setAD_Org_ID(imp.getAD_Org_ID());
				vehicletype.setValue(imp.getVehicleType());
				vehicletype.setName(imp.getVehicleType());
				vehicletype.setLoadCapacity(imp.getLoadCapacity());
				vehicletype.saveEx(get_TrxName());
				Record_ID=vehicletype.getFTA_VehicleType_ID(); 
			}
		}
		
		return Record_ID;
	}
	
	/**
	 * get Quality Analysis
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 19/10/2013, 12:14:28
	 * @param imp
	 * @return
	 * @return int
	 */
	private int getQualityAnalysis(X_I_RecordWeight imp)
	{
		int M_AttributeSetInstance_ID=0;
		MFTAQualityAnalysis qa = new MFTAQualityAnalysis(ctx, imp.getFTA_QualityAnalysis_ID(), get_TrxName());
		if(qa.is_new()){
			
			qa.setAD_Org_ID(imp.getAD_Org_ID());
			qa.setC_DocType_ID(imp.getQA_Doc_Type_ID());
			qa.setDateDoc(imp.getDateDoc());
			qa.setAnalysisType(imp.getAnalysisType());
			qa.setFTA_EntryTicket_ID(imp.getFTA_EntryTicket_ID());
			qa.setM_Product_ID(imp.getM_Product_ID());
			qa.setDescription(imp.getDescription());
			qa.setProductStatus(imp.getProductStatus());
			qa.setI_IsImported(true);
			qa.setOperationType(imp.getOperationType());
			qa.setFTA_RecordWeight_ID(imp.getFTA_RecordWeight_ID());
			
			if (imp.getQA_DocumentNo()!=null)
				qa.setDocumentNo(imp.getQA_DocumentNo());
			
			M_AttributeSetInstance_ID=setAttributeSetInstance(imp, qa);
			if (M_AttributeSetInstance_ID!=0){
				imp.setM_AttributeSetInstance_ID(M_AttributeSetInstance_ID);
				qa.setQualityAnalysis_ID(M_AttributeSetInstance_ID);
				/*if (M_AttributeSetInstance_ID!=0){
					MFTACategoryCalc cc  = MFTACategoryCalc.get(ctx, qa.getM_Product_ID(), MFTACategoryCalc.EVENTTYPE_Liquidation, get_TrxName());
					if (cc!=null){
						BigDecimal PayWeight = cc.getPaidWeight(imp.getNetWeight(), new MAttributeSetInstance(ctx, M_AttributeSetInstance_ID, get_TrxName()),get_TrxName());
						if (PayWeight!=null){
							imp.setPayWeight(PayWeight);
						}
					}
						
				}*/
					
			}
			
			qa.saveEx(get_TrxName());
			
			if (m_docAction != null && m_docAction.length() > 0)
			{
				qa.setDocAction(m_docAction);
				qa.processIt (m_docAction);
			}
			qa.saveEx(get_TrxName());
			
			noInsertQA++;
		}
		
		return qa.getFTA_QualityAnalysis_ID();
	}

	/**
	 * Set AttributeSetInstace
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 19/10/2013, 12:14:12
	 * @param imp
	 * @param qa
	 * @return
	 * @return int
	 */
	private int setAttributeSetInstance(X_I_RecordWeight imp,MFTAQualityAnalysis qa)
	{
		
		//Create Attribute Set Instance
		MAttributeSetInstance asi = MAttributeSetInstance.get (ctx,qa.getQualityAnalysis_ID(), qa.getM_Product_ID());
		MAttributeInstance ai ;
		asi.saveEx(get_TrxName());
		
		//Set 10 Attributes
		for (int i=0;i<10;i++)
		{
			if(imp.get_Value("Col_"+i)!=null){
				if(!imp.get_Value("Col_"+i).equals("")){
					ai=setAttribute(asi,imp.get_Value("Col_"+i).toString(), imp.get_Value("Val_"+i).toString());
					if (ai!=null)
						ai.save(get_TrxName());
				}
			}	
		}
		
		asi.setDescription();
		asi.save(get_TrxName());
		return asi.getM_AttributeSetInstance_ID();
	}
	
	/**
	 * Set AttributeSet
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 19/10/2013, 02:33:51
	 * @param asi
	 * @param col
	 * @param val
	 * @param ai
	 * @return void
	 */
	private MAttributeInstance setAttribute(MAttributeSetInstance asi,String col, String val)
	{
		
		MAttributeInstance ai=null;
		MAttribute atr= new Query(ctx,MAttribute.Table_Name,"Name=?",get_TrxName())
		.setOnlyActiveRecords(true)
		.setParameters(col)
		.firstOnly();
		if (atr!=null){
			//Create List Value Attribute instance
			if (atr.getAttributeValueType().equals("L")){
				MAttributeValue atrv= new Query(ctx,MAttributeValue.Table_Name,"Value=? And M_Attribute_ID=?",get_TrxName())
				.setOnlyActiveRecords(true)
				.setParameters(val,atr.getM_Attribute_ID())
				.firstOnly();
				if (atrv!=null)
					ai = new MAttributeInstance(ctx, atr.getM_Attribute_ID(), asi.getM_AttributeSetInstance_ID(), atrv.getM_AttributeValue_ID(), val, get_TrxName());
			}
			//Create String Value Attribute instance
			else if (atr.getAttributeValueType().equals("S"))
				ai = new MAttributeInstance(ctx, atr.getM_Attribute_ID(), asi.getM_AttributeSetInstance_ID(), val, get_TrxName());
			else if (atr.getAttributeValueType().equals("N")){
				try{
					BigDecimal value = new BigDecimal(val);
					ai = new MAttributeInstance(ctx, atr.getM_Attribute_ID(),asi.getM_AttributeSetInstance_ID(), value, get_TrxName());
				}
				catch (NumberFormatException e){
					new AdempiereUserError(val +" " +e.getMessage());
				}
			}
		}
		return ai;
	}
	/**
	 * Create Record Weight If Don't Exists
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 20/10/2013, 20:30:30
	 * @param imp
	 * @return
	 * @return int
	 */
	private int getRecordWeight(X_I_RecordWeight imp)
	{
		
		MFTARecordWeight rw = new MFTARecordWeight(ctx, imp.getFTA_RecordWeight_ID(), get_TrxName());
		if(rw.is_new()){
			
			rw.setAD_Org_ID(imp.getAD_Org_ID());
			rw.setC_DocType_ID(imp.getRW_Doc_Type_ID());
			rw.setFTA_EntryTicket_ID(imp.getFTA_EntryTicket_ID());
			rw.setDateDoc(imp.getDateDoc());
			rw.setDescription(imp.getDescription());
			rw.setC_UOM_ID(imp.getC_UOM_ID());
			rw.setIsSOTrx(imp.isSOTrx());
			rw.setGrossWeight(imp.getGrossWeight());
			rw.setTareWeight(imp.getTareWeight());
			rw.setNetWeight(imp.getNetWeight());
			rw.setWeightStatus(imp.getWeightStatus());
			rw.setInDate(imp.getInDate());
			rw.setOutDate(imp.getOutDate());
			rw.setFTA_QualityAnalysis_ID(imp.getFTA_QualityAnalysis_ID());
			rw.setImportWeight(imp.getImportWeight());
			//rw.setPayWeight(imp.getPayWeight());
			rw.setI_IsImported(true);
			rw.setOperationType(imp.getOperationType());
			rw.setFTA_Chute_ID(imp.getFTA_Chute_ID());
			rw.setFTA_LoadOrder_ID(imp.getFTA_LoadOrder_ID());
			
			if (rw.getImportWeight()!=null)
				rw.setSelectionWeight(MFTARecordWeight.SELECTIONWEIGHT_ImportWeight);
			else
				rw.setSelectionWeight(MFTARecordWeight.SELECTIONWEIGHT_PaymentWeight);
			//rw.set_ValueOfColumn("", imp.getImportWeight());
			
			if (imp.getRW_DocumentNo()!=null)
				rw.setDocumentNo(imp.getRW_DocumentNo());
			
			rw.saveEx(get_TrxName());
			
			if (m_docAction != null && m_docAction.length() > 0)
			{
				rw.setDocAction(m_docAction);
				rw.processIt (m_docAction);
			}
			rw.saveEx(get_TrxName());
			
			//Set  PayWeight from Record Weight
			imp.setPayWeight(rw.getPayWeight());
			
			noInsertRW++;
			
		}
		
		return rw.getFTA_RecordWeight_ID();
	}
	
	/**
	 * get Record_ID From Table
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 20/10/2013, 19:48:00
	 * @param TableName
	 * @param FieldWhere
	 * @param Value
	 * @return
	 * @return int
	 */
	public int getRecord_ID  (String TableName,String FieldWhere, Object Value)
	{
		int retValue=0;
		String sql = "SELECT "+TableName+"_ID As Record_ID FROM "+TableName+" WHERE "+ FieldWhere+ "=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_TrxName());
			
			pstmt.setObject(1, Value);
			rs = pstmt.executeQuery();
			if (rs.next())
				retValue = rs.getInt("Record_ID");
		}
		catch (SQLException ex)
		{
			log.log(Level.SEVERE, "get", ex);
		}
		finally {
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		
		return retValue;
	}
	
	@Override
	public String getImportTableName() {
		return X_I_RecordWeight.Table_Name;
	}


	@Override
	public String getWhereClause() {
		return " AND AD_Client_ID=" + m_AD_Client_ID;
	}

	/**
	 * get Record ID From Load Order
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 07/02/2014, 05:58:18
	 * @param imp
	 * @return
	 * @return int
	 */
	private int getLoadOrder(X_I_RecordWeight imp)
	{
		int line =10;
		MFTALoadOrder lo = new MFTALoadOrder(ctx, imp.getFTA_LoadOrder_ID(), get_TrxName());
		if(lo.is_new()){
			
			lo.setAD_Org_ID(imp.getAD_Org_ID());
			lo.setC_DocType_ID(imp.getLO_Doc_Type_ID());
			lo.setOperationType(imp.getOperationType());
			lo.setDateDoc(imp.getDateDoc());
			lo.setWeight(imp.getQty().multiply((imp.getM_Product_ID()==0 ? Env.ZERO : imp.getM_Product().getWeight())));
			lo.setVolume(imp.getQty().multiply((imp.getM_Product_ID()==0 ? Env.ZERO : imp.getM_Product().getVolume())));
			lo.setC_UOM_Weight_ID(MClientInfo.get(getCtx()).getC_UOM_Weight_ID());
			lo.setC_UOM_Volume_ID(MClientInfo.get(getCtx()).getC_UOM_Volume_ID());
			lo.setShipDate(imp.getDateDoc());
			lo.setM_Product_ID(imp.getM_Product_ID());
			lo.setFTA_VehicleType_ID(imp.getFTA_Vehicle().getFTA_VehicleType_ID());
			lo.setFTA_EntryTicket_ID(imp.getFTA_EntryTicket_ID());
			lo.setM_Shipper_ID(imp.getM_Shipper_ID());
			lo.setFTA_Driver_ID(imp.getFTA_Driver_ID());
			lo.setFTA_Vehicle_ID(imp.getFTA_Vehicle_ID());
			lo.setLoadCapacity((imp.getFTA_Vehicle_ID()==0?Env.ZERO:imp.getFTA_Vehicle().getLoadCapacity()));
			lo.setVolumeCapacity((imp.getFTA_Vehicle_ID()==0?Env.ZERO:imp.getFTA_Vehicle().getVolumeCapacity()));
			
			lo.setIsHandleRecordWeight();
			
			lo.saveEx(get_TrxName());
			
			MFTALoadOrderLine lol = new MFTALoadOrderLine(getCtx(), imp.getFTA_LoadOrderLine_ID(), get_TrxName());
			if (lol.is_new()){
				lol.setFTA_LoadOrder_ID(lo.getFTA_LoadOrder_ID());
				lol.setC_OrderLine_ID(imp.getC_OrderLine_ID());
				lol.setM_Product_ID(imp.getM_Product_ID());
				lol.setSeqNo(line);
				lol.setQty(imp.getQty());
				lol.setWeight(imp.getQty().multiply((imp.getM_Product_ID()==0 ? Env.ZERO : imp.getM_Product().getWeight())));
				lol.setVolume(imp.getQty().multiply((imp.getM_Product_ID()==0 ? Env.ZERO : imp.getM_Product().getVolume())));
				lol.saveEx(get_TrxName());
				
				line+=10;
				
				imp.setFTA_LoadOrderLine_ID(lol.getFTA_LoadOrderLine_ID());
			}
			
			if (m_docAction != null && m_docAction.length() > 0)
			{
				lo.setDocAction(m_docAction);
				lo.processIt (m_docAction);
			}
			lo.saveEx(get_TrxName());
			
			noInsertLO++;
		}
		
		return lo.getFTA_LoadOrder_ID();
	}
	
	private int getLoadShippingGuide(X_I_RecordWeight imp) throws AdempiereUserError
	{
		//		Create Guide
		MFTAMobilizationGuide m_MobilizationGuide = new MFTAMobilizationGuide(getCtx(), 0, get_TrxName());
		
		m_MobilizationGuide.setAD_Org_ID(imp.getAD_Org_ID());
		m_MobilizationGuide.setAD_OrgTrx_ID(imp.getAD_Org_ID());
		m_MobilizationGuide.setC_DocType_ID(imp.getC_DocTypeMobilizationGuide_ID());
		m_MobilizationGuide.setDateDoc(imp.getDateDoc());
		
		if (imp.getGuideDocumentNo()!=null)
			m_MobilizationGuide.setDocumentNo(imp.getGuideDocumentNo());
		if (imp.getFTA_VehicleType_ID()!=0)
			m_MobilizationGuide.setFTA_VehicleType_ID(imp.getFTA_VehicleType_ID());
		if (imp.getFTA_Vehicle_ID()!=0)
			m_MobilizationGuide.setFTA_VehicleType_ID(imp.getFTA_Vehicle().getFTA_VehicleType_ID());
		m_MobilizationGuide.setIsSOTrx(true);
		//	Set References
		m_MobilizationGuide.setFTA_LoadOrder_ID(imp.getFTA_LoadOrder_ID());
		//	Get Record Weight
		if(imp.getFTA_RecordWeight_ID() != 0)
			m_MobilizationGuide.setFTA_RecordWeight_ID(imp.getFTA_RecordWeight_ID());
		else {
			int p_FTA_RecordWeight_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(rw.FTA_RecordWeight_ID) " +
					"FROM FTA_RecordWeight rw " +
					"WHERE rw.DocStatus NOT IN('VO', 'RE') " +
					"AND rw.FTA_LoadOrder_ID = ?", imp.getFTA_LoadOrder_ID());
			if(p_FTA_RecordWeight_ID > 0)				
				m_MobilizationGuide.setFTA_RecordWeight_ID(p_FTA_RecordWeight_ID);
			
		}
		//	Set Warehouse
		if(imp.getC_Order_ID() != 0)
			m_MobilizationGuide.setM_Warehouse_ID(imp.getC_Order().getM_Warehouse_ID());
		
		MFTALoadOrder lo = new MFTALoadOrder(getCtx(), imp.getFTA_LoadOrder_ID(), get_TrxName());
		//	If is Record Weight
		if (lo.isHandleRecordWeight()){
			
			if(imp.getFTA_RecordWeight_ID() == 0)
				throw new AdempiereUserError("@FTA_RecordWeight_ID@ @NotFound@ @FTA_LoadOrder_ID@ @IsHandleRecordWeight@");
			
			if(imp.getOperationType()
						.equals(X_I_RecordWeight.OPERATIONTYPE_DeliveryBulkMaterial)){
				MClientInfo m_ClientInfo = MClientInfo.get(getCtx());
				if(m_ClientInfo.getC_UOM_Weight_ID() == 0)
					new AdempiereUserError("@C_UOM_Weight_ID@ @NotFound@");
				//	Get Category
				MProduct product = MProduct.get(getCtx(), imp.getM_Product_ID());
				
				//	Rate Convert
				BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
						product.getM_Product_ID(), m_ClientInfo.getC_UOM_Weight_ID());
				MUOM uom = MUOM.get(getCtx(), product.getC_UOM_ID());
				//	Set Precision
				int precision = uom.getStdPrecision();
				//	Valid Conversion
				if(rate == null)
					throw new AdempiereUserError("@NoUOMConversion@");
				
				//	Get Weight
				MFTARecordWeight rw = new MFTARecordWeight(getCtx(), imp.getFTA_RecordWeight_ID(), get_TrxName());
				m_MobilizationGuide.setQtyToDeliver(rw.getNetWeight()
						.multiply(rate)
						.setScale(precision, BigDecimal.ROUND_HALF_UP));
			}
		
		} else
			m_MobilizationGuide.setQtyToDeliver(lo.getWeight());
		//	
		m_MobilizationGuide.saveEx();
		
		if (m_docAction != null && m_docAction.length() > 0)
		{
			m_MobilizationGuide.setDocAction(m_docAction);
			m_MobilizationGuide.processIt (m_docAction);
		}		
		m_MobilizationGuide.saveEx();
		noInsertMG ++;
		
		
		return m_MobilizationGuide.getFTA_MobilizationGuide_ID();
	}
	
}	//	ImportRecordWeight
