-- Jul 15, 2013 11:41:33 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET IsInsertRecord='N', IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-15 23:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53673
;

-- Jul 15, 2013 11:42:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Window SET IsSOTrx='N',Updated=TO_TIMESTAMP('2013-07-15 23:42:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53237
;

-- Jul 15, 2013 11:43:57 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-15 23:43:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67770
;

-- Jul 15, 2013 11:44:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66319,67771,0,53665,TO_TIMESTAMP('2013-07-15 23:44:35','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA01','Y','Y','Y','N','N','N','N','N','Process Now',TO_TIMESTAMP('2013-07-15 23:44:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 15, 2013 11:44:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67771 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jul 15, 2013 11:44:56 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67771
;

-- Jul 15, 2013 11:44:56 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67770
;

-- Jul 15, 2013 11:45:10 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-15 23:45:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67771
;

-- Jul 15, 2013 11:45:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-07-15 23:45:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67770
;

-- Jul 15, 2013 11:46:22 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67768
;

-- Jul 15, 2013 11:46:22 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67766
;

-- Jul 15, 2013 11:46:34 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-07-15 23:46:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67768
;

-- Jul 15, 2013 11:46:38 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-15 23:46:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67766
;

-- Jul 15, 2013 11:47:37 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@Processed@=''Y''',Updated=TO_TIMESTAMP('2013-07-15 23:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67766
;

-- Jul 15, 2013 11:47:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2013-07-15 23:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67766
;

-- Jul 15, 2013 11:47:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET AD_FieldGroup_ID=114,Updated=TO_TIMESTAMP('2013-07-15 23:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67768
;

-- Jul 15, 2013 11:49:53 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2013-07-15 23:49:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66321
;

-- Jul 15, 2013 11:51:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-07-15 23:51:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67767
;

-- Jul 15, 2013 11:53:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=67350
;

-- Jul 15, 2013 11:53:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=67357
;

-- Jul 15, 2013 11:53:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67349
;

-- Jul 15, 2013 11:53:39 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-07-15 23:53:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67350
;

-- Jul 15, 2013 11:53:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-15 23:53:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67349
;

-- Jul 15, 2013 11:54:25 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@Variety_ID@!0',Updated=TO_TIMESTAMP('2013-07-15 23:54:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67349
;

-- Jul 15, 2013 11:56:56 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-15 23:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65959
;

-- Jul 15, 2013 11:58:18 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2013-07-15 23:58:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65945
;

-- Jul 15, 2013 11:58:30 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2013-07-15 23:58:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65946
;

-- Jul 16, 2013 12:03:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52172,'M_Product.IsSummary=''N'' AND M_Product.IsActive=''Y'' AND M_Product.M_Product_Category_ID =@M_Product_Category_ID@',TO_TIMESTAMP('2013-07-16 00:03:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA01','Y','M_Product in  Product Category','S',TO_TIMESTAMP('2013-07-16 00:03:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 16, 2013 12:04:01 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Val_Rule_ID=52172,Updated=TO_TIMESTAMP('2013-07-16 00:04:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65928
;

-- Jul 16, 2013 12:04:06 AM VET
-- SFAndroid Contribution
UPDATE AD_Val_Rule SET Name='M_Product in Product Category',Updated=TO_TIMESTAMP('2013-07-16 00:04:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52172
;

-- Jul 16, 2013 12:06:24 AM VET
-- SFAndroid Contribution
UPDATE AD_Val_Rule SET Code='M_Product.IsSummary=''N'' AND M_Product.IsActive=''Y'' AND M_Product.M_Product_Category_ID =@M_Product_Category_ID@ OR @M_Product_Category_ID@ IS NULL',Updated=TO_TIMESTAMP('2013-07-16 00:06:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52172
;

-- Jul 16, 2013 12:07:10 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2013-07-16 00:07:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65928
;

-- Jul 16, 2013 12:07:58 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DefaultValue='0',Updated=TO_TIMESTAMP('2013-07-16 00:07:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67353
;

-- Jul 16, 2013 12:09:01 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@M_Product_ID@=0',Updated=TO_TIMESTAMP('2013-07-16 00:09:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67353
;

-- Jul 16, 2013 12:09:09 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@M_Product_Category_ID@=0',Updated=TO_TIMESTAMP('2013-07-16 00:09:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67352
;

-- Jul 16, 2013 12:10:45 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@FTA_FarmingStage_ID@=0',Updated=TO_TIMESTAMP('2013-07-16 00:10:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67346
;

-- Jul 16, 2013 12:10:50 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@FTA_FarmingStage_ID@=0',Updated=TO_TIMESTAMP('2013-07-16 00:10:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67347
;

-- Jul 16, 2013 12:12:01 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@Variety_ID@!0 & @DayTo@=NULL',Updated=TO_TIMESTAMP('2013-07-16 00:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67349
;

-- Jul 16, 2013 12:12:55 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@Variety_ID@!0 & @DayFrom@=0 & @DayTo@=0',Updated=TO_TIMESTAMP('2013-07-16 00:12:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67349
;

-- Jul 16, 2013 12:16:22 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=29, FormatPattern='###',Updated=TO_TIMESTAMP('2013-07-16 00:16:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65915
;

-- Jul 16, 2013 12:16:30 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET FormatPattern='###',Updated=TO_TIMESTAMP('2013-07-16 00:16:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65916
;

-- Jul 16, 2013 12:16:37 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=29,Updated=TO_TIMESTAMP('2013-07-16 00:16:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65916
;

-- Jul 16, 2013 12:17:31 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET FormatPattern=NULL,Updated=TO_TIMESTAMP('2013-07-16 00:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65916
;

-- Jul 16, 2013 12:17:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET FormatPattern=NULL,Updated=TO_TIMESTAMP('2013-07-16 00:17:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65915
;

-- Jul 16, 2013 12:18:57 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=29,Updated=TO_TIMESTAMP('2013-07-16 00:18:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65933
;

-- Jul 16, 2013 12:19:02 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=29,Updated=TO_TIMESTAMP('2013-07-16 00:19:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65934
;

