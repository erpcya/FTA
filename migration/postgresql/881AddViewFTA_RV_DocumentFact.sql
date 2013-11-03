--DROP VIEW FTA_RV_DocumentFact
CREATE OR REPLACE VIEW FTA_RV_DocumentFact AS
SELECT i.AD_Client_ID, i.AD_Org_ID, i.Updated, i.UpdatedBy, i.Created, i.CreatedBy, i.IsActive, 
i.C_BPartner_ID, i.DateInvoiced DateDoc, i.DocumentNo, i.Description, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, i.FTA_FarmerCredit_ID, 
il.C_InvoiceLine_ID Line_ID, 
il.LineNetAmt + (il.LineNetAmt * t.Rate / 100) Amt, (cdl.Amt * fc.ApprovedQty) SO_CreditLimit, 
COALESCE(SUM(ft.Amt), 0) SO_CreditUsed, 
CASE 
	WHEN i.IsExceedCreditLimit = 'Y' 
	THEN 'Y' 
	ELSE cdl.IsExceedCreditLimit 
END IsExceedCreditLimit, 
i.IsCreditFactManual, i.IsSOTrx, cdl.Line, i.C_Invoice_ID Record_ID, ft.AD_Table_ID
FROM C_Invoice i 
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = i.FTA_FarmerCredit_ID) 
INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) 
INNER JOIN C_InvoiceLine il ON(il.C_Invoice_ID = i.C_Invoice_ID) 
INNER JOIN C_Tax t ON(t.C_Tax_ID = il.C_Tax_ID)  
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) 
LEFT JOIN M_Product pr ON(pr.M_Product_ID = il.M_Product_ID) 
LEFT JOIN C_Charge cr ON(cr.C_Charge_ID = il.C_Charge_ID) 
LEFT JOIN FTA_Fact ft ON(ft.FTA_CreditDefinitionLine_ID = cdl.FTA_CreditDefinitionLine_ID) 
WHERE (
		(cdl.M_Product_ID = il.M_Product_ID 
			AND il.M_Product_ID IS NOT NULL) 
		OR (cdl.M_Product_Category_ID = pr.M_Product_Category_ID 
			AND pr.M_Product_Category_ID IS NOT NULL) 
		OR (cdl.C_Charge_ID = il.C_charge_ID 
			AND il.C_Charge_ID IS NOT NULL)
		OR (cdl.C_ChargeType_ID = cr.C_chargeType_ID 
			AND cr.C_ChargeType_ID IS NOT NULL) 
	) 
GROUP BY i.AD_Client_ID, i.AD_Org_ID, i.Updated, i.UpdatedBy, i.Created, i.CreatedBy, i.IsActive, 
i.C_Invoice_ID, i.C_BPartner_ID, i.DateInvoiced, i.DocumentNo, i.Description, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, i.FTA_FarmerCredit_ID, 
i.C_Invoice_ID, il.C_InvoiceLine_ID, il.LineNetAmt, t.Rate, cdl.Amt, fc.ApprovedQty, cdl.Line, ft.AD_Table_ID 