-- Nov 28, 2013 11:36:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND (FTA_FarmerCredit.CreditType=''C'' OR (FTA_FarmerCredit.CreditType=''L'' AND FTA_FarmerCredit.Parent_FarmerCredit_ID IS NULL))AND EXISTS(SELECT 1 FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'')',Updated=TO_TIMESTAMP('2013-11-28 11:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

