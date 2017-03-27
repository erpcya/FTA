-- Oct 14, 2013 7:21:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53075,53620,TO_TIMESTAMP('2013-10-14 19:21:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_MovilizationGuide',TO_TIMESTAMP('2013-10-14 19:21:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 7:22:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53491,53075,TO_TIMESTAMP('2013-10-14 19:22:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Movilization Guide','Y',0,0,TO_TIMESTAMP('2013-10-14 19:22:10','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_MovilizationGuide Movilization')
;

-- Oct 14, 2013 7:22:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53491 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 14, 2013 7:23:07 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET Name='FTA_RV_MobilizationGuide',Updated=TO_TIMESTAMP('2013-10-14 19:23:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53075
;

-- Oct 14, 2013 7:23:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Name='Mobilization Guide', Value='FTA_RV_MobilizationGuide Mobilization',Updated=TO_TIMESTAMP('2013-10-14 19:23:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53491
;

-- Oct 14, 2013 7:23:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53491
;

-- Oct 14, 2013 7:23:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Table SET Name='View Mobilization Guide', TableName='FTA_RV_MobilizationGuide',Updated=TO_TIMESTAMP('2013-10-14 19:23:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53620
;

-- Oct 14, 2013 7:23:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53620
;

-- Oct 14, 2013 7:23:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53766,TO_TIMESTAMP('2013-10-14 19:23:39','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_RV_MobilizationGuide',1,'Y','N','Y','Y','FTA_RV_MobilizationGuide','N',1000000,TO_TIMESTAMP('2013-10-14 19:23:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 7:23:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='View Mobilization Guide',Updated=TO_TIMESTAMP('2013-10-14 19:23:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53620 AND AD_Language='es_VE'
;

-- Oct 14, 2013 7:25:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Process_ID=53491,Updated=TO_TIMESTAMP('2013-10-14 19:25:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53673
;

