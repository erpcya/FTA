-- 19/05/2014 12:54:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52360,'C_DocType.DocBaseType IN (''ARC'')',TO_TIMESTAMP('2014-05-19 12:54:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_DocType AR Credit Memo','S',TO_TIMESTAMP('2014-05-19 12:54:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/05/2014 12:54:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52360,Updated=TO_TIMESTAMP('2014-05-19 12:54:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54779
;

