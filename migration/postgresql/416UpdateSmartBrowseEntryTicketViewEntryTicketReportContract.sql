-- Mar 16, 2014 10:02:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-16 10:02:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53565
;

-- Mar 16, 2014 10:02:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-16 10:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53576
;

-- Mar 16, 2014 10:02:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-16 10:02:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53579
;

-- Mar 16, 2014 10:02:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-16 10:02:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53580
;

-- Mar 16, 2014 10:02:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-03-16 10:02:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53585
;

-- Mar 16, 2014 10:02:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-03-16 10:02:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53588
;

-- Mar 16, 2014 10:05:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-03-16 10:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53588
;

-- Mar 16, 2014 10:05:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET AD_Reference_ID=17, AD_Reference_Value_ID=53597,Updated=TO_TIMESTAMP('2014-03-16 10:05:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53588
;

-- Mar 16, 2014 10:19:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57086,0,20,'IsPrintedSample',TO_TIMESTAMP('2014-03-16 10:19:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Is Printed Sample','Is Printed Sample',TO_TIMESTAMP('2014-03-16 10:19:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 16, 2014 10:19:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57086 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 16, 2014 10:19:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Muestra Impresa',PrintName='Muestra Impresa',Updated=TO_TIMESTAMP('2014-03-16 10:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57086 AND AD_Language='es_MX'
;

-- Mar 16, 2014 10:20:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Muestra Impresa',PrintName='Muestra Impresa',Updated=TO_TIMESTAMP('2014-03-16 10:20:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57086 AND AD_Language='es_VE'
;

-- Mar 16, 2014 10:20:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72397,57086,0,20,53559,'IsPrintedSample',TO_TIMESTAMP('2014-03-16 10:20:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Is Printed Sample',0,TO_TIMESTAMP('2014-03-16 10:20:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 16, 2014 10:20:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72397 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 16, 2014 10:20:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2014-03-16 10:20:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72397
;

-- Mar 16, 2014 10:22:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72397,72878,0,53729,TO_TIMESTAMP('2014-03-16 10:22:32','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Is Printed Sample',TO_TIMESTAMP('2014-03-16 10:22:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 16, 2014 10:22:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72878 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 16, 2014 10:23:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Printed Sample', PrintName='Printed Sample',Updated=TO_TIMESTAMP('2014-03-16 10:23:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57086
;

-- Mar 16, 2014 10:23:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57086
;

-- Mar 16, 2014 10:23:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='IsPrintedSample', Name='Printed Sample', Description=NULL, Help=NULL WHERE AD_Element_ID=57086
;

-- Mar 16, 2014 10:23:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='IsPrintedSample', Name='Printed Sample', Description=NULL, Help=NULL, AD_Element_ID=57086 WHERE UPPER(ColumnName)='ISPRINTEDSAMPLE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Mar 16, 2014 10:23:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='IsPrintedSample', Name='Printed Sample', Description=NULL, Help=NULL WHERE AD_Element_ID=57086 AND IsCentrallyMaintained='Y'
;

-- Mar 16, 2014 10:23:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Printed Sample', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57086) AND IsCentrallyMaintained='Y'
;

-- Mar 16, 2014 10:23:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Printed Sample', Name='Printed Sample' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57086)
;

-- Mar 16, 2014 10:27:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2014-03-16 10:27:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72878
;

-- Mar 16, 2014 10:27:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-03-16 10:27:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72878
;

-- Mar 16, 2014 10:29:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72398,57086,0,20,53585,'IsPrintedSample',TO_TIMESTAMP('2014-03-16 10:29:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Printed Sample',0,TO_TIMESTAMP('2014-03-16 10:29:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 16, 2014 10:29:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72398 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 16, 2014 10:29:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,72398,0,52425,50063,50026,'ET_IsPrintedSample','ET.IsPrintedSample',TO_TIMESTAMP('2014-03-16 10:29:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Printed Sample',TO_TIMESTAMP('2014-03-16 10:29:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 16, 2014 10:29:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET WhereClause='NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = ET.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))
AND ET.DocStatus IN (''CO'',''CL'') AND ET.IsPrintedSample = ''N''',Updated=TO_TIMESTAMP('2014-03-16 10:29:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50033
;

-- Mar 16, 2014 10:30:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='NOT EXISTS (SELECT 1 FROM FTA_QualityAnalysis qa WHERE qa.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND qa.DocStatus IN (''CO'',''CL''))
AND FTA_EntryTicket.DocStatus IN (''CO'',''CL'')
AND FTA_EntryTicket.IsPrintedSample = ''N''',Updated=TO_TIMESTAMP('2014-03-16 10:30:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52332
;

-- Mar 16, 2014 11:05:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72399,57025,0,10,53559,'TrailerPlate',TO_TIMESTAMP('2014-03-16 11:05:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Trailer Plate',0,TO_TIMESTAMP('2014-03-16 11:05:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 16, 2014 11:05:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72399 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 16, 2014 11:06:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72399,72879,0,53729,TO_TIMESTAMP('2014-03-16 11:06:24','YYYY-MM-DD HH24:MI:SS'),100,60,'ECA02','Y','Y','Y','N','N','N','N','N','Trailer Plate',TO_TIMESTAMP('2014-03-16 11:06:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 16, 2014 11:06:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72879 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 16, 2014 11:06:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-03-16 11:06:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72879
;

-- Mar 16, 2014 11:06:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-03-16 11:06:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68284
;

-- Mar 16, 2014 11:06:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-03-16 11:06:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72066
;

-- Mar 16, 2014 11:06:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-03-16 11:06:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68292
;

-- Mar 16, 2014 11:06:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-03-16 11:06:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71462
;

-- Mar 16, 2014 11:06:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-03-16 11:06:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68282
;

-- Mar 16, 2014 11:06:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-03-16 11:06:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72813
;

-- Mar 16, 2014 11:06:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-03-16 11:06:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72231
;

-- Mar 16, 2014 11:06:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-03-16 11:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68291
;

-- Mar 16, 2014 11:06:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-03-16 11:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72772
;

-- Mar 16, 2014 11:06:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-03-16 11:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68288
;

-- Mar 16, 2014 11:06:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-03-16 11:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68285
;

-- Mar 16, 2014 11:06:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2014-03-16 11:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68295
;

-- Mar 16, 2014 11:06:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2014-03-16 11:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68646
;

-- Mar 16, 2014 11:06:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2014-03-16 11:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70194
;

-- Mar 16, 2014 11:06:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2014-03-16 11:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70211
;

-- Mar 16, 2014 11:06:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2014-03-16 11:06:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72878
;

-- Mar 16, 2014 11:18:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnSQL='(SELECT et.FTA_Driver_ID FROM FTA_EntryTicket et WHERE et.FTA_EntryTicket_ID = FTA_RecordWeight.FTA_EntryTicket_ID)',Updated=TO_TIMESTAMP('2014-03-16 11:18:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71486
;

-- Mar 16, 2014 11:56:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,53507,54590,17,131,'DocStatus',TO_TIMESTAMP('2014-03-16 11:56:27','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','Document Status',50,TO_TIMESTAMP('2014-03-16 11:56:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 16, 2014 11:56:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54590 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 16, 2014 11:56:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_TIMESTAMP('2014-03-16 11:56:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54590
;

-- Mar 16, 2014 11:57:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CreditAct.DocStatus = @DocStatus@', Name='FTA_CreditAct Of Doc Status',Updated=TO_TIMESTAMP('2014-03-16 11:57:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52235
;

-- Mar 16, 2014 11:57:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CreditAct.DocStatus = ''@DocStatus@''',Updated=TO_TIMESTAMP('2014-03-16 11:57:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52235
;

-- Mar 16, 2014 12:16:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52235,Updated=TO_TIMESTAMP('2014-03-16 12:16:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54245
;

-- Mar 16, 2014 12:17:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,53519,54591,17,131,'DocStatus',TO_TIMESTAMP('2014-03-16 12:17:05','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','Document Status',8,TO_TIMESTAMP('2014-03-16 12:17:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 16, 2014 12:17:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54591 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 16, 2014 12:17:27 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54591
;

-- Mar 16, 2014 12:17:27 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54591
;

-- Mar 16, 2014 12:17:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52236,Updated=TO_TIMESTAMP('2014-03-16 12:17:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54245
;

