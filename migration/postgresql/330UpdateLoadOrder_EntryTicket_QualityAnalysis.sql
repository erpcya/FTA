-- Jan 8, 2014 11:55:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-01-08 11:55:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54200
;

-- Jan 8, 2014 12:00:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2014-01-08 12:00:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68543
;

-- Jan 8, 2014 12:00:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsParent='N',Updated=TO_TIMESTAMP('2014-01-08 12:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65888
;

-- Jan 8, 2014 12:04:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO'' AND FTA_EntryTicket.OperationType = ''@OperationType@''
AND NOT EXISTS(SELECT 1 FROM FTA_LoadOrder lo WHERE lo.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND lo.DocStatus NOT IN(''VO'', ''RE''))',Updated=TO_TIMESTAMP('2014-01-08 12:04:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52259
;

-- Jan 8, 2014 3:17:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,399,0,53426,54328,20,'IsPrinted',TO_TIMESTAMP('2014-01-08 15:17:18','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document / line is printed','ECA02',1,'The Printed checkbox indicates if this document or line will included when printing.','Y','Y','N','N','Printed',130,TO_TIMESTAMP('2014-01-08 15:17:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 8, 2014 3:17:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54328 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 8, 2014 6:00:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-01-08 18:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68739
;

-- Jan 8, 2014 6:00:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-01-08 18:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68735
;

-- Jan 8, 2014 6:00:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-01-08 18:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71466
;

-- Jan 8, 2014 6:00:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-01-08 18:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68737
;

-- Jan 8, 2014 6:00:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-01-08 18:00:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68736
;

-- Jan 8, 2014 6:00:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-01-08 18:00:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68740
;

-- Jan 8, 2014 6:00:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-01-08 18:00:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68738
;

-- Jan 8, 2014 6:11:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53100,53620,TO_TIMESTAMP('2014-01-08 18:11:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_MobilizationGuide Detail',TO_TIMESTAMP('2014-01-08 18:11:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 8, 2014 6:12:09 PM VET
-- Farming Technical Assistance
DELETE FROM AD_ReportView WHERE AD_ReportView_ID=53100
;

-- Jan 8, 2014 9:31:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71044,214,0,19,114,227,'C_UOM_Conversion_ID',TO_TIMESTAMP('2014-01-08 21:31:41','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure Conversion','U',22,'The UOM Conversion identifies a unique to and from Unit of Measure, conversion rate and conversion date range.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','UOM Conversion',0,TO_TIMESTAMP('2014-01-08 21:31:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 8, 2014 9:31:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71044 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 8, 2014 9:32:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71044,72063,0,169,TO_TIMESTAMP('2014-01-08 21:32:32','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure Conversion',22,'U','The UOM Conversion identifies a unique to and from Unit of Measure, conversion rate and conversion date range.','Y','Y','Y','N','N','N','N','N','UOM Conversion',TO_TIMESTAMP('2014-01-08 21:32:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 8, 2014 9:32:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72063 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 8, 2014 9:34:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-01-08 21:34:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72063
;

-- Jan 8, 2014 9:34:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-01-08 21:34:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9201
;

-- Jan 8, 2014 9:34:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-01-08 21:34:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1564
;

-- Jan 8, 2014 9:34:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-01-08 21:34:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1563
;

-- Jan 8, 2014 9:34:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-01-08 21:34:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1562
;

-- Jan 8, 2014 9:34:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-01-08 21:34:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1565
;

-- Jan 8, 2014 9:34:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-01-08 21:34:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1566
;

-- Jan 8, 2014 9:34:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-01-08 21:34:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1567
;

-- Jan 8, 2014 9:34:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-01-08 21:34:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10319
;

-- Jan 8, 2014 9:34:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-01-08 21:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10320
;

-- Jan 8, 2014 9:34:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-01-08 21:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57531
;

-- Jan 8, 2014 9:34:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-01-08 21:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57534
;

-- Jan 8, 2014 9:34:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2014-01-08 21:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57535
;

-- Jan 8, 2014 9:34:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-08 21:34:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72063
;

-- Jan 8, 2014 9:39:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-01-08 21:39:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71044
;

-- Jan 8, 2014 9:40:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-01-08 21:40:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71044
;

-- Jan 8, 2014 9:53:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71045,214,0,19,53620,'C_UOM_Conversion_ID',TO_TIMESTAMP('2014-01-08 21:53:14','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure Conversion','ECA02',10,'The UOM Conversion identifies a unique to and from Unit of Measure, conversion rate and conversion date range.','Y','N','N','N','N','N','N','N','N','N','UOM Conversion',TO_TIMESTAMP('2014-01-08 21:53:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 8, 2014 9:53:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71045 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 8, 2014 9:55:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=114,Updated=TO_TIMESTAMP('2014-01-08 21:55:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71045
;

-- Jan 8, 2014 10:04:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='Y',Updated=TO_TIMESTAMP('2014-01-08 22:04:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54328
;

-- Jan 8, 2014 10:08:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname=NULL,Updated=TO_TIMESTAMP('2014-01-08 22:08:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53455
;

-- Jan 8, 2014 10:09:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname=NULL,Updated=TO_TIMESTAMP('2014-01-08 22:09:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53494
;

-- Jan 8, 2014 10:10:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname=NULL,Updated=TO_TIMESTAMP('2014-01-08 22:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53493
;

