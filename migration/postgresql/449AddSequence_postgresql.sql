-- Apr 9, 2014 11:48:33 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72611,73281,0,53888,TO_TIMESTAMP('2014-04-09 11:48:28','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first',22,'ECA02','The Sequence indicates the order of records','Y','Y','Y','N','N','N','N','N','Sequence',TO_TIMESTAMP('2014-04-09 11:48:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 11:48:33 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73281 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 9, 2014 11:48:53 AM CEST
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-04-09 11:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73279
;

-- Apr 9, 2014 11:48:53 AM CEST
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-04-09 11:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73281
;

-- Apr 9, 2014 11:48:54 AM CEST
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-04-09 11:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72138
;

-- Apr 9, 2014 11:49:02 AM CEST
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-04-09 11:49:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73279
;

-- Apr 9, 2014 11:49:11 AM CEST
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-04-09 11:49:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73281
;

