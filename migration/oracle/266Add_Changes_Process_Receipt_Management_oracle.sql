-- Oct 31, 2013 1:55:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,617,0,53518,54253,15,'ValidFrom',TO_DATE('2013-10-31 13:55:25','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)','ECA02',7,'The Valid From date indicates the first day of a date range','Y','Y','N','Y','Valid from',60,TO_DATE('2013-10-31 13:55:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 1:55:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54253 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 1:57:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=11,Updated=TO_DATE('2013-10-31 13:57:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54228
;

-- Oct 31, 2013 9:12:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56579,0,20,'DaysFixed',TO_DATE('2013-10-31 21:12:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Days Fixed','Days Fixed',TO_DATE('2013-10-31 21:12:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 9:12:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56579 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 31, 2013 9:13:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Días Fijo',PrintName='Días Fijo',Updated=TO_DATE('2013-10-31 21:13:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56579 AND AD_Language='es_MX'
;

-- Oct 31, 2013 9:13:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Días Fijo',PrintName='Días Fijo',Updated=TO_DATE('2013-10-31 21:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56579 AND AD_Language='es_VE'
;

-- Oct 31, 2013 9:16:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69630,56579,0,20,53647,'DaysFixed',TO_DATE('2013-10-31 21:16:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Days Fixed',0,TO_DATE('2013-10-31 21:16:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 31, 2013 9:16:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69630 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 31, 2013 9:18:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69631,1496,0,11,53647,'DaysDue',TO_DATE('2013-10-31 21:18:19','YYYY-MM-DD HH24:MI:SS'),100,'Number of days due (negative: due in number of days)','ECA02',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Days due',0,TO_DATE('2013-10-31 21:18:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 31, 2013 9:18:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69631 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 31, 2013 9:19:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69631,70245,0,53791,TO_DATE('2013-10-31 21:19:37','YYYY-MM-DD HH24:MI:SS'),100,'Number of days due (negative: due in number of days)',22,'ECA02','Y','Y','Y','N','N','N','N','N','Days due',TO_DATE('2013-10-31 21:19:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 9:19:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70245 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 31, 2013 9:19:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69630,70246,0,53791,TO_DATE('2013-10-31 21:19:39','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Days Fixed',TO_DATE('2013-10-31 21:19:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 9:19:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70246 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 31, 2013 9:20:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Porcentaje Fijo',PrintName='Porcentaje Fijo',Updated=TO_DATE('2013-10-31 21:20:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56575 AND AD_Language='es_MX'
;

-- Oct 31, 2013 9:20:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Porcentaje Fijo',PrintName='Porcentaje Fijo',Updated=TO_DATE('2013-10-31 21:20:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56575 AND AD_Language='es_VE'
;

-- Oct 31, 2013 9:21:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Percent Fixed', PrintName='Percent Fixed',Updated=TO_DATE('2013-10-31 21:21:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56575
;

-- Oct 31, 2013 9:21:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56575
;

-- Oct 31, 2013 9:21:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='RateFixed', Name='Percent Fixed', Description=NULL, Help=NULL WHERE AD_Element_ID=56575
;

-- Oct 31, 2013 9:21:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='RateFixed', Name='Percent Fixed', Description=NULL, Help=NULL, AD_Element_ID=56575 WHERE UPPER(ColumnName)='RATEFIXED' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 31, 2013 9:21:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='RateFixed', Name='Percent Fixed', Description=NULL, Help=NULL WHERE AD_Element_ID=56575 AND IsCentrallyMaintained='Y'
;

-- Oct 31, 2013 9:21:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Percent Fixed', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56575) AND IsCentrallyMaintained='Y'
;

-- Oct 31, 2013 9:21:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Percent Fixed', Name='Percent Fixed' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56575)
;

-- Oct 31, 2013 9:52:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@RateFixed@=''N''',Updated=TO_DATE('2013-10-31 21:52:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70245
;

-- Oct 31, 2013 9:52:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@RateFixed@=''N''',Updated=TO_DATE('2013-10-31 21:52:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70246
;

-- Oct 31, 2013 9:52:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-31 21:52:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70245
;

-- Oct 31, 2013 9:52:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-10-31 21:52:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70245
;

-- Oct 31, 2013 9:52:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-10-31 21:52:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70246
;

-- Oct 31, 2013 9:52:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-10-31 21:52:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70217
;

-- Oct 31, 2013 9:52:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-10-31 21:52:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70218
;

-- Oct 31, 2013 9:52:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-10-31 21:52:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70240
;

-- Oct 31, 2013 9:52:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-10-31 21:52:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70219
;

-- Oct 31, 2013 9:53:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-10-31 21:53:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70246
;

-- Oct 31, 2013 9:53:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-10-31 21:53:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70245
;

-- Oct 31, 2013 9:54:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DaysFixed@=''N''',Updated=TO_DATE('2013-10-31 21:54:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69631
;

-- Oct 31, 2013 10:00:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2013-10-31 22:00:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70245
;

-- Oct 31, 2013 10:01:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory=NULL,Updated=TO_DATE('2013-10-31 22:01:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70245
;

-- Oct 31, 2013 10:02:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET MandatoryLogic='@DaysFixed@=''Y''',Updated=TO_DATE('2013-10-31 22:02:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69631
;

-- Nov 1, 2013 9:10:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1250,0,53426,54277,29,'QtyToDeliver',TO_DATE('2013-11-01 09:10:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',22,'Y','Y','N','N','Qty to deliver',110,TO_DATE('2013-11-01 09:10:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 1, 2013 9:10:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54277 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 1, 2013 9:15:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=85,Updated=TO_DATE('2013-11-01 09:15:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53988
;

-- Nov 1, 2013 9:17:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=120,Updated=TO_DATE('2013-11-01 09:17:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53988
;

-- Nov 1, 2013 9:17:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=85,Updated=TO_DATE('2013-11-01 09:17:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54277
;

-- Nov 1, 2013 9:31:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,526,0,53508,54278,12,'Qty',TO_DATE('2013-11-01 09:31:19','YYYY-MM-DD HH24:MI:SS'),100,'1','Quantity','ECA02',22,'The Quantity indicates the number of a specific product or item for this document.','Y','Y','Y','N','Quantity',60,TO_DATE('2013-11-01 09:31:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 1, 2013 9:31:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54278 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 1, 2013 10:01:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-11-01 10:01:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70212
;

-- Nov 1, 2013 10:01:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-11-01 10:01:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70192
;

-- Nov 1, 2013 10:01:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-11-01 10:01:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70192
;

-- Nov 1, 2013 10:01:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-11-01 10:01:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70212
;

-- Nov 1, 2013 10:02:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-11-01 10:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70214
;

-- Nov 1, 2013 10:02:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-11-01 10:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70213
;

-- Nov 1, 2013 10:02:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-11-01 10:02:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70213
;

-- Nov 1, 2013 10:02:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-11-01 10:02:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70214
;

-- Nov 1, 2013 10:03:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53591,TO_DATE('2013-11-01 10:03:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_FarmingStage',TO_DATE('2013-11-01 10:03:50','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Nov 1, 2013 10:03:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53591 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Nov 1, 2013 10:04:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,OrderByClause,Updated,UpdatedBy) VALUES (0,65909,65910,0,53591,53512,TO_DATE('2013-11-01 10:04:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','SeqNo',TO_DATE('2013-11-01 10:04:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 1, 2013 10:04:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53591,Updated=TO_DATE('2013-11-01 10:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69493
;

-- Nov 1, 2013 10:07:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2013-11-01 10:07:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65914
;

-- Nov 1, 2013 10:09:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53591,Updated=TO_DATE('2013-11-01 10:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65947
;

-- Nov 1, 2013 10:28:32 AM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Menu_Trl WHERE AD_Menu_ID=53650
;

-- Nov 1, 2013 10:28:32 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Menu WHERE AD_Menu_ID=53650
;

-- Nov 1, 2013 10:28:33 AM VET
-- Farming Technical Assistance
DELETE FROM AD_TreeNodeMM WHERE AD_Tree_ID=10 AND Node_ID=53650
;

-- Nov 1, 2013 10:28:41 AM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Process_Trl WHERE AD_Process_ID=53488
;

-- Nov 1, 2013 10:28:41 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Process WHERE AD_Process_ID=53488
;

-- Nov 1, 2013 12:00:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.ChangePrintedStatus',Updated=TO_DATE('2013-11-01 12:00:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53455
;

-- Nov 1, 2013 1:52:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.qualityAnalysis',Updated=TO_DATE('2013-11-01 13:52:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66903
;

-- Nov 1, 2013 2:15:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.ChangePrintedStatus',Updated=TO_DATE('2013-11-01 14:15:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53493
;

-- Nov 1, 2013 2:15:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.ChangePrintedStatus',Updated=TO_DATE('2013-11-01 14:15:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53494
;

-- Nov 1, 2013 2:19:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutQualityAnalysis.qualityAnalysis',Updated=TO_DATE('2013-11-01 14:19:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66903
;

-- Nov 1, 2013 2:32:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2013-11-01 14:32:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67051
;

