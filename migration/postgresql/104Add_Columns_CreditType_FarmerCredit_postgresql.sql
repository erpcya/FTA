-- Sep 11, 2013 11:28:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67716,56135,0,19,319,'FTA_RecordWeight_ID',TO_TIMESTAMP('2013-09-11 11:28:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Record Weight',0,TO_TIMESTAMP('2013-09-11 11:28:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 11, 2013 11:28:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67716 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 11, 2013 11:31:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52207,'FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO''',TO_TIMESTAMP('2013-09-11 11:31:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_FarmerCredit from Farmer and Completed','S',TO_TIMESTAMP('2013-09-11 11:31:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 11:31:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67717,56084,0,19,319,52207,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2013-09-11 11:31:49','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts','ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Farmer Credit/Debt',0,TO_TIMESTAMP('2013-09-11 11:31:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 11, 2013 11:31:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67717 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 11, 2013 11:32:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67716,69295,0,296,TO_TIMESTAMP('2013-09-11 11:32:57','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','Y','Y','Y','N','N','N','N','N','Record Weight',410,0,TO_TIMESTAMP('2013-09-11 11:32:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 11:32:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69295 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 11, 2013 11:33:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67717,69296,0,296,TO_TIMESTAMP('2013-09-11 11:33:07','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts',0,'ECA02','Y','Y','Y','N','N','N','N','N','Farmer Credit/Debt',420,0,TO_TIMESTAMP('2013-09-11 11:33:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 11:33:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69296 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 11, 2013 11:36:45 AM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,50037,0,TO_TIMESTAMP('2013-09-11 11:36:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','C','Y','N','Farmer Credit',TO_TIMESTAMP('2013-09-11 11:36:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 11:36:45 AM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=50037 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- Sep 11, 2013 11:37:06 AM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup_Trl SET Name='Crédito a Productor',Updated=TO_TIMESTAMP('2013-09-11 11:37:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50037 AND AD_Language='es_MX'
;

-- Sep 11, 2013 11:37:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50037,Updated=TO_TIMESTAMP('2013-09-11 11:37:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69296
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=55426
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=55427
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=55425
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=55428
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=4248
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=4249
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=7804
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=7802
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=7803
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=7805
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=7801
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=7800
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=3482
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=10347
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=9236
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=9235
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3505
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=3506
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=10531
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=5146
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=69296
;

-- Sep 11, 2013 11:37:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=69295
;

-- Sep 11, 2013 11:38:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-11 11:38:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69295
;

-- Sep 11, 2013 11:38:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-09-11 11:38:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67716
;

-- Sep 11, 2013 11:40:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_RecordWeight_ID@!0',Updated=TO_TIMESTAMP('2013-09-11 11:40:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69295
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=69296
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=69295
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=7804
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=7802
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=7803
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=7805
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=7801
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=7800
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=3482
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=10347
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=9236
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=9235
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=3505
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=3506
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=10531
;

-- Sep 11, 2013 11:40:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=5146
;

-- Sep 11, 2013 11:42:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67717,69297,0,257,TO_TIMESTAMP('2013-09-11 11:42:09','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts',0,'ECA02','Y','Y','Y','N','N','N','N','N','Farmer Credit/Debt',460,0,TO_TIMESTAMP('2013-09-11 11:42:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 11:42:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69297 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 11, 2013 11:43:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67716,69298,0,257,TO_TIMESTAMP('2013-09-11 11:42:49','YYYY-MM-DD HH24:MI:SS'),100,0,'@FTA_RecordWeight_ID@!0','ECA02','Y','Y','Y','N','N','N','Y','Y','Record Weight',470,0,TO_TIMESTAMP('2013-09-11 11:42:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 11:43:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69298 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 11, 2013 11:43:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50037,Updated=TO_TIMESTAMP('2013-09-11 11:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69297
;

-- Sep 11, 2013 11:43:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-09-11 11:43:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69295
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=69297
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=69298
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2944
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=2946
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=2936
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=6877
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=6541
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=2937
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=2943
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=10379
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=6880
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=6879
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=6878
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=2940
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=2939
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=4242
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=55419
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=55429
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=55430
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=55431
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=4243
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=2930
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=2933
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=7831
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=7829
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=7830
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=7832
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=7828
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=7827
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=2707
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=10369
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=9463
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=9462
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=3280
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=3281
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=10568
;

-- Sep 11, 2013 11:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=5143
;

-- Sep 11, 2013 11:47:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-09-11 11:47:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69293
;

-- Sep 11, 2013 11:47:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50037,Updated=TO_TIMESTAMP('2013-09-11 11:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69293
;

-- Sep 11, 2013 11:47:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=3435
;

-- Sep 11, 2013 11:47:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=3436
;

-- Sep 11, 2013 11:47:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=3419
;

-- Sep 11, 2013 11:47:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=6505
;

-- Sep 11, 2013 11:47:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=3458
;

-- Sep 11, 2013 11:47:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=6507
;

-- Sep 11, 2013 11:47:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=3452
;

-- Sep 11, 2013 11:47:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=6504
;

-- Sep 11, 2013 11:47:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=69293
;

-- Sep 11, 2013 11:48:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67666,50037,69299,0,186,TO_TIMESTAMP('2013-09-11 11:48:21','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts',0,'ECA02','Y','Y','Y','N','N','N','N','N','Farmer Credit/Debt',540,0,TO_TIMESTAMP('2013-09-11 11:48:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 11:48:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69299 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=69299
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1114
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=10124
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=55410
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=55411
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=55412
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1108
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1109
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=2878
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=56446
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1107
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1104
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1077
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1103
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=8653
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1098
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=3272
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=2112
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=2109
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=3113
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1099
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=56906
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=2593
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=2589
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1324
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=7038
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=7826
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=7825
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1112
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1113
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1082
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1084
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=6560
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1083
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=3660
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=52014
;

-- Sep 11, 2013 11:49:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=58037
;

-- Sep 11, 2013 11:49:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1114
;

-- Sep 11, 2013 11:49:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=69299
;

-- Sep 11, 2013 11:50:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=69299
;

-- Sep 11, 2013 11:50:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2877
;

-- Sep 11, 2013 11:50:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1110
;

-- Sep 11, 2013 11:50:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1114
;

-- Sep 11, 2013 11:51:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52207,Updated=TO_TIMESTAMP('2013-09-11 11:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67666
;

-- Sep 11, 2013 11:52:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67718,56084,0,19,318,52207,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2013-09-11 11:52:41','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts','ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Farmer Credit/Debt',0,TO_TIMESTAMP('2013-09-11 11:52:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 11, 2013 11:52:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67718 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 11, 2013 11:53:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67718,50037,69300,0,263,TO_TIMESTAMP('2013-09-11 11:53:19','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts',0,'ECA02','Y','Y','Y','N','N','N','N','N','Farmer Credit/Debt',430,0,TO_TIMESTAMP('2013-09-11 11:53:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 11:53:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69300 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=69300
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=2961
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2770
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=8648
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=2763
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3273
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=2953
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=2956
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3112
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=2774
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=2775
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=2764
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=2768
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=6935
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=7794
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=7795
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=2786
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=2780
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=2778
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=2771
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=8657
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=10485
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=6564
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=2777
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=3663
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3899
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=13700
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=53257
;

-- Sep 11, 2013 11:53:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=53258
;

-- Sep 11, 2013 11:54:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=2961
;

-- Sep 11, 2013 11:54:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=2770
;

-- Sep 11, 2013 11:54:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=8648
;

-- Sep 11, 2013 11:54:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=2763
;

-- Sep 11, 2013 11:54:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=3273
;

-- Sep 11, 2013 11:54:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=2953
;

-- Sep 11, 2013 11:54:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=2956
;

-- Sep 11, 2013 11:54:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3112
;

-- Sep 11, 2013 11:54:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=2774
;

-- Sep 11, 2013 11:54:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=69300
;

-- Sep 11, 2013 11:55:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67718,50037,69301,0,290,TO_TIMESTAMP('2013-09-11 11:55:26','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts',0,'ECA02','Y','Y','Y','N','N','N','N','N','Farmer Credit/Debt',410,0,TO_TIMESTAMP('2013-09-11 11:55:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 11:55:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69301 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=69301
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=3332
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=3323
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=3327
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=6936
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=7796
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=7797
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=3343
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=3337
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=3335
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=3329
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=10486
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=6532
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=3334
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3670
;

-- Sep 11, 2013 11:55:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3900
;

-- Sep 11, 2013 11:58:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67743,56084,0,19,661,52207,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2013-09-11 11:58:51','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts','ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Farmer Credit/Debt',0,TO_TIMESTAMP('2013-09-11 11:58:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 11, 2013 11:58:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67743 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 11, 2013 11:59:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67743,50037,69302,0,628,TO_TIMESTAMP('2013-09-11 11:59:11','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts',0,'ECA02','Y','Y','Y','N','N','N','N','N','Farmer Credit/Debt',170,0,TO_TIMESTAMP('2013-09-11 11:59:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 11:59:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69302 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 11, 2013 11:59:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=69302
;

-- Sep 11, 2013 11:59:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=10380
;

-- Sep 11, 2013 11:59:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=10381
;

-- Sep 11, 2013 11:59:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=10374
;

-- Sep 11, 2013 11:59:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=52000
;

-- Sep 11, 2013 12:00:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67717,50037,69303,0,53271,TO_TIMESTAMP('2013-09-11 12:00:56','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts',0,'ECA02','Y','Y','Y','N','N','N','N','N','Farmer Credit/Debt',410,0,TO_TIMESTAMP('2013-09-11 12:00:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 12:00:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69303 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=57733
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=57734
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=57735
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=57736
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=57737
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=57738
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=69303
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=57739
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=57740
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=57741
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=57742
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=57743
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=57744
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=57745
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=57746
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=57747
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=57748
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=57749
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=57750
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=57751
;

-- Sep 11, 2013 12:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=57752
;

-- Sep 11, 2013 12:05:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='CreditType', Description='If is Credit, Loan and other', Name='Credit Type', PrintName='Credit Type',Updated=TO_TIMESTAMP('2013-09-11 12:05:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56154
;

-- Sep 11, 2013 12:05:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56154
;

-- Sep 11, 2013 12:05:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='CreditType', Name='Credit Type', Description='If is Credit, Loan and other', Help=NULL WHERE AD_Element_ID=56154
;

-- Sep 11, 2013 12:05:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='CreditType', Name='Credit Type', Description='If is Credit, Loan and other', Help=NULL, AD_Element_ID=56154 WHERE UPPER(ColumnName)='CREDITTYPE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 11, 2013 12:05:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='CreditType', Name='Credit Type', Description='If is Credit, Loan and other', Help=NULL WHERE AD_Element_ID=56154 AND IsCentrallyMaintained='Y'
;

-- Sep 11, 2013 12:05:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Credit Type', Description='If is Credit, Loan and other', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56154) AND IsCentrallyMaintained='Y'
;

-- Sep 11, 2013 12:05:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Credit Type', Name='Credit Type' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56154)
;

-- Sep 11, 2013 12:06:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo Crédito',PrintName='Tipo Crédito',Description='Si es Crédito, Préstamo u otro Convenio de Recepción',Updated=TO_TIMESTAMP('2013-09-11 12:06:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56154 AND AD_Language='es_MX'
;

-- Sep 11, 2013 12:07:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53549,TO_TIMESTAMP('2013-09-11 12:07:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','CreditType List',TO_TIMESTAMP('2013-09-11 12:07:17','YYYY-MM-DD HH24:MI:SS'),100,'L','L')
;

-- Sep 11, 2013 12:07:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53549 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Sep 11, 2013 12:08:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53549,54052,TO_TIMESTAMP('2013-09-11 12:07:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farmer Credit',TO_TIMESTAMP('2013-09-11 12:07:38','YYYY-MM-DD HH24:MI:SS'),100,'C')
;

-- Sep 11, 2013 12:08:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54052 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 11, 2013 12:09:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Crédito a Productor',Description='Crédito otorgado al Productor',Updated=TO_TIMESTAMP('2013-09-11 12:09:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54052 AND AD_Language='es_MX'
;

-- Sep 11, 2013 12:09:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53549,54053,TO_TIMESTAMP('2013-09-11 12:09:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Loan',TO_TIMESTAMP('2013-09-11 12:09:42','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- Sep 11, 2013 12:09:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54053 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 11, 2013 12:09:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Préstamo',Description='Préstamo a Productor',Updated=TO_TIMESTAMP('2013-09-11 12:09:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54053 AND AD_Language='es_MX'
;

-- Sep 11, 2013 12:10:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Credit',Updated=TO_TIMESTAMP('2013-09-11 12:10:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54052
;

-- Sep 11, 2013 12:10:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54052
;

-- Sep 11, 2013 12:10:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Crédito',Updated=TO_TIMESTAMP('2013-09-11 12:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54052 AND AD_Language='es_MX'
;

-- Sep 11, 2013 12:14:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53549,54054,TO_TIMESTAMP('2013-09-11 12:14:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Reception Agreement',TO_TIMESTAMP('2013-09-11 12:14:01','YYYY-MM-DD HH24:MI:SS'),100,'R')
;

-- Sep 11, 2013 12:14:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54054 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 11, 2013 12:15:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Acuerdo de Recepción',Description='Acuerdo de Recepción de Producto',Updated=TO_TIMESTAMP('2013-09-11 12:15:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54054 AND AD_Language='es_MX'
;

-- Sep 11, 2013 12:16:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=53549, IsMandatory='Y',Updated=TO_TIMESTAMP('2013-09-11 12:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67108
;

-- Sep 11, 2013 12:25:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@CreditType@=''C''',Updated=TO_TIMESTAMP('2013-09-11 12:25:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66657
;

-- Sep 11, 2013 12:25:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@CreditType@=''C''',Updated=TO_TIMESTAMP('2013-09-11 12:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

