--DROP VIEW FTA_RV_CreditDefinitionLine
CREATE OR REPLACE VIEW FTA_RV_CreditDefinitionLine AS
SELECT cdl.FTA_CreditDefinition_ID, cdl.AD_Client_ID, cdl.AD_Org_ID, cdl.Created, cdl.CreatedBy, cdl.Updated, cdl.UpdatedBy, cdl.IsActive,
cdl.FTA_CreditDefinitionLine_ID, cdl.FTA_CreditDefinitionLine_ID FTA_RV_CreditDefinitionLine_ID, cdl.Line, 
cdl.M_Product_Category_ID, cdl.M_Product_ID, cdl.C_Charge_ID, cdl.C_ChargeType_ID,
CASE 
	WHEN cdl.M_Product_Category_ID IS NOT NULL THEN pc.Name 
	WHEN cdl.M_Product_ID IS NOT NULL THEN pr.Name 
	WHEN cdl.C_Charge_ID IS NOT NULL THEN cr.Name
	WHEN cdl.C_ChargeType_ID IS NOT NULL THEN ct.Name
END || COALESCE(cdl.Description, '') LineDescription
FROM FTA_CreditDefinitionLine cdl 
LEFT JOIN M_Product_Category pc ON(pc.M_Product_Category_ID = cdl.M_Product_Category_ID)
LEFT JOIN M_Product pr ON(pr.M_Product_ID = cdl.M_Product_ID)
LEFT JOIN C_Charge cr ON(cr.C_Charge_ID = cdl.C_Charge_ID)
LEFT JOIN C_ChargeType ct ON(ct.C_ChargeType_ID = cdl.C_ChargeType_ID)