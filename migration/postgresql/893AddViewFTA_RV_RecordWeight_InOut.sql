CREATE OR REPLACE VIEW FTA_RV_RecordWeight_InOut AS 
SELECT
MobilizationGuide, 
Ext_Guide,
EntryTicket,
QualityAnalysis, 
RecordWeight, 
DateDoc, 
InDate, 
OutDate, 
TareWeight, 
GrossWeight, 
NetWeight, 
Discount, 
Payweight, 
gq.Att, 
gq.AttValue, 
gq.AttValueNumber, 
gq.AttributeValueType, 
gq.Weight, 
gq.IsWeight, 
bp.Value BPValue, 
bp.Name BPName, 
COALESCE(bp.TaxID ,'') || ' - ' || COALESCE(bp.Name,'') BPLongName, 
mp.Value ValueProduct, 
mp.Name NameProduct, 
Credit, 
ml.Name PlantingCycle, 
mw.Name AS WareHouse, 
ao.Name AS Org, 
ac.Name AS Client, 
fv.VehiclePlate, 
TrailerPlate, 
DateGuide, 
QtyToDeliver, 
OperationType, 
AnalysisType, 
gq.AD_Org_ID, 
FTA_EntryTicket_ID, 
FTA_CreditDefinition_ID, 
gq.M_WareHouse_ID, 
gq.M_Lot_ID, 
gq.C_BPartner_ID, 
FTA_Driver_ID, 
gq.FTA_Vehicle_ID, 
FTA_MobilizationGuide_ID, 
FTA_QualityAnalysis_ID, 
gq.M_Product_ID, 
FTA_FarmerCredit_ID, 
DocStatus, 
gq.SeqNo, 
gq.FTA_RecordWeight_ID, 
gq.FTA_AttributeReport_ID
FROM (
	SELECT 
	MobilizationGuide,
	Ext_Guide,
	EntryTicket,
	QualityAnalysis, 
	RecordWeight, 
	DateDoc, 
	InDate, 
	OutDate, 
	TareWeight, 
	GrossWeight, 
	NetWeight, 
	Discount, 
	PayWeight, 
	Credit, 
	TrailerPlate, 
	DateGuide, 
	QtyToDeliver, 
	OperationType, 
	AnalysisType, 
	AD_Org_ID, 
	FTA_EntryTicket_ID, 
	FTA_CreditDefinition_ID, 
	M_WareHouse_ID, 
	M_Lot_ID, 
	C_BPartner_ID, 
	FTA_Driver_ID, 
	FTA_Vehicle_ID, 
	FTA_MobilizationGuide_ID, 
	FTA_QualityAnalysis_ID, 
	M_Product_ID, 
	FTA_FarmerCredit_ID, 
	DocStatus, 
	SeqNo, 
	FTA_RecordWeight_ID,
	AD_Client_ID,
	rwios.QualityAnalysis_ID,
	avq.Att, 
	avq.Value AttValue, 
	avq.ValueNumber AttValueNumber, 
	avq.AttributeValueType, 
	0 Weight, 
	'N' IsWeight,
	avq.FTA_AttributeReport_ID
	FROM 
	FTA_RV_RecordWeight_InOut_Source rwios
	INNER JOIN 
	(SELECT av.Name AS Att, 
		av.Value, 
		av.ValueNumber, 
		av.AttributeValueType, 
		av.QualityAnalysis_ID, 
		av.M_Attribute_ID, 
		av.M_AttributeSet_ID, 
		atl.FTA_AttributeReport_ID
	FROM FTA_RV_AttributeValue av
	INNER JOIN FTA_AttributeReportLine atl ON atl.M_Attribute_ID = av.M_Attribute_ID
	) avq ON avq.QualityAnalysis_ID = rwios.QualityAnalysis_ID 
	
	UNION ALL

	SELECT 
	MobilizationGuide,
	Ext_Guide,
	EntryTicket,
	QualityAnalysis, 
	RecordWeight, 
	DateDoc, 
	InDate, 
	OutDate, 
	TareWeight, 
	GrossWeight, 
	NetWeight, 
	Discount, 
	PayWeight, 
	Credit, 
	TrailerPlate, 
	DateGuide, 
	QtyToDeliver, 
	OperationType, 
	AnalysisType, 
	AD_Org_ID, 
	FTA_EntryTicket_ID, 
	FTA_CreditDefinition_ID, 
	M_WareHouse_ID, 
	M_Lot_ID, 
	C_BPartner_ID, 
	FTA_Driver_ID, 
	FTA_Vehicle_ID, 
	FTA_MobilizationGuide_ID, 
	FTA_QualityAnalysis_ID, 
	M_Product_ID, 
	FTA_FarmerCredit_ID, 
	DocStatus, 
	SeqNo, 
	rwios.FTA_RecordWeight_ID,
	AD_Client_ID,
	QualityAnalysis_ID,
	avw.Att, 
	'' AttValue, 
	0 AttValueNumber, 
	'N' AttributeValueType, 
	avw.Weight Weight, 
	'Y' IsWeight,
	avw.FTA_AttributeReport_ID
	FROM 
	FTA_RV_RecordWeight_InOut_Source rwios
	INNER JOIN 
	(SELECT cc.Name Att, 
		rwd.Weight, 
		rwd.FTA_RecordWeight_ID, 
		cc.FTA_CategoryCalc_ID, 
		atl.FTA_AttributeReport_ID
	FROM FTA_RecordWeightDetail rwd
	INNER JOIN FTA_CategoryCalc cc ON cc.FTA_CategoryCalc_ID = rwd.FTA_CategoryCalc_ID
	INNER JOIN FTA_AttributeReportLine atl ON atl.FTA_CategoryCalc_ID = rwd.FTA_CategoryCalc_ID
	) avw ON avw.FTA_RecordWeight_ID = rwios.FTA_RecordWeight_ID

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
		NULL AS FTA_CreditDefinition_ID, 
		NULL AS M_WareHouse_ID, 
		NULL AS M_Lot_ID, 
		et.C_BPartner_ID, 
		et.FTA_Driver_ID, 
		et.FTA_Vehicle_ID, 
		et.FTA_MobilizationGuide_ID, 
		NULL AS FTA_QualityAnalysis_ID, 
		NULL AS M_Product_ID, 
		NULL AS FTA_FarmerCredit_ID, 
		rw.DocStatus, 
		1 AS SeqNo, 
		rw.FTA_RecordWeight_ID, 
		et.AD_Client_ID,
		NULL QualityAnalysis_ID,
		'' Att, 
		'' AttValue, 
		0 AttValueNumber, 
		'N' AttributeValueType, 
		0 Weight, 
		'Y' IsWeight,
		NULL FTA_AttributeReport_ID
	FROM
	FTA_EntryTicket et
	INNER JOIN FTA_RecordWeight rw ON rw.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID
	WHERE et.OperationType = 'ORW'
) gq
LEFT JOIN AD_Client ac ON ac.AD_Client_ID = gq.AD_Client_ID
LEFT JOIN AD_Org ao ON ao.AD_Org_ID = gq.AD_Org_ID
LEFT JOIN C_BPartner bp ON bp.C_BPartner_ID = gq.C_BPartner_ID 
LEFT JOIN M_Product mp ON mp.M_Product_ID = gq.M_Product_ID
LEFT JOIN M_Lot ml ON ml.M_Lot_ID = gq.M_Lot_ID
LEFT JOIN M_WareHouse mw ON mw.M_WareHouse_ID = gq.M_WareHouse_ID
LEFT JOIN FTA_Vehicle fv ON fv.FTA_Vehicle_ID = gq.FTA_Vehicle_ID;