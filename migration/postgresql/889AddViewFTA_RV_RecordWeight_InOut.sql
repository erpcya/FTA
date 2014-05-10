--DROP VIEW FTA_RV_RecordWeight_InOut
--CREATE OR REPLACE VIEW FTA_RV_RecordWeight_InOut AS 
--  OperationType RMR
SELECT * FROM (
SELECT mg.DocumentNo MobilizationGuide,
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
	(rw.NetWeight - rw.PayWeight) Discount,
	rw.PayWeight,
	av.Att,
	av.Value AttValue,
	av.ValueNumber AttValueNumber,
	av.AttributeValueType,
	av.Weight,
	av.IsWeight,
	bp.TaxID BPValue,
	bp.Name BPName,
	(bp.TaxID || ' - ' || bp.Name) BPLongName,
	mp.Value ValueProduct,
	mp.Name NameProduct,
	fc.DocumentNo Credit,
	lot.Name PlantingCycle,
	wh.Name Warehouse,
	org.Name Org,
	cli.Name Client,
	vh.VehiclePlate,
	et.TrailerPlate,
	mg.DateDoc DateGuide,
	mg.QtyToDeliver,
	et.OperationType,
	qa.AnalysisType,
	et.AD_Org_ID,
	et.FTA_EntryTicket_ID,
	fc.FTA_CreditDefinition_ID,
	io.M_Warehouse_ID,
	lot.M_Lot_ID,
	et.C_BPartner_ID,
	et.FTA_Driver_ID,
	et.FTA_Vehicle_ID,
	et.FTA_MobilizationGuide_ID,
	qa.FTA_QualityAnalysis_ID,
	mp.M_Product_ID,
	fc.FTA_FarmerCredit_ID,
	rw.DocStatus,
	1 seqNo,
	rw.FTA_RecordWeight_ID,
	ar.FTA_AttributesReport_ID,
	rw.OperationType
FROM FTA_EntryTicket et
INNER JOIN FTA_Vehicle vh ON(vh.FTA_Vehicle_ID = et.FTA_Vehicle_ID)
INNER JOIN AD_Client cli ON(cli.AD_Client_ID = et.AD_Client_ID)
INNER JOIN AD_Org org ON(org.AD_Org_ID = et.AD_Org_ID)
INNER JOIN FTA_MobilizationGuide mg ON(mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID)
INNER JOIN FTA_QualityAnalysis qa ON(qa.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID)
INNER JOIN FTA_RecordWeight rw ON(rw.FTA_QualityAnalysis_ID = qa.FTA_QualityAnalysis_ID)
INNER JOIN M_Product mp ON (mp.M_Product_ID=qa.M_Product_ID)
INNER JOIN FTA_Farming fm ON(fm.FTA_Farming_ID = mg.FTA_Farming_ID)
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = fm.FTA_FarmerCredit_ID)
INNER JOIN M_Lot lot ON(lot.M_Lot_ID = fm.PlantingCycle_ID)
INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID=et.C_BPartner_ID)
INNER JOIN M_InOut io ON(io.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND io.DocStatus = rw.DocStatus)
INNER JOIN M_Warehouse wh ON(wh.M_Warehouse_ID = io.M_Warehouse_ID)
INNER JOIN (
SELECT 'N' isWeight, av.Name Att, av.Value, av.ValueNumber, av.AttributeValueType, 0 Weight,av.QualityAnalysis_ID, 0 FTA_RecordWeight_ID, arl.M_Product_ID,arl.FTA_AttributesReport_ID 
FROM FTA_RV_AttributeValue av 
INNER JOIN M_AttributeSetInstance asi ON (av.M_AttributeSetInstance_ID = asi.M_AttributeSetInstance_ID)
INNER JOIN FTA_AttributesReportLine arl ON (arl.M_AttributeSet_ID = asi.M_AttributeSet_ID)
UNION ALL
SELECT 'Y' isWeight, cc.Name Att, '' "Value", 0 ValueNumber, 'N' AttributeValueType, rwd.Weight, 0 QualityAnalysis_ID, rwd.FTA_RecordWeight_ID, arl.M_Product_ID, arl.FTA_AttributesReport_ID 
FROM FTA_RecordWeightDetail rwd
INNER JOIN FTA_CategoryCalc cc ON(cc.FTA_CategoryCalc_ID = rwd.FTA_CategoryCalc_ID)
INNER JOIN FTA_AttributesReportLine arl ON (cc.FTA_CategoryCalc_ID = arl.FTA_CategoryCalc_ID)
) av ON (mp.M_Product_ID = av.M_Product_ID)
INNER JOIN FTA_AttributesReport ar ON (av.FTA_AttributesReport_ID = ar.FTA_AttributesReport_ID)/*

LEFT JOIN (SELECT 'N' isWeight, av.Name Att, av.Value, av.ValueNumber, av.AttributeValueType, 0 Weight,av.QualityAnalysis_ID, 0 FTA_RecordWeight_ID
		FROM FTA_RV_AttributeValue av
		UNION ALL
		SELECT 'Y' isWeight, cc.Name Att, '' "Value", 0 ValueNumber, 'N' AttributeValueType, rwd.Weight, 0 QualityAnalysis_ID, rwd.FTA_RecordWeight_ID
		FROM FTA_RecordWeightDetail rwd
		INNER JOIN FTA_CategoryCalc cc ON(cc.FTA_CategoryCalc_ID = rwd.FTA_CategoryCalc_ID)
		) av ON(av.QualityAnalysis_ID = qa.QualityAnalysis_ID OR av.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID)*/
