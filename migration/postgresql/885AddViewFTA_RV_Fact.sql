CREATE OR REPLACE VIEW FTA_RV_Fact AS
SELECT ft.AD_Client_ID, ft.AD_Org_ID, ft.C_BPartner_ID, ft.DateDoc, ft.Description, 
ft.FTA_CreditDefinition_ID, ft.FTA_CreditDefinitionLine_ID, ft.FTA_FarmerCredit_ID, 
ft.Amt,  ft.AD_Table_ID, 
CASE WHEN ft.Amt > 0 THEN ft.Amt ELSE 0 END AmtAcctCR,
CASE WHEN ft.Amt < 0 THEN ABS(ft.Amt) ELSE 0 END AmtAcctDR
FROM FTA_Fact ft