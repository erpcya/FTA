-- Aug 29, 2013 3:33:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52187,'C_DocType.DocBaseType=''FFC''',TO_TIMESTAMP('2013-08-29 15:33:07','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Farmer Credit','ECA02','Y','C_DocType FFC Farmer Credit','S',TO_TIMESTAMP('2013-08-29 15:33:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2013 3:35:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN(''FFC'', ''FFL'')', Description='Document Type Farmer Credit and Loan', Name='C_DocType FFC Farmer Credit/Loan',Updated=TO_TIMESTAMP('2013-08-29 15:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52187
;

-- Aug 29, 2013 3:36:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52188,'C_DocType.DocBaseType = ''FET''',TO_TIMESTAMP('2013-08-29 15:36:33','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Entry Ticket','ECA02','Y','C_DocType FET Entry Ticket','S',TO_TIMESTAMP('2013-08-29 15:36:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2013 3:36:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='C_DocType FFC/FFL Farmer Credit/Loan',Updated=TO_TIMESTAMP('2013-08-29 15:36:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52187
;

-- Aug 29, 2013 3:41:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52189,'C_DocType.DocBaseType = ''FMG''',TO_TIMESTAMP('2013-08-29 15:41:09','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Movilization Guide','ECA02','Y','C_DocType FMG Movilization Guide','S',TO_TIMESTAMP('2013-08-29 15:41:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2013 3:42:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52190,'C_DocType.DocBaseType = ''FQA''',TO_TIMESTAMP('2013-08-29 15:42:03','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Quality Analysis','ECA02','Y','C_DocType FQA Quality Analysis','S',TO_TIMESTAMP('2013-08-29 15:42:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2013 3:42:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52191,'C_DocType.DocBaseType = ''FRL''',TO_TIMESTAMP('2013-08-29 15:42:30','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Raw Material Liquidation','ECA02','Y','C_DocType FRL Raw Material Liquidation','S',TO_TIMESTAMP('2013-08-29 15:42:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2013 3:42:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52192,'C_DocType.DocBaseType = ''FRW''',TO_TIMESTAMP('2013-08-29 15:42:56','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Raw Raw Material Weight','ECA02','Y','C_DocType FRW Raw Material Weight','S',TO_TIMESTAMP('2013-08-29 15:42:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2013 3:43:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52187,Updated=TO_TIMESTAMP('2013-08-29 15:43:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66659
;

-- Aug 29, 2013 3:44:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52191,Updated=TO_TIMESTAMP('2013-08-29 15:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67001
;

-- Aug 29, 2013 3:44:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52189,Updated=TO_TIMESTAMP('2013-08-29 15:44:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66322
;

-- Aug 29, 2013 3:45:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52190,Updated=TO_TIMESTAMP('2013-08-29 15:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66934
;

-- Aug 29, 2013 3:45:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52192, IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-29 15:45:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66922
;

-- Aug 29, 2013 3:46:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-29 15:46:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66881
;

-- Aug 29, 2013 3:46:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52188,Updated=TO_TIMESTAMP('2013-08-29 15:46:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66881
;

-- Aug 29, 2013 3:48:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54032,TO_TIMESTAMP('2013-08-29 15:48:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Technical Form',TO_TIMESTAMP('2013-08-29 15:48:12','YYYY-MM-DD HH24:MI:SS'),100,'FTF')
;

-- Aug 29, 2013 3:48:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54032 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 29, 2013 3:48:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Hoja Técnica',Description='Hoja Técnica de Seguimiento de Cultivo',Updated=TO_TIMESTAMP('2013-08-29 15:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54032 AND AD_Language='es_MX'
;

-- Aug 29, 2013 3:49:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52193,'C_DocType.DocBaseType = ''FTF''',TO_TIMESTAMP('2013-08-29 15:49:28','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Technical Form','ECA02','Y','C_DocType FTF Technical Form','S',TO_TIMESTAMP('2013-08-29 15:49:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2013 3:49:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52193,Updated=TO_TIMESTAMP('2013-08-29 15:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65831
;

-- Aug 29, 2013 4:02:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocBaseType@=''FFC''',Updated=TO_TIMESTAMP('2013-08-29 16:02:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Aug 29, 2013 4:06:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@#DocBaseType@=''FFC''',Updated=TO_TIMESTAMP('2013-08-29 16:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Aug 29, 2013 4:14:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@SQL=SELECT MAX(DocBaseType) FROM C_DocType WHERE C_DocType_ID=@C_DocType_ID@',Updated=TO_TIMESTAMP('2013-08-29 16:14:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Aug 29, 2013 4:28:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocBaseType@ = ''FFC''',Updated=TO_TIMESTAMP('2013-08-29 16:28:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Aug 29, 2013 4:37:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarmerCredit.docType',Updated=TO_TIMESTAMP('2013-08-29 16:37:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66659
;

-- Aug 29, 2013 4:37:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocBaseType@=''FFC''',Updated=TO_TIMESTAMP('2013-08-29 16:37:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Aug 29, 2013 4:40:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='DocBaseType=''FFC''',Updated=TO_TIMESTAMP('2013-08-29 16:40:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Aug 29, 2013 4:40:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocBaseType@=''FFC''',Updated=TO_TIMESTAMP('2013-08-29 16:40:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Aug 29, 2013 4:43:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocBaseType@=FFC',Updated=TO_TIMESTAMP('2013-08-29 16:43:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Aug 29, 2013 4:52:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET MandatoryLogic=NULL,Updated=TO_TIMESTAMP('2013-08-29 16:52:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66577
;

-- Aug 29, 2013 4:52:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocBaseType@=FFC',Updated=TO_TIMESTAMP('2013-08-29 16:52:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66657
;

-- Aug 29, 2013 5:05:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2013-08-29 17:05:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66657
;

-- Aug 29, 2013 5:10:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67107,351,0,20,53544,'IsApproved',TO_TIMESTAMP('2013-08-29 17:10:19','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval','ECA02',1,'The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Approved',0,TO_TIMESTAMP('2013-08-29 17:10:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 29, 2013 5:10:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67107 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 29, 2013 5:12:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56154,0,'IsCredit',TO_TIMESTAMP('2013-08-29 17:12:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Is Credit','Is Credit',TO_TIMESTAMP('2013-08-29 17:12:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2013 5:12:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56154 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 29, 2013 5:12:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Crédito',PrintName='Crédito',Description='Es Crédito',Updated=TO_TIMESTAMP('2013-08-29 17:12:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56154 AND AD_Language='es_MX'
;

-- Aug 29, 2013 5:14:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67108,56154,0,20,53544,'IsCredit',TO_TIMESTAMP('2013-08-29 17:14:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Is Credit',0,TO_TIMESTAMP('2013-08-29 17:14:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 29, 2013 5:14:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67108 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 29, 2013 5:14:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67107,68448,0,53721,TO_TIMESTAMP('2013-08-29 17:14:45','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval',1,'ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','Y','N','N','N','N','N','Approved',TO_TIMESTAMP('2013-08-29 17:14:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2013 5:14:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68448 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 29, 2013 5:14:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67108,68449,0,53721,TO_TIMESTAMP('2013-08-29 17:14:48','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Is Credit',TO_TIMESTAMP('2013-08-29 17:14:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2013 5:14:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68449 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68449
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68229
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68126
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68127
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68340
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68341
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68339
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68129
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=68130
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=68131
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68132
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=68128
;

-- Aug 29, 2013 5:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68448
;

-- Aug 29, 2013 5:18:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-29 17:18:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68449
;

-- Aug 29, 2013 5:18:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-29 17:18:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68448
;

-- Aug 29, 2013 5:20:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsCredit@!''Y''',Updated=TO_TIMESTAMP('2013-08-29 17:20:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68120
;

-- Aug 29, 2013 5:20:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsCredit@!''Y''',Updated=TO_TIMESTAMP('2013-08-29 17:20:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68341
;

-- Aug 29, 2013 5:20:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsCredit@!''Y''',Updated=TO_TIMESTAMP('2013-08-29 17:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68339
;

-- Aug 29, 2013 5:20:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsCredit@!''Y''',Updated=TO_TIMESTAMP('2013-08-29 17:20:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68340
;

-- Aug 29, 2013 5:22:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@IsCredit@!''Y''',Updated=TO_TIMESTAMP('2013-08-29 17:22:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Aug 29, 2013 5:23:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@IsCredit@!''Y''',Updated=TO_TIMESTAMP('2013-08-29 17:23:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66657
;

-- Aug 29, 2013 5:30:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@IsCredit@!Y',Updated=TO_TIMESTAMP('2013-08-29 17:30:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66657
;

-- Aug 29, 2013 5:30:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@IsCredit@=''Y''',Updated=TO_TIMESTAMP('2013-08-29 17:30:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66657
;

-- Aug 29, 2013 5:30:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@IsCredit@=''Y''',Updated=TO_TIMESTAMP('2013-08-29 17:30:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Aug 29, 2013 6:05:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=NULL, DefaultValue='@DocStatus@!''CO''',Updated=TO_TIMESTAMP('2013-08-29 18:05:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66935
;

-- Aug 29, 2013 6:07:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue=NULL, ReadOnlyLogic='@DocStatus@!''CO''',Updated=TO_TIMESTAMP('2013-08-29 18:07:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66935
;

-- Aug 29, 2013 6:14:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Table SET IsDeleteable='N',Updated=TO_TIMESTAMP('2013-08-29 18:14:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53544
;

-- Aug 29, 2013 6:14:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Table SET IsDeleteable='N',Updated=TO_TIMESTAMP('2013-08-29 18:14:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53549
;