WHERE et.OperationType = 'RMR'
UNION ALL
-- OperationType DBM
SELECT mg.DocumentNo MobilizationGuide,
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
	(rw.NetWeight - rw.PayWeight) Discount,
	rw.PayWeight,
	av.Att,
	av.Value AttValue,
	av.ValueNumber AttValueNumber,
	av.AttributeValueType,
	av.Weight,
	av.IsWeight,
	bp.TaxID BPValue,
	bp.Name BPName,
	(bp.TaxID || ' - ' || bp.Name) BPLongName,
	mp.Value ValueProduct,
	mp.Name NameProduct,
	'' Credit,
	'' PlantingCycle,
	wh.Name Warehouse,
	org.Name Org,
	cli.Name Client,
	vh.VehiclePlate,
	et.TrailerPlate,
	mg.DateDoc DateGuide,
	mg.QtyToDeliver,
	et.OperationType,
	qa.AnalysisType,
	et.AD_Org_ID,
	et.FTA_EntryTicket_ID,
	0 FTA_CreditDefinition_ID,
	io.M_Warehouse_ID,
	0 M_Lot_ID,
	et.C_BPartner_ID,
	et.FTA_Driver_ID,
	et.FTA_Vehicle_ID,
	et.FTA_MobilizationGuide_ID,
	qa.FTA_QualityAnalysis_ID,
	mp.M_Product_ID,
	0 FTA_FarmerCredit_ID,
	rw.DocStatus,
	1 seqNo,
	rw.FTA_RecordWeight_ID,
	ar.FTA_AttributesReport_ID,
	rw.OperationType
FROM FTA_EntryTicket et
INNER JOIN FTA_Vehicle vh ON(vh.FTA_Vehicle_ID = et.FTA_Vehicle_ID)
INNER JOIN AD_Client cli ON(cli.AD_Client_ID = et.AD_Client_ID)
INNER JOIN AD_Org org ON(org.AD_Org_ID = et.AD_Org_ID)
INNER JOIN FTA_RecordWeight rw ON(rw.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID)
INNER JOIN FTA_QualityAnalysis qa ON(qa.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND qa.AnalysisType = 'QA')
INNER JOIN FTA_MobilizationGuide mg ON(mg.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID)
INNER JOIN M_Product mp ON (mp.M_Product_ID=qa.M_Product_ID)
INNER JOIN M_InOut io ON(io.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND io.DocStatus = rw.DocStatus)
INNER JOIN M_Warehouse wh ON(wh.M_Warehouse_ID = io.M_Warehouse_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID=et.C_BPartner_ID)
INNER JOIN (
SELECT 'N' isWeight, av.Name Att, av.Value, av.ValueNumber, av.AttributeValueType, 0 Weight,av.QualityAnalysis_ID, 0 FTA_RecordWeight_ID, arl.M_Product_ID,arl.FTA_AttributesReport_ID 
FROM FTA_RV_AttributeValue av 
INNER JOIN M_AttributeSetInstance asi ON (av.M_AttributeSetInstance_ID = asi.M_AttributeSetInstance_ID)
INNER JOIN FTA_AttributesReportLine arl ON (arl.M_AttributeSet_ID = asi.M_AttributeSet_ID)
UNION ALL
SELECT 'Y' isWeight, cc.Name Att, '' "Value", 0 ValueNumber, 'N' AttributeValueType, rwd.Weight, 0 QualityAnalysis_ID, rwd.FTA_RecordWeight_ID, arl.M_Product_ID, arl.FTA_AttributesReport_ID 
FROM FTA_RecordWeightDetail rwd
INNER JOIN FTA_CategoryCalc cc ON(cc.FTA_CategoryCalc_ID = rwd.FTA_CategoryCalc_ID)
INNER JOIN FTA_AttributesReportLine arl ON (cc.FTA_CategoryCalc_ID = arl.FTA_CategoryCalc_ID)
) av ON (mp.M_Product_ID = av.M_Product_ID)
INNER JOIN FTA_AttributesReport ar ON (av.FTA_AttributesReport_ID = ar.FTA_AttributesReport_ID)
/*LEFT JOIN (SELECT 'N' isWeight, av.Name Att, av.Value, av.ValueNumber, av.AttributeValueType, 0 Weight,av.QualityAnalysis_ID, 0 FTA_RecordWeight_ID
		FROM FTA_RV_AttributeValue av
		UNION ALL
		SELECT 'Y' isWeight, cc.Name Att, '' "Value", 0 ValueNumber, 'N' AttributeValueType, rwd.Weight, 0 QualityAnalysis_ID, rwd.FTA_RecordWeight_ID
		FROM FTA_RecordWeightDetail rwd
		INNER JOIN FTA_CategoryCalc cc ON(cc.FTA_CategoryCalc_ID = rwd.FTA_CategoryCalc_ID)
		) av ON(av.QualityAnalysis_ID = qa.QualityAnalysis_ID OR av.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID)*/
