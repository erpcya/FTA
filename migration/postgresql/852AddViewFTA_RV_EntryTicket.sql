﻿--DROP VIEW FTA_RV_EntryTicket ;
CREATE OR REPLACE VIEW FTA_RV_EntryTicket AS
SELECT 
	et.FTA_EntryTicket_ID,
	et.FTA_EntryTicket_ID AS FTA_RV_EntryTicket_ID, 
	et.AD_Client_ID,  
	et.AD_Org_ID,  
	et.Updated,  
	et.UpdatedBy,
	et.Created,  
	et.CreatedBy,
	et.Processed,  
	et.DateDoc,  
	et.DocAction,  
	et.DocStatus,  
	et.DocumentNo,  
	et.IsActive,
	et.Description,
	et.Ext_Guide,
	et.FTA_Driver_ID,
	et.FTA_Vehicle_ID,
	et.M_Shipper_ID,
	et.ReferenceNO, -- Numero de Patio
	--Organización
	oi.c_location_id AS org_location_id, 
	oi.taxid,	
	--Socio del Negocio
	et.C_BPartner_ID,
	COALESCE(bp.Value,bp.TaxID) AS BPTaxID,
	COALESCE(bp.Name,'') || COALESCE(bp.Name2,'') AS BPName,
	--Tipo de Documento
	et.C_DocType_ID,  
	dt.PrintName AS DocumentType	,
	-- Guia de Movilizacion
	et.FTA_MobilizationGuide_ID,
	COALESCE(p.M_Product_ID,lo.M_Product_ID) M_Product_ID,
	CASE WHEN et.IsPrinted ='Y' THEN
		'*' 
	ELSE
		NULL
	END AS Copy,
	et.OperationType,
	fd.FTA_FarmDivision_ID,
	l.M_Lot_ID,
	-- Driver
	d.Value,
	d.Name,
	-- Vehicle
	v.FTA_VehicleBrand_ID,
	v.FTA_VehicleModel_ID,
	v.FTA_VehicleType_ID,
	v.VehiclePlate,
	v.VolumeCapacity,
	v.LoadCapacity
FROM FTA_EntryTicket et 
INNER JOIN C_DocType dt ON (dt.C_DocType_ID = et.C_DocType_ID)
LEFT JOIN FTA_MobilizationGuide mg ON (mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID)
LEFT JOIN FTA_Farming f ON (f.FTA_Farming_ID = mg.FTA_Farming_ID) 
LEFT JOIN FTA_FarmDivision fd ON (fd.FTA_FarmDivision_ID = f.FTA_FarmDivision_ID)
LEFT JOIN M_Lot l ON (l.M_Lot_ID = f.PlantingCycle_ID)
LEFT JOIN M_Product p ON (p.M_Product_ID = f.Category_ID)
LEFT JOIN AD_OrgInfo  oi ON (oi.AD_Org_ID = et.AD_Org_ID)
LEFT JOIN M_Shipper s ON (s.M_Shipper_ID = et.M_Shipper_ID)
LEFT JOIN FTA_Driver d ON (d.FTA_Driver_ID = et.FTA_Driver_ID)
LEFT JOIN FTA_Vehicle v ON (v.FTA_Vehicle_ID = et.FTA_Vehicle_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID = et.C_BPartner_ID)
LEFT JOIN FTA_LoadOrder lo ON (lo.FTA_EntryTicket_ID = et.FTA_EntryTicket_ID AND lo.DocStatus IN ('CO','CL'))
--WHERE  et.FTA_EntryTicket_ID=1000126

;--SELECT * FROM FTA_Vehicle LIMIT 1