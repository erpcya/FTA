-- Sep 10, 2013 4:13:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Table SET AD_Window_ID=53265,Updated=TO_TIMESTAMP('2013-09-10 16:13:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53583
;

-- Sep 10, 2013 4:13:56 PM VET
-- SFAndroid Contribution
UPDATE AD_Table SET AD_Window_ID=53265,Updated=TO_TIMESTAMP('2013-09-10 16:13:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53584
;

-- Sep 10, 2013 4:15:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53061,53583,TO_TIMESTAMP('2013-09-10 16:15:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_Liquidation',TO_TIMESTAMP('2013-09-10 16:15:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 10, 2013 4:16:06 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53454,53061,'N',TO_TIMESTAMP('2013-09-10 16:16:06','YYYY-MM-DD HH24:MI:SS'),100,'Liquidation Producer','ECA02','Y','N','N','Y','N','Liquidation Producer','Y',0,0,TO_TIMESTAMP('2013-09-10 16:16:06','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_Liquidation LiquidationProducer')
;

-- Sep 10, 2013 4:16:06 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53454 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Sep 10, 2013 4:16:37 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Liquidación Productor',Description='Liquidación Productor',Updated=TO_TIMESTAMP('2013-09-10 16:16:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53454 AND AD_Language='es_MX'
;

-- Sep 10, 2013 4:16:55 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET AD_Process_ID=53454,Updated=TO_TIMESTAMP('2013-09-10 16:16:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53733
;