WHERE et.OperationType = 'DBM'
UNION ALL
-- OperationType ORW
SELECT '' MobilizationGuide,
	et.Ext_Guide,
	et.DocumentNo EntryTicket,
	'' QualityAnalysis,
	rw.DocumentNo RecordWeight,
	rw.DateDoc,
	rw.InDate,
	rw.OutDate,
	rw.TareWeight,
	rw.GrossWeight,
	rw.NetWeight,
	(rw.NetWeight - rw.PayWeight) Discount,
	rw.PayWeight,
	'' Att,
	'' AttValue,
	0 AttValueNumber,
	'' AttributeValueType,
	0 Weight,
	'Y' IsWeight,
	bp.TaxID BPValue,
	bp.Name BPName,
	(bp.TaxID || ' - ' || bp.Name) BPLongName,
	'' ValueProduct,
	'' NameProduct,
	'' Credit,
	'' PlantingCycle,
	'' Warehouse,
	org.Name Org,
	cli.Name Client,
	vh.VehiclePlate,
	et.TrailerPlate,
	NULL DateGuide,
	0 QtyToDeliver,
	et.OperationType,
	'' AnalysisType,
	et.AD_Org_ID,
	et.FTA_EntryTicket_ID,
	0 FTA_CreditDefinition_ID,
	0 M_Warehouse_ID,
	0 M_Lot_ID,
	et.C_BPartner_ID,
	et.FTA_Driver_ID,
	et.FTA_Vehicle_ID,
	et.FTA_MobilizationGuide_ID,
	0 FTA_QualityAnalysis_ID,
	0 M_Product_ID,
	0 FTA_FarmerCredit_ID,
	rw.DocStatus,
	1 seqNo,
	rw.FTA_RecordWeight_ID,
	CAST(0 AS NUMERIC) FTA_AttributesReport_ID,
	rw.OperationType
FROM FTA_EntryTicket et
INNER JOIN FTA_Vehicle vh ON(vh.FTA_Vehicle_ID = et.FTA_Vehicle_ID)
INNER JOIN AD_Client cli ON(cli.AD_Client_ID = et.AD_Client_ID)
INNER JOIN AD_Org org ON(org.AD_Org_ID = et.AD_Org_ID)
INNER JOIN FTA_RecordWeight rw ON(rw.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID=et.C_BPartner_ID)
WHERE et.OperationType = 'ORW'
UNION ALL
--  OperationType BMR
SELECT mg.DocumentNo MobilizationGuide,
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
	(rw.NetWeight - rw.PayWeight) Discount,
	rw.PayWeight,
	av.Att,
	av.Value AttValue,
	av.ValueNumber AttValueNumber,
	av.AttributeValueType,
	av.Weight,
	av.IsWeight,
	bp.TaxID BPValue,
	bp.Name BPName,
	(bp.TaxID || ' - ' || bp.Name) BPLongName,
	mp.Value ValueProduct,
	mp.Name NameProduct,
	fc.DocumentNo Credit,
	lot.Name PlantingCycle,
	wh.Name Warehouse,
	org.Name Org,
	cli.Name Client,
	vh.VehiclePlate,
	et.TrailerPlate,
	mg.DateDoc DateGuide,
	mg.QtyToDeliver,
	et.OperationType,
	qa.AnalysisType,
	et.AD_Org_ID,
	et.FTA_EntryTicket_ID,
	fc.FTA_CreditDefinition_ID,
	io.M_Warehouse_ID,
	lot.M_Lot_ID,
	et.C_BPartner_ID,
	et.FTA_Driver_ID,
	et.FTA_Vehicle_ID,
	et.FTA_MobilizationGuide_ID,
	qa.FTA_QualityAnalysis_ID,
	mp.M_Product_ID,
	fc.FTA_FarmerCredit_ID,
	rw.DocStatus,
	1 seqNo,
	rw.FTA_RecordWeight_ID,
	ar.FTA_AttributesReport_ID,
	rw.OperationType
