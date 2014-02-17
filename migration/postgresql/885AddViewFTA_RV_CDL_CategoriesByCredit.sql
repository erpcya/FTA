-- 
--DROP VIEW FTA_RV_CDL_CategoriesByCredit;
CREATE OR REPLACE VIEW FTA_RV_CDL_CategoriesByCredit AS 
SELECT  fc.AD_Client_ID,
	fc.AD_Org_ID,
	fc.C_BPartner_ID,
	fc.FTA_FarmerCredit_ID,
	cd.FTA_CreditDefinition_ID,
	cdl.FTA_CreditDefinitionLine_ID,
	cdl.FTA_CDL_Category_ID,
	CAST(0.00 AS NUMERIC) Amt,
	cdl.IsExceedCreditLimit,
	fc.ApprovedQty,
	fc.ApprovedQty * cdl.Amt  ApprovedAmt,
	fact.Amt AllocatedAmt
FROM
FTA_FarmerCredit fc
INNER JOIN FTA_CreditDefinition cd ON fc.FTA_CreditDefinition_ID= cd.FTA_CreditDefinition_ID
INNER JOIN FTA_CreditDefinitionLine cdl ON cd.FTA_CreditDefinition_ID=cdl.FTA_CreditDefinition_ID
LEFT JOIN (SELECT 
	   FTA_CreditDefinitionLine_ID,
	   SUM(Amt) Amt
	   FROM FTA_Fact
	   WHERE AD_Table_ID = 318
	   GROUP BY FTA_CreditDefinitionLine_ID
		) fact On fact.FTA_CreditDefinitionLine_ID=cdl.FTA_CreditDefinitionLine_ID
;