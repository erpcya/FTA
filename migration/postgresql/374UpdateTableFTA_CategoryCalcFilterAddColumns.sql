-- Feb 8, 2014 10:39:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET DisplayLogic='@EventType@ = ''DR''',Updated=TO_TIMESTAMP('2014-02-08 10:39:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53886
;

-- Feb 8, 2014 10:47:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71541,2037,0,28,53568,'CopyFrom',TO_TIMESTAMP('2014-02-08 10:47:48','YYYY-MM-DD HH24:MI:SS'),100,'Copy From Record','ECA02',1,'Copy From Record','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Copy From',0,TO_TIMESTAMP('2014-02-08 10:47:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 8, 2014 10:47:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71541 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 8, 2014 10:48:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71541,72282,0,53737,TO_TIMESTAMP('2014-02-08 10:48:42','YYYY-MM-DD HH24:MI:SS'),100,'Copy From Record',1,'ECA02','Copy From Record','Y','Y','Y','N','N','N','N','N','Copy From',TO_TIMESTAMP('2014-02-08 10:48:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 10:48:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72282 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 8, 2014 10:50:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53571,'org.spin.process.CopyFromCategoryCalcFilter','N',TO_TIMESTAMP('2014-02-08 10:50:05','YYYY-MM-DD HH24:MI:SS'),100,'Copy From','ECA02','Y','N','N','N','N','Copy From','Y',0,0,TO_TIMESTAMP('2014-02-08 10:50:05','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CategoryCalc CopyFrom')
;

-- Feb 8, 2014 10:50:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53571 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Feb 8, 2014 10:51:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56147,0,53571,54455,19,'FTA_CategoryCalc_ID',TO_TIMESTAMP('2014-02-08 10:51:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Category Calc',10,TO_TIMESTAMP('2014-02-08 10:51:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 10:51:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54455 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 8, 2014 10:51:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,2021,0,53571,54456,19,'M_Lot_ID',TO_TIMESTAMP('2014-02-08 10:51:44','YYYY-MM-DD HH24:MI:SS'),100,'Product Lot Definition','ECA02',22,'The individual Lot of a Product','Y','Y','N','N','Lot',20,TO_TIMESTAMP('2014-02-08 10:51:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 10:51:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54456 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 8, 2014 10:53:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Copiar Desde',Description='Copiar Desde',Updated=TO_TIMESTAMP('2014-02-08 10:53:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53571 AND AD_Language='es_VE'
;

-- Feb 8, 2014 10:53:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Copiar Desde',Description='Copiar Desde',Updated=TO_TIMESTAMP('2014-02-08 10:53:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53571 AND AD_Language='es_VE'
;

-- Feb 8, 2014 10:53:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53571,Updated=TO_TIMESTAMP('2014-02-08 10:53:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71541
;

-- Feb 8, 2014 10:56:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-02-08 10:56:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54456
;

-- Feb 8, 2014 10:56:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71542,55970,0,18,53523,53568,'PlantingCycle_ID',TO_TIMESTAMP('2014-02-08 10:56:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Planting Cycle',0,TO_TIMESTAMP('2014-02-08 10:56:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 8, 2014 10:56:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71542 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 8, 2014 10:57:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET AD_Reference_ID=18, AD_Reference_Value_ID=53523,Updated=TO_TIMESTAMP('2014-02-08 10:57:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55970
;

-- Feb 8, 2014 10:57:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57031,0,18,53523,'PlantingCycle2_ID',TO_TIMESTAMP('2014-02-08 10:57:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Planting Cycle','Planting Cycle ',TO_TIMESTAMP('2014-02-08 10:57:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 10:57:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57031 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 8, 2014 10:57:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='A Ciclo de Siembra',PrintName='A Ciclo de Siembra',Updated=TO_TIMESTAMP('2014-02-08 10:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57031 AND AD_Language='es_VE'
;

-- Feb 8, 2014 10:57:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='A Ciclo de Siembra',PrintName='A Ciclo de Siembra',Updated=TO_TIMESTAMP('2014-02-08 10:57:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57031 AND AD_Language='es_VE'
;

-- Feb 8, 2014 10:58:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Planting Cycle To', PrintName='Planting Cycle To',Updated=TO_TIMESTAMP('2014-02-08 10:58:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57031
;

-- Feb 8, 2014 10:58:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57031
;

-- Feb 8, 2014 10:58:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='PlantingCycle2_ID', Name='Planting Cycle To', Description=NULL, Help=NULL WHERE AD_Element_ID=57031
;

-- Feb 8, 2014 10:58:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='PlantingCycle2_ID', Name='Planting Cycle To', Description=NULL, Help=NULL, AD_Element_ID=57031 WHERE UPPER(ColumnName)='PLANTINGCYCLE2_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Feb 8, 2014 10:58:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='PlantingCycle2_ID', Name='Planting Cycle To', Description=NULL, Help=NULL WHERE AD_Element_ID=57031 AND IsCentrallyMaintained='Y'
;

-- Feb 8, 2014 10:58:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Planting Cycle To', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57031) AND IsCentrallyMaintained='Y'
;

-- Feb 8, 2014 10:58:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Planting Cycle To', Name='Planting Cycle To' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57031)
;

-- Feb 8, 2014 10:59:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71543,57031,0,18,53523,53568,'PlantingCycle2_ID',TO_TIMESTAMP('2014-02-08 10:59:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Planting Cycle To',0,TO_TIMESTAMP('2014-02-08 10:59:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 8, 2014 10:59:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71543 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 8, 2014 10:59:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71544,2013,0,20,53568,'IsLot',TO_TIMESTAMP('2014-02-08 10:59:45','YYYY-MM-DD HH24:MI:SS'),100,'The product instances have a Lot Number','ECA02',1,'For individual products, you can define Lot Numbers','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Lot',0,TO_TIMESTAMP('2014-02-08 10:59:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 8, 2014 10:59:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71544 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 8, 2014 10:59:54 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71544
;

-- Feb 8, 2014 10:59:54 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71544
;

-- Feb 8, 2014 11:00:07 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71543
;

-- Feb 8, 2014 11:00:07 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71543
;

-- Feb 8, 2014 11:00:13 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71542
;

-- Feb 8, 2014 11:00:13 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71542
;

-- Feb 8, 2014 11:00:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71545,2013,0,20,53740,'IsLot',TO_TIMESTAMP('2014-02-08 11:00:30','YYYY-MM-DD HH24:MI:SS'),100,'The product instances have a Lot Number','ECA02',1,'For individual products, you can define Lot Numbers','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Lot',0,TO_TIMESTAMP('2014-02-08 11:00:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 8, 2014 11:00:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71545 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 8, 2014 11:00:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71546,55970,0,18,53523,53740,'PlantingCycle_ID',TO_TIMESTAMP('2014-02-08 11:00:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Planting Cycle',0,TO_TIMESTAMP('2014-02-08 11:00:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 8, 2014 11:00:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71546 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 8, 2014 11:01:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71547,57031,0,18,53523,53740,'PlantingCycle2_ID',TO_TIMESTAMP('2014-02-08 11:01:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Planting Cycle To',0,TO_TIMESTAMP('2014-02-08 11:01:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 8, 2014 11:01:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71547 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 8, 2014 11:02:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71545,72283,0,53886,TO_TIMESTAMP('2014-02-08 11:02:24','YYYY-MM-DD HH24:MI:SS'),100,'The product instances have a Lot Number',1,'ECA02','For individual products, you can define Lot Numbers','Y','Y','Y','N','N','N','N','N','Lot',TO_TIMESTAMP('2014-02-08 11:02:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 11:02:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72283 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 8, 2014 11:02:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71546,72284,0,53886,TO_TIMESTAMP('2014-02-08 11:02:26','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Planting Cycle',TO_TIMESTAMP('2014-02-08 11:02:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 11:02:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72284 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 8, 2014 11:02:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71547,72285,0,53886,TO_TIMESTAMP('2014-02-08 11:02:27','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Planting Cycle To',TO_TIMESTAMP('2014-02-08 11:02:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 11:02:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72285 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 8, 2014 11:04:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-02-08 11:04:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72283
;

-- Feb 8, 2014 11:04:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-02-08 11:04:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72284
;

-- Feb 8, 2014 11:04:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-02-08 11:04:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72285
;

-- Feb 8, 2014 11:04:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-02-08 11:04:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72120
;

-- Feb 8, 2014 11:04:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-02-08 11:04:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72122
;

-- Feb 8, 2014 11:04:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-02-08 11:04:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72115
;

-- Feb 8, 2014 11:04:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-02-08 11:04:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72118
;

-- Feb 8, 2014 11:04:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-02-08 11:04:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72116
;

-- Feb 8, 2014 11:04:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-02-08 11:04:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72117
;

-- Feb 8, 2014 11:04:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-02-08 11:04:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72121
;

-- Feb 8, 2014 11:04:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-02-08 11:04:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72124
;

-- Feb 8, 2014 11:04:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsLot@=''Y''',Updated=TO_TIMESTAMP('2014-02-08 11:04:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72284
;

-- Feb 8, 2014 11:05:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsLot@=''Y''',Updated=TO_TIMESTAMP('2014-02-08 11:05:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72285
;

-- Feb 8, 2014 11:05:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsLot@=''N''',Updated=TO_TIMESTAMP('2014-02-08 11:05:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72120
;

-- Feb 8, 2014 11:05:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsLot@=''N''',Updated=TO_TIMESTAMP('2014-02-08 11:05:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72122
;

-- Feb 8, 2014 11:06:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = S & @IsLot@=''N''',Updated=TO_TIMESTAMP('2014-02-08 11:06:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72115
;

-- Feb 8, 2014 11:06:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = S & @IsLot@=''N''',Updated=TO_TIMESTAMP('2014-02-08 11:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72118
;

-- Feb 8, 2014 11:06:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = N & @IsLot@=''N''',Updated=TO_TIMESTAMP('2014-02-08 11:06:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72116
;

-- Feb 8, 2014 11:06:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = N & @IsLot@=''N''',Updated=TO_TIMESTAMP('2014-02-08 11:06:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72117
;

-- Feb 8, 2014 11:06:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = L & @IsLot@=''N''',Updated=TO_TIMESTAMP('2014-02-08 11:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72121
;

-- Feb 8, 2014 11:06:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = L & @IsLot@=''N''',Updated=TO_TIMESTAMP('2014-02-08 11:06:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72124
;

-- Feb 8, 2014 11:13:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-02-08 11:13:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71171
;

-- Feb 8, 2014 11:29:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Table SET AD_Window_ID=53249,Updated=TO_TIMESTAMP('2014-02-08 11:29:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53740
;

-- Feb 8, 2014 11:29:39 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=72285
;

-- Feb 8, 2014 11:29:39 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=72285
;

-- Feb 8, 2014 11:29:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-02-08 11:29:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72284
;

-- Feb 8, 2014 11:30:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-02-08 11:30:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72120
;

-- Feb 8, 2014 11:30:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-02-08 11:30:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72284
;

-- Feb 8, 2014 11:30:37 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71547
;

-- Feb 8, 2014 11:30:37 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71547
;

-- Feb 8, 2014 11:39:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2014-02-08 11:39:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71545
;

-- Feb 8, 2014 11:59:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsParent='N',Updated=TO_TIMESTAMP('2014-02-08 11:59:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71171
;

-- Feb 8, 2014 11:59:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsParent='N',Updated=TO_TIMESTAMP('2014-02-08 11:59:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71178
;

-- Feb 8, 2014 12:00:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57032,0,13,'FTA_CategoryCalcFilter_ID',TO_TIMESTAMP('2014-02-08 12:00:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Category Calc Filter','Category Calc Filter',TO_TIMESTAMP('2014-02-08 12:00:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 12:00:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57032 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 8, 2014 12:00:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Filtro de Cálculo',PrintName='Filtro de Cálculo',Updated=TO_TIMESTAMP('2014-02-08 12:00:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57032 AND AD_Language='es_VE'
;

-- Feb 8, 2014 12:00:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Filtro de Cálculo',PrintName='Filtro de Cálculo',Updated=TO_TIMESTAMP('2014-02-08 12:00:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57032 AND AD_Language='es_VE'
;

-- Feb 8, 2014 12:02:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71548,57032,0,19,53740,'FTA_CategoryCalcFilter_ID',TO_TIMESTAMP('2014-02-08 12:02:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','Y','Y','N','N','N','N','N','Category Calc Filter',0,TO_TIMESTAMP('2014-02-08 12:02:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 8, 2014 12:02:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71548 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 8, 2014 12:02:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71548,72286,0,53886,TO_TIMESTAMP('2014-02-08 12:02:25','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','N','N','N','N','N','N','Category Calc Filter',TO_TIMESTAMP('2014-02-08 12:02:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 12:02:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72286 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 8, 2014 12:02:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-02-08 12:02:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71546
;

-- Feb 8, 2014 12:13:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-02-08 12:13:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72282
;

-- Feb 8, 2014 12:23:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-02-08 12:23:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71172
;

-- Feb 8, 2014 2:09:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57033,0,22,'EffectiveArea',TO_TIMESTAMP('2014-02-08 14:09:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Effective Area','Effective Area',TO_TIMESTAMP('2014-02-08 14:09:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 2:09:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57033 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 8, 2014 2:09:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Área Efectiva',PrintName='Área Efectiva',Updated=TO_TIMESTAMP('2014-02-08 14:09:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57033 AND AD_Language='es_VE'
;

-- Feb 8, 2014 2:09:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Área Efectiva',PrintName='Área Efectiva',Updated=TO_TIMESTAMP('2014-02-08 14:09:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57033 AND AD_Language='es_VE'
;

-- Feb 8, 2014 2:10:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71566,57033,0,22,53509,'EffectiveArea',TO_TIMESTAMP('2014-02-08 14:10:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Effective Area',0,TO_TIMESTAMP('2014-02-08 14:10:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 8, 2014 2:10:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71566 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 8, 2014 2:10:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71566,72287,0,53725,TO_TIMESTAMP('2014-02-08 14:10:39','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Effective Area',TO_TIMESTAMP('2014-02-08 14:10:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2014 2:10:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72287 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 8, 2014 2:11:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-02-08 14:11:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68177
;

-- Feb 8, 2014 2:11:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-02-08 14:11:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68178
;

-- Feb 8, 2014 2:11:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-02-08 14:11:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68345
;

-- Feb 8, 2014 2:11:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-02-08 14:11:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68179
;

-- Feb 8, 2014 2:11:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-02-08 14:11:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68180
;

-- Feb 8, 2014 2:11:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-02-08 14:11:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68181
;

-- Feb 8, 2014 2:11:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-02-08 14:11:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72287
;

-- Feb 8, 2014 2:11:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-02-08 14:11:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72287
;

-- Feb 8, 2014 2:11:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-02-08 14:11:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68182
;

-- 08/02/2014 02:34:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.CopyFromCategoryCalcFilter',Updated=TO_TIMESTAMP('2014-02-08 14:34:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013264 WHERE AD_Process_ID=53571
;

