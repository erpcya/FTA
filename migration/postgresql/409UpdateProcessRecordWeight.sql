-- Mar 12, 2014 3:59:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=17,Updated=TO_TIMESTAMP('2014-03-12 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54566
;

-- Mar 12, 2014 4:00:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=17,Updated=TO_TIMESTAMP('2014-03-12 16:00:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54580
;

-- Mar 12, 2014 4:07:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52330,'C_DocType_ID = @C_DocType_ID@ AND DocStatus IN (''CO'',''CL'') ',TO_TIMESTAMP('2014-03-12 16:07:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RecordWeight Completed or Closed of Document Type','S',TO_TIMESTAMP('2014-03-12 16:07:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 12, 2014 4:07:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_RecordWeight.C_DocType_ID = @C_DocType_ID@ AND FTA_RecordWeight.DocStatus IN (''CO'',''CL'') ',Updated=TO_TIMESTAMP('2014-03-12 16:07:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52330
;

-- Mar 12, 2014 4:07:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52330,Updated=TO_TIMESTAMP('2014-03-12 16:07:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54582
;

-- Mar 12, 2014 4:19:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52331,'FTA_MobilizationGuide.C_DocType_ID = @C_DocType_ID@ AND FTA_MobilizationGuide.DocStatus IN (''CO'',''CL'') ',TO_TIMESTAMP('2014-03-12 16:19:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_MobilizationGuide Completed in Document Type','S',TO_TIMESTAMP('2014-03-12 16:19:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 12, 2014 4:20:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52331,Updated=TO_TIMESTAMP('2014-03-12 16:20:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54583
;

-- Mar 12, 2014 5:08:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=53537,Updated=TO_TIMESTAMP('2014-03-12 17:08:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72198
;

