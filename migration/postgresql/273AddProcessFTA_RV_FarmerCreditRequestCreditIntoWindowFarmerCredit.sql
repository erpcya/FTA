-- Nov 2, 2013 7:17:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53091,53663,TO_TIMESTAMP('2013-11-02 19:17:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_FarmerCredit CreditRequest',TO_TIMESTAMP('2013-11-02 19:17:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 2, 2013 7:18:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53526,53091,'N',TO_TIMESTAMP('2013-11-02 19:18:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Credit Request','Y',0,0,TO_TIMESTAMP('2013-11-02 19:18:07','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_FarmerCredit CreditRequest')
;

-- Nov 2, 2013 7:18:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53526 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Nov 2, 2013 7:18:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Solicitud de Crédito',Updated=TO_TIMESTAMP('2013-11-02 19:18:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53526 AND AD_Language='es_MX'
;

-- Nov 2, 2013 7:18:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Solicitud de Crédito',Updated=TO_TIMESTAMP('2013-11-02 19:18:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53526 AND AD_Language='es_VE'
;

-- Nov 2, 2013 7:20:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Process_ID=53526,Updated=TO_TIMESTAMP('2013-11-02 19:20:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53721
;

