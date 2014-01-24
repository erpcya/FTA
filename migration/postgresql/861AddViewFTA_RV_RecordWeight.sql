-- DROP VIEW FTA_RV_RecordWeight
 --CREATE OR REPLACE VIEW FTA_RV_RecordWeight AS
SELECT 
	rw.AD_Client_ID, rw.AD_Org_ID, rw.Created, rw.CreatedBy, rw.IsActive, rw.Updated, rw.UpdatedBy, 
	rw.C_DocType_ID, rw.C_UOM_ID, rw.DateDoc, rw.Description, 
	rw.DocStatus, rw.DocumentNo, rw.FTA_EntryTicket_ID, rw.FTA_QualityAnalysis_ID, 
	rw.FTA_RecordWeight_ID, rw.GrossWeight, rw.InDate, rw.IsSOTrx, rw.NetWeight, rw.OutDate, 
	rw.TareWeight, rw.WeightStatus, dr.FTA_Driver_ID, dr.Value, vh.FTA_Vehicle_ID, vh.VehiclePlate, 
	cp.C_BPartner_ID, et.FTA_MobilizationGuide_ID, qa.M_Product_ID, qa.QualityAnalysis_ID,
	oi.C_Location_ID AS Org_Location_ID, oi.TaxID,mg.M_Warehouse_ID, rw.FTA_RecordWeight_ID AS FTA_RV_RecordWeight_ID,
	rw.InDate InTime,
	rw.OutDate OutTime,
	qa.AnalysisType,
	rw.SelectionWeight,
	rw.PayWeight,
	rw.ImportWeight,

	et.Ext_Guide,
	COALESCE(cp.Value,cp.TaxID) BPTaxID, 
	cp.Name ||' '|| COALESCE(cp.Name2,'') AS Name,
	qa.DateDoc QualytiDate,
		CASE WHEN rw.IsPrinted ='Y' THEN
			'*' 
		ELSE
			NULL
		END AS Copy
	, mg.C_City_ID
FROM FTA_RecordWeight rw
INNER JOIN FTA_EntryTicket et ON(et.FTA_EntryTicket_ID = rw.FTA_EntryTicket_ID)
INNER JOIN FTA_RV_MobilizationGuide mg ON (mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID)
INNER JOIN FTA_Driver dr ON(dr.FTA_Driver_ID = et.FTA_Driver_ID)
INNER JOIN FTA_Vehicle vh ON(vh.FTA_Vehicle_ID = et.FTA_Vehicle_ID)
INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = et.C_BPartner_ID)
INNER JOIN AD_OrgInfo oi ON(oi.AD_Org_ID = rw.AD_Org_ID)
LEFT JOIN FTA_QualityAnalysis qa ON(qa.FTA_QualityAnalysis_ID = rw.FTA_QualityAnalysis_ID)