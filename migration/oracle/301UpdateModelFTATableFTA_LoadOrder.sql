-- 13/11/2013 04:17:43 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=70337
;

-- 13/11/2013 04:17:43 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=70337
;

-- 13/11/2013 04:18:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-11-13 16:18:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70339
;

-- 13/11/2013 04:18:46 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=69894
;

-- 13/11/2013 04:18:46 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=69894
;

-- 13/11/2013 04:19:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69899,215,0,19,53667,'C_UOM_ID',TO_DATE('2013-11-13 16:19:06','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','ECA02',22,'The UOM defines a unique non monetary Unit of Measure','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','UOM',0,TO_DATE('2013-11-13 16:19:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2013 04:19:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69899 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2013 04:43:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69899,70361,0,53801,TO_DATE('2013-11-13 16:43:45','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure',22,'ECA02','The UOM defines a unique non monetary Unit of Measure','Y','Y','Y','N','N','N','N','N','UOM',TO_DATE('2013-11-13 16:43:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2013 04:43:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70361 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2013 04:44:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-11-13 16:44:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70361
;

-- 13/11/2013 04:44:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-11-13 16:44:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70318
;

-- 13/11/2013 04:44:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-11-13 16:44:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70319
;

-- 13/11/2013 04:44:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-11-13 16:44:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70320
;

-- 13/11/2013 04:44:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-11-13 16:44:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70290
;

-- 13/11/2013 04:44:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-11-13 16:44:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70288
;

-- 13/11/2013 04:44:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-11-13 16:44:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70292
;

-- 13/11/2013 04:44:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-11-13 16:44:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70291
;

-- 13/11/2013 04:44:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-11-13 16:44:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70304
;

-- 13/11/2013 04:44:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-11-13 16:44:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70303
;

-- 13/11/2013 04:44:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-11-13 16:44:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70305
;

-- 13/11/2013 04:44:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-11-13 16:44:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70302
;

-- 13/11/2013 04:44:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-11-13 16:44:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70312
;

-- 13/11/2013 04:44:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-11-13 16:44:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70307
;

-- 13/11/2013 04:44:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2013-11-13 16:44:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70316
;

-- 13/11/2013 04:44:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2013-11-13 16:44:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70293
;

-- 13/11/2013 04:44:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2013-11-13 16:44:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- 13/11/2013 04:44:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2013-11-13 16:44:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70310
;

-- 13/11/2013 04:44:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2013-11-13 16:44:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70301
;

-- 13/11/2013 04:44:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2013-11-13 16:44:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- 13/11/2013 04:44:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2013-11-13 16:44:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70299
;

-- 13/11/2013 04:44:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2013-11-13 16:44:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- 13/11/2013 04:44:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2013-11-13 16:44:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70314
;

-- 13/11/2013 04:44:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2013-11-13 16:44:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70300
;

-- 13/11/2013 04:44:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2013-11-13 16:44:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70297
;

-- 13/11/2013 04:44:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2013-11-13 16:44:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70294
;

-- 13/11/2013 04:44:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2013-11-13 16:44:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70309
;

-- 13/11/2013 04:44:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2013-11-13 16:44:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70287
;

-- 13/11/2013 04:44:43 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=70318
;

-- 13/11/2013 04:44:43 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=70318
;

-- 13/11/2013 04:44:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-11-13 16:44:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70361
;

-- 13/11/2013 04:45:23 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=69857
;

-- 13/11/2013 04:45:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=69857
;

-- 13/11/2013 04:45:29 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=56600
;

-- 13/11/2013 04:45:29 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Element WHERE AD_Element_ID=56600
;

-- 13/11/2013 04:55:06 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=70302
;

-- 13/11/2013 04:55:06 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=70302
;

-- 13/11/2013 04:55:30 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=69862
;

-- 13/11/2013 04:55:30 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=69862
;

