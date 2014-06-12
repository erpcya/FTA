--DROP VIEW FTA_RV_VehicleStatus;
CREATE OR REPLACE VIEW FTA_RV_VehicleStatus AS
SELECT 
	et.ad_client_id, et.ad_org_id, et.isactive, et.created, 
	et.createdby, et.updated, et.updatedby,

	et.FTA_Vehicle_ID,
	rw.FTA_RecordWeight_ID,
	
	CASE WHEN qa.AnalysisType = 'QA' THEN  
		qa.FTA_QualityAnalysis_ID
	ELSE
		0
	END FTA_QualityAnalysis_ID,

	CASE WHEN qa.AnalysisType = 'CA' THEN  
		qa.FTA_QualityAnalysis_ID
	END QualityAnalysis_ID,
	et.FTA_EntryTicket_ID,
	et.FTA_MobilizationGuide_ID,
	lo.FTA_LoadOrder_ID
FROM FTA_EntryTicket et
LEFT JOIN FTA_QualityAnalysis qa ON (et.FTA_EntryTicket_ID = qa.FTA_QualityAnalysis_ID)
LEFT JOIN FTA_RecordWeight rw ON (et.FTA_EntryTicket_ID = rw.FTA_EntryTicket_ID )
LEFT JOIN FTA_LoadOrder lo ON (lo.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID)

--SELECT * FROM FTA_QualityAnalysis
