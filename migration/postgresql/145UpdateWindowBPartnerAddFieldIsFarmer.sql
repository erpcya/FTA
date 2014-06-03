-- Oct 12, 2013 2:21:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68540,69882,0,220,TO_TIMESTAMP('2013-10-12 14:21:53','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Is Farmer',TO_TIMESTAMP('2013-10-12 14:21:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 12, 2013 2:21:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69882 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 12, 2013 2:21:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,58596,69883,0,220,TO_TIMESTAMP('2013-10-12 14:21:55','YYYY-MM-DD HH24:MI:SS'),100,'Indicate role of this Business partner as Manufacturer',1,'U','Y','Y','Y','N','N','N','N','N','Is Manufacturer',TO_TIMESTAMP('2013-10-12 14:21:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 12, 2013 2:21:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69883 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 12, 2013 2:22:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69883
;

-- Oct 12, 2013 2:22:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=69882
;

-- Oct 12, 2013 2:22:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=57533
;

-- Oct 12, 2013 2:22:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Productor',PrintName='Productor',Updated=TO_TIMESTAMP('2013-10-12 14:22:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56448 AND AD_Language='es_MX'
;

-- Oct 12, 2013 2:23:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-12 14:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69882
;

