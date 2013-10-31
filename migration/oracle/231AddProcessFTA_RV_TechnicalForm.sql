-- Oct 29, 2013 11:07:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53085,53653,TO_DATE('2013-10-29 11:07:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_TechnicalForm',TO_DATE('2013-10-29 11:07:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 29, 2013 11:07:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53515,53085,'N',TO_DATE('2013-10-29 11:07:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Technical Form','Y',0,0,TO_DATE('2013-10-29 11:07:22','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_TechnicalForm TechnicalForm')
;

-- Oct 29, 2013 11:07:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53515 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 29, 2013 11:08:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Hoja Técnica',Updated=TO_DATE('2013-10-29 11:08:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53507 AND AD_Language='es_MX'
;

-- Oct 29, 2013 11:08:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Hoja Técnica',Updated=TO_DATE('2013-10-29 11:08:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53515 AND AD_Language='es_MX'
;

-- Oct 29, 2013 11:08:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Hoja Técnica',Updated=TO_DATE('2013-10-29 11:08:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53515 AND AD_Language='es_VE'
;

-- Oct 29, 2013 11:09:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Process_ID=53515,Updated=TO_DATE('2013-10-29 11:09:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53670
;

