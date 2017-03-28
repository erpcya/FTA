-- Jan 15, 2014 9:01:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71279,2015,0,18,53647,53568,'M_Attribute_ID',TO_TIMESTAMP('2014-01-15 09:00:59','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute','ECA02',22,'Product Attribute like Color, Size','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Attribute',0,TO_TIMESTAMP('2014-01-15 09:00:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 15, 2014 9:01:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71279 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 15, 2014 9:02:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71279,72126,0,53737,TO_TIMESTAMP('2014-01-15 09:02:23','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute',22,'ECA02','Product Attribute like Color, Size','Y','Y','Y','N','N','N','N','N','Attribute',TO_TIMESTAMP('2014-01-15 09:02:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 9:02:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72126 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 15, 2014 9:02:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-01-15 09:02:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72126
;

-- Jan 15, 2014 9:02:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-01-15 09:02:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72112
;

-- Jan 15, 2014 9:03:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-15 09:03:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72126
;

-- Jan 15, 2014 9:54:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutCategoryCalcFilter', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-15 09:54:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71171
;

-- Jan 15, 2014 9:55:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutCategoryCalcFilter.attribute', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-15 09:55:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71171
;

-- Jan 15, 2014 9:59:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-01-15 09:59:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72122
;

-- Jan 15, 2014 10:03:47 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=72126
;

-- Jan 15, 2014 10:03:47 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=72126
;

-- Jan 15, 2014 10:03:59 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71171
;

-- Jan 15, 2014 10:04:27 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71279
;

-- Jan 15, 2014 10:04:27 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71279
;

-- Jan 15, 2014 10:04:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71280,2019,0,35,53568,'M_AttributeSetInstance_ID',TO_TIMESTAMP('2014-01-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance','ECA02',22,'The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Attribute Set Instance',0,TO_TIMESTAMP('2014-01-15 10:04:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 15, 2014 10:04:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71280 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 15, 2014 10:05:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71280,72127,0,53737,TO_TIMESTAMP('2014-01-15 10:05:10','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance',22,'ECA02','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Y','Y','Y','N','N','N','N','N','Attribute Set Instance',TO_TIMESTAMP('2014-01-15 10:05:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 10:05:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72127 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 15, 2014 10:05:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-01-15 10:05:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72127
;

-- Jan 15, 2014 10:05:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-15 10:05:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72127
;

-- Jan 15, 2014 10:07:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@EventType@ = ''DR''',Updated=TO_TIMESTAMP('2014-01-15 10:07:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72127
;

-- Jan 15, 2014 11:20:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-01-15 11:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72127
;

-- Jan 15, 2014 11:22:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='''@EventType@'' = ''DR''',Updated=TO_TIMESTAMP('2014-01-15 11:22:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72127
;

-- Jan 15, 2014 11:24:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@EventType@ = ''DR''',Updated=TO_TIMESTAMP('2014-01-15 11:24:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72127
;

-- Jan 15, 2014 11:35:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52293,'M_Attribute_ID = @M_Attribute_ID@',TO_TIMESTAMP('2014-01-15 11:35:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_AttributeValue of Context','S',TO_TIMESTAMP('2014-01-15 11:35:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 11:35:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53643, AD_Val_Rule_ID=52293,Updated=TO_TIMESTAMP('2014-01-15 11:35:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71173
;

-- Jan 15, 2014 11:37:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52293,Updated=TO_TIMESTAMP('2014-01-15 11:37:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71276
;

-- Jan 15, 2014 12:24:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53554,'N',TO_TIMESTAMP('2014-01-15 12:24:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Category Calc Production','Y',0,0,TO_TIMESTAMP('2014-01-15 12:24:32','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CategoryCalcProduction')
;

-- Jan 15, 2014 12:24:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53554 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 15, 2014 12:24:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Value='FTA_CategoryCalc Production',Updated=TO_TIMESTAMP('2014-01-15 12:24:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53554
;

-- Jan 15, 2014 12:25:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Categoría Calculo Producción',Updated=TO_TIMESTAMP('2014-01-15 12:25:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53554 AND AD_Language='es_VE'
;

-- Jan 15, 2014 12:25:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Calculo Categoría de Producción',Updated=TO_TIMESTAMP('2014-01-15 12:25:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53554 AND AD_Language='es_VE'
;

-- Jan 15, 2014 12:25:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Calculo Categoría de Producción',Updated=TO_TIMESTAMP('2014-01-15 12:25:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53554 AND AD_Language='es_VE'
;

-- Jan 15, 2014 12:26:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53745,0,53554,TO_TIMESTAMP('2014-01-15 12:26:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Category Calc Production',TO_TIMESTAMP('2014-01-15 12:26:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 12:26:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53745 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jan 15, 2014 12:26:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-01-15 12:26:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',53745,0,999,TO_TIMESTAMP('2014-01-15 12:26:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 12:26:23 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53571, SeqNo=1,Updated=TO_TIMESTAMP('2014-01-15 12:26:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53745
;

-- Jan 15, 2014 2:33:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Value='Rpt FTA_RecordWeight Print',Updated=TO_TIMESTAMP('2014-01-15 14:33:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53494
;

-- Jan 15, 2014 2:37:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53555,53077,'N',TO_TIMESTAMP('2014-01-15 14:37:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Print Record Weight Supervisor','Y',0,0,TO_TIMESTAMP('2014-01-15 14:37:28','YYYY-MM-DD HH24:MI:SS'),100,'Rpt FTA_RecordWeight Supervisor')
;

-- Jan 15, 2014 2:37:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53555 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 15, 2014 2:37:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Imprimir Registro de Peso Supervisor',Updated=TO_TIMESTAMP('2014-01-15 14:37:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53555 AND AD_Language='es_VE'
;

-- Jan 15, 2014 2:37:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Imprimir Registro de Peso Supervisor',Updated=TO_TIMESTAMP('2014-01-15 14:37:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53555 AND AD_Language='es_VE'
;

-- Jan 15, 2014 2:38:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56135,0,53555,54352,18,53632,'FTA_RecordWeight_ID',TO_TIMESTAMP('2014-01-15 14:38:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Record Weight',10,TO_TIMESTAMP('2014-01-15 14:38:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 2:38:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54352 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 15, 2014 2:39:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53746,0,TO_TIMESTAMP('2014-01-15 14:39:45','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Y','N','N','N','Print Record Weight Supervisor',TO_TIMESTAMP('2014-01-15 14:39:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 2:39:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53746 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jan 15, 2014 2:39:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-01-15 14:39:46','YYYY-MM-DD HH24:MI:SS'),100,'Y',53746,0,999,TO_TIMESTAMP('2014-01-15 14:39:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 2:40:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET "action"='R', AD_Process_ID=53555, EntityType='ECA02',Updated=TO_TIMESTAMP('2014-01-15 14:40:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53746
;

-- Jan 15, 2014 2:40:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Imprimir Registro de Peso Supervisor',Updated=TO_TIMESTAMP('2014-01-15 14:40:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53746 AND AD_Language='es_VE'
;

-- Jan 15, 2014 2:40:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Imprimir Registro de Peso Supervisor',Updated=TO_TIMESTAMP('2014-01-15 14:40:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53746 AND AD_Language='es_VE'
;

-- Jan 15, 2014 2:40:32 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53602, SeqNo=0,Updated=TO_TIMESTAMP('2014-01-15 14:40:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53746
;

-- Jan 15, 2014 2:40:32 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53602, SeqNo=1,Updated=TO_TIMESTAMP('2014-01-15 14:40:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53599
;

-- Jan 15, 2014 2:44:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52294,'DocStatus IN (''CO'',''CL'')',TO_TIMESTAMP('2014-01-15 14:44:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RecordWeight Completed or Closed','S',TO_TIMESTAMP('2014-01-15 14:44:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 2:44:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52294,Updated=TO_TIMESTAMP('2014-01-15 14:44:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54352
;

-- Jan 15, 2014 2:44:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2014-01-15 14:44:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54352
;

-- Jan 15, 2014 2:59:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53556,53076,'N',TO_TIMESTAMP('2014-01-15 14:59:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Print Quality Analysis Supervisor','Y',0,0,TO_TIMESTAMP('2014-01-15 14:59:34','YYYY-MM-DD HH24:MI:SS'),100,'Rpt FTA_QualityAnalysis Supervisor')
;

-- Jan 15, 2014 2:59:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53556 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 15, 2014 3:02:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52295,'FTA_QualityAnalysis.DocStatus IN (''CO'',''CL'')',TO_TIMESTAMP('2014-01-15 15:02:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_QualityAnalysis completed or closed','S',TO_TIMESTAMP('2014-01-15 15:02:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:02:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56131,0,53556,54353,30,53538,52295,'FTA_QualityAnalysis_ID',TO_TIMESTAMP('2014-01-15 15:02:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Quality Analysis',10,TO_TIMESTAMP('2014-01-15 15:02:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:02:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54353 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 15, 2014 3:02:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Imprimir Análisis de Cálidad Supervisor',Updated=TO_TIMESTAMP('2014-01-15 15:02:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53556 AND AD_Language='es_VE'
;

-- Jan 15, 2014 3:02:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Imprimir Análisis de Cálidad Supervisor',Updated=TO_TIMESTAMP('2014-01-15 15:02:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53556 AND AD_Language='es_VE'
;

-- Jan 15, 2014 3:03:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53747,0,53556,TO_TIMESTAMP('2014-01-15 15:03:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Print Quality Analysis Supervisor',TO_TIMESTAMP('2014-01-15 15:03:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:03:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53747 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jan 15, 2014 3:03:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-01-15 15:03:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',53747,0,999,TO_TIMESTAMP('2014-01-15 15:03:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:03:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Imprimir Análisis de Cálidad Supervisor',Updated=TO_TIMESTAMP('2014-01-15 15:03:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53747 AND AD_Language='es_VE'
;

-- Jan 15, 2014 3:03:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Imprimir Análisis de Cálidad Supervisor',Updated=TO_TIMESTAMP('2014-01-15 15:03:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53747 AND AD_Language='es_VE'
;

-- Jan 15, 2014 3:03:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=0,Updated=TO_TIMESTAMP('2014-01-15 15:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53747
;

-- Jan 15, 2014 3:03:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=1,Updated=TO_TIMESTAMP('2014-01-15 15:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53598
;

-- Jan 15, 2014 3:03:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=2,Updated=TO_TIMESTAMP('2014-01-15 15:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53609
;

-- Jan 15, 2014 3:14:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53557,'N',TO_TIMESTAMP('2014-01-15 15:14:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Print Entry Ticket Supervisor','Y',0,0,TO_TIMESTAMP('2014-01-15 15:14:23','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_EntryTicket Supervisor')
;

-- Jan 15, 2014 3:14:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53557 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 15, 2014 3:14:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Imprimir Ticket de Entrada Supervisor',Updated=TO_TIMESTAMP('2014-01-15 15:14:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53557 AND AD_Language='es_VE'
;

-- Jan 15, 2014 3:14:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Imprimir Ticket de Entrada Supervisor',Updated=TO_TIMESTAMP('2014-01-15 15:14:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53557 AND AD_Language='es_VE'
;

-- Jan 15, 2014 3:16:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52296,'FTA_EntryTicket.DocStatus IN (''CO'',''CL'')',TO_TIMESTAMP('2014-01-15 15:16:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_EntryTicket completed or closed','S',TO_TIMESTAMP('2014-01-15 15:16:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:16:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56129,0,53557,54354,30,52296,'FTA_EntryTicket_ID',TO_TIMESTAMP('2014-01-15 15:16:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Entry Ticket',10,TO_TIMESTAMP('2014-01-15 15:16:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:16:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54354 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 15, 2014 3:17:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53748,0,53557,TO_TIMESTAMP('2014-01-15 15:17:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Print Entry Ticket Supervisor',TO_TIMESTAMP('2014-01-15 15:17:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:17:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53748 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jan 15, 2014 3:17:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-01-15 15:17:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',53748,0,999,TO_TIMESTAMP('2014-01-15 15:17:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:17:09 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_TIMESTAMP('2014-01-15 15:17:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53748
;

-- Jan 15, 2014 3:17:09 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_TIMESTAMP('2014-01-15 15:17:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Jan 15, 2014 3:17:09 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_TIMESTAMP('2014-01-15 15:17:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Jan 15, 2014 3:17:09 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_TIMESTAMP('2014-01-15 15:17:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Jan 15, 2014 3:17:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AD_ReportView_ID=53062, IsReport='Y',Updated=TO_TIMESTAMP('2014-01-15 15:17:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53557
;

-- Jan 15, 2014 3:19:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Producción de Rubro',Updated=TO_TIMESTAMP('2014-01-15 15:19:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53554 AND AD_Language='es_VE'
;

-- Jan 15, 2014 3:19:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Producción de Rubro',Updated=TO_TIMESTAMP('2014-01-15 15:19:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53554 AND AD_Language='es_VE'
;

-- Jan 15, 2014 3:19:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Name='Category Production Generate', Value='FTA_CategoryProductionGenerate',Updated=TO_TIMESTAMP('2014-01-15 15:19:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53554
;

-- Jan 15, 2014 3:19:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53554
;

-- Jan 15, 2014 3:19:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Category Production Generate',Updated=TO_TIMESTAMP('2014-01-15 15:19:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53745
;

-- Jan 15, 2014 3:19:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53745
;

-- Jan 15, 2014 3:20:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.CategoryProductionGenerate',Updated=TO_TIMESTAMP('2014-01-15 15:20:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53554
;

-- Jan 15, 2014 3:21:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53554,54355,19,'AD_Org_ID',TO_TIMESTAMP('2014-01-15 15:21:17','YYYY-MM-DD HH24:MI:SS'),100,'-1','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_TIMESTAMP('2014-01-15 15:21:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:21:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54355 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 15, 2014 3:23:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,459,0,53554,54356,18,197,189,'M_Warehouse_ID',TO_TIMESTAMP('2014-01-15 15:23:00','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02',22,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','N','N','Warehouse',20,TO_TIMESTAMP('2014-01-15 15:23:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:23:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54356 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 15, 2014 3:23:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56607,0,53554,54357,17,53597,'OperationType',TO_TIMESTAMP('2014-01-15 15:23:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','Y','Y','N','Operation Type',30,TO_TIMESTAMP('2014-01-15 15:23:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:23:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54357 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 15, 2014 3:23:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53554,54358,15,'DateDoc',TO_TIMESTAMP('2014-01-15 15:23:29','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','Y','Document Date',40,TO_TIMESTAMP('2014-01-15 15:23:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:23:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54358 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 15, 2014 3:23:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56986,0,53554,54359,18,53646,'FTA_CategoryCalcGroup_ID',TO_TIMESTAMP('2014-01-15 15:23:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Category Calc Group',50,TO_TIMESTAMP('2014-01-15 15:23:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:23:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54359 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 15, 2014 3:24:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56147,0,53554,54360,19,'FTA_CategoryCalc_ID',TO_TIMESTAMP('2014-01-15 15:24:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Category Calc',60,TO_TIMESTAMP('2014-01-15 15:24:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:24:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54360 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 15, 2014 3:24:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,287,0,53554,54361,17,'DocAction',TO_TIMESTAMP('2014-01-15 15:24:27','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02',2,'You find the current status in the Document Status field. The options are listed in a popup','Y','Y','N','N','Document Action',70,TO_TIMESTAMP('2014-01-15 15:24:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 3:24:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54361 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

