--DROP VIEW FTA_RV_Contract;
--CREATE OR REPLACE VIEW FTA_RV_Contract AS
/*SELECT
	fc.AD_Org_ID,
	fc.AD_Client_ID,
	fc.CreatedBy,
	fc.Created,
	fc.Updated,
	fc.UpdatedBy,
	fc.IsActive,
	oi.TaxID,
	COALESCE(bp.TaxID,bp.Value) BPTaxID,
	bp.Name||' '||COALESCE(bp.Name2,'') BPName,
	f.Name FarmerName,
	f.C_BPartner_Location_ID,
	ROUND(f.Area,2) Area,
	f.FrontierNorth,
	f.FrontierSouth,
	f.FrontierEast,
	f.FrontierWest,
	p.Name,
	ROUND(fc.ApprovedAmt,2) ApprovedAmt,
	ROUND(fc.ApprovedQty,2) ApprovedQty,
	l.Name PlantingCycle_ID,
	ROUND(fc.Amt,2) Amt
	
FROM FTA_FarmerCredit fc
INNER JOIN FTA_CreditDefinition cd ON (cd.FTA_CreditDefinition_ID = fc.FTA_CreditDefinition_ID)
INNER JOIN FTA_Farming fa ON (fa.FTA_FarmerCredit_ID = fc.FTA_FarmerCredit_ID)
INNER JOIN M_Product p ON (p.M_Product_ID = fa.Category_ID)
INNER JOIN M_Lot l ON (l.M_Lot_ID = fa.PlantingCycle_ID)
INNER JOIN FTA_FarmDivision fd ON (fd.FTA_FarmDivision_ID = fa.FTA_FarmDivision_ID)
INNER JOIN FTA_Farm f ON (f.FTA_Farm_ID = fd.FTA_Farm_ID)
INNER JOIN C_BPartner_Location bpl ON (bpl.C_BPartner_Location_ID = f.C_BPartner_Location_ID)
INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID = f.C_BPartner_ID)
LEFT  JOIN AD_OrgInfo oi ON (oi.AD_Org_ID = fc.AD_Org_ID)

WHERE  fc.FTA_CreditAct_ID=1500012*/--fc.FTA_FarmerCredit_ID = 1003117