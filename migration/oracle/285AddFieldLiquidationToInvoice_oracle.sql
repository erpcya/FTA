-- Nov 5, 2013 12:02:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52244,'FTA_FarmerLiquidation.C_BPartner_ID = @C_BPartner_ID@',TO_DATE('2013-11-05 12:02:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_FarmerLiquidation By Business Partner','S',TO_DATE('2013-11-05 12:02:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 5, 2013 12:02:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69824,56145,0,19,318,52244,'FTA_FarmerLiquidation_ID',TO_DATE('2013-11-05 12:02:32','YYYY-MM-DD HH24:MI:SS'),100,'U',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Farmer Liquidation',0,TO_DATE('2013-11-05 12:02:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 5, 2013 12:02:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69824 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 5, 2013 12:03:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,69824,70283,0,290,TO_DATE('2013-11-05 12:03:30','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Farmer Liquidation',0,430,0,TO_DATE('2013-11-05 12:03:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 5, 2013 12:03:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70283 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Nov 5, 2013 12:03:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2013-11-05 12:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69301
;

-- Nov 5, 2013 12:03:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2013-11-05 12:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70283
;

-- Nov 5, 2013 12:03:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2013-11-05 12:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4247
;

-- Nov 5, 2013 12:03:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2013-11-05 12:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3332
;

-- Nov 5, 2013 12:03:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2013-11-05 12:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3323
;

-- Nov 5, 2013 12:03:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2013-11-05 12:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3327
;

-- Nov 5, 2013 12:03:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2013-11-05 12:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6936
;

-- Nov 5, 2013 12:03:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2013-11-05 12:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7796
;

-- Nov 5, 2013 12:03:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2013-11-05 12:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7797
;

-- Nov 5, 2013 12:03:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2013-11-05 12:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3343
;

-- Nov 5, 2013 12:03:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_DATE('2013-11-05 12:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3337
;

-- Nov 5, 2013 12:03:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_DATE('2013-11-05 12:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3335
;

-- Nov 5, 2013 12:03:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_DATE('2013-11-05 12:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3329
;

-- Nov 5, 2013 12:03:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_DATE('2013-11-05 12:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10486
;

-- Nov 5, 2013 12:03:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_DATE('2013-11-05 12:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6532
;

-- Nov 5, 2013 12:03:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_DATE('2013-11-05 12:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3334
;

-- Nov 5, 2013 12:03:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_DATE('2013-11-05 12:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3670
;

-- Nov 5, 2013 12:03:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_DATE('2013-11-05 12:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3900
;

-- Nov 5, 2013 12:03:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450,Updated=TO_DATE('2013-11-05 12:03:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69825
;

-- Nov 5, 2013 12:04:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-11-05 12:04:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70283
;

-- Nov 5, 2013 12:17:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2013-11-05 12:17:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69824
;

