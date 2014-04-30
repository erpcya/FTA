-- Jan 24, 2014 3:51:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53563,'org.spin.process.LoadOrderGuideGenerate','N',TO_DATE('2014-01-24 15:51:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Generate Guide (Dispatch)','Y',0,0,TO_DATE('2014-01-24 15:51:28','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RecordWeight GuideGenerateDispatch')
;

-- Jan 24, 2014 3:51:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53563 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 24, 2014 3:51:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Guías (Despacho)',Updated=TO_DATE('2014-01-24 15:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53563 AND AD_Language='es_MX'
;

-- Jan 24, 2014 3:52:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Guías (Despacho)',Updated=TO_DATE('2014-01-24 15:52:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53563 AND AD_Language='es_VE'
;

-- Jan 24, 2014 3:52:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,112,0,53563,54430,18,130,'AD_OrgTrx_ID',TO_DATE('2014-01-24 15:52:19','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization','ECA02',22,'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Y','Y','Y','N','Trx Organization',10,TO_DATE('2014-01-24 15:52:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 3:52:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54430 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 24, 2014 3:52:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53563,54431,18,170,52297,'C_DocTypeTarget_ID',TO_DATE('2014-01-24 15:52:46','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02',22,'You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','Y','N','N','Target Document Type',20,TO_DATE('2014-01-24 15:52:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 3:52:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54431 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 24, 2014 3:53:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53563,54432,15,'DateDoc',TO_DATE('2014-01-24 15:52:57','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','Document Date',30,TO_DATE('2014-01-24 15:52:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 3:53:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54432 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 24, 2014 3:53:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-01-24 15:53:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54431
;

-- Jan 24, 2014 3:53:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71360,524,0,53563,28,53561,'Processing',TO_DATE('2014-01-24 15:53:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Now',0,TO_DATE('2014-01-24 15:53:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 24, 2014 3:53:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71360 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 24, 2014 3:53:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71360,72203,0,53731,TO_DATE('2014-01-24 15:53:37','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Process Now',TO_DATE('2014-01-24 15:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 3:53:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72203 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 24, 2014 3:53:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2014-01-24 15:53:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72203
;

-- Jan 24, 2014 3:53:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2014-01-24 15:53:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Jan 24, 2014 3:53:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2014-01-24 15:53:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Jan 24, 2014 3:53:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2014-01-24 15:53:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71467
;

-- Jan 24, 2014 3:53:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2014-01-24 15:53:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70256
;

-- Jan 24, 2014 3:53:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2014-01-24 15:53:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70255
;

-- Jan 24, 2014 3:53:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2014-01-24 15:53:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70254
;

-- Jan 24, 2014 3:53:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2014-01-24 15:53:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70257
;

-- Jan 24, 2014 3:53:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2014-01-24 15:53:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72093
;

-- Jan 24, 2014 3:53:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2014-01-24 15:53:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72125
;

-- Jan 24, 2014 3:53:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2014-01-24 15:53:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72148
;

-- Jan 24, 2014 3:54:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2014-01-24 15:54:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72202
;

-- Jan 24, 2014 3:54:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2014-01-24 15:54:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68335
;

-- Jan 24, 2014 3:54:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2014-01-24 15:54:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68316
;

-- Jan 24, 2014 3:54:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2014-01-24 15:54:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68324
;

-- Jan 24, 2014 3:54:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2014-01-24 15:54:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68337
;

-- Jan 24, 2014 3:54:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2014-01-24 15:54:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68334
;

-- Jan 24, 2014 3:54:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2014-01-24 15:54:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Jan 24, 2014 3:54:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2014-01-24 15:54:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Jan 24, 2014 3:54:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2014-01-24 15:54:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68329
;

-- Jan 24, 2014 3:54:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2014-01-24 15:54:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70143
;

-- Jan 24, 2014 3:54:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2014-01-24 15:54:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70142
;

-- Jan 24, 2014 3:54:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2014-01-24 15:54:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70144
;

-- Jan 24, 2014 3:54:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2014-01-24 15:54:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68321
;

-- Jan 24, 2014 3:54:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2014-01-24 15:54:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68318
;

-- Jan 24, 2014 3:54:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2014-01-24 15:54:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68330
;

-- Jan 24, 2014 3:54:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_DATE('2014-01-24 15:54:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68346
;

-- Jan 24, 2014 3:54:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_DATE('2014-01-24 15:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70193
;

-- Jan 24, 2014 3:54:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_DATE('2014-01-24 15:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70215
;

-- Jan 24, 2014 3:54:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Value='FTA_GuideGenerateDispatch',Updated=TO_DATE('2014-01-24 15:54:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53563
;

-- Jan 24, 2014 3:54:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71361,524,0,53563,28,53667,'Processing',TO_DATE('2014-01-24 15:54:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Now',0,TO_DATE('2014-01-24 15:54:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 24, 2014 3:54:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71361 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 24, 2014 3:55:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71361,72204,0,53801,TO_DATE('2014-01-24 15:55:12','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Process Now',TO_DATE('2014-01-24 15:55:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 3:55:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72204 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 24, 2014 3:55:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2014-01-24 15:55:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72204
;

-- Jan 24, 2014 3:55:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2014-01-24 15:55:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Jan 24, 2014 3:55:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2014-01-24 15:55:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71873
;

-- Jan 24, 2014 3:55:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2014-01-24 15:55:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70301
;

-- Jan 24, 2014 3:55:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2014-01-24 15:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- Jan 24, 2014 3:55:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2014-01-24 15:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70299
;

-- Jan 24, 2014 3:55:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2014-01-24 15:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- Jan 24, 2014 3:55:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2014-01-24 15:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70305
;

-- Jan 24, 2014 3:55:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2014-01-24 15:55:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71902
;

-- Jan 24, 2014 3:55:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2014-01-24 15:55:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72201
;

-- Jan 24, 2014 3:55:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2014-01-24 15:55:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70297
;

-- Jan 24, 2014 3:55:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2014-01-24 15:55:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70294
;

-- Jan 24, 2014 3:55:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2014-01-24 15:55:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70309
;

-- Jan 24, 2014 3:55:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2014-01-24 15:55:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70287
;

-- Jan 24, 2014 3:58:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52207,Updated=TO_DATE('2014-01-24 15:58:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54414
;

-- Jan 24, 2014 3:59:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52207,Updated=TO_DATE('2014-01-24 15:59:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54272
;

-- Jan 24, 2014 4:10:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53564,'org.spin.process.LoadOrderGuideGenerate','N',TO_DATE('2014-01-24 16:10:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Generate Guide (Dispatch)','Y',0,0,TO_DATE('2014-01-24 16:10:26','YYYY-MM-DD HH24:MI:SS'),100,'FTA_GuideGenerateDispatch Desktop')
;

-- Jan 24, 2014 4:10:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53564 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 24, 2014 4:11:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Guías (Despacho)',Updated=TO_DATE('2014-01-24 16:11:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53564 AND AD_Language='es_MX'
;

-- Jan 24, 2014 4:11:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Guías (Despacho)',Updated=TO_DATE('2014-01-24 16:11:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53564 AND AD_Language='es_VE'
;

-- Jan 24, 2014 4:11:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,112,0,53564,54433,18,130,'AD_OrgTrx_ID',TO_DATE('2014-01-24 16:11:40','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization','ECA02',22,'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Y','Y','Y','N','Trx Organization',10,TO_DATE('2014-01-24 16:11:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 4:11:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54433 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 24, 2014 4:12:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53564,54434,18,170,52297,'C_DocTypeTarget_ID',TO_DATE('2014-01-24 16:12:09','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02',22,'You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','Y','N','N','Target Document Type',20,TO_DATE('2014-01-24 16:12:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 4:12:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54434 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 24, 2014 4:12:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-01-24 16:12:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54434
;

-- Jan 24, 2014 4:12:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53564,54435,15,'DateDoc',TO_DATE('2014-01-24 16:12:32','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','Document Date',30,TO_DATE('2014-01-24 16:12:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 4:12:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54435 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 24, 2014 4:13:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56599,0,53564,54436,18,53596,'FTA_LoadOrder_ID',TO_DATE('2014-01-24 16:13:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Load Order',40,TO_DATE('2014-01-24 16:13:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 4:13:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54436 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 24, 2014 4:13:39 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0,Updated=TO_DATE('2014-01-24 16:13:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53684
;

-- Jan 24, 2014 4:13:40 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1,Updated=TO_DATE('2014-01-24 16:13:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53654
;

-- Jan 24, 2014 4:13:41 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2,Updated=TO_DATE('2014-01-24 16:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53646
;

-- Jan 24, 2014 4:13:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_DATE('2014-01-24 16:13:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53748
;

-- Jan 24, 2014 4:13:43 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_DATE('2014-01-24 16:13:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Jan 24, 2014 4:13:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_DATE('2014-01-24 16:13:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Jan 24, 2014 4:13:45 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_DATE('2014-01-24 16:13:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Jan 24, 2014 4:13:46 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2,Updated=TO_DATE('2014-01-24 16:13:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53600
;

-- Jan 24, 2014 4:13:47 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_DATE('2014-01-24 16:13:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53646
;

-- Jan 24, 2014 4:13:47 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_DATE('2014-01-24 16:13:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53748
;

-- Jan 24, 2014 4:13:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_DATE('2014-01-24 16:13:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Jan 24, 2014 4:13:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_DATE('2014-01-24 16:13:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Jan 24, 2014 4:13:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=7,Updated=TO_DATE('2014-01-24 16:13:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Jan 24, 2014 4:20:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13,Updated=TO_DATE('2014-01-24 16:20:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53572
;

-- Jan 24, 2014 4:20:01 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16,Updated=TO_DATE('2014-01-24 16:20:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53684
;

-- Jan 24, 2014 4:20:01 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17,Updated=TO_DATE('2014-01-24 16:20:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53654
;

-- Jan 24, 2014 4:20:01 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=18,Updated=TO_DATE('2014-01-24 16:20:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53600
;

-- Jan 24, 2014 4:20:01 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=19,Updated=TO_DATE('2014-01-24 16:20:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53747
;

-- Jan 24, 2014 4:20:01 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=20,Updated=TO_DATE('2014-01-24 16:20:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53598
;

-- Jan 24, 2014 4:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=21,Updated=TO_DATE('2014-01-24 16:20:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53609
;

-- Jan 24, 2014 4:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=22,Updated=TO_DATE('2014-01-24 16:20:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53746
;

-- Jan 24, 2014 4:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=23,Updated=TO_DATE('2014-01-24 16:20:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53746
;

-- Jan 24, 2014 4:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=24,Updated=TO_DATE('2014-01-24 16:20:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53599
;

-- Jan 24, 2014 4:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=25,Updated=TO_DATE('2014-01-24 16:20:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53742
;

-- Jan 24, 2014 4:20:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=26,Updated=TO_DATE('2014-01-24 16:20:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53606
;

-- Jan 24, 2014 4:20:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=27,Updated=TO_DATE('2014-01-24 16:20:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53580
;

-- Jan 24, 2014 4:20:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=28,Updated=TO_DATE('2014-01-24 16:20:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53643
;

-- Jan 24, 2014 4:20:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=29,Updated=TO_DATE('2014-01-24 16:20:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53644
;

-- Jan 24, 2014 4:20:04 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=30,Updated=TO_DATE('2014-01-24 16:20:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53645
;

-- Jan 24, 2014 4:20:13 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53602, SeqNo=0,Updated=TO_DATE('2014-01-24 16:20:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53746
;

-- Jan 24, 2014 4:20:19 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53602, SeqNo=0,Updated=TO_DATE('2014-01-24 16:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53599
;

-- Jan 24, 2014 4:20:20 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53602, SeqNo=1,Updated=TO_DATE('2014-01-24 16:20:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53746
;

-- Jan 24, 2014 4:20:32 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=0,Updated=TO_DATE('2014-01-24 16:20:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53598
;

-- Jan 24, 2014 4:20:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=0,Updated=TO_DATE('2014-01-24 16:20:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53747
;

-- Jan 24, 2014 4:20:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=1,Updated=TO_DATE('2014-01-24 16:20:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53598
;

-- Jan 24, 2014 4:20:41 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=1,Updated=TO_DATE('2014-01-24 16:20:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53609
;

-- Jan 24, 2014 4:20:41 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=2,Updated=TO_DATE('2014-01-24 16:20:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53598
;

-- Jan 24, 2014 4:21:07 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=0,Updated=TO_DATE('2014-01-24 16:21:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53742
;

-- Jan 24, 2014 4:21:14 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=0,Updated=TO_DATE('2014-01-24 16:21:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53606
;

-- Jan 24, 2014 4:21:14 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=1,Updated=TO_DATE('2014-01-24 16:21:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53742
;

-- Jan 24, 2014 4:21:19 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=1,Updated=TO_DATE('2014-01-24 16:21:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53580
;

-- Jan 24, 2014 4:21:19 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=2,Updated=TO_DATE('2014-01-24 16:21:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53742
;

-- Jan 24, 2014 4:21:24 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=1,Updated=TO_DATE('2014-01-24 16:21:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53643
;

-- Jan 24, 2014 4:21:25 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=2,Updated=TO_DATE('2014-01-24 16:21:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53580
;

-- Jan 24, 2014 4:21:25 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=3,Updated=TO_DATE('2014-01-24 16:21:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53742
;

-- Jan 24, 2014 4:21:30 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=0,Updated=TO_DATE('2014-01-24 16:21:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53644
;

-- Jan 24, 2014 4:21:30 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=1,Updated=TO_DATE('2014-01-24 16:21:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53606
;

-- Jan 24, 2014 4:21:31 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=2,Updated=TO_DATE('2014-01-24 16:21:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53643
;

-- Jan 24, 2014 4:21:31 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=3,Updated=TO_DATE('2014-01-24 16:21:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53580
;

-- Jan 24, 2014 4:21:31 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=4,Updated=TO_DATE('2014-01-24 16:21:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53742
;

-- Jan 24, 2014 4:21:38 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=0,Updated=TO_DATE('2014-01-24 16:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53645
;

-- Jan 24, 2014 4:21:38 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=1,Updated=TO_DATE('2014-01-24 16:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53644
;

-- Jan 24, 2014 4:21:38 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=2,Updated=TO_DATE('2014-01-24 16:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53606
;

-- Jan 24, 2014 4:21:39 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=3,Updated=TO_DATE('2014-01-24 16:21:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53643
;

-- Jan 24, 2014 4:21:39 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=4,Updated=TO_DATE('2014-01-24 16:21:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53580
;

-- Jan 24, 2014 4:21:39 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=5,Updated=TO_DATE('2014-01-24 16:21:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53742
;

-- Jan 24, 2014 4:22:07 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0,Updated=TO_DATE('2014-01-24 16:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53654
;

-- Jan 24, 2014 4:22:08 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1,Updated=TO_DATE('2014-01-24 16:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53646
;

-- Jan 24, 2014 4:22:08 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2,Updated=TO_DATE('2014-01-24 16:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53748
;

-- Jan 24, 2014 4:22:08 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_DATE('2014-01-24 16:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Jan 24, 2014 4:22:08 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_DATE('2014-01-24 16:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Jan 24, 2014 4:22:08 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_DATE('2014-01-24 16:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Jan 24, 2014 4:22:12 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0,Updated=TO_DATE('2014-01-24 16:22:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53684
;

-- Jan 24, 2014 4:22:13 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1,Updated=TO_DATE('2014-01-24 16:22:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53654
;

-- Jan 24, 2014 4:22:13 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2,Updated=TO_DATE('2014-01-24 16:22:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53646
;

-- Jan 24, 2014 4:22:13 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_DATE('2014-01-24 16:22:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53748
;

-- Jan 24, 2014 4:22:13 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_DATE('2014-01-24 16:22:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Jan 24, 2014 4:22:13 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_DATE('2014-01-24 16:22:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Jan 24, 2014 4:22:13 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_DATE('2014-01-24 16:22:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Jan 24, 2014 4:22:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53756,0,53564,TO_DATE('2014-01-24 16:22:52','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Y','N','N','N','Generate Guide (Dispatch)',TO_DATE('2014-01-24 16:22:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 4:22:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53756 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jan 24, 2014 4:22:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-01-24 16:22:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',53756,0,999,TO_DATE('2014-01-24 16:22:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 4:23:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET EntityType='ECA02',Updated=TO_DATE('2014-01-24 16:23:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53756
;

-- Jan 24, 2014 4:23:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_DATE('2014-01-24 16:23:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53756
;

-- Jan 24, 2014 4:23:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_DATE('2014-01-24 16:23:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Jan 24, 2014 4:23:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=7,Updated=TO_DATE('2014-01-24 16:23:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Jan 24, 2014 4:49:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2014-01-24 16:49:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54434
;

-- Jan 24, 2014 4:50:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2014-01-24 16:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54431
;

-- Jan 24, 2014 5:01:18 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=72202
;

-- Jan 24, 2014 5:01:18 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=72202
;

-- Jan 24, 2014 5:01:30 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=71359
;

-- Jan 24, 2014 5:01:30 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71359
;

-- Jan 24, 2014 5:02:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71362,56135,0,18,53632,53510,'FTA_RecordWeight_ID',TO_DATE('2014-01-24 17:02:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Record Weight',0,TO_DATE('2014-01-24 17:02:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 24, 2014 5:02:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71362 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 24, 2014 5:03:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71363,56599,0,18,53596,53510,'FTA_LoadOrder_ID',TO_DATE('2014-01-24 17:03:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Load Order',0,TO_DATE('2014-01-24 17:03:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 24, 2014 5:03:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71363 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 24, 2014 5:03:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71363,72205,0,53673,TO_DATE('2014-01-24 17:03:53','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Load Order',TO_DATE('2014-01-24 17:03:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 5:03:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72205 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 24, 2014 5:03:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71362,72206,0,53673,TO_DATE('2014-01-24 17:03:55','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Record Weight',TO_DATE('2014-01-24 17:03:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 5:03:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72206 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 24, 2014 5:04:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2014-01-24 17:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72205
;

-- Jan 24, 2014 5:04:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2014-01-24 17:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72206
;

-- Jan 24, 2014 5:04:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2014-01-24 17:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68551
;

-- Jan 24, 2014 5:04:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2014-01-24 17:04:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68552
;

-- Jan 24, 2014 5:04:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2014-01-24 17:04:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68553
;

-- Jan 24, 2014 5:04:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-24 17:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72205
;

-- Jan 24, 2014 5:05:10 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=72201
;

-- Jan 24, 2014 5:05:10 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=72201
;

-- Jan 24, 2014 5:05:22 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=71358
;

-- Jan 24, 2014 5:05:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71358
;

-- Jan 24, 2014 5:13:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52304,'C_DocType.DocBaseType=''SOO'' AND AD_Org_ID = @AD_OrgTrx_ID@',TO_DATE('2014-01-24 17:13:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_DocType SO and Org Transaction','S',TO_DATE('2014-01-24 17:13:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 5:13:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52304,Updated=TO_DATE('2014-01-24 17:13:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54431
;

-- Jan 24, 2014 5:14:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52304,Updated=TO_DATE('2014-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54434
;

-- Jan 24, 2014 5:22:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType=''SOO'' AND C_DocType.AD_Org_ID = @AD_OrgTrx_ID@',Updated=TO_DATE('2014-01-24 17:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52304
;

-- Jan 24, 2014 5:25:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@ = ''DBM'' & @OperationType@ = ''DFP'' & @OperationType@ = ''MOM'' & @OperationType@ = ''ORW'' & @DocStatus@ = ''CO''',Updated=TO_DATE('2014-01-24 17:25:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72203
;

-- Jan 24, 2014 5:25:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@ = ''DBM'' & @OperationType@ = ''DFP'' & @OperationType@ = ''MOM'' & @OperationType@ = ''ORW'' & @DocStatus@ = ''CO''',Updated=TO_DATE('2014-01-24 17:25:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72204
;

-- Jan 24, 2014 5:29:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='((@OperationType@ = ''DBM'' | @OperationType@ = ''DFP'' | @OperationType@ = ''MOM'' | @OperationType@ = ''ORW'') & @DocStatus@ = ''CO'')',Updated=TO_DATE('2014-01-24 17:29:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72204
;

-- Jan 24, 2014 5:30:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='((@OperationType@ = ''DBM'' | @OperationType@ = ''DFP'' | @OperationType@ = ''MOM'' | @OperationType@ = ''ORW'') & @DocStatus@ = ''CO'')',Updated=TO_DATE('2014-01-24 17:30:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72203
;

-- Jan 24, 2014 5:32:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@ = ''DBM'' | @OperationType@ = ''DFP'' | @OperationType@ = ''MOM'' | @OperationType@ = ''ORW'' & @DocStatus@ = ''CO''',Updated=TO_DATE('2014-01-24 17:32:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72203
;

-- Jan 24, 2014 5:33:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_DATE('2014-01-24 17:33:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54430
;

-- Jan 24, 2014 5:34:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType=''SOO'' AND C_DocType.AD_Org_ID = @AD_Org_ID@', Name='C_DocType SO and Organization',Updated=TO_DATE('2014-01-24 17:34:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52304
;

-- Jan 24, 2014 5:35:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@ = ''DBM'' | @OperationType@ = ''DFP'' | @OperationType@ = ''MOM'' | @OperationType@ = ''ORW'' & @DocStatus@ = ''CO''',Updated=TO_DATE('2014-01-24 17:35:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72204
;

-- Jan 24, 2014 5:40:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52305,'C_DocType.DocBaseType = ''FMG'' AND C_DocType.AD_Org_ID = @AD_Org_ID@ AND C_DocType.IsSOTrx =''Y''',TO_DATE('2014-01-24 17:40:54','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Movilization Guide','ECA02','Y','C_DocType FMG Movilization Guide of Context and Sales Transa','S',TO_DATE('2014-01-24 17:40:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 24, 2014 5:41:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52305,Updated=TO_DATE('2014-01-24 17:41:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54431
;

-- Jan 24, 2014 5:41:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52305,Updated=TO_DATE('2014-01-24 17:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54434
;

