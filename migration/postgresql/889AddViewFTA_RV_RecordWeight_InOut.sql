--DROP VIEW FTA_RV_RecordWeight_InOut
CREATE OR REPLACE VIEW FTA_RV_RecordWeight_InOut AS 
SELECT 	mg.DocumentNo MobilizationGuide,
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
	rw.OperationType,
	qa.AnalysisType,
	rw.AD_Org_ID,
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
	rw.FTA_RecordWeight_ID
FROM FTA_EntryTicket et
INNER JOIN FTA_Vehicle vh ON(vh.FTA_Vehicle_ID = et.FTA_Vehicle_ID)
INNER JOIN AD_Client cli ON(cli.AD_Client_ID = et.AD_Client_ID)
INNER JOIN AD_Org org ON(org.AD_Org_ID = et.AD_Org_ID)
LEFT JOIN FTA_MobilizationGuide mg ON(mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID)
LEFT JOIN FTA_QualityAnalysis qa ON(qa.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID)
LEFT JOIN FTA_RecordWeight rw ON(rw.FTA_QualityAnalysis_ID = qa.FTA_QualityAnalysis_ID)
LEFT JOIN M_InOut io ON(io.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID AND io.DocStatus = rw.DocStatus)
LEFT JOIN M_Warehouse wh ON(wh.M_Warehouse_ID = io.M_Warehouse_ID)
LEFT JOIN (SELECT 'N' isWeight, av.Name Att, av.Value, av.ValueNumber, av.AttributeValueType, 0 Weight,av.QualityAnalysis_ID, 0 FTA_RecordWeight_ID
		FROM FTA_RV_AttributeValue av
		UNION ALL
		SELECT 'Y' isWeight, cc.Name Att, '' "Value", 0 ValueNumber, 'N' AttributeValueType, rwd.Weight, 0 QualityAnalysis_ID, rwd.FTA_RecordWeight_ID
		FROM FTA_RecordWeightDetail rwd
		INNER JOIN FTA_CategoryCalc cc ON(cc.FTA_CategoryCalc_ID = rwd.FTA_CategoryCalc_ID)
		) av ON(av.QualityAnalysis_ID = qa.QualityAnalysis_ID OR av.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID=et.C_BPartner_ID)
LEFT JOIN M_Product mp ON (mp.M_Product_ID=qa.M_Product_ID)
LEFT JOIN FTA_Farming fm ON(fm.FTA_Farming_ID = mg.FTA_Farming_ID)
LEFT JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = fm.FTA_FarmerCredit_ID)
LEFT JOIN M_Lot lot ON(lot.M_Lot_ID = fm.PlantingCycle_ID)