FROM FTA_EntryTicket et
INNER JOIN FTA_Vehicle vh ON(vh.FTA_Vehicle_ID = et.FTA_Vehicle_ID)
INNER JOIN AD_Client cli ON(cli.AD_Client_ID = et.AD_Client_ID)
INNER JOIN AD_Org org ON(org.AD_Org_ID = et.AD_Org_ID)
INNER JOIN FTA_MobilizationGuide mg ON(mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID)
INNER JOIN FTA_RecordWeight rw ON(rw.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID)
INNER JOIN M_Product mp ON (mp.M_Product_ID = rw.M_Product_ID)
INNER JOIN FTA_Farming fm ON(fm.FTA_Farming_ID = mg.FTA_Farming_ID)
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = fm.FTA_FarmerCredit_ID)
INNER JOIN M_Lot lot ON(lot.M_Lot_ID = fm.PlantingCycle_ID)
INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID=et.C_BPartner_ID)
INNER JOIN M_InOut io ON(io.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND io.DocStatus = rw.DocStatus)
INNER JOIN M_Warehouse wh ON(wh.M_Warehouse_ID = io.M_Warehouse_ID)
LEFT JOIN FTA_QualityAnalysis qa ON(qa.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND qa.AnalysisType = 'QA')
INNER JOIN (
SELECT 'N' isWeight, av.Name Att, av.Value, av.ValueNumber, av.AttributeValueType, 0 Weight,av.QualityAnalysis_ID, 0 FTA_RecordWeight_ID, arl.M_Product_ID,arl.FTA_AttributesReport_ID 
FROM FTA_RV_AttributeValue av 
INNER JOIN M_AttributeSetInstance asi ON (av.M_AttributeSetInstance_ID = asi.M_AttributeSetInstance_ID)
INNER JOIN FTA_AttributesReportLine arl ON (arl.M_AttributeSet_ID = asi.M_AttributeSet_ID)
UNION ALL
SELECT 'Y' isWeight, cc.Name Att, '' "Value", 0 ValueNumber, 'N' AttributeValueType, rwd.Weight, 0 QualityAnalysis_ID, rwd.FTA_RecordWeight_ID, arl.M_Product_ID, arl.FTA_AttributesReport_ID 
FROM FTA_RecordWeightDetail rwd
INNER JOIN FTA_CategoryCalc cc ON(cc.FTA_CategoryCalc_ID = rwd.FTA_CategoryCalc_ID)
INNER JOIN FTA_AttributesReportLine arl ON (cc.FTA_CategoryCalc_ID = arl.FTA_CategoryCalc_ID)
) av ON (mp.M_Product_ID = av.M_Product_ID)
INNER JOIN FTA_AttributesReport ar ON (av.FTA_AttributesReport_ID = ar.FTA_AttributesReport_ID)
/*LEFT JOIN (SELECT 'N' isWeight, av.Name Att, av.Value, av.ValueNumber, av.AttributeValueType, 0 Weight,av.QualityAnalysis_ID, 0 FTA_RecordWeight_ID
		FROM FTA_RV_AttributeValue av
		UNION ALL
		SELECT 'Y' isWeight, cc.Name Att, '' "Value", 0 ValueNumber, 'N' AttributeValueType, rwd.Weight, 0 QualityAnalysis_ID, rwd.FTA_RecordWeight_ID
		FROM FTA_RecordWeightDetail rwd
		INNER JOIN FTA_CategoryCalc cc ON(cc.FTA_CategoryCalc_ID = rwd.FTA_CategoryCalc_ID)
		) av ON(av.QualityAnalysis_ID = qa.QualityAnalysis_ID OR av.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID)*/
WHERE et.OperationType = 'BMR'
)temporal 
WHERE 
	temporal.M_Product_ID = 1009134 
	AND FTA_AttributesReport_ID = 3 --AND temporal.OperationType='RMR'