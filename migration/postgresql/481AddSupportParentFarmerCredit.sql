-- Jun 18, 2014 9:16:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND FTA_FarmerCredit.Parent_FarmerCredit_ID IS NULL AND EXISTS(SELECT 1   FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'' AND bfe.DocStatus IN (''CO'',''CL'')) ',Updated=TO_TIMESTAMP('2014-06-18 09:16:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

