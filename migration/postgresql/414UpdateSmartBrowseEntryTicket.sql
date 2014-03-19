-- Mar 14, 2014 9:42:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52332,'NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = FTA_RV_EntryTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))',TO_TIMESTAMP('2014-03-14 09:42:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_EntryTicket Not Used In Quality Analisis','S',TO_TIMESTAMP('2014-03-14 09:42:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 14, 2014 9:42:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET AD_Val_Rule_ID=52332,Updated=TO_TIMESTAMP('2014-03-14 09:42:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53578
;

-- Mar 14, 2014 9:45:22 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))',Updated=TO_TIMESTAMP('2014-03-14 09:45:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52332
;

-- Mar 14, 2014 9:50:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-03-14 09:50:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54460
;

-- Mar 14, 2014 9:50:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-03-14 09:50:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54461
;

-- Mar 14, 2014 9:50:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-03-14 09:50:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54407
;

-- Mar 14, 2014 9:50:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-03-14 09:50:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54211
;

-- Mar 14, 2014 9:50:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-03-14 09:50:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54387
;

-- Mar 14, 2014 9:51:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-03-14 09:51:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54148
;

-- Mar 14, 2014 9:51:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-03-14 09:51:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54150
;

-- Mar 14, 2014 10:04:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET WhereClause='NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))',Updated=TO_TIMESTAMP('2014-03-14 10:04:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50033
;

-- Mar 14, 2014 10:05:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET WhereClause='NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = ET.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))',Updated=TO_TIMESTAMP('2014-03-14 10:05:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50033
;

-- Mar 14, 2014 10:16:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET WhereClause='NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = ET.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))
ET.DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-03-14 10:16:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50033
;

-- Mar 14, 2014 10:17:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET WhereClause='NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = ET.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))
AND ET.DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-03-14 10:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50033
;

-- Mar 14, 2014 10:21:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))
AND FTA_EntryTicket.DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-03-14 10:21:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52332
;

