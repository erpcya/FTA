﻿-- DROP VIEW FTA_RV_RecordWeight
CREATE OR REPLACE VIEW FTA_RV_RecordWeight AS
SELECT 
	rw.AD_Client_ID, 
	rw.AD_Org_ID, 
	rw.Created, 
	rw.CreatedBy, 
	rw.IsActive, 
	rw.Updated, 
	rw.UpdatedBy, 
	rw.C_DocType_ID, 
	rw.C_UOM_ID, 
	mg.DateDoc, 
	rw.Description, 
	rw.DocStatus, rw.DocumentNo, rw.FTA_EntryTicket_ID, COALESCE(rw.FTA_QualityAnalysis_ID,qa.FTA_QualityAnalysis_ID) FTA_QualityAnalysis_ID, 
	rw.FTA_RecordWeight_ID, rw.GrossWeight, rw.InDate, rw.IsSOTrx, rw.NetWeight, rw.OutDate, 
	rw.TareWeight, rw.WeightStatus, 
	dr.FTA_Driver_ID, dr.Value, vh.FTA_Vehicle_ID, vh.VehiclePlate, 
	COALESCE(cp.C_BPartner_ID,o.C_BPartner_ID,et.C_BPartner_ID)C_BPartner_ID, et.FTA_MobilizationGuide_ID, COALESCE(qaa.M_Product_ID,qa.M_Product_ID,lo.M_Product_ID,ol.M_Product_ID) M_Product_ID, 
	COALESCE(qaa.QualityAnalysis_ID, qa.QualityAnalysis_ID)QualityAnalysis_ID,
	oi.C_Location_ID AS Org_Location_ID, oi.TaxID,io.M_Warehouse_ID, rw.FTA_RecordWeight_ID AS FTA_RV_RecordWeight_ID,
	rw.InDate InTime,
	rw.OutDate OutTime,
	qa.AnalysisType,
	rw.SelectionWeight,
	CASE WHEN rw.SelectionWeight = 'I' THEN rw.ImportWeight ELSE rw.PayWeight END PayWeight,
	rw.ImportWeight,
	et.Ext_Guide,
	COALESCE(cp.Value,cp.TaxID) BPTaxID, 
	cp.Name ||' '|| COALESCE(cp.Name2,'') AS Name,
	qa.DateDoc QualytiDate,
	CAST(NULL AS TEXT)AS  Copy,
	mg.C_City_ID,
	lol.C_OrderLine_ID,
	o.C_Order_ID,
	lo.FTA_LoadOrder_ID,
	lol.FTA_LoadOrderLine_ID,
	et.TrailerPlate,
	rw.OperationType,
	vh.FTA_VehicleBrand_ID,
	vh.LoadCapacity,
	vh.VolumeCapacity,
	mg.QtyToDeliver,
	mg.C_DocType_ID C_DocTypeMobilizationGuide_ID,
	mg.Ext_Guide Guide_SADA,
	COALESCE(ol.PriceEntered, lve_productpricelist(qa.M_Product_ID)) AS PriceList, 
	dt.PrintName, 
	mg.Type
FROM FTA_RecordWeight rw
INNER JOIN C_DocType dt ON(dt.C_DocType_ID = rw.C_DocType_ID)
LEFT JOIN M_InOut io ON(io.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND io.DocStatus IN('CO', 'CL'))
LEFT JOIN FTA_EntryTicket et ON(et.FTA_EntryTicket_ID = rw.FTA_EntryTicket_ID)
LEFT JOIN FTA_Driver dr ON(dr.FTA_Driver_ID = et.FTA_Driver_ID)
LEFT JOIN FTA_Vehicle vh ON(vh.FTA_Vehicle_ID = et.FTA_Vehicle_ID)
LEFT JOIN AD_OrgInfo oi ON(oi.AD_Org_ID = rw.AD_Org_ID)
LEFT JOIN FTA_RV_MobilizationGuide mg ON (mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID)
LEFT JOIN C_BPartner cp ON(cp.C_BPartner_ID = mg.C_BPartner_ID)
LEFT JOIN FTA_LoadOrder lo ON (rw.FTA_LoadOrder_ID = lo.FTA_LoadOrder_ID)
LEFT JOIN FTA_LoadOrderLine lol ON (lol.FTA_LoadOrder_ID = lo.FTA_LoadOrder_ID)
LEFT JOIN C_OrderLine ol ON (ol.C_OrderLine_ID = lol.C_OrderLine_ID)
LEFT JOIN C_Order o ON (o.C_Order_ID = ol.C_Order_ID)
LEFT JOIN FTA_QualityAnalysis qa ON(qa.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND qa.DocStatus IN ('CO','CL'))
LEFT JOIN 
	(
		SELECT 
			qa.FTA_QualityAnalysis_ID,
			qa.M_Product_ID,
			QualityAnalysis_ID,
			qa.DocStatus
		FROM FTA_QualityAnalysis qa 
		WHERE qa.DocStatus IN ('CO','CL')
	) qaa ON (qaa.FTA_QualityAnalysis_ID = rw.FTA_QualityAnalysis_ID)