--DROP VIEW FTA_RV_AccountStatement
CREATE OR REPLACE VIEW FTA_RV_AccountStatement AS
SELECT ft.AD_Client_ID, ft.AD_Org_ID, ft.C_BPartner_ID, ft.DateDoc, ft.Description, 
ft.FTA_CreditDefinition_ID, ft.FTA_FarmerCredit_ID, ft.Parent_FarmerCredit_ID, 
SUM(ft.Amt * ft.Multiplier) Amt,  ft.AD_Table_ID, 
CASE WHEN SUM(ft.Amt * ft.Multiplier) > 0 THEN SUM(ft.Amt) ELSE 0 END AmtAcctDR,
CASE WHEN SUM(ft.Amt * ft.Multiplier) < 0 THEN ABS(SUM(ft.Amt)) ELSE 0 END AmtAcctCR,
COALESCE(i.DocumentNo, o.DocumentNo, l.DocumentNo, py.DocumentNo, '') DocumentNo,
i.C_Invoice_ID, p.C_Payment_ID, psc.C_PaySelectionCheck_ID, ftapr.FTA_PaymentRequest_ID,
(CASE WHEN SUM(ft.Amt * ft.Multiplier) > 0 THEN SUM(ft.Amt) ELSE 0 END -
CASE WHEN SUM(ft.Amt * ft.Multiplier) < 0 THEN ABS(SUM(ft.Amt)) ELSE 0 END) Balance, MAX(ft.FTA_Fact_ID) FTA_Fact_ID
FROM FTA_Fact ft
LEFT JOIN C_Invoice i ON(i.C_Invoice_ID = ft.Record_ID AND ft.AD_Table_ID = 318)
LEFT JOIN C_Order o ON(o.C_Order_ID = ft.Record_ID AND ft.AD_Table_ID = 259)
LEFT JOIN C_Payment py ON (ft.Record_ID = py.C_Payment_ID)
LEFT JOIN FTA_FarmerLiquidation l ON(l.FTA_FarmerLiquidation_ID = ft.Record_ID AND ft.AD_Table_ID = 53564)
LEFT JOIN FTA_CreditDefinitionLine cdl ON (cdl.FTA_CreditDefinitionLine_ID = ft.FTA_CreditDefinitionLine_ID)
LEFT JOIN FTA_PaymentRequest ftapr ON (i.C_Invoice_ID = ftapr.C_Invoice_ID) 
LEFT JOIN C_PaySelectionCheck psc ON (ftapr.C_PaySelectionCheck_ID = psc.C_PaySelectionCheck_ID)
LEFT JOIN C_Payment p ON (psc.C_Payment_ID = p.C_Payment_ID)
GROUP BY ft.AD_Client_ID, ft.AD_Org_ID, ft.C_BPartner_ID, ft.DateDoc, ft.Description, 
ft.FTA_CreditDefinition_ID, ft.FTA_FarmerCredit_ID, ft.Parent_FarmerCredit_ID, ft.AD_Table_ID, 
i.DocumentNo, o.DocumentNo, l.DocumentNo, py.DocumentNo,
i.C_Invoice_ID, p.C_Payment_ID, psc.C_PaySelectionCheck_ID, ftapr.FTA_PaymentRequest_ID