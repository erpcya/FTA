-- DROP VIEW FTA_RV_TechnicalFormLine;
CREATE OR REPLACE VIEW FTA_RV_TechnicalFormLine AS
SELECT 
	tfl.AD_Client_ID, 
	tfl.AD_Org_ID, 
	tfl.Created, 
	tfl.CreatedBy,
	tfl.Updated, 
	tfl.UpdatedBy,
	tfl.IsActive,
	tfl.Comments,
	tfl.FTA_Farm_ID,
	tfl.FTA_FarmDivision_ID, 
	tfl.FTA_Farming_ID, 
	tfl.FTA_FarmingStage_ID, 
	tfl.FTA_ObservationType_ID, 
	tfl.FTA_TechnicalForm_ID, 
	tfl.FTA_TechnicalFormLine_ID, 	 
	tfl.Processed,
	tfl.FTA_TechnicalFormLine_ID FTA_RV_TechnicalFormLine,
	fm.Area, 
	fm.Category_ID,
	fm.C_OrderLine_ID,
	fm.EstimatedDate, 
	fm.EstimatedQty,
	fm.EstimatedYield,
	fm.FTA_FarmerCredit_ID,
	fm.HarvestendDate, 
	fm.HarvestStartDate,
	fm.MaxQty, 
	fm.PlantingCycle_ID, 
	fm.PlantingEndDate,
	fm.PlantingStartDate,
	fm.Qty,
	fm.RE_EstimatedQty
FROM FTA_TechnicalFormLine tfl
INNER JOIN FTA_FarmDivision fd ON (fd.FTA_FarmDivision_ID = tfl.FTA_FarmDivision_ID)
INNER JOIN FTA_Farming fm ON (fm.FTA_Farming_ID = tfl.FTA_Farming_ID)
INNER JOIN FTA_FarmingStage fs ON (tfl.FTA_FarmingStage_ID = fs.FTA_FarmingStage_ID)
INNER JOIN FTA_ObservationType ot ON (tfl.FTA_ObservationType_ID = ot.FTA_ObservationType_ID)
LEFT JOIN FTA_Farm f ON (f.FTA_Farm_ID = tfl.FTA_Farm_ID)
;
