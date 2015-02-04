-- Feb 3, 2015 9:42:45 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75730,56386,0,19,53561,'FTA_WeightScale_ID',TO_DATE('2015-02-03 21:42:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Weight Scale',0,TO_DATE('2015-02-03 21:42:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 3, 2015 9:42:45 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75730 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 3, 2015 9:42:47 PM VET
-- FTA
ALTER TABLE FTA_RecordWeight ADD FTA_WeightScale_ID NUMBER(10) DEFAULT NULL 
;

-- Feb 3, 2015 9:43:07 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,75730,75517,0,53731,TO_DATE('2015-02-03 21:43:06','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Weight Scale',TO_DATE('2015-02-03 21:43:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 3, 2015 9:43:07 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75517 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 3, 2015 9:45:15 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2015-02-03 21:45:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75517
;

-- Feb 3, 2015 9:45:15 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2015-02-03 21:45:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68335
;

-- Feb 3, 2015 9:45:15 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2015-02-03 21:45:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68316
;

-- Feb 3, 2015 9:45:15 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2015-02-03 21:45:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68324
;

-- Feb 3, 2015 9:45:15 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2015-02-03 21:45:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68337
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68334
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68329
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70143
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70142
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70144
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68321
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68318
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68330
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68346
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70193
;

-- Feb 3, 2015 9:45:16 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_DATE('2015-02-03 21:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70215
;

-- Feb 3, 2015 9:45:41 PM VET
-- FTA
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2015-02-03 21:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75517
;

-- Feb 3, 2015 10:31:10 PM VET
-- FTA
UPDATE AD_Tab SET WhereClause='FTA_RecordWeight.DocStatus NOT IN (''CO'',''CL'',''VO'',''RE'')',Updated=TO_DATE('2015-02-03 22:31:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53731
;

-- Feb 3, 2015 10:32:07 PM VET
-- FTA
UPDATE AD_Tab SET WhereClause='FTA_RecordWeight.IsProcessing = ''N''',Updated=TO_DATE('2015-02-03 22:32:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53731
;

-- Feb 3, 2015 10:36:53 PM VET
-- FTA
UPDATE AD_Tab SET WhereClause='FTA_RecordWeight.Processed = ''N''',Updated=TO_DATE('2015-02-03 22:36:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53731
;

