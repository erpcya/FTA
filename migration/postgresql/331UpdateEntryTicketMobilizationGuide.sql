-- Jan 9, 2014 9:36:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=202,Updated=TO_TIMESTAMP('2014-01-09 09:36:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66866
;

-- Jan 9, 2014 11:07:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56607,0,53497,54337,17,53597,'OperationType',TO_TIMESTAMP('2014-01-09 11:07:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','Y','Y','N','Operation Type',7,TO_TIMESTAMP('2014-01-09 11:07:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 9, 2014 11:07:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54337 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 9, 2014 11:07:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=8,Updated=TO_TIMESTAMP('2014-01-09 11:07:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54155
;

-- Jan 9, 2014 2:39:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-01-09 14:39:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68324
;

-- Jan 9, 2014 2:40:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-01-09 14:40:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68334
;

-- Jan 9, 2014 4:08:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-01-09 16:08:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54225
;

-- Jan 9, 2014 4:10:42 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause='FTA_RV_EntryTicket.DocStatus IN (''CO'',''CL'') AND NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE  qa.FTA_EntryTicket_ID = FTA_RV_EntryTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))',Updated=TO_TIMESTAMP('2014-01-09 16:10:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53078
;

-- Jan 9, 2014 4:12:34 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause='FTA_RV_RecordWeight.DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-01-09 16:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53077
;

-- Jan 9, 2014 4:13:01 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause='NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE  qa.FTA_EntryTicket_ID = FTA_RV_EntryTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))',Updated=TO_TIMESTAMP('2014-01-09 16:13:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53078
;

-- Jan 9, 2014 4:13:26 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause='FTA_RV_EntryTicket.DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-01-09 16:13:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53062
;

-- Jan 9, 2014 4:13:54 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause='FTA_RV_QualityAnalisys.DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-01-09 16:13:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53076
;

-- Jan 9, 2014 4:16:27 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause='FTA_RV_MobilizationGuide.DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-01-09 16:16:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53075
;

-- Jan 9, 2014 6:16:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-01-09 18:16:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53988
;

-- Jan 9, 2014 6:19:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53551,'N',TO_TIMESTAMP('2014-01-09 18:19:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Detail Quality Analysis','Y',0,0,TO_TIMESTAMP('2014-01-09 18:19:41','YYYY-MM-DD HH24:MI:SS'),100,'FTA_QualityAnalysis Detail')
;

-- Jan 9, 2014 6:19:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53551 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 9, 2014 6:20:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Help='Detail Quality Analysis',Updated=TO_TIMESTAMP('2014-01-09 18:20:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551
;

-- Jan 9, 2014 6:20:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53551
;

-- Jan 9, 2014 6:20:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle Análisis de Cálidad',Updated=TO_TIMESTAMP('2014-01-09 18:20:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551 AND AD_Language='es_VE'
;

-- Jan 9, 2014 6:20:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle Análisis de Cálidad',Updated=TO_TIMESTAMP('2014-01-09 18:20:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551 AND AD_Language='es_VE'
;

-- Jan 9, 2014 6:21:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53739,0,53551,TO_TIMESTAMP('2014-01-09 18:21:33','YYYY-MM-DD HH24:MI:SS'),100,'Detail Quality Analysis','ECA02','Y','Y','N','N','N','Detail Quality Analysis',TO_TIMESTAMP('2014-01-09 18:21:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 9, 2014 6:21:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53739 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jan 9, 2014 6:21:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-01-09 18:21:36','YYYY-MM-DD HH24:MI:SS'),100,'Y',53739,0,999,TO_TIMESTAMP('2014-01-09 18:21:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 9, 2014 6:21:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53654, SeqNo=0,Updated=TO_TIMESTAMP('2014-01-09 18:21:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53739
;

-- Jan 9, 2014 6:21:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53654, SeqNo=1,Updated=TO_TIMESTAMP('2014-01-09 18:21:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53672
;

-- Jan 9, 2014 6:21:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53654, SeqNo=2,Updated=TO_TIMESTAMP('2014-01-09 18:21:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53653
;

-- Jan 9, 2014 8:22:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71065,56607,0,10,53585,'OperationType',TO_TIMESTAMP('2014-01-09 20:22:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','N','N','N','N','N','N','N','N','N','Operation Type',TO_TIMESTAMP('2014-01-09 20:22:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 9, 2014 8:22:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71065 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 9, 2014 8:22:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71066,55969,0,19,53585,'FTA_FarmDivision_ID',TO_TIMESTAMP('2014-01-09 20:22:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Farm Division',TO_TIMESTAMP('2014-01-09 20:22:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 9, 2014 8:22:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71066 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 9, 2014 8:31:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71067,55969,0,19,53620,'FTA_FarmDivision_ID',TO_TIMESTAMP('2014-01-09 20:31:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Farm Division',TO_TIMESTAMP('2014-01-09 20:31:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 9, 2014 8:31:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71067 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 9, 2014 8:41:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71068,2021,0,19,53585,'M_Lot_ID',TO_TIMESTAMP('2014-01-09 20:41:38','YYYY-MM-DD HH24:MI:SS'),100,'Product Lot Definition','ECA02',10,'The individual Lot of a Product','Y','N','N','N','N','N','N','N','N','N','Lot',TO_TIMESTAMP('2014-01-09 20:41:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 9, 2014 8:41:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71068 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 9, 2014 8:43:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53523,Updated=TO_TIMESTAMP('2014-01-09 20:43:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71068
;

-- Jan 9, 2014 8:46:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71069,2021,0,19,53620,'M_Lot_ID',TO_TIMESTAMP('2014-01-09 20:46:53','YYYY-MM-DD HH24:MI:SS'),100,'Product Lot Definition','ECA02',10,'The individual Lot of a Product','Y','N','N','N','N','N','N','N','N','N','Lot',TO_TIMESTAMP('2014-01-09 20:46:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 9, 2014 8:46:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71069 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 9, 2014 8:47:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53523,Updated=TO_TIMESTAMP('2014-01-09 20:47:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71069
;

