--DROP VIEW FTA_RV_EntryTicket ;
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
	COALESCE(bp.Name,' ') || COALESCE(bp.Name2,' ') AS Name,
	--Tipo de Documento
	et.C_DocType_ID,  
	dt.PrintName AS DocumentType	,
	-- Guia de Movilizacion
	et.FTA_MobilizationGuide_ID

FROM FTA_EntryTicket et 
INNER JOIN C_DocType dt ON (dt.C_DocType_ID = et.C_DocType_ID)
INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID = et.C_BPartner_ID)
INNER JOIN FTA_MobilizationGuide mg ON (mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID)
INNER JOIN AD_OrgInfo  oi ON (oi.AD_Org_ID = et.AD_Org_ID)
LEFT JOIN M_Shipper s ON (s.M_Shipper_ID = et.M_Shipper_ID)
;
