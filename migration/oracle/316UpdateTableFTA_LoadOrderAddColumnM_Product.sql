-- Dec 10, 2013 2:39:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2013-12-10 14:39:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69885
;

-- Dec 10, 2013 2:44:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70626,454,0,19,53667,'M_Product_ID',TO_DATE('2013-12-10 14:44:45','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product',0,TO_DATE('2013-12-10 14:44:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 10, 2013 2:44:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70626 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 10, 2013 2:45:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=30, AD_Val_Rule_ID=52249,Updated=TO_DATE('2013-12-10 14:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70626
;

-- Dec 10, 2013 2:46:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70626,71458,0,53801,TO_DATE('2013-12-10 14:46:09','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',22,'ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',TO_DATE('2013-12-10 14:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 10, 2013 2:46:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71458 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 10, 2013 2:46:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-10 14:46:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71458
;

-- Dec 10, 2013 2:46:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-10 14:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70316
;

-- Dec 10, 2013 2:46:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-10 14:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70293
;

-- Dec 10, 2013 2:46:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2013-12-10 14:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Dec 10, 2013 2:46:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2013-12-10 14:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70301
;

-- Dec 10, 2013 2:46:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2013-12-10 14:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- Dec 10, 2013 2:46:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2013-12-10 14:46:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70299
;

-- Dec 10, 2013 2:46:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2013-12-10 14:46:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- Dec 10, 2013 2:46:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2013-12-10 14:46:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70305
;

-- Dec 10, 2013 2:46:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2013-12-10 14:46:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70297
;

-- Dec 10, 2013 2:46:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2013-12-10 14:46:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70294
;

-- Dec 10, 2013 2:46:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2013-12-10 14:46:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70309
;

-- Dec 10, 2013 2:46:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2013-12-10 14:46:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70287
;

-- Dec 10, 2013 2:47:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2013-12-10 14:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71458
;

-- Dec 10, 2013 2:48:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsBulk@=''Y''',Updated=TO_DATE('2013-12-10 14:48:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71458
;

-- Dec 10, 2013 2:49:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-10 14:49:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70316
;

