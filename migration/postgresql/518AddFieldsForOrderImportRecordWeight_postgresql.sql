-- 6/02/2014 07:42:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57028,0,'LO_Doc_Type_Name',TO_TIMESTAMP('2014-02-06 19:42:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Load Order Document Type Name','Load Order Document Type Name',TO_TIMESTAMP('2014-02-06 19:42:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/02/2014 07:42:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57028 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 6/02/2014 07:43:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Nombre Tipo Doc. Orden de Carga',PrintName='Nombre Tipo Doc. Orden de Carga',Updated=TO_TIMESTAMP('2014-02-06 19:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57028 AND AD_Language='es_VE'
;

-- 6/02/2014 07:43:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Nombre Tipo Doc. Orden de Carga',PrintName='Nombre Tipo Doc. Orden de Carga',Updated=TO_TIMESTAMP('2014-02-06 19:43:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57028 AND AD_Language='es_VE'
;

-- 6/02/2014 07:47:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57029,0,'Order_Doc_Type_ID',TO_TIMESTAMP('2014-02-06 19:47:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Order Document Type','Order Document Type',TO_TIMESTAMP('2014-02-06 19:47:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/02/2014 07:47:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57029 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 6/02/2014 07:48:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Orden (Compra/Venta)',PrintName='Tipo de Documento Orden (Compra/Venta)',Updated=TO_TIMESTAMP('2014-02-06 19:48:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57029 AND AD_Language='es_VE'
;

-- 6/02/2014 07:48:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Orden (Compra/Venta)',PrintName='Tipo de Documento Orden (Compra/Venta)',Updated=TO_TIMESTAMP('2014-02-06 19:48:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57029 AND AD_Language='es_VE'
;

-- 6/02/2014 07:50:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57030,0,'Order_Doc_Type_Name',TO_TIMESTAMP('2014-02-06 19:49:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Order Document Type Name','Order Document Type Name',TO_TIMESTAMP('2014-02-06 19:49:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/02/2014 07:50:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57030 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 6/02/2014 07:50:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Nombre Tipo Doc. Orden (Compra/Venta)',PrintName='Nombre Tipo Doc. Orden (Compra/Venta)',Updated=TO_TIMESTAMP('2014-02-06 19:50:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57030 AND AD_Language='es_VE'
;

-- 6/02/2014 07:51:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Nombre Tipo Doc. Orden (Compra/Venta)',PrintName='Nombre Tipo Doc. Orden (Compra/Venta)',Updated=TO_TIMESTAMP('2014-02-06 19:51:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57030 AND AD_Language='es_VE'
;

-- 6/02/2014 07:51:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71530,57028,0,10,53627,'LO_Doc_Type_Name',TO_TIMESTAMP('2014-02-06 19:51:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','N','N','N','N','Y','N','N','Y','Load Order Document Type Name',0,TO_TIMESTAMP('2014-02-06 19:51:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 6/02/2014 07:51:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71530 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 6/02/2014 07:52:03 PM VET
-- Farming Technical Assistance
ALTER TABLE I_RecordWeight ADD COLUMN LO_Doc_Type_Name VARCHAR(60) DEFAULT NULL 
;

-- 6/02/2014 07:52:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71531,57030,0,10,53627,'Order_Doc_Type_Name',TO_TIMESTAMP('2014-02-06 19:52:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','N','N','N','N','Y','N','N','Y','Order Document Type Name',0,TO_TIMESTAMP('2014-02-06 19:52:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 6/02/2014 07:52:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71531 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 6/02/2014 07:52:29 PM VET
-- Farming Technical Assistance
ALTER TABLE I_RecordWeight ADD COLUMN Order_Doc_Type_Name VARCHAR(60) DEFAULT NULL 
;

-- 6/02/2014 07:54:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71532,57029,0,18,170,53627,172,'Order_Doc_Type_ID',TO_TIMESTAMP('2014-02-06 19:54:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Order Document Type',0,TO_TIMESTAMP('2014-02-06 19:54:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 6/02/2014 07:54:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71532 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 6/02/2014 07:54:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71530,72277,0,53782,TO_TIMESTAMP('2014-02-06 19:54:53','YYYY-MM-DD HH24:MI:SS'),100,60,'ECA02','Y','Y','Y','N','N','N','N','N','Load Order Document Type Name',TO_TIMESTAMP('2014-02-06 19:54:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/02/2014 07:54:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72277 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 6/02/2014 07:54:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71532,72278,0,53782,TO_TIMESTAMP('2014-02-06 19:54:54','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Order Document Type',TO_TIMESTAMP('2014-02-06 19:54:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/02/2014 07:54:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72278 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 6/02/2014 07:54:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71531,72279,0,53782,TO_TIMESTAMP('2014-02-06 19:54:56','YYYY-MM-DD HH24:MI:SS'),100,60,'ECA02','Y','Y','Y','N','N','N','N','N','Order Document Type Name',TO_TIMESTAMP('2014-02-06 19:54:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/02/2014 07:54:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72279 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 6/02/2014 07:55:20 PM VET
-- Farming Technical Assistance
ALTER TABLE I_RecordWeight ADD COLUMN Order_Doc_Type_ID NUMERIC(10) DEFAULT NULL 
;

-- 6/02/2014 07:55:29 PM VET
-- Farming Technical Assistance
INSERT INTO t_alter_column values('i_recordweight','Order_Doc_Type_Name','VARCHAR(60)',null,'NULL')
;

-- 6/02/2014 07:58:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=580,Updated=TO_TIMESTAMP('2014-02-06 19:58:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72277
;

-- 6/02/2014 07:58:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=590,Updated=TO_TIMESTAMP('2014-02-06 19:58:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72233
;

-- 6/02/2014 07:58:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=600,Updated=TO_TIMESTAMP('2014-02-06 19:58:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72279
;

-- 6/02/2014 07:58:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=610,Updated=TO_TIMESTAMP('2014-02-06 19:58:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72278
;

-- 6/02/2014 07:59:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-02-06 19:59:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72233
;

-- 6/02/2014 07:59:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-02-06 19:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72278
;

-- 6/02/2014 07:59:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-02-06 19:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72237
;

-- 6/02/2014 07:59:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLength=20,Updated=TO_TIMESTAMP('2014-02-06 19:59:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72277
;

-- 6/02/2014 07:59:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLength=20,Updated=TO_TIMESTAMP('2014-02-06 19:59:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72279
;

-- 6/02/2014 08:03:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=810,Updated=TO_TIMESTAMP('2014-02-06 20:03:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69923
;

-- 6/02/2014 08:03:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=820,Updated=TO_TIMESTAMP('2014-02-06 20:03:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69957
;

-- 6/02/2014 08:03:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=810,Updated=TO_TIMESTAMP('2014-02-06 20:03:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69957
;

-- 6/02/2014 08:03:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=820,Updated=TO_TIMESTAMP('2014-02-06 20:03:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69923
;

-- 6/02/2014 08:04:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=810,Updated=TO_TIMESTAMP('2014-02-06 20:04:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69923
;

-- 6/02/2014 08:04:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=820,Updated=TO_TIMESTAMP('2014-02-06 20:04:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69957
;

-- 6/02/2014 08:04:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=810,Updated=TO_TIMESTAMP('2014-02-06 20:04:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69957
;

-- 6/02/2014 08:04:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=820,Updated=TO_TIMESTAMP('2014-02-06 20:04:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69923
;

