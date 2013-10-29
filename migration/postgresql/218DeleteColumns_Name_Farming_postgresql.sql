-- Oct 28, 2013 9:22:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56561,0,'ImportWeight',TO_TIMESTAMP('2013-10-28 09:22:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Import Weight','Import Weight',TO_TIMESTAMP('2013-10-28 09:22:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 9:22:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56561 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 28, 2013 9:22:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Peso de Importación',PrintName='Peso de Importación',Description='Peso de Importación del Documento',Updated=TO_TIMESTAMP('2013-10-28 09:22:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56561 AND AD_Language='es_MX'
;

-- Oct 28, 2013 9:23:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Peso de Importación',PrintName='Peso de Importación',Description='Peso de Importación del Documento',Updated=TO_TIMESTAMP('2013-10-28 09:23:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56561 AND AD_Language='es_VE'
;

-- Oct 28, 2013 9:25:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69415,56561,0,29,53561,'ImportWeight',TO_TIMESTAMP('2013-10-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Import Weight',0,TO_TIMESTAMP('2013-10-28 09:25:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 28, 2013 9:25:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69415 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 28, 2013 9:26:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56562,0,'Selection Weight',TO_TIMESTAMP('2013-10-28 09:26:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Selection Weight','Selection Weight',TO_TIMESTAMP('2013-10-28 09:26:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 9:26:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56562 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 28, 2013 9:28:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Peso a Seleccionar',PrintName='Peso a Seleccionar',Description='Peso a Seleccionar',Updated=TO_TIMESTAMP('2013-10-28 09:28:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56562 AND AD_Language='es_MX'
;

-- Oct 28, 2013 9:28:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Peso a Seleccionar',PrintName='Peso a Seleccionar',Description='Peso a Seleccionar',Updated=TO_TIMESTAMP('2013-10-28 09:28:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56562 AND AD_Language='es_VE'
;

-- Oct 28, 2013 9:28:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='SelectionWeight',Updated=TO_TIMESTAMP('2013-10-28 09:28:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56562
;

-- Oct 28, 2013 9:28:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='SelectionWeight', Name='Selection Weight', Description=NULL, Help=NULL WHERE AD_Element_ID=56562
;

-- Oct 28, 2013 9:28:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='SelectionWeight', Name='Selection Weight', Description=NULL, Help=NULL, AD_Element_ID=56562 WHERE UPPER(ColumnName)='SELECTIONWEIGHT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 28, 2013 9:28:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='SelectionWeight', Name='Selection Weight', Description=NULL, Help=NULL WHERE AD_Element_ID=56562 AND IsCentrallyMaintained='Y'
;

-- Oct 28, 2013 9:29:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69416,56148,0,29,53561,'PayWeight',TO_TIMESTAMP('2013-10-28 09:29:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Pay Weight',0,TO_TIMESTAMP('2013-10-28 09:29:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 28, 2013 9:29:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69416 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 28, 2013 9:31:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53587,TO_TIMESTAMP('2013-10-28 09:31:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_RecordWeight Selection Weight',TO_TIMESTAMP('2013-10-28 09:31:43','YYYY-MM-DD HH24:MI:SS'),100,'L','L')
;

-- Oct 28, 2013 9:31:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53587 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Oct 28, 2013 9:32:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53587,54136,TO_TIMESTAMP('2013-10-28 09:32:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Payment Weight',TO_TIMESTAMP('2013-10-28 09:32:52','YYYY-MM-DD HH24:MI:SS'),100,'P')
;

-- Oct 28, 2013 9:32:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54136 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 28, 2013 9:33:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Peso a Pagar',Updated=TO_TIMESTAMP('2013-10-28 09:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54136 AND AD_Language='es_MX'
;

-- Oct 28, 2013 9:33:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Peso a Pagar',Updated=TO_TIMESTAMP('2013-10-28 09:33:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54136 AND AD_Language='es_VE'
;

-- Oct 28, 2013 9:33:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53587,54137,TO_TIMESTAMP('2013-10-28 09:33:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Import Weight',TO_TIMESTAMP('2013-10-28 09:33:49','YYYY-MM-DD HH24:MI:SS'),100,'I')
;

-- Oct 28, 2013 9:33:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54137 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 28, 2013 9:34:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Peso de Importación',Updated=TO_TIMESTAMP('2013-10-28 09:34:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54137 AND AD_Language='es_MX'
;

-- Oct 28, 2013 9:34:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Peso de Importación',Updated=TO_TIMESTAMP('2013-10-28 09:34:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54137 AND AD_Language='es_VE'
;

-- Oct 28, 2013 9:35:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69420,56562,0,17,53587,53561,'SelectionWeight',TO_TIMESTAMP('2013-10-28 09:35:27','YYYY-MM-DD HH24:MI:SS'),100,'P','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Selection Weight',0,TO_TIMESTAMP('2013-10-28 09:35:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 28, 2013 9:35:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69420 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 28, 2013 9:36:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69415,70142,0,53731,TO_TIMESTAMP('2013-10-28 09:35:58','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Import Weight',TO_TIMESTAMP('2013-10-28 09:35:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 9:36:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70142 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 28, 2013 9:36:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69416,70143,0,53731,TO_TIMESTAMP('2013-10-28 09:36:01','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Pay Weight',TO_TIMESTAMP('2013-10-28 09:36:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 9:36:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70143 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 28, 2013 9:36:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69420,70144,0,53731,TO_TIMESTAMP('2013-10-28 09:36:02','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Selection Weight',TO_TIMESTAMP('2013-10-28 09:36:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 9:36:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70144 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68324
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68337
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68334
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68327
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68325
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=68329
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=70143
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=70142
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=70144
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68321
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68318
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=68330
;

-- Oct 28, 2013 9:39:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=68346
;

-- Oct 28, 2013 9:39:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-10-28 09:39:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70143
;

-- Oct 28, 2013 9:39:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-28 09:39:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70142
;

-- Oct 28, 2013 9:40:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,50039,0,TO_TIMESTAMP('2013-10-28 09:40:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','C','Y','Y','Liquidation',TO_TIMESTAMP('2013-10-28 09:40:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 9:40:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=50039 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- Oct 28, 2013 9:40:55 AM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup_Trl SET Name='Liquidación',Updated=TO_TIMESTAMP('2013-10-28 09:40:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50039 AND AD_Language='es_MX'
;

-- Oct 28, 2013 9:41:01 AM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup_Trl SET Name='Liquidación',Updated=TO_TIMESTAMP('2013-10-28 09:41:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50039 AND AD_Language='es_VE'
;

-- Oct 28, 2013 9:42:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50039,Updated=TO_TIMESTAMP('2013-10-28 09:42:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70143
;

-- Oct 28, 2013 10:18:37 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68153
;

-- Oct 28, 2013 10:18:37 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68153
;

-- Oct 28, 2013 10:20:12 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=69790
;

-- Oct 28, 2013 10:20:12 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=69790
;
-- Oct 28, 2013 11:20:28 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68176
;
-- Oct 28, 2013 11:25:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Display=65865,Updated=TO_TIMESTAMP('2013-10-28 11:25:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53536
;

-- Oct 28, 2013 11:26:14 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=65857
;

-- Oct 28, 2013 11:26:14 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=65857
;

-- Oct 28, 2013 11:28:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET Name='FTA_InterestType Reference',Updated=TO_TIMESTAMP('2013-10-28 11:28:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53581
;

-- Oct 28, 2013 11:28:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53581
;

-- Oct 28, 2013 11:28:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET Name='FTA_InterestType Reference',Updated=TO_TIMESTAMP('2013-10-28 11:28:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53581 AND AD_Language='es_MX'
;

-- Oct 28, 2013 11:37:42 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68176
;

-- Oct 28, 2013 11:37:42 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68176
;

-- Oct 28, 2013 11:40:17 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=65857
;

-- Oct 28, 2013 11:40:17 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=65857
;

-- Oct 28, 2013 11:43:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2013-10-28 11:43:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65863
;

-- Oct 28, 2013 11:44:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET SeqNo=3,Updated=TO_TIMESTAMP('2013-10-28 11:44:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65865
;

-- Oct 28, 2013 11:45:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_TIMESTAMP('2013-10-28 11:45:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65864
;

