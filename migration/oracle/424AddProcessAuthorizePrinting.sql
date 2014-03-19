-- Mar 19, 2014 11:24:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53605,'org.spin.process.AuthorizePrinting','N',TO_DATE('2014-03-19 11:24:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Authorize Printing','Y',0,0,TO_DATE('2014-03-19 11:24:26','YYYY-MM-DD HH24:MI:SS'),100,'FTA_AuthorizePrinting')
;

-- Mar 19, 2014 11:24:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53605 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Mar 19, 2014 11:24:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Autorizar Impresión',Updated=TO_DATE('2014-03-19 11:24:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53605 AND AD_Language='es_MX'
;

-- Mar 19, 2014 11:24:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Autorizar Impresión',Updated=TO_DATE('2014-03-19 11:24:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53605 AND AD_Language='es_VE'
;

-- Mar 19, 2014 11:26:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53673,TO_DATE('2014-03-19 11:25:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','Authorize Printing',TO_DATE('2014-03-19 11:25:59','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- Mar 19, 2014 11:26:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53673 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Mar 19, 2014 11:26:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53673,54389,TO_DATE('2014-03-19 11:26:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Entry Ticket',TO_DATE('2014-03-19 11:26:27','YYYY-MM-DD HH24:MI:SS'),100,'ET')
;

-- Mar 19, 2014 11:26:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54389 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 19, 2014 11:26:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53673,54390,TO_DATE('2014-03-19 11:26:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Record Weight',TO_DATE('2014-03-19 11:26:38','YYYY-MM-DD HH24:MI:SS'),100,'RW')
;

-- Mar 19, 2014 11:26:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54390 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 19, 2014 11:26:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53673,54391,TO_DATE('2014-03-19 11:26:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Quality Analisys',TO_DATE('2014-03-19 11:26:53','YYYY-MM-DD HH24:MI:SS'),100,'QA')
;

-- Mar 19, 2014 11:26:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54391 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 19, 2014 11:27:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57089,0,17,53673,'AuthorizePrinting',TO_DATE('2014-03-19 11:27:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2,'Y','Authorize Printing','Authorize Printing',TO_DATE('2014-03-19 11:27:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 19, 2014 11:27:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57089 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 19, 2014 11:27:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57089,0,53605,54623,17,53673,'AuthorizePrinting',TO_DATE('2014-03-19 11:27:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2,'Y','Y','Y','N','Authorize Printing',10,TO_DATE('2014-03-19 11:27:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 19, 2014 11:27:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54623 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 19, 2014 11:28:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DisplayLogic,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56129,0,53605,54624,18,'FTA_EntryTicket_ID',TO_DATE('2014-03-19 11:28:26','YYYY-MM-DD HH24:MI:SS'),100,'AuthorizePrinting = ''ET''','ECA02',0,'Y','Y','Y','N','Entry Ticket',20,TO_DATE('2014-03-19 11:28:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 19, 2014 11:28:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54624 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 19, 2014 11:28:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Ticket de Entrada',Updated=TO_DATE('2014-03-19 11:28:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54389 AND AD_Language='es_MX'
;

-- Mar 19, 2014 11:28:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Ticket de Entrada',Updated=TO_DATE('2014-03-19 11:28:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54389 AND AD_Language='es_VE'
;

-- Mar 19, 2014 11:29:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56135,0,53605,54625,18,53632,'FTA_RecordWeight_ID',TO_DATE('2014-03-19 11:29:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Record Weight',30,TO_DATE('2014-03-19 11:29:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 19, 2014 11:29:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54625 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 19, 2014 11:29:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic='@AuthorizePrinting@ = ''RW''',Updated=TO_DATE('2014-03-19 11:29:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54625
;

-- Mar 19, 2014 11:29:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic='@AuthorizePrinting@ = ''ET''',Updated=TO_DATE('2014-03-19 11:29:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54624
;

-- Mar 19, 2014 11:34:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Registro del Peso',Updated=TO_DATE('2014-03-19 11:34:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54390 AND AD_Language='es_MX'
;

-- Mar 19, 2014 11:34:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Registro del Peso',Updated=TO_DATE('2014-03-19 11:34:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54390 AND AD_Language='es_VE'
;

-- Mar 19, 2014 11:35:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56131,0,53605,54626,18,53538,'FTA_QualityAnalysis_ID',TO_DATE('2014-03-19 11:35:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Quality Analysis',40,TO_DATE('2014-03-19 11:35:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 19, 2014 11:35:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54626 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 19, 2014 11:35:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic='@AuthorizePrinting@ = ''QA''',Updated=TO_DATE('2014-03-19 11:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54626
;

-- Mar 19, 2014 11:35:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Análisis de Calidad',Updated=TO_DATE('2014-03-19 11:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54391 AND AD_Language='es_MX'
;

-- Mar 19, 2014 11:35:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Análisis de Calidad',Updated=TO_DATE('2014-03-19 11:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54391 AND AD_Language='es_VE'
;

-- Mar 19, 2014 11:36:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53796,0,53605,TO_DATE('2014-03-19 11:36:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Authorize Printing',TO_DATE('2014-03-19 11:36:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 19, 2014 11:36:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53796 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Mar 19, 2014 11:36:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-03-19 11:36:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',53796,0,999,TO_DATE('2014-03-19 11:36:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 19, 2014 11:36:27 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=0,Updated=TO_DATE('2014-03-19 11:36:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53796
;

-- Mar 19, 2014 11:36:27 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=1,Updated=TO_DATE('2014-03-19 11:36:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53747
;

-- Mar 19, 2014 11:36:27 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=2,Updated=TO_DATE('2014-03-19 11:36:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53609
;

-- Mar 19, 2014 11:36:27 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=3,Updated=TO_DATE('2014-03-19 11:36:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53598
;

-- Mar 19, 2014 11:36:29 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_DATE('2014-03-19 11:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53791
;

-- Mar 19, 2014 11:36:30 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_DATE('2014-03-19 11:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53757
;

-- Mar 19, 2014 11:36:30 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=7,Updated=TO_DATE('2014-03-19 11:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53561
;

-- Mar 19, 2014 11:36:30 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=8,Updated=TO_DATE('2014-03-19 11:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53784
;

-- Mar 19, 2014 11:36:30 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=9,Updated=TO_DATE('2014-03-19 11:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53756
;

-- Mar 19, 2014 11:36:30 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=10,Updated=TO_DATE('2014-03-19 11:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53764
;

-- Mar 19, 2014 11:36:30 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=11,Updated=TO_DATE('2014-03-19 11:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53755
;

-- Mar 19, 2014 11:36:31 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=12,Updated=TO_DATE('2014-03-19 11:36:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53796
;

-- Mar 19, 2014 11:47:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Quality Analysis',Updated=TO_DATE('2014-03-19 11:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54391
;

-- Mar 19, 2014 11:47:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54391
;

-- Mar 19, 2014 2:15:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_Value_ID=53537,Updated=TO_DATE('2014-03-19 14:15:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54624
;

-- Mar 19, 2014 2:16:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52337,'FTA_EntryTicket.IsPrinted=''Y'' AND FTA_EntryTicket.DocStatus IN (''CO'',''CL'')',TO_DATE('2014-03-19 14:16:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_EntryTicket Printed','S',TO_DATE('2014-03-19 14:16:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 19, 2014 2:16:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52337,Updated=TO_DATE('2014-03-19 14:16:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54624
;

-- Mar 19, 2014 2:17:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52338,'FTA_RecordWeight.IsPrinted =''Y'' AND FTA_RecordWeight.DocStatus IN (''CO'',''CL'')',TO_DATE('2014-03-19 14:17:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RecordWeight Printed','S',TO_DATE('2014-03-19 14:17:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 19, 2014 2:17:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52338,Updated=TO_DATE('2014-03-19 14:17:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54625
;

-- Mar 19, 2014 2:18:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52339,'FTA_QualityAnalysis.IsPrinted=''Y'' AND FTA_QualityAnalysis.DocStatus IN (''CO'',''CL'')',TO_DATE('2014-03-19 14:18:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_QualityAnalysis Printed','S',TO_DATE('2014-03-19 14:18:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 19, 2014 2:18:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52339,Updated=TO_DATE('2014-03-19 14:18:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54626
;

