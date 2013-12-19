-- DROP VIEW FTA_RV_BillOfExchange
CREATE OR REPLACE VIEW FTA_RV_BillOfExchange AS 
SELECT be.AD_Client_ID, be.AD_Org_ID, be.Created, be.CreatedBy, be.Updated, be.UpdatedBy, be.IsActive, 
be.FTA_BillOfExchange_ID, be.FTA_BillOfExchange_ID FTA_RV_BillOfExchange_ID, be.C_DocType_ID, be.DocumentNo, 
be.DateDoc, be.ValidTo, be.Amt, be.Amt AmtInWords, be.C_BPartner_ID, 
be.FTA_FarmerCredit_ID, be.Description, be.DocStatus, be.IsApproved, be.Processed, be.Status, re.Name RegionName,
be.C_BPartner_Location_ID, lo.Name, fc.FTA_CreditAct_ID, loc.C_City_ID
FROM FTA_BillOfExchange be
LEFT JOIN AD_OrgInfo oinf ON(oinf.AD_Org_ID = be.AD_Org_ID)
LEFT JOIN C_Location loc ON(loc.C_Location_ID = oinf.C_Location_ID)
LEFT JOIN C_Region re ON(re.C_Region_ID = loc.C_Region_ID)
LEFT JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = be.FTA_FarmerCredit_ID)
LEFT JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID)
LEFT JOIN M_Lot lo ON(lo.M_Lot_ID = cd.PlantingCycle_ID)