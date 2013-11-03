--DROP VIEW FTA_RV_FarmerCredit;
CREATE OR REPLACE VIEW FTA_RV_FarmerCredit AS
SELECT 
	fc.AD_Client_ID, 
	fc.AD_Org_ID, 
	fc.Created, 
	fc.CreatedBy,
	fc.Updated, 
	fc.UpdatedBy,
	fc.IsActive, 
	fc.Amt, 
	fc.ApprovedAmt, 
	fc.ApprovedQty, 
	fc.Beneficiary_ID, 
	fc.C_BPartner_ID, 
	fc.C_Charge_ID, 
	fc.C_DocType_ID, 
	fc.CreditType, 
	fc.C_UOM_ID, 
	fc.DateDoc, 
	fc.Description, 
	fc.DocAction, 
	fc.DocStatus, 
	fc.DocumentNo, 
	fc.FarmingAlloc, 
	fc.FTA_CreditAct_ID, 
	fc.FTA_CreditDefinition_ID, 
	fc.FTA_FarmerCredit_ID, 
	fc.GenerateBillOfEx, 
	fc.GenerateOrder, 
	fc.IsApproved, 
	fc.M_Product_ID, 
	fc.Parent_FarmerCredit_ID, 
	fc.Processed, 
	fc.Processing, 
	fc.Qty,
	oi.C_Location_ID Org_Location_ID,
	oi.TaxID,
	COALESCE(bp.Value,bp.TaxID) BPTaxID,
	bp.Name ||' '||bp.Name2 BPName
	
FROM FTA_FarmerCredit fc
INNER JOIN C_DocType dt ON (dt.C_DocType_ID =fc.C_DocType_ID)
LEFT JOIN M_Product p ON (fc.M_Product_ID = p.M_Product_ID)
LEFT JOIN FTA_CreditAct ca ON (ca.FTA_CreditAct_ID = fc.FTA_CreditAct_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID = fc.C_BPartner_ID)
LEFT JOIN C_Charge c ON (c.C_Charge_ID = fc.C_Charge_ID)
LEFT JOIN FTA_CreditDefinition cd ON (cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID)
LEFT JOIN AD_OrgInfo oi ON (oi.AD_Org_ID = fc.AD_Org_ID)