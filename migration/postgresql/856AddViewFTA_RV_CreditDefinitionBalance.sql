--DROP VIEW FTA_RV_CreditDefinitionBalance
CREATE OR REPLACE VIEW FTA_RV_CreditDefinitionBalance AS
SELECT cd.FTA_CreditDefinition_ID, cd.AD_Client_ID, cd.AD_Org_ID, cd.Created, cd.CreatedBy, cd.Updated, cd.UpdatedBy, cd.IsActive,
cd.C_DocType_ID, cd.DateDoc, cd.DocumentNo, cd.Description, cd.DocStatus, cd.Amt, cd.Category_ID,
cd.M_PriceList_ID, cd.Name, cd.PlantingCycle_ID, 
cdl.FTA_CreditDefinitionLine_ID, cdl.Line, 
cdl.M_Product_Category_ID, cdl.M_Product_ID, cdl.C_Charge_ID, 
CASE 
	WHEN cdl.M_Product_Category_ID IS NOT NULL THEN pc.Name 
	WHEN cdl.M_Product_ID IS NOT NULL THEN pr.Name 
	WHEN cdl.C_Charge_ID IS NOT NULL THEN cr.Name
	WHEN cdl.C_ChargeType_ID IS NOT NULL THEN ct.Name
END || COALESCE(' ' || cdl.Description, '') LineDescription, 
ft.FTA_FarmerCredit_ID, ft.C_BPartner_ID, ft.AD_Table_ID,
cdl.Amt SO_CreditLimit, COALESCE(SUM(ft.Amt), 0) SO_CreditUsed, cdl.Amt - COALESCE(SUM(ft.Amt), 0) Balance
FROM FTA_CreditDefinition cd
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID)
LEFT JOIN M_Product_Category pc ON(pc.M_Product_Category_ID = cdl.M_Product_Category_ID)
LEFT JOIN M_Product pr ON(pr.M_Product_ID = cdl.M_Product_ID)
LEFT JOIN C_Charge cr ON(cr.C_Charge_ID = cdl.C_Charge_ID)
LEFT JOIN FTA_Fact ft ON(ft.FTA_CreditDefinitionLine_ID = cdl.FTA_CreditDefinitionLine_ID)
LEFT JOIN C_ChargeType ct ON(ct.C_ChargeType_ID = cdl.C_ChargeType_ID)
GROUP BY cd.FTA_CreditDefinition_ID, cd.AD_Client_ID, cd.AD_Org_ID, cd.Created, cd.CreatedBy, 
cd.Updated, cd.UpdatedBy, cd.IsActive,
cd.C_DocType_ID, cd.DateDoc, cd.DocumentNo, cd.Description, cd.DocStatus, cd.Amt, cd.Category_ID,
cd.M_PriceList_ID, cd.Name, cd.PlantingCycle_ID, 
cdl.FTA_CreditDefinitionLine_ID, cdl.Line, 
cdl.M_Product_Category_ID, cdl.M_Product_ID, cdl.C_Charge_ID, pc.Name, pr.Name, cr.Name,
cdl.Amt, ft.C_BPartner_ID, ft.AD_Table_ID, ft.FTA_FarmerCredit_ID, ct.Name