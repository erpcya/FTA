-- 23/10/2013 09:24:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53509,'org.spin.process.FarmerCreditBEGenerate','N',TO_TIMESTAMP('2013-10-23 09:24:50','YYYY-MM-DD HH24:MI:SS'),100,'Bill of Exchange Generate','ECA02','Y','N','N','N','N','Bill of Exchange Generate','Y',0,0,TO_TIMESTAMP('2013-10-23 09:24:50','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmerCredit Bill of Exchange Detail')
;

-- 23/10/2013 09:24:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53509 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 23/10/2013 09:25:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname='org.spin.process.FarmerCreditBEGenerate', Description='Bill of Exchange Generate', Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='N', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_TIMESTAMP('2013-10-23 09:25:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53509
;

-- 23/10/2013 09:25:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53509
;

-- 23/10/2013 09:25:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53509,54191,19,'AD_Org_ID',TO_TIMESTAMP('2013-10-23 09:25:29','YYYY-MM-DD HH24:MI:SS'),100,'-1','ECA02',0,'Y','Y','Y','N','Org',10,TO_TIMESTAMP('2013-10-23 09:25:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2013 09:25:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54191 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2013 09:25:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,189,0,53509,54192,19,131,'C_BPartner_Location_ID',TO_TIMESTAMP('2013-10-23 09:25:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Location',20,TO_TIMESTAMP('2013-10-23 09:25:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2013 09:25:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54192 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2013 09:25:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53509,54193,19,52234,'C_DocTypeTarget_ID',TO_TIMESTAMP('2013-10-23 09:25:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','C_DocTypeTarget_ID',30,TO_TIMESTAMP('2013-10-23 09:25:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2013 09:25:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54193 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2013 09:25:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53509,54194,15,'DateDoc',TO_TIMESTAMP('2013-10-23 09:25:31','YYYY-MM-DD HH24:MI:SS'),100,'@#Date@','ECA02',0,'Y','Y','Y','N','DateDoc',40,TO_TIMESTAMP('2013-10-23 09:25:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2013 09:25:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54194 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2013 09:25:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,618,0,53509,54195,15,'ValidTo',TO_TIMESTAMP('2013-10-23 09:25:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','ValidTo',50,TO_TIMESTAMP('2013-10-23 09:25:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2013 09:25:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54195 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2013 09:25:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Letra de Cambio (Giro)',Description='Generar Letra de Cambio (Giro)',Updated=TO_TIMESTAMP('2013-10-23 09:25:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53509 AND AD_Language='es_MX'
;

-- 23/10/2013 09:25:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Help='Genera un Giro a partir del Monto y Dirección del Productor',Updated=TO_TIMESTAMP('2013-10-23 09:25:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53509 AND AD_Language='es_MX'
;

-- 23/10/2013 09:26:20 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54192
;

-- 23/10/2013 09:26:20 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54192
;

-- 23/10/2013 09:28:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56396,0,53509,54196,18,53576,'FTA_CreditAct_ID',TO_TIMESTAMP('2013-10-23 09:28:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','FTA_CreditAct_ID',60,TO_TIMESTAMP('2013-10-23 09:28:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2013 09:28:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54196 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2013 09:28:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56084,0,53509,54197,18,53571,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2013-10-23 09:28:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','FTA_FarmerCredit_ID',70,TO_TIMESTAMP('2013-10-23 09:28:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2013 09:28:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54197 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2013 09:28:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=11,Updated=TO_TIMESTAMP('2013-10-23 09:28:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54196
;

-- 23/10/2013 09:28:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=12,Updated=TO_TIMESTAMP('2013-10-23 09:28:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54197
;

-- 23/10/2013 09:31:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53664,0,53509,TO_TIMESTAMP('2013-10-23 09:31:07','YYYY-MM-DD HH24:MI:SS'),100,'Bill of Exchange Generate','ECA02','Y','Y','N','N','N','Bill of Exchange Generate',TO_TIMESTAMP('2013-10-23 09:31:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2013 09:31:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53664 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 23/10/2013 09:31:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53664, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53664)
;

-- 23/10/2013 09:31:12 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53650
;

-- 23/10/2013 09:31:12 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53657
;

-- 23/10/2013 09:31:12 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53656
;

-- 23/10/2013 09:31:12 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53664
;

-- 23/10/2013 09:31:12 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53651
;

-- 23/10/2013 09:31:12 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53660
;

-- 23/10/2013 09:31:12 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53591
;

-- 23/10/2013 09:31:12 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53636
;

-- 23/10/2013 09:31:12 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53589
;

-- 23/10/2013 09:31:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Generar Letra de Cambio (Giro)',Description='Generar Letra de Cambio (Giro)',Updated=TO_TIMESTAMP('2013-10-23 09:31:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53664 AND AD_Language='es_MX'
;

-- 23/10/2013 09:37:40 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52236,'FTA_CreditAct.DocStatus = ''CO''',TO_TIMESTAMP('2013-10-23 09:37:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_CreditAct Completed','S',TO_TIMESTAMP('2013-10-23 09:37:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2013 09:39:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52236,Updated=TO_TIMESTAMP('2013-10-23 09:39:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54196
;

-- 23/10/2013 09:42:00 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52237,'FTA_FarmerCredit.FTA_CreditAct_ID = @FTA_CreditAct_ID@ AND FTA_FarmerCredit.DocStatus = ''CO''',TO_TIMESTAMP('2013-10-23 09:41:59','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CreditAct_ID','ECA02','Y','FTA_FarmerCredit from Credit Act and Completed','S',TO_TIMESTAMP('2013-10-23 09:41:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2013 09:42:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52237,Updated=TO_TIMESTAMP('2013-10-23 09:42:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54197
;

