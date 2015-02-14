-- Jan 27, 2015 4:41:25 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75497,1474,0,20,319,'IsManual',TO_TIMESTAMP('2015-01-27 16:41:22','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process','D',1,'The Manual check box indicates if the process will done manually.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Manual',0,TO_TIMESTAMP('2015-01-27 16:41:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 27, 2015 4:41:25 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75497 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 27, 2015 4:42:17 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75497,75347,0,257,TO_TIMESTAMP('2015-01-27 16:42:09','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process',0,'D','The Manual check box indicates if the process will done manually.','N','Y','Y','Y','N','N','N','N','N','Manual',0,530,0,TO_TIMESTAMP('2015-01-27 16:42:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 27, 2015 4:42:17 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75347 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75347
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2928
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2929
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2927
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69297
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69298
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2944
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2946
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2936
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6877
;

-- Jan 27, 2015 4:42:50 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2015-01-27 16:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6541
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2937
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2943
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10379
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6880
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6879
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6878
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2940
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2939
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4242
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55419
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55429
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55430
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55431
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4243
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2930
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2933
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7831
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7829
;

-- Jan 27, 2015 4:42:51 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_TIMESTAMP('2015-01-27 16:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7830
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7832
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7828
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7827
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=460,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2707
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=470,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10369
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=480,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9463
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=490,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9462
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=500,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3280
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=510,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3281
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=520,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10568
;

-- Jan 27, 2015 4:42:52 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=530,Updated=TO_TIMESTAMP('2015-01-27 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5143
;

-- Jan 27, 2015 4:43:42 PM VET
-- FTA
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2015-01-27 16:43:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75347
;

-- Jan 27, 2015 4:44:39 PM VET
-- FTA
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@=''N''',Updated=TO_TIMESTAMP('2015-01-27 16:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75411
;

-- Jan 27, 2015 4:46:15 PM VET
-- FTA
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2015-01-27 16:46:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75497
;

