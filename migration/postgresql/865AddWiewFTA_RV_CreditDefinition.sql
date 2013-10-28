--DROP VIEW FTA_RV_CreditDefinition
CREATE OR REPLACE VIEW FTA_RV_CreditDefinition AS
SELECT cd.FTA_CreditDefinition_ID, cd.FTA_CreditDefinition_ID FTA_RV_CreditDefinition_ID, cd.AD_Client_ID, cd.AD_Org_ID, cd.Created, cd.CreatedBy, cd.Updated, cd.UpdatedBy, cd.IsActive,
cd.C_DocType_ID, cd.DateDoc, cd.DocumentNo, cd.Description, cd.DocStatus, cd.Amt, cd.Category_ID,
cd.M_PriceList_ID, cd.PlantingCycle_ID
FROM FTA_CreditDefinition cd