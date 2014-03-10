--DROP VIEW FTA_RV_Farming;
CREATE OR REPLACE VIEW FTA_RV_Farming AS
SELECT 
	f.AD_Client_ID, 
	f.AD_Org_ID,
	f.Created, 
	f.CreatedBy, 
	f.IsActive, 
	f.Updated, 
	f.UpdatedBy, 
	f.Area, 
	f.Category_ID, 
	f.C_OrderLine_ID, 
	f.Description, 
	f.EstimatedDate, 
	f.EstimatedQty, 
	f.EstimatedYield, 
	f.FarmingValidate, 
	f.FinancingType, 
	f.FTA_FarmDivision_ID, 
	f.FTA_FarmerCredit_ID, 
	f.FTA_Farming_ID, 
	f.GuideGenerate, 
	f.HarvestEndDate, 
	f.HarvestStartDate, 
	f.IsValid, 
	f.MaxQty, 
	f.PlantingCycle_ID, 
	f.PlantingEndDate, 
	f.PlantingStartDate, 
	f.Qty, 
	f.Re_EstimatedQty, 
	f.StartDate, 
	f.Status
FROM FTA_Farming f
INNER JOIN FTA_FarmerCredit fc ON (fc.FTA_FarmerCredit_ID = f.FTA_FarmerCredit_ID)
INNER JOIN FTA_FarmDivision fd ON (fd.FTA_FarmDivision_ID = f.FTA_FarmDivision_ID)
LEFT JOIN C_OrderLine ol ON (ol.C_OrderLine_ID = f.C_OrderLine_ID)

