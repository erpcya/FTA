-- 3/11/2013 03:42:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='IsExceedCreditLimit', Name='Exceed Credit Limit', PrintName='Exceed Credit Limit',Updated=TO_TIMESTAMP('2013-11-03 15:42:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56571
;

-- 3/11/2013 03:42:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56571
;

-- 3/11/2013 03:42:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='IsExceedCreditLimit', Name='Exceed Credit Limit', Description=NULL, Help=NULL WHERE AD_Element_ID=56571
;

-- 3/11/2013 03:42:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='IsExceedCreditLimit', Name='Exceed Credit Limit', Description=NULL, Help=NULL, AD_Element_ID=56571 WHERE UPPER(ColumnName)='ISEXCEEDCREDITLIMIT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 3/11/2013 03:42:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='IsExceedCreditLimit', Name='Exceed Credit Limit', Description=NULL, Help=NULL WHERE AD_Element_ID=56571 AND IsCentrallyMaintained='Y'
;

-- 3/11/2013 03:42:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Exceed Credit Limit', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56571) AND IsCentrallyMaintained='Y'
;

-- 3/11/2013 03:42:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Exceed Credit Limit', Name='Exceed Credit Limit' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56571)
;

-- 3/11/2013 03:43:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Excede Límite de Crédito',PrintName='Excede Límite de Crédito',Updated=TO_TIMESTAMP('2013-11-03 15:43:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56571 AND AD_Language='es_VE'
;

-- 3/11/2013 03:43:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Excede Límite de Crédito',PrintName='Excede Límite de Crédito',Updated=TO_TIMESTAMP('2013-11-03 15:43:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56571 AND AD_Language='es_VE'
;

-- 3/11/2013 04:09:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-11-03 16:09:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53418
;

-- 3/11/2013 04:09:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-11-03 16:09:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53428
;

-- 3/11/2013 04:09:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-11-03 16:09:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53415
;

-- 3/11/2013 04:10:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', IsIdentifier='Y',Updated=TO_TIMESTAMP('2013-11-03 16:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53415
;

-- 3/11/2013 04:10:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_TIMESTAMP('2013-11-03 16:10:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53414
;

-- 3/11/2013 05:39:28 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Message_Trl WHERE AD_Message_ID=53251
;

-- 3/11/2013 05:39:28 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Message WHERE AD_Message_ID=53251
;

-- 3/11/2013 05:59:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56589,0,'IsDistributionLine',TO_TIMESTAMP('2013-11-03 17:59:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Is Distribution Line','Is Distribution Line',TO_TIMESTAMP('2013-11-03 17:59:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 3/11/2013 05:59:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56589 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 3/11/2013 05:59:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Linea de Distribución',PrintName='Linea de Distribución',Updated=TO_TIMESTAMP('2013-11-03 17:59:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56589 AND AD_Language='es_VE'
;

-- 3/11/2013 06:00:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Linea de Distribución',PrintName='Linea de Distribución',Updated=TO_TIMESTAMP('2013-11-03 18:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56589 AND AD_Language='es_VE'
;

-- 3/11/2013 06:01:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET AD_Reference_ID=20, FieldLength=1,Updated=TO_TIMESTAMP('2013-11-03 18:01:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56589
;

-- 3/11/2013 06:02:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69804,56589,0,20,53550,'IsDistributionLine',TO_TIMESTAMP('2013-11-03 18:02:38','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Is Distribution Line',0,TO_TIMESTAMP('2013-11-03 18:02:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 3/11/2013 06:02:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69804 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 3/11/2013 06:04:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69804,70265,0,53728,TO_TIMESTAMP('2013-11-03 18:04:24','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Is Distribution Line',TO_TIMESTAMP('2013-11-03 18:04:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 3/11/2013 06:04:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70265 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 3/11/2013 06:06:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-11-03 18:06:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70265
;

-- 3/11/2013 06:06:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-11-03 18:06:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68442
;

-- 3/11/2013 06:06:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-11-03 18:06:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68218
;

-- 3/11/2013 06:06:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-11-03 18:06:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68236
;

