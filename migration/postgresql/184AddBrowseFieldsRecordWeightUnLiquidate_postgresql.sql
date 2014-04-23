-- Oct 22, 2013 9:53:06 PM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,69190,0,52216,50053,50016,'RWUL_FTA_CategoryCalc_ID','RWUL.FTA_CategoryCalc_ID',TO_TIMESTAMP('2013-10-22 21:53:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Category Calc',TO_TIMESTAMP('2013-10-22 21:53:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 22, 2013 9:53:07 PM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,69191,0,52217,50053,50016,'RWUL_M_Product_ID','RWUL.M_Product_ID',TO_TIMESTAMP('2013-10-22 21:53:06','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Product',TO_TIMESTAMP('2013-10-22 21:53:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 22, 2013 9:53:08 PM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,69192,0,52218,50053,50016,'RWUL_PayAnalysis_ID','RWUL.PayAnalysis_ID',TO_TIMESTAMP('2013-10-22 21:53:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Analysis Paid',TO_TIMESTAMP('2013-10-22 21:53:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 22, 2013 9:53:29 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53376,50021,0,56147,0,19,52216,TO_TIMESTAMP('2013-10-22 21:53:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Category Calc',10,TO_TIMESTAMP('2013-10-22 21:53:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 22, 2013 9:53:29 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53376 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 22, 2013 9:53:31 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53377,50021,0,454,0,19,52217,TO_TIMESTAMP('2013-10-22 21:53:29','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','Product',11,TO_TIMESTAMP('2013-10-22 21:53:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 22, 2013 9:53:31 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53377 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 22, 2013 9:53:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53378,50021,0,56537,0,35,52218,TO_TIMESTAMP('2013-10-22 21:53:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Analysis Paid',12,TO_TIMESTAMP('2013-10-22 21:53:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 22, 2013 9:53:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53378 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 22, 2013 9:54:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2013-10-22 21:54:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53284
;

-- Oct 22, 2013 9:54:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2013-10-22 21:54:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53271
;

-- Oct 22, 2013 9:54:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-10-22 21:54:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53270
;

-- Oct 22, 2013 9:54:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-10-22 21:54:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53269
;

-- Oct 22, 2013 9:54:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-10-22 21:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53283
;

-- Oct 22, 2013 9:54:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-10-22 21:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53378
;

-- Oct 22, 2013 9:54:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-10-22 21:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53280
;

-- Oct 22, 2013 9:54:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-10-22 21:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53281
;

-- Oct 22, 2013 9:54:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-10-22 21:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53282
;

-- Oct 22, 2013 9:54:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-10-22 21:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53377
;

-- Oct 22, 2013 9:54:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2013-10-22 21:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53376
;

-- Oct 22, 2013 9:54:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-10-22 21:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53272
;

-- Oct 22, 2013 9:54:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-10-22 21:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53273
;

-- Oct 22, 2013 9:54:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-10-22 21:54:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53275
;

-- Oct 22, 2013 9:54:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-10-22 21:54:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53274
;

-- Oct 22, 2013 9:54:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-10-22 21:54:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53276
;

-- Oct 22, 2013 9:54:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-10-22 21:54:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53277
;

-- Oct 22, 2013 9:54:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-10-22 21:54:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53278
;

-- Oct 22, 2013 9:55:12 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_TIMESTAMP('2013-10-22 21:55:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53270
;

-- Oct 22, 2013 9:55:12 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=20,Updated=TO_TIMESTAMP('2013-10-22 21:55:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53284
;

-- Oct 22, 2013 9:56:11 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2013-10-22 21:56:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53279
;

-- Oct 22, 2013 9:56:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=19,Updated=TO_TIMESTAMP('2013-10-22 21:56:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53279
;

-- Oct 22, 2013 9:56:30 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=19,Updated=TO_TIMESTAMP('2013-10-22 21:56:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53284
;

-- Oct 22, 2013 9:56:50 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsRange='Y',Updated=TO_TIMESTAMP('2013-10-22 21:56:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53271
;

-- Oct 22, 2013 9:57:23 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-10-22 21:57:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53269
;

-- Oct 22, 2013 9:57:39 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2013-10-22 21:57:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53283
;

-- Oct 22, 2013 9:57:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsReadOnly='N',Updated=TO_TIMESTAMP('2013-10-22 21:57:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53378
;

-- Oct 22, 2013 9:58:09 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2013-10-22 21:58:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53280
;

-- Oct 22, 2013 9:58:19 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-10-22 21:58:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53281
;

-- Oct 22, 2013 9:58:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2013-10-22 21:58:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53282
;

-- Oct 22, 2013 9:58:37 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-10-22 21:58:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53377
;

-- Oct 22, 2013 9:58:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N',Updated=TO_TIMESTAMP('2013-10-22 21:58:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53376
;

-- Oct 22, 2013 9:58:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N',Updated=TO_TIMESTAMP('2013-10-22 21:58:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53377
;

-- Oct 22, 2013 9:59:04 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-10-22 21:59:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53272
;

-- Oct 22, 2013 9:59:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-10-22 21:59:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53273
;

-- Oct 22, 2013 9:59:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-10-22 21:59:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53275
;

-- Oct 22, 2013 9:59:17 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-10-22 21:59:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53274
;

-- Oct 22, 2013 9:59:22 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-10-22 21:59:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53276
;

-- Oct 22, 2013 9:59:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-10-22 21:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53277
;

-- Oct 22, 2013 9:59:31 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-10-22 21:59:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53278
;

-- Oct 22, 2013 10:01:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-22 22:01:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53269
;

-- Oct 22, 2013 10:01:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-22 22:01:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53376
;

-- Oct 22, 2013 10:01:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-22 22:01:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53272
;

-- Oct 22, 2013 10:01:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-22 22:01:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53273
;

-- Oct 22, 2013 10:01:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-22 22:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53275
;

-- Oct 22, 2013 10:01:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-22 22:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53274
;

-- Oct 22, 2013 10:01:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-22 22:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53276
;

-- Oct 22, 2013 10:01:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-22 22:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53277
;

-- Oct 22, 2013 10:01:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-22 22:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53278
;

-- Oct 22, 2013 10:01:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-22 22:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53377
;

-- Oct 22, 2013 10:01:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-10-22 22:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53283
;

-- Oct 22, 2013 10:01:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-10-22 22:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53378
;

-- Oct 22, 2013 10:01:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-10-22 22:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53280
;

-- Oct 22, 2013 10:01:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-10-22 22:01:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53281
;

-- Oct 22, 2013 10:01:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-10-22 22:01:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53282
;

-- Oct 22, 2013 10:04:29 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET Callout='org.spin.model.BrowseCalloutRecordWeight.calculatePaidWeight',Updated=TO_TIMESTAMP('2013-10-22 22:04:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53378
;

