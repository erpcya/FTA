-- Aug 25, 2014 5:30:33 AM VET
-- FTA
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52391,'FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ 
	AND FTA_FarmerCredit.DocStatus IN (''CO'',''CL'')
	AND (FTA_FarmerCredit.CreditType=''C'' OR FTA_FarmerCredit.CreditType=''L'')
	AND EXISTS(SELECT 1 FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'')
	AND FTA_CreditDefinition_ID = @FTA_CreditDefinition_ID@',TO_DATE('2014-08-25 05:30:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_FarmerCredit Completed or Closed of Farmer and CD','S',TO_DATE('2014-08-25 05:30:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 25, 2014 5:34:18 AM VET
-- FTA
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52391,Updated=TO_DATE('2014-08-25 05:34:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54695
;

