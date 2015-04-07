CREATE OR REPLACE VIEW FTA_RV_RecordWeight_InOut_Source AS 
--Query 1 (Raw Material Receipt)
SELECT mg.DocumentNo MobilizationGuide,
	et.Ext_Guide,
	et.DocumentNo EntryTicket,
	qa.DocumentNo AS QualityAnalysis, 
	rw.DocumentNo AS RecordWeight, 
	rw.DateDoc, 
	rw.InDate, 
	rw.OutDate, 
	rw.TareWeight, 
	rw.GrossWeight, 
	rw.NetWeight, 
	(rw.NetWeight - 
	CASE
	    WHEN rw.SelectionWeight = 'I' THEN rw.ImportWeight
	    ELSE rw.Payweight
	END) Discount, 
	CASE
	    WHEN rw.SelectionWeight = 'I' THEN rw.ImportWeight
	    ELSE rw.PayWeight
	END AS PayWeight, 
	fc.DocumentNo Credit, 
	et.TrailerPlate, 
	mg.DateDoc DateGuide, 
	mg.QtyToDeliver, 
	et.OperationType, 
	qa.AnalysisType, 
	et.AD_Org_ID, 
	et.FTA_EntryTicket_ID, 
	fc.FTA_CreditDefinition_ID, 
	io.M_WareHouse_ID, 
	fm.PlantingCycle_ID M_Lot_ID, 
	et.C_BPartner_ID, 
	et.FTA_Driver_ID, 
	et.FTA_Vehicle_ID, 
	et.FTA_MobilizationGuide_ID, 
	qa.FTA_QualityAnalysis_ID, 
	qa.M_Product_ID, 
	COALESCE(fc.Parent_FarmerCredit_ID, fc.FTA_FarmerCredit_ID) AS FTA_FarmerCredit_ID, 
	rw.DocStatus, 
	1 AS SeqNo, 
	rw.FTA_RecordWeight_ID,
	et.AD_Client_ID,
	qa.QualityAnalysis_ID

FROM
FTA_EntryTicket et
INNER JOIN FTA_MobilizationGuide mg ON mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID
INNER JOIN FTA_QualityAnalysis qa ON qa.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID
INNER JOIN FTA_RecordWeight rw ON rw.FTA_QualityAnalysis_ID = qa.FTA_QualityAnalysis_ID
INNER JOIN FTA_Farming fm ON fm.FTA_Farming_ID = mg.FTA_Farming_ID
INNER JOIN FTA_FarmerCredit fc ON fc.FTA_FarmerCredit_ID = fm.FTA_FarmerCredit_ID
INNER JOIN M_InOut io ON io.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND io.DocStatus = rw.DocStatus
WHERE et.OperationType = 'RMR' AND rw.DocStatus = qa.DocStatus

--Query 2 (Delivery Bulk Material)
UNION ALL

SELECT mg.DocumentNo MobilizationGuide, 
	et.Ext_Guide,
	et.DocumentNo EntryTicket,
	qa.DocumentNo AS QualityAnalysis, 
	rw.DocumentNo AS RecordWeight, 
	rw.DateDoc, 
	rw.InDate, 
	rw.OutDate, 
	rw.TareWeight, 
	rw.GrossWeight, 
	rw.NetWeight, 
	(rw.NetWeight - 
	CASE
		WHEN rw.SelectionWeight = 'I' THEN rw.ImportWeight
		ELSE rw.PayWeight
	END) AS Discount, 
	CASE
		WHEN rw.SelectionWeight = 'I' THEN rw.ImportWeight
		ELSE rw.PayWeight
	END AS PayWeight, 
	'' Credit, 
	et.TrailerPlate, 
	mg.DateDoc DateGuide, 
	mg.QtyToDeliver, 
	et.OperationType, 
	qa.AnalysisType, 
	et.AD_Org_ID, 
	et.FTA_EntryTicket_ID, 
	0 AS FTA_CreditDefinition_ID, 
	io.M_WareHouse_ID, 
	0 AS M_Lot_ID, 
	ol.C_BPartner_ID, 
	et.FTA_Driver_ID, 
	et.FTA_Vehicle_ID, 
	et.FTA_MobilizationGuide_ID, 
	qa.FTA_QualityAnalysis_ID, 
	qa.M_Product_ID, --FALTA
	0 AS FTA_FarmerCredit_ID, 
	rw.DocStatus, 
	1 AS SeqNo, 
	rw.FTA_RecordWeight_ID,
	et.AD_Client_ID,
	qa.QualityAnalysis_ID
