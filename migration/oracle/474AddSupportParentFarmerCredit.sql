-- May 18, 2014 10:50:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ 
	AND FTA_FarmerCredit.DocStatus IN (''CO'',''CL'')
	AND (FTA_FarmerCredit.CreditType=''C'' OR FTA_FarmerCredit.CreditType=''L'')
	AND EXISTS(SELECT 1 FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'')
	AND FTA_CreditDefinition_ID = @FTA_CreditDefinition_ID@',Updated=TO_DATE('2014-05-18 22:50:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52302
;

-- May 19, 2014 1:45:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@PreviousQty@!0',Updated=TO_DATE('2014-05-19 01:45:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73430
;

-- May 19, 2014 1:45:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@PreviousAmt@!0',Updated=TO_DATE('2014-05-19 01:45:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73429
;

-- May 19, 2014 1:45:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-05-19 01:45:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73429
;

-- May 19, 2014 1:45:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-05-19 01:45:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73430
;

