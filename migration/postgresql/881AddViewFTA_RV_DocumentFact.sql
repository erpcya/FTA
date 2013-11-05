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
i.IsCreditFactManual, i.IsSOTrx, cdl.Line, i.C_Invoice_ID Record_ID, 318 AD_Table_ID
FROM C_Invoice i 
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = i.FTA_FarmerCredit_ID) 
INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) 
INNER JOIN C_InvoiceLine il ON(il.C_Invoice_ID = i.C_Invoice_ID) 
INNER JOIN C_Tax t ON(t.C_Tax_ID = il.C_Tax_ID)  
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) 
LEFT JOIN M_Product pr ON(pr.M_Product_ID = il.M_Product_ID) 
LEFT JOIN C_Charge cr ON(cr.C_Charge_ID = il.C_Charge_ID) 
LEFT JOIN FTA_Fact ft ON(ft.FTA_CreditDefinitionLine_ID = cdl.FTA_CreditDefinitionLine_ID AND ft.AD_Table_ID = 318) 
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
UNION ALL
SELECT o.AD_Client_ID, o.AD_Org_ID, o.Updated, o.UpdatedBy, o.Created, o.CreatedBy, o.IsActive, 
o.C_BPartner_ID, o.DateOrdered DateDoc, o.DocumentNo, o.Description, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, o.FTA_FarmerCredit_ID, 
ol.C_OrderLine_ID Line_ID, 
ol.LineNetAmt + (ol.LineNetAmt * t.Rate / 100) Amt, (cdl.Amt * fc.ApprovedQty) SO_CreditLimit, 
COALESCE(SUM(ft.Amt), 0) SO_CreditUsed, 
CASE 
	WHEN o.IsExceedCreditLimit = 'Y' 
	THEN 'Y' 
	ELSE cdl.IsExceedCreditLimit 
END IsExceedCreditLimit, 
o.IsCreditFactManual, o.IsSOTrx, cdl.Line, o.C_Order_ID Record_ID, 259 AD_Table_ID
FROM C_Order o 
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = o.FTA_FarmerCredit_ID) 
INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) 
INNER JOIN C_OrderLine ol ON(ol.C_Order_ID = o.C_Order_ID) 
INNER JOIN C_Tax t ON(t.C_Tax_ID = ol.C_Tax_ID)  
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) 
LEFT JOIN M_Product pr ON(pr.M_Product_ID = ol.M_Product_ID) 
LEFT JOIN C_Charge cr ON(cr.C_Charge_ID = ol.C_Charge_ID) 
LEFT JOIN FTA_Fact ft ON(ft.FTA_CreditDefinitionLine_ID = cdl.FTA_CreditDefinitionLine_ID AND ft.AD_Table_ID = 318) 
WHERE (
		(cdl.M_Product_ID = ol.M_Product_ID 
			AND ol.M_Product_ID IS NOT NULL) 
		OR (cdl.M_Product_Category_ID = pr.M_Product_Category_ID 
			AND pr.M_Product_Category_ID IS NOT NULL) 
		OR (cdl.C_Charge_ID = ol.C_charge_ID 
			AND ol.C_Charge_ID IS NOT NULL)
		OR (cdl.C_ChargeType_ID = cr.C_chargeType_ID 
			AND cr.C_ChargeType_ID IS NOT NULL) 
	) 
GROUP BY o.AD_Client_ID, o.AD_Org_ID, o.Updated, o.UpdatedBy, o.Created, o.CreatedBy, o.IsActive, 
o.C_Order_ID, o.C_BPartner_ID, o.DateOrdered, o.DocumentNo, o.Description, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, o.FTA_FarmerCredit_ID, 
o.C_Order_ID, ol.C_OrderLine_ID, ol.LineNetAmt, t.Rate, cdl.Amt, fc.ApprovedQty, cdl.Line, ft.AD_Table_ID 
UNION ALL
SELECT l.AD_Client_ID, l.AD_Org_ID, l.Updated, l.UpdatedBy, l.Created, l.CreatedBy, l.IsActive, 
l.C_BPartner_ID, l.DateDoc, l.DocumentNo, l.Description, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, l.FTA_FarmerCredit_ID, 
ll.FTA_FarmerLiquidationLine_ID Line_ID, ll.LineNetAmt Amt, (cdl.Amt * fc.ApprovedQty) SO_CreditLimit, 
0 SO_CreditUsed,'Y' IsExceedCreditLimit, 
'N' IsCreditFactManual, 'N' IsSOTrx, cdl.Line, l.FTA_FarmerLiquidation_ID Record_ID, 53564 AD_Table_ID
FROM FTA_FarmerLiquidation l 
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = l.FTA_FarmerCredit_ID) 
INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) 
INNER JOIN FTA_FarmerLiquidationLine ll ON(ll.FTA_FarmerLiquidation_ID = l.FTA_FarmerLiquidation_ID) 
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) 
LEFT JOIN M_Product pr ON(pr.M_Product_ID = l.M_Product_ID) 
WHERE (cdl.M_Product_ID = l.M_Product_ID 
		AND l.M_Product_ID IS NOT NULL) 
	OR (cdl.M_Product_Category_ID = pr.M_Product_Category_ID 
		AND pr.M_Product_Category_ID IS NOT NULL) 
GROUP BY l.AD_Client_ID, l.AD_Org_ID, l.Updated, l.UpdatedBy, l.Created, l.CreatedBy, l.IsActive, 
l.FTA_FarmerLiquidation_ID, l.C_BPartner_ID, l.DateDoc, l.DocumentNo, l.Description, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, l.FTA_FarmerCredit_ID, 
l.FTA_FarmerLiquidation_ID, ll.FTA_FarmerLiquidationLine_ID, ll.LineNetAmt, cdl.Amt, fc.ApprovedQty, cdl.Line