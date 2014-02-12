-- Nov 21, 2013 11:43:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53533,'org.spin.process.CreditDefinitionCheck','N',TO_TIMESTAMP('2013-11-21 11:43:17','YYYY-MM-DD HH24:MI:SS'),100,'Credit Definition Check','ECA02','Y','N','N','N','N','Credit Definition Check','Y',0,0,TO_TIMESTAMP('2013-11-21 11:43:17','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CreditDefinition Check')
;

-- Nov 21, 2013 11:43:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53533 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Nov 21, 2013 11:44:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Verificar Definición de Crédito',Description='Verifica si la Definición de Crédito tiene las lineas predeterminadas creadas',Updated=TO_TIMESTAMP('2013-11-21 11:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53533 AND AD_Language='es_MX'
;

-- Nov 21, 2013 11:45:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Description='Verifica si la Definición de Crédito tiene las lineas predeterminadas creadas',Updated=TO_TIMESTAMP('2013-11-21 11:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53533 AND AD_Language='es_VE'
;

-- Nov 21, 2013 11:45:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Verificar Definición de Crédito',Updated=TO_TIMESTAMP('2013-11-21 11:45:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53533 AND AD_Language='es_VE'
;

-- Nov 21, 2013 11:45:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53533,54305,19,'AD_Org_ID',TO_TIMESTAMP('2013-11-21 11:45:41','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Org',10,TO_TIMESTAMP('2013-11-21 11:45:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 21, 2013 11:45:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54305 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 21, 2013 11:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56108,0,53533,54306,19,'FTA_CreditDefinition_ID',TO_TIMESTAMP('2013-11-21 11:46:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Credit Definition',20,TO_TIMESTAMP('2013-11-21 11:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 21, 2013 11:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54306 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 21, 2013 11:46:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET FieldLength=10,Updated=TO_TIMESTAMP('2013-11-21 11:46:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54306
;

-- Nov 21, 2013 11:46:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53689,0,53533,TO_TIMESTAMP('2013-11-21 11:46:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','sadasd',TO_TIMESTAMP('2013-11-21 11:46:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 21, 2013 11:46:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53689 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Nov 21, 2013 11:46:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-11-21 11:46:56','YYYY-MM-DD HH24:MI:SS'),100,'Y',53689,0,999,TO_TIMESTAMP('2013-11-21 11:46:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 21, 2013 11:47:20 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53667, SeqNo=0,Updated=TO_TIMESTAMP('2013-11-21 11:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53689
;

-- Nov 21, 2013 11:47:20 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53667, SeqNo=1,Updated=TO_TIMESTAMP('2013-11-21 11:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53591
;

-- Nov 21, 2013 11:47:20 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53667, SeqNo=2,Updated=TO_TIMESTAMP('2013-11-21 11:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53668
;

-- Nov 21, 2013 11:47:20 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53667, SeqNo=3,Updated=TO_TIMESTAMP('2013-11-21 11:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53666
;

