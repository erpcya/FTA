-- 07-oct-2013 14:59:11 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68540,56448,0,20,291,'IsFarmer',TO_DATE('2013-10-07 14:59:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Is Farmer',0,TO_DATE('2013-10-07 14:59:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07-oct-2013 14:59:11 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68540 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07-oct-2013 15:01:00 VET
-- SFAndroid Contribution
UPDATE AD_Tab SET WhereClause='C_BPartner.IsFarmer=''Y''',Updated=TO_DATE('2013-10-07 15:01:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53667
;

-- 07-oct-2013 15:01:10 VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68540,69814,0,53667,TO_DATE('2013-10-07 15:01:07','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Is Farmer',TO_DATE('2013-10-07 15:01:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:01:10 VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69814 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07-oct-2013 15:01:12 VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,58596,69815,0,53667,TO_DATE('2013-10-07 15:01:10','YYYY-MM-DD HH24:MI:SS'),100,'Indicate role of this Business partner as Manufacturer',1,'ECA02','Y','Y','Y','N','N','N','N','N','Is Manufacturer',TO_DATE('2013-10-07 15:01:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:01:12 VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69815 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07-oct-2013 15:01:23 VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-07 15:01:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69815
;

-- 07-oct-2013 15:01:23 VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2013-10-07 15:01:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69814
;

-- 07-oct-2013 15:03:29 VET
-- SFAndroid Contribution
UPDATE AD_Field SET DefaultValue='Y',Updated=TO_DATE('2013-10-07 15:03:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69814
;

-- 07-oct-2013 15:03:35 VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-07 15:03:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69814
;

-- 07-oct-2013 15:05:09 VET
-- SFAndroid Contribution
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53570,TO_DATE('2013-10-07 15:05:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_Farmers',TO_DATE('2013-10-07 15:05:07','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 07-oct-2013 15:05:09 VET
-- SFAndroid Contribution
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53570 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 07-oct-2013 15:05:17 VET
-- SFAndroid Contribution
UPDATE AD_Reference_Trl SET Name='FTA_Productores',Updated=TO_DATE('2013-10-07 15:05:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53570 AND AD_Language='es_MX'
;

-- 07-oct-2013 15:06:32 VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,2902,2893,0,53570,291,53237,TO_DATE('2013-10-07 15:06:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2013-10-07 15:06:31','YYYY-MM-DD HH24:MI:SS'),100,'C_BPartner.IsFarmer=''Y''')
;

-- 07-oct-2013 15:06:55 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_Value_ID=53570,Updated=TO_DATE('2013-10-07 15:06:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66577
;

-- 07-oct-2013 15:07:57 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=53570,Updated=TO_DATE('2013-10-07 15:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68521
;

