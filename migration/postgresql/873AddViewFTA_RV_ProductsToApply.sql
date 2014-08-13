-- DROP VIEW FTA_RV_ProductsToApply ;
CREATE OR REPLACE VIEW FTA_RV_ProductsToApply AS
SELECT
	pta.AD_Client_ID, 
	pta.AD_Org_ID, 
	pta.Created, 
	pta.CreatedBy, 
	pta.Updated, 
	pta.UpdatedBy,
	pta.IsActive,	
	pta.C_UOM_ID, 
	pta.DateFrom, 
	pta.DateTo, 
	pta.Dosage_Uom_ID, 
	pta.FTA_ProductsToApply_ID, 
	pta.FTA_TechnicalForm_ID, 
	pta.FTA_TechnicalFormLine_ID,  
	pta.M_Product_ID, 
	pta.Processed, 
	pta.Qty, 
	pta.QtyDosage, 
	pta.QtySuggested, 
	pta.Suggested_Uom_ID,
	pta.FTA_ProductsToApply_ID FTA_RV_ProductsToApply
FROM FTA_ProductsToApply pta
INNER JOIN M_Product p ON (p.M_Product_ID = pta.M_Product_ID);