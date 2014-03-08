--DROP VIEW FTA_RV_Fact
CREATE OR REPLACE VIEW FTA_RV_Fact AS
SELECT ft.AD_Client_ID, ft.AD_Org_ID, ft.C_BPartner_ID, ft.DateDoc, ft.Description, 
ft.FTA_CreditDefinition_ID, ft.FTA_CreditDefinitionLine_ID, ft.FTA_FarmerCredit_ID, 
(ft.Amt * ft.Multiplier) Amt,  ft.AD_Table_ID, 
CASE WHEN (ft.Amt * ft.Multiplier) > 0 THEN ft.Amt ELSE 0 END AmtAcctDR,
CASE WHEN (ft.Amt * ft.Multiplier) < 0 THEN ABS(ft.Amt) ELSE 0 END AmtAcctCR,
COALESCE(i.DocumentNo, o.DocumentNo, l.DocumentNo, '') DocumentNo,
i.C_Invoice_ID,cdlc.FTA_CDL_Category_ID,

cdlc.Name || COALESCE(' - ' || CASE 
	WHEN cdl.M_Product_Category_ID IS NOT NULL THEN pc.Name 
	WHEN cdl.M_Product_ID IS NOT NULL THEN pr.Name 
	WHEN cdl.C_Charge_ID IS NOT NULL THEN cr.Name
	WHEN cdl.C_ChargeType_ID IS NOT NULL THEN ct.Name
END, '') || COALESCE(' - ' || cdl.Description, '') LineDescription,
p.C_Payment_ID,
psc.C_PaySelectionCheck_ID,
ftapr.FTA_PaymentRequest_ID,
ft.FTA_Fact_ID,
(CASE WHEN (ft.Amt * ft.Multiplier) > 0 THEN ft.Amt ELSE 0 END -
CASE WHEN (ft.Amt * ft.Multiplier) < 0 THEN ABS(ft.Amt) ELSE 0 END) Balance
FROM FTA_Fact ft
LEFT JOIN C_Invoice i ON(i.C_Invoice_ID = ft.Record_ID AND ft.AD_Table_ID = 318)
LEFT JOIN C_Order o ON(o.C_Order_ID = ft.Record_ID AND ft.AD_Table_ID = 259)
LEFT JOIN FTA_FarmerLiquidation l ON(l.FTA_FarmerLiquidation_ID = ft.Record_ID AND ft.AD_Table_ID = 53564)
LEFT JOIN FTA_CreditDefinitionLine cdl ON (cdl.FTA_CreditDefinitionLine_ID = ft.FTA_CreditDefinitionLine_ID)
LEFT JOIN FTA_CDL_Category cdlc ON (cdlc.FTA_CDL_Category_ID = cdl.FTA_CDL_Category_ID)
LEFT JOIN M_Product_Category pc ON(pc.M_Product_Category_ID = cdl.M_Product_Category_ID)
LEFT JOIN M_Product pr ON(pr.M_Product_ID = cdl.M_Product_ID)
LEFT JOIN C_Charge cr ON(cr.C_Charge_ID = cdl.C_Charge_ID)
LEFT JOIN C_ChargeType ct ON(ct.C_ChargeType_ID = cdl.C_ChargeType_ID)
LEFT JOIN FTA_PaymentRequest ftapr ON (i.C_Invoice_ID = ftapr.C_Invoice_ID) 
LEFT JOIN C_PaySelectionCheck psc ON (ftapr.C_PaySelectionCheck_ID = psc.C_PaySelectionCheck_ID)
LEFT JOIN C_Payment p ON (psc.C_Payment_ID = p.C_Payment_ID)
