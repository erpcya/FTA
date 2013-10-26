-- Sep 12, 2013 3:36:55 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=35,Updated=TO_TIMESTAMP('2013-09-12 15:36:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67755
;

-- Sep 12, 2013 3:37:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=162,Updated=TO_TIMESTAMP('2013-09-12 15:37:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67760
;

-- Sep 12, 2013 3:55:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2013-09-12 15:55:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53269
;

-- Sep 12, 2013 4:01:11 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsOrderBy,IsQueryCriteria,IsRange,IsReadOnly,Name,SeqNo,Updated,UpdatedBy) VALUES (53284,50021,0,56135,0,30,52073,TO_TIMESTAMP('2013-09-12 16:01:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','Y','N','N','N','N','Y','N','Y','Record Weight',10,TO_TIMESTAMP('2013-09-12 16:01:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 4:01:11 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53284 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 4:01:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET SeqNo=15,Updated=TO_TIMESTAMP('2013-09-12 16:01:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53284
;

-- Sep 12, 2013 4:02:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-09-12 16:02:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53281
;

-- Sep 12, 2013 4:02:55 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-09-12 16:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53282
;

-- Sep 12, 2013 4:03:02 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-09-12 16:03:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53283
;

