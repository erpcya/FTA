-- 17/05/2014 01:26:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2014-05-17 13:26:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68925
;

-- 17/05/2014 01:41:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57157,0,'IsDocumentBased',TO_DATE('2014-05-17 13:41:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Is Document Based','Is Document Based',TO_DATE('2014-05-17 13:41:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2014 01:41:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57157 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/05/2014 01:42:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Giro Basado en Documentos',PrintName='Giro Basado en Documentos',Updated=TO_DATE('2014-05-17 13:42:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57157 AND AD_Language='es_MX'
;

-- 17/05/2014 01:43:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Giro Basado en Documentos',PrintName='Giro Basado en Documentos',Updated=TO_DATE('2014-05-17 13:43:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57157 AND AD_Language='es_VE'
;

-- 17/05/2014 01:46:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='IsBillOfExchangeDocBased', Name='Bill Of Exchange Document Based', PrintName='Bill Of Exchange Document Based',Updated=TO_DATE('2014-05-17 13:46:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57157
;

-- 17/05/2014 01:46:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57157
;

-- 17/05/2014 01:46:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='IsBillOfExchangeDocBased', Name='Bill Of Exchange Document Based', Description=NULL, Help=NULL WHERE AD_Element_ID=57157
;

-- 17/05/2014 01:46:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='IsBillOfExchangeDocBased', Name='Bill Of Exchange Document Based', Description=NULL, Help=NULL, AD_Element_ID=57157 WHERE UPPER(ColumnName)='ISBILLOFEXCHANGEDOCBASED' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 17/05/2014 01:46:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='IsBillOfExchangeDocBased', Name='Bill Of Exchange Document Based', Description=NULL, Help=NULL WHERE AD_Element_ID=57157 AND IsCentrallyMaintained='Y'
;

-- 17/05/2014 01:46:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Bill Of Exchange Document Based', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57157) AND IsCentrallyMaintained='Y'
;

-- 17/05/2014 01:46:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Bill Of Exchange Document Based', Name='Bill Of Exchange Document Based' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57157)
;

-- 17/05/2014 01:49:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57158,0,'C_DocTypeClosed_ID',TO_DATE('2014-05-17 13:49:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Document Type for Closed','Document Type for Closed',TO_DATE('2014-05-17 13:49:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2014 01:49:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57158 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/05/2014 01:49:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Para el Cierre',PrintName='Tipo de Documento Para el Cierre',Updated=TO_DATE('2014-05-17 13:49:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57158 AND AD_Language='es_MX'
;

-- 17/05/2014 01:50:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Para el Cierre',PrintName='Tipo de Documento Para el Cierre',Updated=TO_DATE('2014-05-17 13:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57158 AND AD_Language='es_VE'
;

-- 17/05/2014 01:55:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72911,57158,0,18,170,53549,52226,'C_DocTypeClosed_ID',TO_DATE('2014-05-17 13:55:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Type for Closed',0,TO_DATE('2014-05-17 13:55:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/05/2014 01:55:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72911 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/05/2014 01:56:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72911,73431,0,53727,TO_DATE('2014-05-17 13:56:31','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Document Type for Closed',TO_DATE('2014-05-17 13:56:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2014 01:56:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73431 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/05/2014 01:57:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-05-17 13:57:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73431
;

-- 17/05/2014 01:57:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-05-17 13:57:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68210
;

-- 17/05/2014 01:57:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-05-17 13:57:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68440
;

-- 17/05/2014 01:57:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-05-17 13:57:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68230
;

-- 17/05/2014 01:57:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2014-05-17 13:57:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68214
;

-- 17/05/2014 01:57:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2014-05-17 13:57:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68436
;

-- 17/05/2014 01:57:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2014-05-17 13:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68211
;

-- 17/05/2014 01:57:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2014-05-17 13:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72191
;

-- 17/05/2014 01:57:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2014-05-17 13:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68234
;

-- 17/05/2014 01:57:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2014-05-17 13:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68217
;

-- 17/05/2014 01:57:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2014-05-17 13:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68235
;

-- 17/05/2014 01:57:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2014-05-17 13:57:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68441
;

-- 17/05/2014 01:58:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-05-17 13:58:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68210
;

-- 17/05/2014 01:59:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72912,57157,0,20,53544,'IsBillOfExchangeDocBased',TO_DATE('2014-05-17 13:59:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Bill Of Exchange Document Based',0,TO_DATE('2014-05-17 13:59:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/05/2014 01:59:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72912 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/05/2014 01:59:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72912,73432,0,53721,TO_DATE('2014-05-17 13:59:47','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Bill Of Exchange Document Based',TO_DATE('2014-05-17 13:59:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2014 01:59:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73432 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/05/2014 02:00:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2014-05-17 14:00:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73432
;

-- 17/05/2014 02:00:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2014-05-17 14:00:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70043
;

-- 17/05/2014 02:00:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2014-05-17 14:00:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- 17/05/2014 02:00:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_DATE('2014-05-17 14:00:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68340
;

-- 17/05/2014 02:19:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2014-05-17 14:19:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72912
;

