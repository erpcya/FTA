-- Oct 25, 2013 9:45:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53083,53651,TO_DATE('2013-10-25 09:45:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_PaymentRequest',TO_DATE('2013-10-25 09:45:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 25, 2013 9:47:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53513,53083,TO_DATE('2013-10-25 09:47:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Report Payment Request','Y',0,0,TO_DATE('2013-10-25 09:47:42','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_PaymentRequest Report')
;

-- Oct 25, 2013 9:47:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53513 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 25, 2013 9:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Orden de Pago',Updated=TO_DATE('2013-10-25 09:49:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53513 AND AD_Language='es_MX'
;

-- Oct 25, 2013 9:49:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Process_ID=53513,Updated=TO_DATE('2013-10-25 09:49:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53793
;

