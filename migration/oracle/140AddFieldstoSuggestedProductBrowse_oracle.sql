-- Oct 11, 2013 10:33:37 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68737,0,52192,50055,50018,'SP_DateFrom','SP.DateFrom',TO_DATE('2013-10-11 10:33:34','YYYY-MM-DD HH24:MI:SS'),100,'Starting date for a range','ECA02','The Date From indicates the starting date of a range.','Y','Date From',TO_DATE('2013-10-11 10:33:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 10:33:39 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68738,0,52193,50055,50018,'SP_DateTo','SP.DateTo',TO_DATE('2013-10-11 10:33:37','YYYY-MM-DD HH24:MI:SS'),100,'End date of a date range','ECA02','The Date To indicates the end date of a range (inclusive)','Y','Date To',TO_DATE('2013-10-11 10:33:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 10:33:40 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68735,0,52194,50055,50018,'SP_DayFrom','SP.DayFrom',TO_DATE('2013-10-11 10:33:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Day From',TO_DATE('2013-10-11 10:33:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 10:33:41 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68736,0,52195,50055,50018,'SP_DayTo','SP.DayTo',TO_DATE('2013-10-11 10:33:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Day To',TO_DATE('2013-10-11 10:33:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 10:33:43 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68734,0,52196,50055,50018,'SP_FTA_Farming_ID','SP.FTA_Farming_ID',TO_DATE('2013-10-11 10:33:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farming',TO_DATE('2013-10-11 10:33:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 10:35:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53334,50023,0,1581,0,16,52192,TO_DATE('2013-10-11 10:35:21','YYYY-MM-DD HH24:MI:SS'),100,'Starting date for a range','ECA02','The Date From indicates the starting date of a range.','Y','N','N','N','N','N','N','Date From',10,TO_DATE('2013-10-11 10:35:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 10:35:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53334 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 11, 2013 10:35:26 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53335,50023,0,1582,0,16,52193,TO_DATE('2013-10-11 10:35:24','YYYY-MM-DD HH24:MI:SS'),100,'End date of a date range','ECA02','The Date To indicates the end date of a range (inclusive)','Y','N','N','N','N','N','N','Date To',11,TO_DATE('2013-10-11 10:35:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 10:35:26 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53335 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 11, 2013 10:35:28 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53336,50023,0,55982,0,22,52194,TO_DATE('2013-10-11 10:35:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Day From',12,TO_DATE('2013-10-11 10:35:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 10:35:28 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53336 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 11, 2013 10:35:30 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53337,50023,0,55983,0,22,52195,TO_DATE('2013-10-11 10:35:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Day To',13,TO_DATE('2013-10-11 10:35:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 10:35:30 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53337 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 11, 2013 10:35:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53338,50023,0,55971,0,19,52196,TO_DATE('2013-10-11 10:35:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Farming',14,TO_DATE('2013-10-11 10:35:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 10:35:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53338 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 11, 2013 10:36:20 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-11 10:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53336
;

-- Oct 11, 2013 10:36:20 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-11 10:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53337
;

-- Oct 11, 2013 10:36:20 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-11 10:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53338
;

-- Oct 11, 2013 10:36:20 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-10-11 10:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53334
;

-- Oct 11, 2013 10:36:20 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-10-11 10:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53335
;

-- Oct 11, 2013 10:38:47 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Trl SET Name='Productos Sugeridos',Description='Productos Sugeridos',Help='Productos Sugeridos',Updated=TO_DATE('2013-10-11 10:38:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50023 AND AD_Language='es_MX'
;

-- Oct 11, 2013 10:40:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=15,Updated=TO_DATE('2013-10-11 10:40:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53334
;

-- Oct 11, 2013 10:40:39 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=15,Updated=TO_DATE('2013-10-11 10:40:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53335
;

-- Oct 11, 2013 10:40:40 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_DATE('2013-10-11 10:40:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53335
;

-- Oct 11, 2013 10:40:42 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_DATE('2013-10-11 10:40:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53334
;

