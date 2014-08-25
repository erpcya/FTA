-- 19/05/2014 04:46:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='C_DocTypeClosedAR_ID', Name='Document Type for Closed (AR Invoice)', PrintName='Document Type for Closed (AR Invoice)',Updated=TO_DATE('2014-05-19 16:46:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57158
;

-- 19/05/2014 04:46:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57158
;

-- 19/05/2014 04:46:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='C_DocTypeClosedAR_ID', Name='Document Type for Closed (AR Invoice)', Description=NULL, Help=NULL WHERE AD_Element_ID=57158
;

-- 19/05/2014 04:46:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='C_DocTypeClosedAR_ID', Name='Document Type for Closed (AR Invoice)', Description=NULL, Help=NULL, AD_Element_ID=57158 WHERE UPPER(ColumnName)='C_DOCTYPECLOSEDAR_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/05/2014 04:46:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='C_DocTypeClosedAR_ID', Name='Document Type for Closed (AR Invoice)', Description=NULL, Help=NULL WHERE AD_Element_ID=57158 AND IsCentrallyMaintained='Y'
;

-- 19/05/2014 04:46:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Document Type for Closed (AR Invoice)', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57158) AND IsCentrallyMaintained='Y'
;

-- 19/05/2014 04:46:02 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Document Type for Closed (AR Invoice)', Name='Document Type for Closed (AR Invoice)' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57158)
;

-- 19/05/2014 04:46:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Para el Cierre (Documentos CXC)',PrintName='Tipo de Documento Para el Cierre (Documentos CXC)',Updated=TO_DATE('2014-05-19 16:46:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57158 AND AD_Language='es_MX'
;

-- 19/05/2014 04:46:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Para el Cierre (Documentos CXC)',PrintName='Tipo de Documento Para el Cierre (Documentos CXC)',Updated=TO_DATE('2014-05-19 16:46:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57158 AND AD_Language='es_VE'
;

-- 19/05/2014 05:49:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57159,0,'C_DocTypeClosedAP_ID',TO_DATE('2014-05-19 17:49:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Document Type for Closed (AP Invoice)','Document Type for Closed (AP Invoice)',TO_DATE('2014-05-19 17:49:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/05/2014 05:49:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57159 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 19/05/2014 05:49:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Para el Cierre (Documentos CXP)',PrintName='Tipo de Documento Para el Cierre (Documentos CXP)',Updated=TO_DATE('2014-05-19 17:49:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57159 AND AD_Language='es_MX'
;

-- 19/05/2014 05:49:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Para el Cierre (Documentos CXP)',PrintName='Tipo de Documento Para el Cierre (Documentos CXP)',Updated=TO_DATE('2014-05-19 17:49:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57159 AND AD_Language='es_VE'
;

-- 19/05/2014 05:52:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72915,57159,0,18,170,53549,52225,'C_DocTypeClosedAP_ID',TO_DATE('2014-05-19 17:52:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Type for Closed (AP Invoice)',0,TO_DATE('2014-05-19 17:52:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 19/05/2014 05:52:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72915 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 19/05/2014 05:55:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72915,73435,0,53727,TO_DATE('2014-05-19 17:55:24','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Document Type for Closed (AP Invoice)',TO_DATE('2014-05-19 17:55:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/05/2014 05:55:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73435 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/05/2014 05:55:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-05-19 17:55:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73435
;

-- 19/05/2014 05:55:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-05-19 17:55:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68210
;

-- 19/05/2014 05:55:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-05-19 17:55:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68440
;

-- 19/05/2014 05:55:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2014-05-19 17:55:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68230
;

-- 19/05/2014 05:55:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2014-05-19 17:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68214
;

-- 19/05/2014 05:55:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2014-05-19 17:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68436
;

-- 19/05/2014 05:55:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2014-05-19 17:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68211
;

-- 19/05/2014 05:55:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2014-05-19 17:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72191
;

-- 19/05/2014 05:55:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2014-05-19 17:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68234
;

-- 19/05/2014 05:55:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2014-05-19 17:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68217
;

-- 19/05/2014 05:55:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2014-05-19 17:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68235
;

-- 19/05/2014 05:55:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2014-05-19 17:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68441
;

-- 19/05/2014 05:55:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2014-05-19 17:55:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68210
;

-- 19/05/2014 05:55:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-05-19 17:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73435
;

