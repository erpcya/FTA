-- Nov 3, 2013 11:50:56 AM VET
-- LVE Withholding
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53092,53661,TO_DATE('2013-11-03 11:50:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_Allocation Allocation Report',TO_DATE('2013-11-03 11:50:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 3, 2013 11:51:24 AM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53527,53092,TO_DATE('2013-11-03 11:51:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Report Farmer Credit Allocation','Y',0,0,TO_DATE('2013-11-03 11:51:23','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Allocation Report')
;

-- Nov 3, 2013 11:51:25 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53527 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Nov 3, 2013 11:54:15 AM VET
-- LVE Withholding
UPDATE AD_Tab SET AD_Process_ID=53527,Updated=TO_DATE('2013-11-03 11:54:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53733
;

