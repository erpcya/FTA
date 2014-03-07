-- Feb 19, 2014 5:51:06 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause='NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = FTA_RV_EntryTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))',Updated=TO_TIMESTAMP('2014-02-19 17:51:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53078
;

-- Feb 19, 2014 5:51:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53110,53585,TO_TIMESTAMP('2014-02-19 17:51:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_EntryTicket',TO_TIMESTAMP('2014-02-19 17:51:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 19, 2014 5:52:15 PM VET
-- Farming Technical Assistance
DELETE FROM AD_ReportView WHERE AD_ReportView_ID=53110
;

-- Feb 19, 2014 5:52:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AD_ReportView_ID=53062,Updated=TO_TIMESTAMP('2014-02-19 17:52:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53570
;

-- Feb 19, 2014 5:54:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53111,53585,TO_TIMESTAMP('2014-02-19 17:54:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_EntryTicket Sample Sheet Supervisor',TO_TIMESTAMP('2014-02-19 17:54:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 19, 2014 5:54:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AD_ReportView_ID=53111,Updated=TO_TIMESTAMP('2014-02-19 17:54:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53570
;

-- Feb 19, 2014 5:58:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-02-19 17:58:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54450
;

-- Feb 19, 2014 5:58:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-02-19 17:58:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54451
;

-- Feb 19, 2014 5:59:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-02-19 17:59:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54454
;

-- Feb 19, 2014 6:03:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-02-19 18:03:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54152
;

-- Feb 19, 2014 6:03:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-02-19 18:03:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54156
;

-- Feb 19, 2014 6:03:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-02-19 18:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54151
;

-- Feb 19, 2014 6:09:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52323,'FTA_EntryTicket.DocStatus IN (''CO'',''CL'') AND FTA_EntryTicket.OperationType = ''@OperationType@'' AND
NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = FTA_RV_EntryTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))',TO_TIMESTAMP('2014-02-19 18:09:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_EntryTicket completed or closed and Operation Type NQ','S',TO_TIMESTAMP('2014-02-19 18:09:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 19, 2014 6:10:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52323,Updated=TO_TIMESTAMP('2014-02-19 18:10:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54155
;

-- Feb 19, 2014 6:12:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus IN (''CO'',''CL'') AND FTA_EntryTicket.OperationType = ''@OperationType@'' AND
NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))',Updated=TO_TIMESTAMP('2014-02-19 18:12:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52323
;

