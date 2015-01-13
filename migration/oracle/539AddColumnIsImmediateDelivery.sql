-- Jan 12, 2015 3:13:40 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75409,3000257,0,20,217,'IsImmediateDelivery',TO_DATE('2015-01-12 15:13:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Immediate Delivery',0,TO_DATE('2015-01-12 15:13:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 12, 2015 3:13:40 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75409 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 12, 2015 3:14:31 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75409,75287,0,167,TO_DATE('2015-01-12 15:14:21','YYYY-MM-DD HH24:MI:SS'),100,0,'@DocBaseType@ = ''FLO''','ECA02','N','Y','N','Y','Y','N','N','N','N','N','Immediate Delivery',0,340,0,TO_DATE('2015-01-12 15:14:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 12, 2015 3:14:31 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75287 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 12, 2015 3:17:45 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75410,3000257,0,20,53667,'IsImmediateDelivery',TO_DATE('2015-01-12 15:17:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Immediate Delivery',0,TO_DATE('2015-01-12 15:17:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 12, 2015 3:17:45 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75410 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 12, 2015 3:18:09 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75410,75288,0,53801,TO_DATE('2015-01-12 15:18:08','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','N','Y','Y','N','N','N','N','N','Immediate Delivery',0,360,0,TO_DATE('2015-01-12 15:18:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 12, 2015 3:18:10 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75288 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 12, 2015 3:18:11 PM VET
-- FTA
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2015-01-12 15:18:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75288
;

-- Jan 12, 2015 3:18:26 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2015-01-12 15:18:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75288
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72230
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71458
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72204
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70293
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71873
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70301
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70299
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70305
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71902
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70297
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70294
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70309
;

-- Jan 12, 2015 3:18:27 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2015-01-12 15:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70287
;

-- Jan 12, 2015 3:19:07 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2015-01-12 15:19:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72230
;

-- Jan 12, 2015 3:19:07 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2015-01-12 15:19:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75288
;

-- Jan 12, 2015 3:20:31 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75411,56068,0,10,319,'ControlNo',TO_DATE('2015-01-12 15:20:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Control No',0,TO_DATE('2015-01-12 15:20:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 12, 2015 3:20:31 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75411 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 12, 2015 3:21:02 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75411,75289,0,257,TO_DATE('2015-01-12 15:21:00','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','N','Y','Y','N','N','N','N','N','Control No',0,520,0,TO_DATE('2015-01-12 15:21:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 12, 2015 3:21:02 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75289 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75289
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2928
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2929
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2927
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69297
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69298
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2944
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2946
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2936
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6877
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6541
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2937
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2943
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10379
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6880
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6879
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6878
;

-- Jan 12, 2015 3:21:21 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2015-01-12 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2940
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2939
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4242
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55419
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55429
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55430
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55431
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4243
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2930
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2933
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7831
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7829
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7830
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7832
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7828
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7827
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2707
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=460,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10369
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=470,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9463
;

-- Jan 12, 2015 3:21:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=480,Updated=TO_DATE('2015-01-12 15:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9462
;

-- Jan 12, 2015 3:21:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=490,Updated=TO_DATE('2015-01-12 15:21:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3280
;

-- Jan 12, 2015 3:21:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=500,Updated=TO_DATE('2015-01-12 15:21:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3281
;

-- Jan 12, 2015 3:21:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=510,Updated=TO_DATE('2015-01-12 15:21:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10568
;

-- Jan 12, 2015 3:21:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=520,Updated=TO_DATE('2015-01-12 15:21:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5143
;

-- Jan 12, 2015 3:24:51 PM VET
-- FTA
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2015-01-12 15:24:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75409
;

-- Jan 12, 2015 3:28:00 PM VET
-- FTA
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2015-01-12 15:28:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75410
;

-- Jan 12, 2015 3:35:55 PM VET
-- FTA
UPDATE AD_Column SET Callout='org.spin.model.CalloutLoadOrder.IsImmediateDelivery',Updated=TO_DATE('2015-01-12 15:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69842
;

-- Jan 12, 2015 5:28:43 PM VET
-- FTA
UPDATE AD_Browse SET WhereClause='GI.DocStatus = ''CO'' AND GI.M_InOutline_ID IS NULL AND GI.OperationType = ''DFP''  AND NOT EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID = GI.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y'') OR GI.IsImmediateDelivery = ''Y''',Updated=TO_DATE('2015-01-12 17:28:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50043
;

-- Jan 12, 2015 6:24:33 PM VET
-- FTA
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2015-01-12 18:24:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67716
;

