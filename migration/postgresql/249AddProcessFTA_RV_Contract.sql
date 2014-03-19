-- Oct 30, 2013 6:15:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53519,'N',TO_TIMESTAMP('2013-10-30 18:15:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Contract','Y',0,0,TO_TIMESTAMP('2013-10-30 18:15:48','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_Contract Contract')
;

-- Oct 30, 2013 6:15:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53519 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 30, 2013 6:17:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET JasperReport='attachment:Contract.jasper',Updated=TO_TIMESTAMP('2013-10-30 18:17:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53519
;

-- Oct 30, 2013 6:19:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56396,0,53519,54245,18,53576,'FTA_CreditAct_ID',TO_TIMESTAMP('2013-10-30 18:19:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Credit Act',10,TO_TIMESTAMP('2013-10-30 18:19:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 6:19:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54245 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 30, 2013 6:19:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Contrato',Updated=TO_TIMESTAMP('2013-10-30 18:19:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53519 AND AD_Language='es_MX'
;

-- Oct 30, 2013 6:19:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Contrato',Updated=TO_TIMESTAMP('2013-10-30 18:19:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53519 AND AD_Language='es_VE'
;

-- Oct 30, 2013 6:19:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53676,0,53519,TO_TIMESTAMP('2013-10-30 18:19:55','YYYY-MM-DD HH24:MI:SS'),100,'Contract','ECA02','Y','Y','N','N','N','Contract',TO_TIMESTAMP('2013-10-30 18:19:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 6:19:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53676 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Oct 30, 2013 6:19:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-10-30 18:19:56','YYYY-MM-DD HH24:MI:SS'),100,'Y',53676,0,999,TO_TIMESTAMP('2013-10-30 18:19:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 6:20:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=5,Updated=TO_TIMESTAMP('2013-10-30 18:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53652
;

-- Oct 30, 2013 6:20:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=6,Updated=TO_TIMESTAMP('2013-10-30 18:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53658
;

-- Oct 30, 2013 6:20:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=7,Updated=TO_TIMESTAMP('2013-10-30 18:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53650
;

-- Oct 30, 2013 6:20:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=8,Updated=TO_TIMESTAMP('2013-10-30 18:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53657
;

-- Oct 30, 2013 6:20:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=9,Updated=TO_TIMESTAMP('2013-10-30 18:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53664
;

-- Oct 30, 2013 6:20:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=10,Updated=TO_TIMESTAMP('2013-10-30 18:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53675
;

-- Oct 30, 2013 6:20:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=11,Updated=TO_TIMESTAMP('2013-10-30 18:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53662
;

-- Oct 30, 2013 6:20:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=12,Updated=TO_TIMESTAMP('2013-10-30 18:20:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53676
;

