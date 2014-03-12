--DROP VIEW FTA_RV_DocumentFact
CREATE OR REPLACE VIEW FTA_RV_DocumentFact AS
SELECT i.AD_Client_ID, i.AD_Org_ID, i.Updated, i.UpdatedBy, i.Created, i.CreatedBy, i.IsActive, 
i.C_BPartner_ID, i.DateInvoiced DateDoc, i.DocumentNo, i.Description::VARCHAR, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, i.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
il.C_InvoiceLine_ID Line_ID, 
il.LineNetAmt + (il.LineNetAmt * t.Rate / 100) Amt, (cdl.Amt * fc.ApprovedQty) SO_CreditLimit, 
COALESCE(SUM(ft.Amt), 0) SO_CreditUsed, 
CASE 
	WHEN i.IsExceedCreditLimit = 'Y' 
	THEN 'Y' 
	ELSE cdl.IsExceedCreditLimit 
END IsExceedCreditLimit, 
i.IsCreditFactManual, i.IsSOTrx, cdl.Line, i.C_Invoice_ID Record_ID, 318 AD_Table_ID, 0 SeqNo
FROM C_Invoice i 
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = i.FTA_FarmerCredit_ID) 
INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) 
INNER JOIN C_InvoiceLine il ON(il.C_Invoice_ID = i.C_Invoice_ID) 
INNER JOIN C_Tax t ON(t.C_Tax_ID = il.C_Tax_ID)  
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) 
LEFT JOIN FTA_Fact ft ON(ft.FTA_FarmerCredit_ID = i.FTA_FarmerCredit_ID 
				AND ft.FTA_CreditDefinitionLine_ID = cdl.FTA_CreditDefinitionLine_ID AND ft.AD_Table_ID = 318)
LEFT JOIN M_Product pr ON(pr.M_Product_ID = il.M_Product_ID) 
LEFT JOIN C_Charge cr ON(cr.C_Charge_ID = il.C_Charge_ID)  
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
i.C_Invoice_ID, i.C_BPartner_ID, i.DateInvoiced, i.DocumentNo, i.Description::VARCHAR, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, i.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
i.C_Invoice_ID, il.C_InvoiceLine_ID, il.LineNetAmt, t.Rate, cdl.Amt, fc.ApprovedQty, cdl.Line, ft.AD_Table_ID
UNION ALL
SELECT o.AD_Client_ID, o.AD_Org_ID, o.Updated, o.UpdatedBy, o.Created, o.CreatedBy, o.IsActive, 
o.C_BPartner_ID, o.DateOrdered DateDoc, o.DocumentNo, o.Description, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, o.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
ol.C_OrderLine_ID Line_ID, 
ol.LineNetAmt + (ol.LineNetAmt * t.Rate / 100) Amt, (cdl.Amt * fc.ApprovedQty) SO_CreditLimit, 
COALESCE(SUM(ft.Amt), 0) SO_CreditUsed, 
CASE 
	WHEN o.IsExceedCreditLimit = 'Y' 
	THEN 'Y' 
	ELSE cdl.IsExceedCreditLimit 
END IsExceedCreditLimit, 
o.IsCreditFactManual, o.IsSOTrx, cdl.Line, o.C_Order_ID Record_ID, 259 AD_Table_ID, 0 SeqNo
FROM C_Order o 
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = o.FTA_FarmerCredit_ID) 
INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) 
INNER JOIN C_OrderLine ol ON(ol.C_Order_ID = o.C_Order_ID) 
INNER JOIN C_Tax t ON(t.C_Tax_ID = ol.C_Tax_ID)  
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) 
LEFT JOIN FTA_Fact ft ON(ft.FTA_FarmerCredit_ID = o.FTA_FarmerCredit_ID 
				AND ft.FTA_CreditDefinitionLine_ID = cdl.FTA_CreditDefinitionLine_ID AND ft.AD_Table_ID = 318)
