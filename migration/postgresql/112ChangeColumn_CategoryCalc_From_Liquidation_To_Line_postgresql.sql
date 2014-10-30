-- Sep 12, 2013 8:02:38 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68402
;

-- Sep 12, 2013 8:02:38 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=68402
;

-- Sep 12, 2013 8:03:41 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=67018
;

-- Sep 12, 2013 8:03:41 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Column WHERE AD_Column_ID=67018
;

-- Sep 12, 2013 8:04:23 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67766,56147,0,19,53564,'FTA_CategoryCalc_ID',TO_TIMESTAMP('2013-09-12 20:04:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Category Calc',0,TO_TIMESTAMP('2013-09-12 20:04:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 12, 2013 8:04:23 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67766 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 12, 2013 8:05:06 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-09-12 20:05:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68401
;

-- Sep 12, 2013 8:05:25 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67766,69314,0,53735,TO_TIMESTAMP('2013-09-12 20:05:18','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Category Calc',TO_TIMESTAMP('2013-09-12 20:05:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 8:05:25 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69314 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 12, 2013 8:08:50 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-09-12 20:08:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69314
;

-- Sep 12, 2013 8:08:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-09-12 20:08:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68392
;

-- Sep 12, 2013 8:08:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-09-12 20:08:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68389
;

-- Sep 12, 2013 8:08:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-09-12 20:08:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68399
;

