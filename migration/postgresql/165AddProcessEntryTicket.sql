-- 16/10/2013 11:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,WhereClause) VALUES (0,0,53078,53585,TO_TIMESTAMP('2013-10-16 11:38:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_EntryTicket Not Exist Quality Analysis',TO_TIMESTAMP('2013-10-16 11:38:45','YYYY-MM-DD HH24:MI:SS'),100,'NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE  qa.FTA_EntryTicket_ID = FTA_RV_EntriTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))')
;

-- 16/10/2013 11:39:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53497,53078,'N',TO_TIMESTAMP('2013-10-16 11:39:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Entry Ticket','Y',0,0,TO_TIMESTAMP('2013-10-16 11:39:15','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_EntryTicket Entry Ticket')
;

-- 16/10/2013 11:39:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53497 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 16/10/2013 11:39:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Hoja de Muestreo',Updated=TO_TIMESTAMP('2013-10-16 11:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53497 AND AD_Language='es_MX'
;

-- 16/10/2013 11:40:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53653,0,53497,TO_TIMESTAMP('2013-10-16 11:40:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Entry Ticket',TO_TIMESTAMP('2013-10-16 11:40:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 11:40:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53653 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 16/10/2013 11:40:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-10-16 11:40:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',53653,0,999,TO_TIMESTAMP('2013-10-16 11:40:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 11:40:35 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0,Updated=TO_TIMESTAMP('2013-10-16 11:40:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53653
;

-- 16/10/2013 11:40:35 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1,Updated=TO_TIMESTAMP('2013-10-16 11:40:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53646
;

-- 16/10/2013 11:40:35 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2,Updated=TO_TIMESTAMP('2013-10-16 11:40:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- 16/10/2013 11:40:35 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_TIMESTAMP('2013-10-16 11:40:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53606
;

-- 16/10/2013 11:40:35 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_TIMESTAMP('2013-10-16 11:40:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- 16/10/2013 11:40:35 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_TIMESTAMP('2013-10-16 11:40:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- 16/10/2013 11:40:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53654,0,TO_TIMESTAMP('2013-10-16 11:40:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','Y','Reports',TO_TIMESTAMP('2013-10-16 11:40:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 11:40:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53654 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 16/10/2013 11:40:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-10-16 11:40:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',53654,0,999,TO_TIMESTAMP('2013-10-16 11:40:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 11:40:54 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0,Updated=TO_TIMESTAMP('2013-10-16 11:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53654
;

-- 16/10/2013 11:40:54 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1,Updated=TO_TIMESTAMP('2013-10-16 11:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53653
;

-- 16/10/2013 11:40:54 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2,Updated=TO_TIMESTAMP('2013-10-16 11:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53646
;

-- 16/10/2013 11:40:54 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_TIMESTAMP('2013-10-16 11:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- 16/10/2013 11:40:54 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_TIMESTAMP('2013-10-16 11:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53606
;

-- 16/10/2013 11:40:54 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_TIMESTAMP('2013-10-16 11:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- 16/10/2013 11:40:54 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_TIMESTAMP('2013-10-16 11:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- 16/10/2013 11:40:58 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53654, SeqNo=0,Updated=TO_TIMESTAMP('2013-10-16 11:40:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53653
;

-- 16/10/2013 11:41:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Hoja de Muestreo',Updated=TO_TIMESTAMP('2013-10-16 11:41:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53653 AND AD_Language='es_MX'
;

-- 16/10/2013 11:42:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53497,54151,15,'DateDoc',TO_TIMESTAMP('2013-10-16 11:42:09','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','Y','Document Date',10,TO_TIMESTAMP('2013-10-16 11:42:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 11:42:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54151 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2013 11:42:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53497,54152,19,'AD_Org_ID',TO_TIMESTAMP('2013-10-16 11:42:26','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',3,TO_TIMESTAMP('2013-10-16 11:42:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 11:42:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54152 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2013 11:43:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56441,0,53497,54153,30,'FTA_Driver_ID',TO_TIMESTAMP('2013-10-16 11:43:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Driver',20,TO_TIMESTAMP('2013-10-16 11:43:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 11:43:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54153 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2013 11:44:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56129,0,53497,54155,30,'FTA_EntryTicket_ID',TO_TIMESTAMP('2013-10-16 11:44:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Entry Ticket',4,TO_TIMESTAMP('2013-10-16 11:44:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 11:44:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54155 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2013 11:45:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,196,0,53497,54156,19,52188,'C_DocType_ID',TO_TIMESTAMP('2013-10-16 11:45:39','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',22,'The Document Type determines document sequence and processing rules','Y','Y','N','N','Document Type',30,TO_TIMESTAMP('2013-10-16 11:45:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 11:45:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54156 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2013 11:46:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=5,Updated=TO_TIMESTAMP('2013-10-16 11:46:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54156
;

-- 16/10/2013 11:46:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2013-10-16 11:46:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54153
;

-- 16/10/2013 11:46:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=6,Updated=TO_TIMESTAMP('2013-10-16 11:46:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54155
;

-- 16/10/2013 11:48:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=19, AD_Val_Rule_ID=52195,Updated=TO_TIMESTAMP('2013-10-16 11:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54155
;

-- 16/10/2013 11:48:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2013-10-16 11:48:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54151
;

-- 16/10/2013 11:48:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='Y',Updated=TO_TIMESTAMP('2013-10-16 11:48:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54151
;

-- 16/10/2013 11:48:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-10-16 11:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54152
;

-- 16/10/2013 11:48:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-10-16 11:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54156
;