LEFT JOIN M_Product pr ON(pr.M_Product_ID = ol.M_Product_ID) 
LEFT JOIN C_Charge cr ON(cr.C_Charge_ID = ol.C_Charge_ID) 
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
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, o.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
o.C_Order_ID, ol.C_OrderLine_ID, ol.LineNetAmt, t.Rate, cdl.Amt, fc.ApprovedQty, cdl.Line, ft.AD_Table_ID 
UNION ALL
SELECT l.AD_Client_ID, l.AD_Org_ID, l.Updated, l.UpdatedBy, l.Created, l.CreatedBy, l.IsActive, 
l.C_BPartner_ID, l.DateDoc, l.DocumentNo, l.Description::VARCHAR, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, l.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
ll.FTA_FarmerLiquidationLine_ID Line_ID, ll.LineNetAmt Amt, (cdl.Amt * fc.ApprovedQty) SO_CreditLimit, 
0 SO_CreditUsed,'Y' IsExceedCreditLimit, 
'N' IsCreditFactManual, 'N' IsSOTrx, cdl.Line, l.FTA_FarmerLiquidation_ID Record_ID, 53564 AD_Table_ID, 0 SeqNo
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
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, l.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
l.FTA_FarmerLiquidation_ID, ll.FTA_FarmerLiquidationLine_ID, ll.LineNetAmt, cdl.Amt, fc.ApprovedQty, cdl.Line
UNION ALL
SELECT a.AD_Client_ID, a.AD_Org_ID, a.Updated, a.UpdatedBy, a.Created, a.CreatedBy, a.IsActive, 
al.C_BPartner_ID, a.DateDoc, a.DocumentNo, a.DocumentNo || ' <-> ' || l.DocumentNo || ' ' || COALESCE(a.Description, '')::VARCHAR, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, a.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
0 Line_ID, (liquidationAvailable(l.FTA_FarmerLiquidation_ID) + SUM(al.Amount))Amt, 0 SO_CreditLimit, 
0 SO_CreditUsed,'Y' IsExceedCreditLimit, 
'N' IsCreditFactManual, 'N' IsSOTrx, cdl.Line, a.FTA_Allocation_ID Record_ID, 53566 AD_Table_ID, 0 SeqNo
FROM FTA_Allocation a 
INNER JOIN FTA_AllocationLine al ON(al.FTA_Allocation_ID = a.FTA_Allocation_ID)
INNER JOIN FTA_FarmerLiquidation l ON(l.FTA_FarmerLiquidation_ID = al.FTA_FarmerLiquidation_ID) 
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = a.FTA_FarmerCredit_ID) 
INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) 
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) 
WHERE cdl.IsDistributionLine = 'Y'
GROUP BY a.AD_Client_ID, a.AD_Org_ID, a.Updated, a.UpdatedBy, a.Created, a.CreatedBy, a.IsActive, 
al.FTA_FarmerLiquidation_ID, al.C_BPartner_ID, a.DateDoc, a.DocumentNo, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, a.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
a.FTA_Allocation_ID, l.Amt, cdl.Amt, fc.ApprovedQty, cdl.Line, l.FTA_FarmerLiquidation_ID, l.DocumentNo
UNION ALL
SELECT a.AD_Client_ID, a.AD_Org_ID, a.Updated, a.UpdatedBy, a.Created, a.CreatedBy, a.IsActive, 
al.C_BPartner_ID, a.DateDoc, a.DocumentNo, a.DocumentNo || ' -> ' || i.DocumentNo || ' ' || COALESCE(a.Description, '')::VARCHAR, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, a.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
al.FTA_AllocationLine_ID Line_ID, al.Amount * -1 Amt, 0 SO_CreditLimit, 
0 SO_CreditUsed,'Y' IsExceedCreditLimit, 
'N' IsCreditFactManual, 'N' IsSOTrx, cdl.Line, a.FTA_Allocation_ID Record_ID, 53566 AD_Table_ID, 1 SeqNo
FROM FTA_Allocation a 
INNER JOIN FTA_AllocationLine al ON(al.FTA_Allocation_ID = a.FTA_Allocation_ID)
INNER JOIN C_Invoice i ON(i.C_Invoice_ID = al.C_Invoice_ID)
INNER JOIN FTA_FarmerLiquidation l ON(l.FTA_FarmerLiquidation_ID = al.FTA_FarmerLiquidation_ID) 
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = a.FTA_FarmerCredit_ID) 
INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) 
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) 
WHERE cdl.IsDistributionLine = 'Y'
GROUP BY a.AD_Client_ID, a.AD_Org_ID, a.Updated, a.UpdatedBy, a.Created, a.CreatedBy, a.IsActive, 
al.FTA_FarmerLiquidation_ID, al.C_BPartner_ID, a.DateDoc, a.DocumentNo, a.Description, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, a.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
a.FTA_Allocation_ID, l.Amt, cdl.Amt, fc.ApprovedQty, cdl.Line, al.FTA_AllocationLine_ID, i.DocumentNo
UNION ALL
SELECT a.AD_Client_ID, a.AD_Org_ID, a.Updated, a.UpdatedBy, a.Created, a.CreatedBy, a.IsActive, 
al.C_BPartner_ID, a.DateDoc, a.DocumentNo, a.DocumentNo || ' <=> ' || l.DocumentNo || ' ' || COALESCE(a.Description, '')::VARCHAR, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, a.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
0 Line_ID, (liquidationAvailable(l.FTA_FarmerLiquidation_ID) * -1) Amt, 0 SO_CreditLimit, 
0 SO_CreditUsed,'Y' IsExceedCreditLimit, 
'N' IsCreditFactManual, 'N' IsSOTrx, cdl.Line, a.FTA_Allocation_ID Record_ID, 53566 AD_Table_ID, 2 SeqNo
FROM FTA_Allocation a 
INNER JOIN FTA_AllocationLine al ON(al.FTA_Allocation_ID = a.FTA_Allocation_ID)
INNER JOIN FTA_FarmerLiquidation l ON(l.FTA_FarmerLiquidation_ID = al.FTA_FarmerLiquidation_ID) 
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = a.FTA_FarmerCredit_ID) 
INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) 
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) 
WHERE cdl.IsDistributionLine = 'Y' 
AND liquidationAvailable(l.FTA_FarmerLiquidation_ID) <> 0
GROUP BY a.AD_Client_ID, a.AD_Org_ID, a.Updated, a.UpdatedBy, a.Created, a.CreatedBy, a.IsActive, 
al.FTA_FarmerLiquidation_ID, al.C_BPartner_ID, a.DateDoc, a.DocumentNo, a.Description, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, a.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
a.FTA_Allocation_ID, l.Amt, cdl.Amt, fc.ApprovedQty, cdl.Line, l.FTA_FarmerLiquidation_ID, l.DocumentNo
UNION ALL
SELECT p.AD_Client_ID, p.AD_Org_ID, p.Updated, p.UpdatedBy, p.Created, p.CreatedBy, p.IsActive, 
p.C_BPartner_ID, p.DateTrx DateDoc, p.DocumentNo, COALESCE(p.Description, '')::VARCHAR, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, p.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
0 Line_ID, p.PayAmt, 0 SO_CreditLimit, 
0 SO_CreditUsed,'Y' IsExceedCreditLimit, 
'N' IsCreditFactManual, 'N' IsSOTrx, cdl.Line, p.C_Payment_ID Record_ID, 335 AD_Table_ID, 0 SeqNo
FROM C_Payment p 
INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = p.FTA_FarmerCredit_ID) 
INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID) 
INNER JOIN FTA_CreditDefinitionLine cdl ON(cdl.FTA_CreditDefinition_ID = cd.FTA_CreditDefinition_ID) 
WHERE cdl.IsDistributionLine = 'Y'
GROUP BY p.AD_Client_ID, p.AD_Org_ID, p.Updated, p.UpdatedBy, p.Created, p.CreatedBy, p.IsActive, 
p.C_BPartner_ID, p.DateTrx, p.DocumentNo, 
cd.FTA_CreditDefinition_ID, cdl.FTA_CreditDefinitionLine_ID, p.FTA_FarmerCredit_ID, fc.Parent_FarmerCredit_ID, 
p.C_Payment_ID, p.PayAmt, cdl.Amt, fc.ApprovedQty, cdl.Line, p.DocumentNo