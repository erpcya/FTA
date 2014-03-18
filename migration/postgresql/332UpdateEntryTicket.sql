-- Jan 10, 2014 11:35:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56977,0,28,'DocPrinted',TO_TIMESTAMP('2014-01-10 11:34:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Doc Printed','Doc Printed',TO_TIMESTAMP('2014-01-10 11:34:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 10, 2014 11:35:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56977 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jan 10, 2014 11:35:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Imprimir Documento',PrintName='Imprimir Documento',Updated=TO_TIMESTAMP('2014-01-10 11:35:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56977 AND AD_Language='es_MX'
;

-- Jan 10, 2014 11:35:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Imprimir Documento',PrintName='Imprimir Documento',Updated=TO_TIMESTAMP('2014-01-10 11:35:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56977 AND AD_Language='es_VE'
;

-- Jan 10, 2014 11:36:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71070,56977,0,28,53559,'DocPrinted',TO_TIMESTAMP('2014-01-10 11:35:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Doc Printed',0,TO_TIMESTAMP('2014-01-10 11:35:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 10, 2014 11:36:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71070 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 10, 2014 11:36:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2014-01-10 11:36:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71070
;

-- Jan 10, 2014 11:36:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET IsDirectPrint='Y', ShowHelp='S',Updated=TO_TIMESTAMP('2014-01-10 11:36:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53455
;

-- Jan 10, 2014 11:36:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Process_ID=NULL,Updated=TO_TIMESTAMP('2014-01-10 11:36:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53729
;

-- Jan 10, 2014 11:37:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53455,Updated=TO_TIMESTAMP('2014-01-10 11:37:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71070
;

-- Jan 10, 2014 11:38:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71070,72066,0,53729,TO_TIMESTAMP('2014-01-10 11:38:08','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Doc Printed',TO_TIMESTAMP('2014-01-10 11:38:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 10, 2014 11:38:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72066 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 10, 2014 11:42:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.model.ChangePrintedStatus',Updated=TO_TIMESTAMP('2014-01-10 11:42:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53455
;

-- Jan 10, 2014 11:44:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.model.ChangePrintedStatus', IsDirectPrint='Y', ShowHelp='S',Updated=TO_TIMESTAMP('2014-01-10 11:44:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53493
;

-- Jan 10, 2014 11:44:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Process_ID=NULL,Updated=TO_TIMESTAMP('2014-01-10 11:44:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53730
;

-- Jan 10, 2014 11:45:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71071,56977,0,53493,28,53560,'DocPrinted',TO_TIMESTAMP('2014-01-10 11:45:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Doc Printed',0,TO_TIMESTAMP('2014-01-10 11:45:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 10, 2014 11:45:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71071 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 10, 2014 11:46:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71071,72067,0,53730,TO_TIMESTAMP('2014-01-10 11:46:17','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Doc Printed',TO_TIMESTAMP('2014-01-10 11:46:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 10, 2014 11:46:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72067 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 10, 2014 11:46:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71072,56977,0,53494,28,53561,'DocPrinted',TO_TIMESTAMP('2014-01-10 11:46:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Doc Printed',0,TO_TIMESTAMP('2014-01-10 11:46:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 10, 2014 11:46:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71072 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 10, 2014 11:47:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Process_ID=NULL,Updated=TO_TIMESTAMP('2014-01-10 11:47:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53731
;

-- Jan 10, 2014 11:47:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71072,72068,0,53731,TO_TIMESTAMP('2014-01-10 11:47:11','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Doc Printed',TO_TIMESTAMP('2014-01-10 11:47:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 10, 2014 11:47:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72068 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 10, 2014 11:47:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.model.ChangePrintedStatus', IsDirectPrint='Y', ShowHelp='S',Updated=TO_TIMESTAMP('2014-01-10 11:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53494
;

-- Jan 10, 2014 11:57:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.ChangePrintedStatus',Updated=TO_TIMESTAMP('2014-01-10 11:57:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53455
;

-- Jan 10, 2014 11:57:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.ChangePrintedStatus',Updated=TO_TIMESTAMP('2014-01-10 11:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53493
;

-- Jan 10, 2014 11:58:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.ChangePrintedStatus',Updated=TO_TIMESTAMP('2014-01-10 11:58:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53494
;

-- Jan 10, 2014 12:02:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname=NULL,Updated=TO_TIMESTAMP('2014-01-10 12:02:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53455
;

-- Jan 10, 2014 12:02:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname=NULL,Updated=TO_TIMESTAMP('2014-01-10 12:02:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53493
;

-- Jan 10, 2014 12:03:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname=NULL,Updated=TO_TIMESTAMP('2014-01-10 12:03:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53494
;

-- Jan 10, 2014 12:13:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56978,0,17,'Owner',TO_TIMESTAMP('2014-01-10 12:13:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','Owner','Owner',TO_TIMESTAMP('2014-01-10 12:13:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 10, 2014 12:13:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56978 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jan 10, 2014 12:13:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Dueño',PrintName='Dueño',Updated=TO_TIMESTAMP('2014-01-10 12:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56978 AND AD_Language='es_MX'
;

-- Jan 10, 2014 12:13:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Dueño',PrintName='Dueño',Updated=TO_TIMESTAMP('2014-01-10 12:13:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56978 AND AD_Language='es_VE'
;

-- Jan 10, 2014 12:14:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56978,0,53426,54338,17,'Owner',TO_TIMESTAMP('2014-01-10 12:14:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','Y','N','N','Owner',140,TO_TIMESTAMP('2014-01-10 12:14:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 10, 2014 12:14:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54338 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 10, 2014 12:15:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=125,Updated=TO_TIMESTAMP('2014-01-10 12:15:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54338
;

-- Jan 10, 2014 2:10:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='DocumentPrint', Name='Document Print', PrintName='Document Print',Updated=TO_TIMESTAMP('2014-01-10 14:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56977
;

-- Jan 10, 2014 2:10:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56977
;

-- Jan 10, 2014 2:10:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='DocumentPrint', Name='Document Print', Description=NULL, Help=NULL WHERE AD_Element_ID=56977
;

-- Jan 10, 2014 2:10:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='DocumentPrint', Name='Document Print', Description=NULL, Help=NULL, AD_Element_ID=56977 WHERE UPPER(ColumnName)='DOCUMENTPRINT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 10, 2014 2:10:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='DocumentPrint', Name='Document Print', Description=NULL, Help=NULL WHERE AD_Element_ID=56977 AND IsCentrallyMaintained='Y'
;

-- Jan 10, 2014 2:10:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Document Print', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56977) AND IsCentrallyMaintained='Y'
;

-- Jan 10, 2014 2:10:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Document Print', Name='Document Print' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56977)
;

-- Jan 10, 2014 2:35:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71073,56978,0,17,53510,'Owner',TO_TIMESTAMP('2014-01-10 14:35:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Owner',0,TO_TIMESTAMP('2014-01-10 14:35:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 10, 2014 2:35:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71073 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 10, 2014 2:37:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53643,TO_TIMESTAMP('2014-01-10 14:37:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_MobilizationGuide Owner',TO_TIMESTAMP('2014-01-10 14:37:15','YYYY-MM-DD HH24:MI:SS'),100,'L','lll')
;

-- Jan 10, 2014 2:37:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53643 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Jan 10, 2014 2:51:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50079,'S',TO_TIMESTAMP('2014-01-10 14:51:54','YYYY-MM-DD HH24:MI:SS'),100,'ATTRIBUTE_OWNER','ECA02','Y','ATTRIBUTE_OWNER',TO_TIMESTAMP('2014-01-10 14:51:54','YYYY-MM-DD HH24:MI:SS'),100,'ATTRIBUTE_OWNER')
;

-- Jan 10, 2014 2:57:18 PM VET
-- Farming Technical Assistance
UPDATE AD_SysConfig SET Value='Comprometido',Updated=TO_TIMESTAMP('2014-01-10 14:57:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=50079
;

-- Jan 10, 2014 2:58:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET ValidationType='T',Updated=TO_TIMESTAMP('2014-01-10 14:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:02:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,8468,8466,0,53643,558,TO_TIMESTAMP('2014-01-10 15:02:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2014-01-10 15:02:45','YYYY-MM-DD HH24:MI:SS'),100,'M_Attribute_ID = ''@ATTRIBUTE_OWNER@''')
;

-- Jan 10, 2014 3:04:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53643,Updated=TO_TIMESTAMP('2014-01-10 15:04:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71073
;

-- Jan 10, 2014 3:04:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71073,72069,0,53673,TO_TIMESTAMP('2014-01-10 15:04:45','YYYY-MM-DD HH24:MI:SS'),100,3,'ECA02','Y','Y','Y','N','N','N','N','N','Owner',TO_TIMESTAMP('2014-01-10 15:04:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 10, 2014 3:04:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72069 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 10, 2014 3:05:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-10 15:05:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71073
;

-- Jan 10, 2014 3:05:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-01-10 15:05:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72069
;

-- Jan 10, 2014 3:05:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-01-10 15:05:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68551
;

-- Jan 10, 2014 3:05:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-01-10 15:05:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68552
;

-- Jan 10, 2014 3:05:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-01-10 15:05:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68553
;

-- Jan 10, 2014 3:07:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_AttributeValue.M_Attribute_ID = @ATTRIBUTE_OWNER@',Updated=TO_TIMESTAMP('2014-01-10 15:07:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:15:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Display=8513, AD_Key=8513, AD_Table_ID=562,Updated=TO_TIMESTAMP('2014-01-10 15:15:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:16:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute.Name = @ATTRIBUTE_OWNER@',Updated=TO_TIMESTAMP('2014-01-10 15:16:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:17:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute.Name = ''@ATTRIBUTE_OWNER@''',Updated=TO_TIMESTAMP('2014-01-10 15:17:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:18:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Key=8512,Updated=TO_TIMESTAMP('2014-01-10 15:18:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:18:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute.M_Attribute_ID= @ATTRIBUTE_OWNER@',Updated=TO_TIMESTAMP('2014-01-10 15:18:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:20:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Display=8468, AD_Key=8466, AD_Table_ID=558, WhereClause='M_AttributeValue.M_Attribute_ID EXISTS (SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE ''@ATTRIBUTE_OWNER@'')',Updated=TO_TIMESTAMP('2014-01-10 15:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:21:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_AttributeValue.M_Attribute_ID EXISTS (SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE @ATTRIBUTE_OWNER@)',Updated=TO_TIMESTAMP('2014-01-10 15:21:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:23:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_AttributeValue.M_Attribute_ID =  @ATTRIBUTE_OWNER@',Updated=TO_TIMESTAMP('2014-01-10 15:23:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:23:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='@ATTRIBUTE_OWNER@',Updated=TO_TIMESTAMP('2014-01-10 15:23:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:23:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='ATTRIBUTE_OWNER',Updated=TO_TIMESTAMP('2014-01-10 15:23:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:24:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause=NULL,Updated=TO_TIMESTAMP('2014-01-10 15:24:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:28:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT M_Attribute_ID FROM M_Attribute WHERE Name = ATTRIBUTE_OWNER)',Updated=TO_TIMESTAMP('2014-01-10 15:28:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:29:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID IN  (SELECT M_Attribute_ID FROM M_Attribute WHERE Name = ATTRIBUTE_OWNER)',Updated=TO_TIMESTAMP('2014-01-10 15:29:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:30:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID IN  (SELECT M_Attribute_ID FROM M_Attribute WHERE Name = @ATTRIBUTE_OWNER@)',Updated=TO_TIMESTAMP('2014-01-10 15:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:31:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID IN  (SELECT M_Attribute_ID FROM M_Attribute WHERE Name = ''@ATTRIBUTE_OWNER@'')',Updated=TO_TIMESTAMP('2014-01-10 15:31:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:34:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID IN  (SELECT M_Attribute_ID FROM M_Attribute WHERE Name = ''SELECT SearchKey FROM AD_SysConfig WHERE Name LIKE ATTRIBUTE_OWNER'')

',Updated=TO_TIMESTAMP('2014-01-10 15:34:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:36:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID IN  (SELECT M_Attribute_ID FROM M_Attribute WHERE Name = (SELECT SearchKey FROM AD_SysConfig WHERE Name LIKE ''ATTRIBUTE_OWNER''))

',Updated=TO_TIMESTAMP('2014-01-10 15:36:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:37:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID IN  (SELECT M_Attribute_ID FROM M_Attribute WHERE Name = (SELECT Value FROM AD_SysConfig WHERE Name LIKE ''ATTRIBUTE_OWNER''))

',Updated=TO_TIMESTAMP('2014-01-10 15:37:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:40:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID IN  (SELECT M_Attribute_ID FROM M_Attribute WHERE Name = ''(SELECT Value FROM AD_SysConfig WHERE Name LIKE ''ATTRIBUTE_OWNER'')'')

',Updated=TO_TIMESTAMP('2014-01-10 15:40:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:41:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID EXISTS  (SELECT M_Attribute_ID FROM M_Attribute WHERE Name = ''(SELECT Value FROM AD_SysConfig WHERE Name LIKE ''ATTRIBUTE_OWNER'')'')

',Updated=TO_TIMESTAMP('2014-01-10 15:41:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:47:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID = (SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE (
	SELECT Value FROM AD_SysConfig WHERE Name LIKE ''%ATTRIBUTE_OWNER%''))
',Updated=TO_TIMESTAMP('2014-01-10 15:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:49:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=40,Updated=TO_TIMESTAMP('2014-01-10 15:49:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71073
;

-- Jan 10, 2014 3:54:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID = (SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE %(
	SELECT Value FROM AD_SysConfig WHERE Name LIKE ''%ATTRIBUTE_OWNER%'')%)
',Updated=TO_TIMESTAMP('2014-01-10 15:54:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:56:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='(SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE (
	SELECT Value FROM AD_SysConfig WHERE Name LIKE ''%ATTRIBUTE_OWNER%''))
',Updated=TO_TIMESTAMP('2014-01-10 15:56:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:57:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='AND M_Attribute_ID = (SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE (
	SELECT Value FROM AD_SysConfig WHERE Name LIKE ''%ATTRIBUTE_OWNER%''))
',Updated=TO_TIMESTAMP('2014-01-10 15:57:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 3:58:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID = (SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE (
	SELECT Value FROM AD_SysConfig WHERE Name LIKE ''%ATTRIBUTE_OWNER%''))
',Updated=TO_TIMESTAMP('2014-01-10 15:58:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:02:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='M_Attribute_ID = (SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE (
	SELECT Value FROM AD_SysConfig WHERE Name LIKE ''ATTRIBUTE_OWNER''))
',Updated=TO_TIMESTAMP('2014-01-10 16:02:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:03:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='(SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE (
	SELECT Value FROM AD_SysConfig WHERE Name LIKE ''ATTRIBUTE_OWNER''))
',Updated=TO_TIMESTAMP('2014-01-10 16:03:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:05:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='(M_Attribut_ID = (SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE (
	SELECT Value FROM AD_SysConfig WHERE Name LIKE ''ATTRIBUTE_OWNER'')))
',Updated=TO_TIMESTAMP('2014-01-10 16:05:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:07:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='(M_Attribute_ID = (SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE (
	SELECT Value FROM AD_SysConfig WHERE Name LIKE ''ATTRIBUTE_OWNER'')))
',Updated=TO_TIMESTAMP('2014-01-10 16:07:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:09:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT M_Attribute_ID FROM M_Attribute WHERE Name LIKE (
	SELECT Value FROM AD_SysConfig WHERE Name LIKE ''ATTRIBUTE_OWNER'')))
',Updated=TO_TIMESTAMP('2014-01-10 16:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:11:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT M_Attribute_ID FROM M_Attribute,AD_SysConfig WHERE AD_SysConfig.Name =''ATTRIBUTE_OWNER'')
',Updated=TO_TIMESTAMP('2014-01-10 16:11:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:21:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (
	SELECT a.M_Attribute_ID
	FROM AD_SysConfig s
	INNER JOIN M_Attribute a ON (a.Name = s.Value)
	WHERE M_Attribute_ID = M_AttributeValue.M_Attribute_ID 
	)',Updated=TO_TIMESTAMP('2014-01-10 16:21:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:23:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS ( SELECT a.M_Attribute_ID FROM AD_SysConfig s
           INNER JOIN M_Attribute a ON (a.Name = s.Value)
           WHERE a.M_Attribute_ID = M_AttributeValue.M_Attribute_ID 
)',Updated=TO_TIMESTAMP('2014-01-10 16:23:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:25:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS ( SELECT a.M_Attribute_ID FROM AD_SysConfig s
           INNER JOIN M_Attribute a ON (a.Name = s.Value)
           INNER JOIN M_AttributeValue av  ON (av.M_Attribute_ID = a.M_Attribute_ID)
           WHERE a.M_Attribute_ID = av.M_Attribute_ID 
)',Updated=TO_TIMESTAMP('2014-01-10 16:25:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:32:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS ( SELECT M_Attribute.M_Attribute_ID FROM AD_SysConfig s
           INNER JOIN M_Attribute  ON (M_Attribute.Name = s.Value)
           WHERE M_Attribute.M_Attribute_ID = M_AttributeValue.M_Attribute_ID 
)',Updated=TO_TIMESTAMP('2014-01-10 16:32:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:34:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='exists ( select M_Attribute.M_Attribute_ID from AD_SysConfig s
           inner join M_Attribute  ON (M_Attribute.Name = s.Value)
           where M_Attribute.M_Attribute_ID = M_AttributeValue.M_Attribute_ID 
)',Updated=TO_TIMESTAMP('2014-01-10 16:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:57:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='exists ( select M_Attribute.M_Attribute_ID from AD_SysConfig s
           inner join M_Attribute  on (M_Attribute.Name = s.Value)
           where M_Attribute.M_Attribute_ID = M_AttributeValue.M_Attribute_ID 
)',Updated=TO_TIMESTAMP('2014-01-10 16:57:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 4:58:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=260,Updated=TO_TIMESTAMP('2014-01-10 16:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 5:00:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='exists ( select M_Attribute.M_Attribute_ID from AD_SysConfig s
           inner join M_Attribute  on (M_Attribute.Name = s.Value)
)',Updated=TO_TIMESTAMP('2014-01-10 17:00:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 5:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=NULL, WhereClause='exists ( select M_Attribute.M_Attribute_ID from AD_SysConfig s
           inner join M_Attribute  on (M_Attribute.Name = s.Value)
           where M_Attribute.M_Attribute_ID = M_AttributeValue.M_Attribute_ID 
)',Updated=TO_TIMESTAMP('2014-01-10 17:03:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 5:04:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Display=8459,Updated=TO_TIMESTAMP('2014-01-10 17:04:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 5:18:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS(SELECT att.M_Attribute_ID FROM AD_SysConfig s
         INNER JOIN M_Attribute att ON(att.Name = s.Value)
         WHERE att.M_Attribute_ID = M_AttributeValue.M_Attribute_ID 
)',Updated=TO_TIMESTAMP('2014-01-10 17:18:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 5:20:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause=NULL,Updated=TO_TIMESTAMP('2014-01-10 17:20:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 10, 2014 5:21:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52291,'EXISTS(SELECT att.M_Attribute_ID FROM AD_SysConfig s
         INNER JOIN M_Attribute att ON(att.Name = s.Value)
         WHERE att.M_Attribute_ID = M_AttributeValue.M_Attribute_ID 
)',TO_TIMESTAMP('2014-01-10 17:21:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_MobilizationGuide Attribute','S',TO_TIMESTAMP('2014-01-10 17:21:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 10, 2014 5:21:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52291,Updated=TO_TIMESTAMP('2014-01-10 17:21:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71073
;

-- Jan 10, 2014 5:22:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS(SELECT att.M_Attribute_ID FROM AD_SysConfig s
         INNER JOIN M_Attribute att ON(att.Name = s.Value)
         WHERE att.M_Attribute_ID = 1000024 
)',Updated=TO_TIMESTAMP('2014-01-10 17:22:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52291
;

-- Jan 10, 2014 5:24:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS(SELECT att.M_Attribute_ID FROM AD_SysConfig s
         INNER JOIN M_Attribute att ON(att.Name = s.Value)
         WHERE att.M_Attribute_ID = 1000024
)',Updated=TO_TIMESTAMP('2014-01-10 17:24:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52291
;

