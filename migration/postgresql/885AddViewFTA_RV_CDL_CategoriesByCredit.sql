-- 
--DROP VIEW FTA_RV_CDL_CategoriesByCredit;
-- 
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
	fact.Amt AllocatedAmt,
	Case 
	  When cdl.M_Product_Category_ID Is Not Null 
	    Then mpc.Name 
	  When cdl.M_Product_ID Is Not Null 
	    Then mp.Name 
	  When cdl.C_Charge_ID Is Not Null 
	    Then cch.Name
	End || COALESCE(cdl.Description, '') LineDescription--Description Invoice
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
LEFT JOIN M_Product_Category mpc ON mpc.M_Product_Category_ID=cdl.M_Product_Category_ID
LEFT JOIN M_Product mp ON mp.M_Product_ID=cdl.M_Product_ID
LEFT JOIN C_Charge cch ON cch.C_Charge_ID=cdl.C_Charge_ID
;