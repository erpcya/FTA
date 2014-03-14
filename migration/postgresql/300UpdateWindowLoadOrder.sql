-- Nov 13, 2013 11:18:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54157,TO_TIMESTAMP('2013-11-13 11:18:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Load Order',TO_TIMESTAMP('2013-11-13 11:18:24','YYYY-MM-DD HH24:MI:SS'),100,'FLO')
;

-- Nov 13, 2013 11:18:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54157 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Nov 13, 2013 11:19:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52246,'C_DocType.DocBaseType = ''FLO''',TO_TIMESTAMP('2013-11-13 11:19:29','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Load Order','ECA02','Y','C_DocType FLO Load Order','S',TO_TIMESTAMP('2013-11-13 11:19:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 13, 2013 11:19:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52246,Updated=TO_TIMESTAMP('2013-11-13 11:19:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69842
;

-- Nov 13, 2013 11:29:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-11-13 11:29:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70295
;

-- Nov 13, 2013 11:29:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-11-13 11:29:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70286
;

-- Nov 13, 2013 11:29:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-11-13 11:29:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70317
;

-- Nov 13, 2013 11:29:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-11-13 11:29:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70318
;

-- Nov 13, 2013 11:29:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-11-13 11:29:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70319
;

-- Nov 13, 2013 11:29:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-11-13 11:29:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70320
;

-- Nov 13, 2013 11:29:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-11-13 11:29:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70290
;

-- Nov 13, 2013 11:29:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2013-11-13 11:29:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70288
;

-- Nov 13, 2013 11:29:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-11-13 11:29:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70292
;

-- Nov 13, 2013 11:29:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-11-13 11:29:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70291
;

-- Nov 13, 2013 11:29:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-11-13 11:29:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70304
;

-- Nov 13, 2013 11:29:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-11-13 11:29:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70303
;

-- Nov 13, 2013 11:29:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-11-13 11:29:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70305
;

-- Nov 13, 2013 11:29:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-11-13 11:29:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70302
;

-- Nov 13, 2013 11:29:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-11-13 11:29:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70312
;

-- Nov 13, 2013 11:29:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2013-11-13 11:29:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70307
;

-- Nov 13, 2013 11:29:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2013-11-13 11:29:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70316
;

-- Nov 13, 2013 11:29:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2013-11-13 11:29:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- Nov 13, 2013 11:29:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2013-11-13 11:29:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70310
;

-- Nov 13, 2013 11:29:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2013-11-13 11:29:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Nov 13, 2013 11:29:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2013-11-13 11:29:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70299
;

-- Nov 13, 2013 11:29:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2013-11-13 11:29:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- Nov 13, 2013 11:29:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2013-11-13 11:29:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70314
;

-- Nov 13, 2013 11:29:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2013-11-13 11:29:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70300
;

-- Nov 13, 2013 11:29:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2013-11-13 11:29:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70301
;

-- Nov 13, 2013 11:29:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_TIMESTAMP('2013-11-13 11:29:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70293
;

-- Nov 13, 2013 11:30:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2013-11-13 11:30:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- Nov 13, 2013 11:31:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2013-11-13 11:31:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- Nov 13, 2013 11:31:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2013-11-13 11:31:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70301
;

-- Nov 13, 2013 11:31:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2013-11-13 11:31:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70299
;

-- Nov 13, 2013 11:31:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2013-11-13 11:31:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70300
;

-- Nov 13, 2013 11:31:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2013-11-13 11:31:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70301
;

-- Nov 13, 2013 11:31:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2013-11-13 11:31:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Nov 13, 2013 11:31:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2013-11-13 11:31:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- Nov 13, 2013 11:31:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-11-13 11:31:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Nov 13, 2013 11:32:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2013-11-13 11:32:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70293
;

-- Nov 13, 2013 11:32:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2013-11-13 11:32:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- Nov 13, 2013 11:32:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2013-11-13 11:32:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70310
;

-- Nov 13, 2013 11:32:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2013-11-13 11:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70301
;

-- Nov 13, 2013 11:32:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2013-11-13 11:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Nov 13, 2013 11:32:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2013-11-13 11:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- Nov 13, 2013 11:32:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2013-11-13 11:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70314
;

-- Nov 13, 2013 11:32:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2013-11-13 11:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70299
;

-- Nov 13, 2013 11:32:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_TIMESTAMP('2013-11-13 11:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70300
;

-- Nov 13, 2013 11:33:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-11-13 11:33:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70287
;

-- Nov 13, 2013 11:33:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-11-13 11:33:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70309
;

-- Nov 13, 2013 11:36:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-11-13 11:36:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70297
;

-- Nov 13, 2013 11:38:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2013-11-13 11:38:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70297
;

-- Nov 13, 2013 11:38:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2013-11-13 11:38:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70294
;

-- Nov 13, 2013 11:39:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2013-11-13 11:39:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70297
;

-- Nov 13, 2013 11:39:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2013-11-13 11:39:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70294
;

-- Nov 13, 2013 11:39:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-11-13 11:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70294
;

-- Nov 13, 2013 11:39:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-11-13 11:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70297
;

-- Nov 13, 2013 11:44:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2013-11-13 11:44:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Nov 13, 2013 11:44:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2013-11-13 11:44:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- Nov 13, 2013 11:44:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2013-11-13 11:44:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70299
;

-- Nov 13, 2013 11:44:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2013-11-13 11:44:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- Nov 13, 2013 11:44:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2013-11-13 11:44:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70314
;

-- Nov 13, 2013 11:44:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-11-13 11:44:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Nov 13, 2013 11:44:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-11-13 11:44:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- Nov 13, 2013 11:44:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-11-13 11:44:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- Nov 13, 2013 11:44:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-11-13 11:44:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70314
;

-- Nov 13, 2013 11:45:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-11-13 11:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70300
;

-- Nov 13, 2013 11:45:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2013-11-13 11:45:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Nov 13, 2013 11:45:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2013-11-13 11:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- Nov 13, 2013 11:46:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-11-13 11:46:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70300
;

-- Nov 13, 2013 11:46:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-11-13 11:46:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70300
;

-- Nov 13, 2013 11:46:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-11-13 11:46:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70300
;

