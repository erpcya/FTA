-- Oct 30, 2013 5:17:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='Y', SeqNo=30,Updated=TO_TIMESTAMP('2013-10-30 17:17:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54236
;

-- Oct 30, 2013 5:17:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_TIMESTAMP('2013-10-30 17:17:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54237
;

-- Oct 30, 2013 5:17:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_TIMESTAMP('2013-10-30 17:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54236
;

-- Oct 30, 2013 5:21:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2013-10-30 17:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54236
;

-- Oct 30, 2013 5:21:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53517,54243,15,'DateDoc',TO_TIMESTAMP('2013-10-30 17:21:47','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','Document Date',30,TO_TIMESTAMP('2013-10-30 17:21:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 5:21:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54243 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 30, 2013 5:23:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,287,0,53517,54244,17,135,219,'DocAction',TO_TIMESTAMP('2013-10-30 17:23:18','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02',2,'You find the current status in the Document Status field. The options are listed in a popup','Y','Y','Y','N','Document Action',40,TO_TIMESTAMP('2013-10-30 17:23:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 5:23:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54244 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 30, 2013 5:25:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=11,Updated=TO_TIMESTAMP('2013-10-30 17:25:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54236
;

-- Oct 30, 2013 5:25:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_TIMESTAMP('2013-10-30 17:25:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54237
;

-- Oct 30, 2013 5:25:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_TIMESTAMP('2013-10-30 17:25:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54236
;

-- Oct 30, 2013 5:26:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-10-30 17:26:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53400
;

-- Oct 30, 2013 5:26:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', IsMandatory='N', IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-10-30 17:26:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53400
;

-- Oct 30, 2013 5:30:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52240,Updated=TO_TIMESTAMP('2013-10-30 17:30:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54236
;

