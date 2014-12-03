-- Dec 2, 2014 9:54:44 PM VET
-- FTA
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType = ''FMG'' AND C_DocType.AD_Org_ID = @AD_OrgTrx_ID@ AND C_DocType.IsSOTrx =''Y''',Updated=TO_TIMESTAMP('2014-12-02 21:54:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52305
;

-- Dec 2, 2014 9:57:08 PM VET
-- FTA
UPDATE AD_Process_Para SET DefaultValue='@AD_Org_ID@', IsActive='Y',Updated=TO_TIMESTAMP('2014-12-02 21:57:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54430
;

-- Dec 2, 2014 10:03:29 PM VET
-- FTA
UPDATE AD_Field_Trl SET Name='Obtener Peso',Description='Obtener Peso de Romana',Help='Obtiene el Peso de la Romana',Updated=TO_TIMESTAMP('2014-12-02 22:03:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73608 AND AD_Language='es_MX'
;

-- Dec 2, 2014 10:07:18 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74842,56135,0,19,323,'FTA_RecordWeight_ID',TO_TIMESTAMP('2014-12-02 22:07:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Record Weight',0,TO_TIMESTAMP('2014-12-02 22:07:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 2, 2014 10:07:18 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74842 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 2, 2014 10:07:38 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,59048,74867,0,259,TO_TIMESTAMP('2014-12-02 22:07:37','YYYY-MM-DD HH24:MI:SS'),100,'The date+time (expressed in decimal format) when the document has been processed',20,'D','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed On',TO_TIMESTAMP('2014-12-02 22:07:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 2, 2014 10:07:38 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74867 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 2, 2014 10:07:39 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74842,74868,0,259,TO_TIMESTAMP('2014-12-02 22:07:38','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Record Weight',TO_TIMESTAMP('2014-12-02 22:07:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 2, 2014 10:07:39 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74868 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 2, 2014 10:07:39 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,55308,74869,0,259,TO_TIMESTAMP('2014-12-02 22:07:39','YYYY-MM-DD HH24:MI:SS'),100,'ID of document reversal',22,'D','Y','Y','Y','N','N','N','N','N','Reversal ID',TO_TIMESTAMP('2014-12-02 22:07:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 2, 2014 10:07:40 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74869 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 2, 2014 10:07:52 PM VET
-- FTA
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=74869
;

-- Dec 2, 2014 10:07:52 PM VET
-- FTA
DELETE FROM AD_Field WHERE AD_Field_ID=74869
;

-- Dec 2, 2014 10:07:56 PM VET
-- FTA
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=74867
;

-- Dec 2, 2014 10:07:56 PM VET
-- FTA
DELETE FROM AD_Field WHERE AD_Field_ID=74867
;

-- Dec 2, 2014 10:08:37 PM VET
-- FTA
UPDATE AD_Field SET DisplayLogic='@FTA_RecordWeight_ID@!0',Updated=TO_TIMESTAMP('2014-12-02 22:08:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74868
;

-- Dec 2, 2014 10:08:45 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2014-12-02 22:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74868
;

-- Dec 2, 2014 10:08:45 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2014-12-02 22:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7789
;

-- Dec 2, 2014 10:08:45 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2014-12-02 22:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10530
;

-- Dec 2, 2014 10:08:45 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2014-12-02 22:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10529
;

-- Dec 2, 2014 10:08:45 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2014-12-02 22:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9223
;

-- Dec 2, 2014 10:08:45 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_TIMESTAMP('2014-12-02 22:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9222
;

-- Dec 2, 2014 10:08:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2014-12-02 22:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9224
;

-- Dec 2, 2014 10:08:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2014-12-02 22:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9221
;

-- Dec 2, 2014 10:08:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_TIMESTAMP('2014-12-02 22:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2727
;

-- Dec 2, 2014 10:08:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_TIMESTAMP('2014-12-02 22:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5144
;

-- Dec 2, 2014 10:09:23 PM VET
-- FTA
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2014-12-02 22:09:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74868
;

-- Dec 2, 2014 10:09:35 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2014-12-02 22:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7789
;

-- Dec 2, 2014 10:09:35 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2014-12-02 22:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74868
;

