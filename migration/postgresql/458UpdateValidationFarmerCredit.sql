-- May 2, 2014 10:41:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CreditDefinition.DocStatus = ''CO''',Updated=TO_TIMESTAMP('2014-05-02 10:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52205
;

-- May 2, 2014 10:42:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52351,'FTA_CreditDefinition.DocStatus = ''CO''
AND FTA_CreditDefinition.CreditType = ''@CreditType@''',TO_TIMESTAMP('2014-05-02 10:42:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_CreditDefinition Completed and Cred. Type of Far. Credit','S',TO_TIMESTAMP('2014-05-02 10:42:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 2, 2014 10:42:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52351,Updated=TO_TIMESTAMP('2014-05-02 10:42:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- May 2, 2014 10:44:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND EXISTS(SELECT 1   FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'' AND bfe.DocStatus IN (''CO'',''CL'')) ',Updated=TO_TIMESTAMP('2014-05-02 10:44:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

