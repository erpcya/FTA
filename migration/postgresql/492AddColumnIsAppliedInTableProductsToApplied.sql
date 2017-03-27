-- Sep 22, 2014 7:19:45 AM VET
-- FTA
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57456,0,20,'IsApplied',TO_TIMESTAMP('2014-09-22 07:19:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Applied','Applied',TO_TIMESTAMP('2014-09-22 07:19:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 22, 2014 7:19:45 AM VET
-- FTA
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57456 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 22, 2014 7:19:53 AM VET
-- FTA
UPDATE AD_Element_Trl SET Name='Aplicado',PrintName='Aplicado',Updated=TO_TIMESTAMP('2014-09-22 07:19:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57456 AND AD_Language='es_VE'
;

-- Sep 22, 2014 7:20:09 AM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74429,57456,0,20,53515,'IsApplied',TO_TIMESTAMP('2014-09-22 07:20:08','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Applied',0,TO_TIMESTAMP('2014-09-22 07:20:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 22, 2014 7:20:09 AM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74429 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 22, 2014 7:20:30 AM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74429,74561,0,53672,TO_TIMESTAMP('2014-09-22 07:20:23','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Applied',TO_TIMESTAMP('2014-09-22 07:20:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 22, 2014 7:20:30 AM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74561 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 22, 2014 7:21:12 AM VET
-- FTA
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-09-22 07:21:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74561
;

-- Sep 22, 2014 7:23:06 AM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-09-22 07:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74561
;

-- Sep 22, 2014 7:23:06 AM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-09-22 07:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67327
;

-- Sep 22, 2014 7:23:06 AM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-09-22 07:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67769
;

-- Sep 22, 2014 7:23:06 AM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-09-22 07:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67326
;

-- Sep 22, 2014 7:23:06 AM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-09-22 07:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67322
;

-- Sep 22, 2014 7:23:06 AM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-09-22 07:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67328
;

-- Sep 22, 2014 7:23:06 AM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-09-22 07:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67331
;

-- Sep 22, 2014 7:23:06 AM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-09-22 07:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68233
;

-- Sep 22, 2014 7:23:06 AM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-09-22 07:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70534
;

-- Sep 22, 2014 7:24:31 AM VET
-- FTA
UPDATE AD_Field SET DisplayLogic='@IsApplied@ = ''N''',Updated=TO_TIMESTAMP('2014-09-22 07:24:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67328
;

-- Sep 22, 2014 7:24:34 AM VET
-- FTA
UPDATE AD_Field SET DisplayLogic='@IsApplied@ = ''N''',Updated=TO_TIMESTAMP('2014-09-22 07:24:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67331
;

-- Sep 22, 2014 7:24:36 AM VET
-- FTA
UPDATE AD_Field SET DisplayLogic='@IsApplied@ = ''N''',Updated=TO_TIMESTAMP('2014-09-22 07:24:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68233
;

-- Sep 22, 2014 7:24:39 AM VET
-- FTA
UPDATE AD_Field SET DisplayLogic='@IsApplied@ = ''N''',Updated=TO_TIMESTAMP('2014-09-22 07:24:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70534
;

-- Sep 22, 2014 7:25:19 AM VET
-- FTA
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-09-22 07:25:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65962
;

-- Sep 22, 2014 7:25:27 AM VET
-- FTA
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-09-22 07:25:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67331
;

-- Sep 22, 2014 7:25:39 AM VET
-- FTA
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-09-22 07:25:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65961
;

-- Sep 22, 2014 7:25:49 AM VET
-- FTA
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-09-22 07:25:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67328
;

