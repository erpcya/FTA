-- DROP VIEW FTA_RV_Liquidation ;
CREATE OR REPLACE VIEW FTA_RV_Liquidation AS
SELECT 	
	-- Documento Liquidación
	fl.FTA_FarmerLiquidation_ID,  
	
	fl.AD_Client_ID,  
	fl.AD_Org_ID,  
	fl.Updated,  
	fl.UpdatedBy,
	fl.Created,  
	fl.CreatedBy,
	fl.IsActive,
	
	fl.Processed,  
	fl.DateDoc,    
	fl.DocStatus,  
	fl.DocumentNo,  
		   
	fl.Amt,    
	NetWeight, 
	--Producto
	fl.M_Product_ID, 
	p.Value,
	--Socio del Negocio
	fl.C_BPartner_ID,
	COALESCE(bp.Value,bp.TaxID) AS BPTaxID,
	bp.Name || COALESCE(bp.Name2,'') AS Name,
	--Tipo de Documento
	fl.C_DocType_ID,  
	dt.PrintName AS DocumentType,
	--Factura	 
	fl.C_Invoice_ID,  

	--Organización
	oi.c_location_id AS org_location_id, 
	oi.taxid,

	-- Crédito Productor
	fl.FTA_FarmerCredit_ID,
	fl.FTA_FarmerLiquidation_ID AS FTA_RV_Liquidation_ID,
	fl.FTA_CategoryCalc_ID,
	fl.C_Currency_ID

	
FROM FTA_FarmerLiquidation fl
INNER JOIN C_DocType dt ON (dt.C_DocType_ID = fl.C_DocType_ID)
INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID = fl.C_BPartner_ID)
INNER JOIN M_Product p ON (p.M_Product_ID = fl.M_Product_ID)
INNER JOIN FTA_FarmerCredit fc ON (fc.FTA_FarmerCredit_ID = fl.FTA_FarmerCredit_ID)
INNER JOIN AD_OrgInfo  oi ON (oi.AD_Org_ID = fl.AD_Org_ID)
LEFT JOIN C_Invoice i ON (i.C_Invoice_ID = fl.C_Invoice_ID)
LEFT JOIN FTA_CategoryCalc cc ON (cc.FTA_CategoryCalc_ID = fl.FTA_CategoryCalc_ID)
;

--DROP VIEW FTA_RV_LiquidationLine ;
CREATE OR REPLACE VIEW FTA_RV_LiquidationLine AS
SELECT 
	FTA_FarmerLiquidationLine_ID,  
	fll.AD_Client_ID,  
	fll.AD_Org_ID,  
	fll.Created,  
	fll.CreatedBy,  
	fll.Updated,  
	fll.UpdatedBy,
	fll.IsActive,  
	fll.Processed, 
	fll.NetWeight, 
	fll.PayWeight,  
	Price,  
	PriceList,
	
	fll.FTA_FarmerLiquidation_ID,  	
	fll.FTA_RecordWeight_ID,
	mg.M_Warehouse_ID,
	qa.QualityAnalysis_ID,
	fl.C_BPartner_ID,
	qa.M_Product_ID
	
FROM FTA_FarmerLiquidationLine fll
INNER JOIN FTA_FarmerLiquidation fl ON (fll.FTA_FarmerLiquidation_ID =fl.FTA_FarmerLiquidation_ID)
INNER JOIN FTA_RecordWeight rw ON (rw.FTA_RecordWeight_ID = fll.FTA_RecordWeight_ID)
INNER JOIN FTA_QualityAnalysis qa ON (qa.FTA_QualityAnalysis_ID = rw.FTA_QualityAnalysis_ID)
INNER JOIN FTA_EntryTicket et ON (et.FTA_EntryTicket_ID = qa.FTA_EntryTicket_ID)
INNER JOIN FTA_MobilizationGuide mg ON (mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID)
;