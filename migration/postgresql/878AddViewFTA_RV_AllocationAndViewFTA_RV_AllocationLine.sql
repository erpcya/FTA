--DROP VIEW FTA_RV_Allocation;
CREATE OR REPLACE VIEW FTA_RV_Allocation AS
SELECT 
	a.AD_Client_ID, 
	a.AD_Org_ID, 
	a.Created, 
	a.CreatedBy, 
	a.Updated, 
	a.UpdatedBy,
	a.ApprovalAmt, 
	a.C_Currency_ID, 
	a.DateDoc, 
	a.Description, 
	a.DocAction, 
	a.DocStatus, 
	a.DocumentNo, 
	a.FTA_Allocation_ID, 
	a.FTA_FarmerCredit_ID, 
	a.IsActive, 
	a.IsApproved, 
	a.Processed,
	COALESCE(bp.TaxID,bp.Value) BPTaxID,
	bp.Name || COALESCE(bp.Name2,'') BPName,
	oi.C_Location_ID Org_Location_ID,
	oi.TaxID,
	FTA_Allocation_ID FTA_RV_Allocation_ID
FROM FTA_Allocation a
INNER JOIN FTA_FarmerCredit fc ON (fc.FTA_FarmerCredit_ID = a.FTA_FarmerCredit_ID)
INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID = fc.C_BPartner_ID)
LEFT JOIN AD_OrgInfo oi ON (oi.AD_Org_ID = a.AD_Org_ID)
;


--DROP VIEW FTA_RV_AllocationLine;
CREATE OR REPLACE VIEW FTA_RV_AllocationLine AS
SELECT 
	al.AD_Client_ID, 
	al.AD_Org_ID, 
	al.CreatedBy, 
	al.DateDoc, 
	al.Updated, 
	al.UpdatedBy, 	
	al.AllocationNo, 
	al.Amount, 
	al.C_BPartner_ID, 
	al.C_CashLine_ID, 
	al.C_Invoice_ID, 
	al.C_Order_ID, 
	al.C_Payment_ID, 
	al.Created, 
	al.DiscountAmt, 
	al.FTA_Allocation_ID, 
	al.FTA_AllocationLine_ID, 
	al.FTA_FarmerLiquidation_ID, 
	al.IsActive, 
	al.OverUnderAmt, 
	al.WriteOffAmt
FROM FTA_AllocationLine al
INNER JOIN FTA_Allocation a ON (a.FTA_Allocation_ID = al.FTA_Allocation_ID)
INNER JOIN FTA_FarmerLiquidation fl ON (al.FTA_FarmerLiquidation_ID = fl.FTA_FarmerLiquidation_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID = al.C_BPartner_ID )
LEFT JOIN C_Invoice i ON (i.C_Invoice_ID = al.C_Invoice_ID )
LEFT JOIN C_Payment p ON (p.C_Payment_ID = al.C_Payment_ID)
LEFT JOIN C_Order c ON (c.C_Order_ID = al.C_Order_ID)
LEFT JOIN C_CashLine cl ON (cl.C_CashLine_ID = al.C_CashLine_ID)

