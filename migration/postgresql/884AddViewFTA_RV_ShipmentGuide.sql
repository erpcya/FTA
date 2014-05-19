-- 
--DROP VIEW FTA_RV_ShipmentGuide;
CREATE OR REPLACE VIEW FTA_RV_ShipmentGuide AS
SELECT 
	-- Guia
	mg.AD_Org_ID,mg.AD_Client_ID,mg.IsActive,mg.Created,mg.CreatedBy,mg.Updated,mg.UpdatedBy,mg.C_DocType_ID,mg.DateDoc,mg.Description,mg.DocStatus, mg.DocumentNo,
	oi.C_Location_ID AS Org_Location_ID, oi.TaxID,
	--Datos del Cliente
	ol.C_BPartner_ID,ol.M_Warehouse_ID,COALESCE(bp.Value,bp.TaxID) BPTaxID,
	
	-- Conductor
	d.Value,d.Name,d.FTA_Driver_ID,
	--Vehiculo
	v.VehiclePlate,
	--v.Name ,
	v.FTA_Vehicle_ID,
	-- Registro de Peso
	rw.FTA_RecordWeight_ID,rw.GrossWeight, rw.InDate, rw.IsSOTrx, rw.NetWeight, rw.OutDate, rw.TareWeight, rw.WeightStatus,rw.PayWeight,
	rw.SelectionWeight,rw.ImportWeight,rw.FTA_EntryTicket_ID, 
	--Análisis de Calidad
	qa.QualityAnalysis_ID,qa.DateDoc QualytiDate,qa.AnalysisType,qa.FTA_QualityAnalysis_ID,
	-- Rubro
	lol.M_Product_ID,
	p.C_Uom_ID,
	-- Ciclo
	l.M_Lot_ID,
	ci.C_UOM_Weight_ID,
	ci.C_UOM_Volume_ID,
	ci.C_UOM_Conversion_ID,
	mg.FTA_MobilizationGuide_ID AS FTA_RV_ShipmentGuide_ID
	
FROM FTA_MobilizationGuide mg
INNER JOIN FTA_LoadOrder lo ON (lo.FTA_LoadOrder_ID = mg.FTA_LoadOrder_ID)
LEFT JOIN FTA_Driver d ON (d.FTA_Driver_ID = lo.FTA_Driver_ID)
LEFT JOIN FTA_Vehicle v ON (v.FTA_Vehicle_ID = lo.FTA_Vehicle_ID)
LEFT JOIN FTA_LoadOrderLine lol ON (lol.FTA_LoadOrder_ID = lo.FTA_LoadOrder_ID)
LEFT JOIN C_OrderLine ol ON (ol.C_OrderLine_ID = lol.C_OrderLine_ID)
LEFT JOIN M_Product p ON (p.M_Product_ID = lol.M_Product_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID = ol.C_BPartner_ID)
LEFT JOIN FTA_RecordWeight rw ON (rw.FTA_RecordWeight_ID = mg.FTA_RecordWeight_ID)
LEFT JOIN M_InOut io ON (io.FTA_RecordWeight_ID = rw.FTA_RecordWeight_ID)
LEFT JOIN M_InOutLine iol ON (iol.M_InOut_ID = io.M_InOut_ID) 
LEFT JOIN M_AttributeSetInstance asi ON (asi.M_AttributeSetInstance_ID = iol.M_AttributeSetInstance_ID)
LEFT JOIN M_Lot l ON (l.M_Lot_ID = asi.M_Lot_ID)
LEFT JOIN AD_OrgInfo oi ON (oi.AD_Org_ID = mg.AD_Org_ID)
LEFT JOIN FTA_QualityAnalysis qa ON(qa.FTA_QualityAnalysis_ID = rw.FTA_QualityAnalysis_ID)
LEFT JOIN AD_ClientInfo ci ON (ci.AD_Client_ID = mg.AD_Client_ID)
LEFT JOIN C_UOM u ON (u.C_Uom_ID = ci.C_UOM_Conversion_ID)
WHERE 
	mg.IsSOTrx = 'Y';
