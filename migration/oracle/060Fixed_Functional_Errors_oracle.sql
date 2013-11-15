-- 23/08/2013 06:17:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52183,'FTA_FarmDivision.FTA_Farm_ID = @FTA_Farm_ID@',TO_DATE('2013-08-23 18:17:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_FarmDivision Only from Farm','S',TO_DATE('2013-08-23 18:17:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/08/2013 06:17:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52183,Updated=TO_DATE('2013-08-23 18:17:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65945
;

-- 23/08/2013 06:24:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52184,'FTA_FarmingStage.Category IN (SELECT f.Category FROM FTA_Farmin f WHERE f.FTA_Farmin_ID = @FTA_Farming_ID@)',TO_DATE('2013-08-23 18:24:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_FarmingStage Only from Farming Category','S',TO_DATE('2013-08-23 18:24:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/08/2013 06:25:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52184,Updated=TO_DATE('2013-08-23 18:25:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65947
;

-- 23/08/2013 06:29:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2013-08-23 18:29:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67216
;

-- 23/08/2013 06:29:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2013-08-23 18:29:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67227
;

-- 23/08/2013 06:29:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DefaultValue='Y',Updated=TO_DATE('2013-08-23 18:29:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67227
;

-- 23/08/2013 06:29:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DefaultValue='Y',Updated=TO_DATE('2013-08-23 18:29:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67216
;

-- 23/08/2013 06:29:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-23 18:29:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67227
;

-- 23/08/2013 06:30:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2013-08-23 18:30:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67216
;

-- 23/08/2013 06:30:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2013-08-23 18:30:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67227
;

-- 23/08/2013 06:30:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2013-08-23 18:30:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67271
;

-- 23/08/2013 06:36:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,50031,0,TO_DATE('2013-08-23 18:36:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','C','Y','N','Suggested Quantity',TO_DATE('2013-08-23 18:36:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/08/2013 06:36:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=50031 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 23/08/2013 06:36:50 PM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup_Trl SET Name='Cantidades Sugeridas',Updated=TO_DATE('2013-08-23 18:36:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50031 AND AD_Language='es_MX'
;

-- 23/08/2013 06:37:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,50032,0,TO_DATE('2013-08-23 18:37:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','C','Y','N','Quantity to Apply',TO_DATE('2013-08-23 18:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/08/2013 06:37:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=50032 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 23/08/2013 06:38:05 PM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup SET Name='Quantities to Apply',Updated=TO_DATE('2013-08-23 18:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50032
;

-- 23/08/2013 06:38:05 PM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=50032
;

-- 23/08/2013 06:38:11 PM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup SET Name='Suggested Quantites',Updated=TO_DATE('2013-08-23 18:38:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50031
;

-- 23/08/2013 06:38:11 PM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=50031
;

-- 23/08/2013 06:38:22 PM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup_Trl SET Name='Cantidades a Aplicar',Updated=TO_DATE('2013-08-23 18:38:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50032 AND AD_Language='es_MX'
;

-- 23/08/2013 06:39:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,50033,0,TO_DATE('2013-08-23 18:39:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','C','Y','N','Quantities to Order',TO_DATE('2013-08-23 18:39:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/08/2013 06:39:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=50033 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 23/08/2013 06:39:46 PM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup_Trl SET Name='Cantidades a Ordenar',Updated=TO_DATE('2013-08-23 18:39:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50033 AND AD_Language='es_MX'
;

-- 23/08/2013 06:40:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50031,Updated=TO_DATE('2013-08-23 18:40:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67327
;

-- 23/08/2013 06:40:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50032,Updated=TO_DATE('2013-08-23 18:40:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67326
;

-- 23/08/2013 06:40:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50033,Updated=TO_DATE('2013-08-23 18:40:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67328
;

-- 23/08/2013 06:42:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-08-23 18:42:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68233
;

