--DROP VIEW FTA_RV_Fact
CREATE OR REPLACE VIEW FTA_RV_Fact AS
SELECT ft.AD_Client_ID, ft.AD_Org_ID, ft.C_BPartner_ID, ft.DateDoc, ft.Description, 
ft.FTA_CreditDefinition_ID, ft.FTA_CreditDefinitionLine_ID, ft.FTA_FarmerCredit_ID, 
(ft.Amt * ft.Multiplier) Amt,  ft.AD_Table_ID, 
CASE WHEN (ft.Amt * ft.Multiplier) > 0 THEN ft.Amt ELSE 0 END AmtAcctDR,
CASE WHEN (ft.Amt * ft.Multiplier) < 0 THEN ABS(ft.Amt) ELSE 0 END AmtAcctCR,
COALESCE(i.DocumentNo, o.DocumentNo, l.DocumentNo, '') DocumentNo
FROM FTA_Fact ft
LEFT JOIN C_Invoice i ON(i.C_Invoice_ID = ft.Record_ID AND ft.AD_Table_ID = 318)
LEFT JOIN C_Order o ON(o.C_Order_ID = ft.Record_ID AND ft.AD_Table_ID = 259)
LEFT JOIN FTA_FarmerLiquidation l ON(l.FTA_FarmerLiquidation_ID = ft.Record_ID AND ft.AD_Table_ID = 53564)