FROM
FTA_EntryTicket et
INNER JOIN FTA_RecordWeight rw ON rw.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID
INNER JOIN FTA_QualityAnalysis qa ON qa.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND qa.AnalysisType = 'QA'
INNER JOIN FTA_MobilizationGuide mg ON mg.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID
INNER JOIN M_InOut io ON io.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND io.DocStatus = rw.DocStatus
INNER JOIN FTA_LoadOrder lo ON(lo.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID)
INNER JOIN FTA_LoadOrderLine lol ON(lol.FTA_LoadOrder_ID = lo.FTA_LoadOrder_ID)
INNER JOIN C_OrderLine ol ON(ol.C_OrderLine_ID = lol.C_OrderLine_ID)
WHERE et.OperationType = 'DBM'
AND qa.DocStatus = rw.DocStatus
/*
--Query 3
UNION ALL

SELECT '' MobilizationGuide,
	et.Ext_Guide,
	et.DocumentNo EntryTicket,
	'' QualityAnalysis, 
	rw.DocumentNo AS RecordWeight,
	rw.DateDoc, 
	rw.InDate, 
	rw.OutDate, 
	rw.TareWeight, 
	rw.Grossweight, 
	rw.NetWeight, 
	(rw.Netweight - 
	CASE
		WHEN rw.SelectionWeight = 'I' THEN rw.ImportWeight
		ELSE rw.PayWeight
	END) AS Discount, 
	CASE
		WHEN rw.SelectionWeight = 'I' THEN rw.ImportWeight
		ELSE rw.PayWeight
	END AS PayWeight, 
	'' Credit, 
	et.TrailerPlate, 
	NULL::timestamp DateGuide, 
	0 AS QtyToDeliver, 
	et.OperationType, 
	'' AnalysisType, 
	et.AD_Org_ID, 
	et.FTA_EntryTicket_ID, 
	0 AS FTA_CreditDefinition_ID, 
	0 AS M_WareHouse_ID, 
	0 AS M_Lot_ID, 
	et.C_BPartner_ID, 
	et.FTA_Driver_ID, 
	et.FTA_Vehicle_ID, 
	et.FTA_MobilizationGuide_ID, 
	0 AS FTA_QualityAnalysis_ID, 
	0 AS M_Product_ID, 
	0 AS FTA_FarmerCredit_ID, 
	rw.DocStatus, 
	1 AS SeqNo, 
	rw.FTA_RecordWeight_ID, 
	et.AD_Client_ID,
	0 QualityAnalysis_ID
FROM
FTA_EntryTicket et
INNER JOIN FTA_RecordWeight rw ON rw.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID
WHERE et.OperationType = 'ORW'

*/
--Query 4 (Bulk Material receipt)
UNION ALL

SELECT mg.DocumentNo  MobilizationGuide,
	et.Ext_Guide,
	et.DocumentNo EntryTicket,
	qa.DocumentNo QualityAnalysis, 
	rw.DocumentNo RecordWeight, 
	rw.DateDoc, 
	rw.InDate, 
	rw.OutDate, 
	rw.TareWeight, 
	rw.GrossWeight, 
	rw.NetWeight, 
	(rw.NetWeight - 
	CASE
		WHEN rw.SelectionWeight = 'I' THEN rw.ImportWeight
		ELSE rw.PayWeight
	END) AS Discount, 
	CASE
		WHEN rw.SelectionWeight = 'I' THEN rw.ImportWeight
		ELSE rw.PayWeight
	END AS PayWeight,             
	fc.DocumentNo Credit, 
	et.TrailerPlate, 
	mg.DateDoc DateGuide, 
	mg.QtyToDeliver, 
	et.OperationType, 
	qa.AnalysisType, 
	et.AD_Org_ID, 
	et.FTA_EntryTicket_ID, 
	fc.FTA_CreditDefinition_ID, 
	io.M_WareHouse_ID, 
	fm.PlantingCycle_ID M_Lot_ID,
	et.C_BPartner_ID, 
	et.FTA_Driver_ID, 
	et.FTA_Vehicle_ID, 
	et.FTA_MobilizationGuide_ID, 
	qa.FTA_QualityAnalysis_ID, 
	rw.M_Product_ID, 
	fc.FTA_FarmerCredit_ID, 
	rw.DocStatus, 
	1 AS SeqNo, 
	rw.FTA_RecordWeight_ID, 
	et.AD_Client_ID,
	qa.QualityAnalysis_ID
FROM
FTA_EntryTicket et
INNER JOIN FTA_MobilizationGuide mg ON mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID
INNER JOIN FTA_RecordWeight rw ON rw.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID
INNER JOIN FTA_Farming fm ON fm.FTA_Farming_ID = mg.FTA_Farming_ID
INNER JOIN FTA_FarmerCredit fc ON fc.FTA_FarmerCredit_ID = fm.FTA_FarmerCredit_ID
INNER JOIN M_InOut io ON io.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND io.DocStatus = rw.DocStatus
LEFT JOIN FTA_QualityAnalysis qa ON qa.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND qa.AnalysisType = 'QA'
WHERE et.OperationType = 'BMR';