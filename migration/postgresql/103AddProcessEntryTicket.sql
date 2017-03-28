-- 11/09/2013 12:02:56 PM VET
-- SFAndroid Contribution
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53062,53585,TO_TIMESTAMP('2013-09-11 12:02:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_EntryTicket',TO_TIMESTAMP('2013-09-11 12:02:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 12:03:08 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53455,53062,'N',TO_TIMESTAMP('2013-09-11 12:03:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','FTA_RV_EntryTicket','Y',0,0,TO_TIMESTAMP('2013-09-11 12:03:07','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_EntryTicket')
;

-- 11/09/2013 12:03:08 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53455 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 11/09/2013 12:03:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Name='Entry Ticket', Value='FTA_RV_EntryTicket Entry Ticket',Updated=TO_TIMESTAMP('2013-09-11 12:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53455
;

-- 11/09/2013 12:03:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53455
;

-- 11/09/2013 12:03:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Ticket de Entrada',Updated=TO_TIMESTAMP('2013-09-11 12:03:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53455 AND AD_Language='es_VE'
;

-- 11/09/2013 12:03:58 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET AD_Process_ID=53455,Updated=TO_TIMESTAMP('2013-09-11 12:03:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53729
;

