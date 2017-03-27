-- Aug 24, 2013 1:59:41 PM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Name='Ticket de Entrada',Updated=TO_TIMESTAMP('2013-08-24 13:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53262 AND AD_Language='es_VE'
;

-- Aug 24, 2013 1:59:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Name='Ticket de Entrada',Updated=TO_TIMESTAMP('2013-08-24 13:59:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53729 AND AD_Language='es_VE'
;

-- Aug 24, 2013 1:59:57 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=68292
;

-- Aug 24, 2013 2:01:30 PM VET
-- SFAndroid Contribution
UPDATE AD_Table_Trl SET Name='Ticket de Entrada',Updated=TO_TIMESTAMP('2013-08-24 14:01:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53559 AND AD_Language='es_VE'
;

-- Aug 24, 2013 2:01:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Ticket de Entrada',PrintName='Ticket de Entrada',Updated=TO_TIMESTAMP('2013-08-24 14:01:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56129 AND AD_Language='es_VE'
;

-- Aug 24, 2013 2:02:30 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Control de Materiales (Entrada / Salida)',Description='Contiene todo el Proceso de Entrada y/o Salida de Material',Updated=TO_TIMESTAMP('2013-08-24 14:02:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53600 AND AD_Language='es_VE'
;

-- Aug 24, 2013 2:02:36 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53602, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Aug 24, 2013 2:02:36 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53602, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53599
;

-- Aug 24, 2013 2:02:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Aug 24, 2013 2:02:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Aug 24, 2013 2:02:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Aug 24, 2013 2:16:11 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Categoría',PrintName='Categoría',Updated=TO_TIMESTAMP('2013-08-24 14:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=52017 AND AD_Language='es_VE'
;

-- Aug 24, 2013 2:19:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56142,0,'Category_ID',TO_TIMESTAMP('2013-08-24 14:19:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Category','Category',TO_TIMESTAMP('2013-08-24 14:19:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 24, 2013 2:19:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56142 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 24, 2013 2:20:20 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Rubro',PrintName='Rubro ó Categoría',Updated=TO_TIMESTAMP('2013-08-24 14:20:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56142 AND AD_Language='es_VE'
;

-- Aug 24, 2013 2:20:34 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Element_ID=56142, ColumnName='Category_ID', Description=NULL, Help=NULL, Name='Category',Updated=TO_TIMESTAMP('2013-08-24 14:20:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65932
;

-- Aug 24, 2013 2:20:34 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET Name='Category', Description=NULL, Help=NULL WHERE AD_Column_ID=65932 AND IsCentrallyMaintained='Y'
;

-- Aug 24, 2013 2:24:20 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Element_ID=56142, ColumnName='Category_ID', Description=NULL, Help=NULL, Name='Category',Updated=TO_TIMESTAMP('2013-08-24 14:24:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65863
;

-- Aug 24, 2013 2:24:20 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET Name='Category', Description=NULL, Help=NULL WHERE AD_Column_ID=65863 AND IsCentrallyMaintained='Y'
;

-- Aug 24, 2013 2:24:43 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Element_ID=56142, ColumnName='Category_ID', Description=NULL, Help=NULL, Name='Category',Updated=TO_TIMESTAMP('2013-08-24 14:24:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65914
;

-- Aug 24, 2013 2:24:43 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET Name='Category', Description=NULL, Help=NULL WHERE AD_Column_ID=65914 AND IsCentrallyMaintained='Y'
;

-- Aug 24, 2013 2:26:31 PM VET
-- SFAndroid Contribution
UPDATE AD_Val_Rule SET Code='FTA_FarmingStage.Category_ID IN (SELECT f.Category_ID FROM FTA_Farmin f WHERE f.FTA_Farmin_ID = @FTA_Farming_ID@)',Updated=TO_TIMESTAMP('2013-08-24 14:26:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52184
;

-- Aug 24, 2013 2:28:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66937,215,0,19,53544,'C_UOM_ID',TO_TIMESTAMP('2013-08-24 14:28:36','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','ECA02',10,'The UOM defines a unique non monetary Unit of Measure','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','UOM',0,TO_TIMESTAMP('2013-08-24 14:28:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 24, 2013 2:28:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66937 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 24, 2013 2:29:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66937,68341,0,53721,TO_TIMESTAMP('2013-08-24 14:29:03','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure',10,'ECA02','The UOM defines a unique non monetary Unit of Measure','Y','Y','Y','N','N','N','N','N','UOM',TO_TIMESTAMP('2013-08-24 14:29:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 24, 2013 2:29:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68341 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 24, 2013 2:40:32 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52185,'FTA_FarmingStage.Category_ID = @Category_ID@',TO_TIMESTAMP('2013-08-24 14:40:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_FarmingStage Only from Category_ID','S',TO_TIMESTAMP('2013-08-24 14:40:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 24, 2013 2:40:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Val_Rule_ID=52185,Updated=TO_TIMESTAMP('2013-08-24 14:40:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65931
;

-- Aug 24, 2013 2:42:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=171,Updated=TO_TIMESTAMP('2013-08-24 14:42:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65932
;

-- Aug 24, 2013 2:56:59 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66938,469,0,10,53513,'Name',TO_TIMESTAMP('2013-08-24 14:56:56','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','N','N','N','Y','N','Y','N','Y','N','N','Y','Name',0,TO_TIMESTAMP('2013-08-24 14:56:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 24, 2013 2:56:59 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66938 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 24, 2013 2:57:12 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66938,68342,0,53674,TO_TIMESTAMP('2013-08-24 14:57:11','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2013-08-24 14:57:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 24, 2013 2:57:12 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68342 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68342
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000000
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67357
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67349
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67353
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67352
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67346
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67347
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67354
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67348
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67355
;

-- Aug 24, 2013 2:57:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=67344
;

-- Aug 24, 2013 2:59:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66939,230,0,14,53513,'Comments',TO_TIMESTAMP('2013-08-24 14:59:35','YYYY-MM-DD HH24:MI:SS'),100,'Comments or additional information','ECA02',255,'The Comments field allows for free form entry of additional information.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Comments',0,TO_TIMESTAMP('2013-08-24 14:59:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 24, 2013 2:59:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66939 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 24, 2013 2:59:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66939,68343,0,53674,TO_TIMESTAMP('2013-08-24 14:59:50','YYYY-MM-DD HH24:MI:SS'),100,'Comments or additional information',255,'ECA02','The Comments field allows for free form entry of additional information.','Y','Y','Y','N','N','N','N','N','Comments',TO_TIMESTAMP('2013-08-24 14:59:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 24, 2013 2:59:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68343 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 24, 2013 3:00:00 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68343
;

-- Aug 24, 2013 3:03:52 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=68342
;

-- Aug 24, 2013 3:03:52 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68343
;

-- Aug 24, 2013 3:03:52 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67357
;

-- Aug 24, 2013 3:03:52 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67349
;

-- Aug 24, 2013 3:03:52 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67350
;

-- Aug 24, 2013 3:04:00 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67344
;

-- Aug 24, 2013 3:04:00 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67352
;

-- Aug 24, 2013 3:04:00 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67346
;

-- Aug 24, 2013 3:04:00 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67347
;

-- Aug 24, 2013 3:04:00 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67354
;

-- Aug 24, 2013 3:04:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67348
;

-- Aug 24, 2013 3:04:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=67355
;

-- Aug 24, 2013 3:05:21 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67344
;

-- Aug 24, 2013 3:05:21 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67353
;

-- Aug 24, 2013 3:06:09 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET OrderByClause='SeqNo',Updated=TO_TIMESTAMP('2013-08-24 15:06:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53674
;

-- Aug 24, 2013 3:07:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67344
;

-- Aug 24, 2013 3:07:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67357
;

-- Aug 24, 2013 3:07:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67349
;

-- Aug 24, 2013 3:07:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67350
;

-- Aug 24, 2013 3:07:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67355
;

-- Aug 24, 2013 3:07:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67352
;

-- Aug 24, 2013 3:07:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67346
;

-- Aug 24, 2013 3:07:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67347
;

-- Aug 24, 2013 3:07:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67354
;

-- Aug 24, 2013 3:07:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=67348
;

-- Aug 24, 2013 3:07:32 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67355
;

-- Aug 24, 2013 3:07:32 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67353
;

-- Aug 24, 2013 3:07:38 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-24 15:07:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67355
;

-- Aug 24, 2013 3:08:31 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67346
;

-- Aug 24, 2013 3:08:31 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67347
;

-- Aug 24, 2013 3:08:31 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67350
;

-- Aug 24, 2013 3:08:31 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67355
;

-- Aug 24, 2013 3:08:31 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67353
;

-- Aug 24, 2013 3:08:31 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67352
;

-- Aug 24, 2013 3:09:34 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET IsSingleRow='Y',Updated=TO_TIMESTAMP('2013-08-24 15:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53674
;

-- Aug 24, 2013 3:10:29 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET AD_FieldGroup_ID=50031,Updated=TO_TIMESTAMP('2013-08-24 15:10:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67353
;

-- Aug 24, 2013 3:17:12 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66940,540,0,10,53559,'ReferenceNo',TO_TIMESTAMP('2013-08-24 15:17:06','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site','ECA02',60,'The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Reference No',0,TO_TIMESTAMP('2013-08-24 15:17:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 24, 2013 3:17:12 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66940 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 24, 2013 3:17:19 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-08-24 15:17:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66940
;

-- Aug 24, 2013 3:17:45 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2013-08-24 15:17:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66883
;

-- Aug 24, 2013 3:18:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66940,68344,0,53729,TO_TIMESTAMP('2013-08-24 15:17:57','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site',60,'ECA02','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','Y','Y','N','N','N','N','N','Reference No',TO_TIMESTAMP('2013-08-24 15:17:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 24, 2013 3:18:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68344 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 24, 2013 3:18:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68344
;

-- Aug 24, 2013 3:18:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68284
;

-- Aug 24, 2013 3:18:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68288
;

-- Aug 24, 2013 3:18:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68285
;

-- Aug 24, 2013 3:18:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68295
;

-- Aug 24, 2013 3:18:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68296
;

-- Aug 24, 2013 3:18:24 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-24 15:18:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68344
;

-- Aug 24, 2013 3:18:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2013-08-24 15:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66940
;

-- Aug 24, 2013 3:21:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-24 15:21:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68282
;

-- Aug 24, 2013 3:23:58 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52186,'M_Lot.M_Product_ID = @Categry_ID@',TO_TIMESTAMP('2013-08-24 15:23:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Lot of Product','S',TO_TIMESTAMP('2013-08-24 15:23:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 24, 2013 3:24:12 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Val_Rule_ID=52186,Updated=TO_TIMESTAMP('2013-08-24 15:24:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65864
;

-- Aug 24, 2013 3:26:21 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_Value_ID=162,Updated=TO_TIMESTAMP('2013-08-24 15:26:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65932
;

-- Aug 24, 2013 3:27:09 PM VET
-- SFAndroid Contribution
UPDATE AD_Val_Rule SET Code='M_Lot.M_Product_ID = @Category_ID@',Updated=TO_TIMESTAMP('2013-08-24 15:27:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52186
;

-- Aug 24, 2013 3:27:52 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2013-08-24 15:27:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65864
;

-- Aug 24, 2013 3:28:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68179
;

-- Aug 24, 2013 3:28:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68180
;

-- Aug 24, 2013 3:28:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68178
;

-- Aug 24, 2013 3:29:23 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Val_Rule_ID=52186,Updated=TO_TIMESTAMP('2013-08-24 15:29:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65864
;

-- Aug 24, 2013 3:29:38 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68178
;

-- Aug 24, 2013 3:29:38 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68179
;

-- Aug 24, 2013 3:29:38 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68180
;

-- Aug 24, 2013 3:32:02 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53531,TO_TIMESTAMP('2013-08-24 15:32:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','Planting Status ',TO_TIMESTAMP('2013-08-24 15:32:01','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- Aug 24, 2013 3:32:02 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53531 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Aug 24, 2013 3:32:28 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53531,54015,TO_TIMESTAMP('2013-08-24 15:32:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Active',TO_TIMESTAMP('2013-08-24 15:32:28','YYYY-MM-DD HH24:MI:SS'),100,'A')
;

-- Aug 24, 2013 3:32:28 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54015 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 24, 2013 3:32:40 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53531,54016,TO_TIMESTAMP('2013-08-24 15:32:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','d',TO_TIMESTAMP('2013-08-24 15:32:39','YYYY-MM-DD HH24:MI:SS'),100,'10000000')
;

-- Aug 24, 2013 3:32:40 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54016 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 24, 2013 3:32:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List_Trl SET Name='Activo',Updated=TO_TIMESTAMP('2013-08-24 15:32:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54015 AND AD_Language='es_VE'
;

-- Aug 24, 2013 3:33:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List SET Name='Harvesting', Value='H',Updated=TO_TIMESTAMP('2013-08-24 15:33:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54016
;

-- Aug 24, 2013 3:33:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54016
;

-- Aug 24, 2013 3:34:05 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53531,54017,TO_TIMESTAMP('2013-08-24 15:34:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Damaged',TO_TIMESTAMP('2013-08-24 15:34:05','YYYY-MM-DD HH24:MI:SS'),100,'D')
;

-- Aug 24, 2013 3:34:05 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54017 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 24, 2013 3:34:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List_Trl SET Name='Cosechado',Updated=TO_TIMESTAMP('2013-08-24 15:34:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54016 AND AD_Language='es_VE'
;

-- Aug 24, 2013 3:34:22 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List_Trl SET Name='Dañado',Updated=TO_TIMESTAMP('2013-08-24 15:34:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54017 AND AD_Language='es_VE'
;

-- Aug 24, 2013 3:34:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66941,3020,0,28,53531,53509,'Status',TO_TIMESTAMP('2013-08-24 15:34:35','YYYY-MM-DD HH24:MI:SS'),100,'Status of the currently running check','U',1,'Status of the currently running check','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Status',0,TO_TIMESTAMP('2013-08-24 15:34:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 24, 2013 3:34:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66941 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 24, 2013 3:34:52 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66941,68345,0,53725,TO_TIMESTAMP('2013-08-24 15:34:51','YYYY-MM-DD HH24:MI:SS'),100,'Status of the currently running check',1,'U','Status of the currently running check','Y','Y','Y','N','N','N','N','N','Status',TO_TIMESTAMP('2013-08-24 15:34:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 24, 2013 3:34:52 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68345 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68193
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68179
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68180
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68181
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68182
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68183
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68184
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68185
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68186
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68187
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=68188
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=68189
;

-- Aug 24, 2013 3:35:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68190
;

-- Aug 24, 2013 3:35:02 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=68191
;

-- Aug 24, 2013 3:35:02 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68192
;

-- Aug 24, 2013 3:35:02 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68345
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68345
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68193
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68179
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68180
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68181
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68182
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68183
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68184
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68185
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68186
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=68187
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=68188
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68189
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=68190
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68191
;

-- Aug 24, 2013 3:35:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68192
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68179
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68180
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68181
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68182
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68183
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68184
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68185
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68186
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68187
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=68188
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=68189
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68190
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=68191
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68192
;

-- Aug 24, 2013 3:35:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68193
;

-- Aug 24, 2013 3:36:41 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-24 15:36:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68345
;

-- Aug 24, 2013 3:38:19 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET ReadOnlyLogic='A',Updated=TO_TIMESTAMP('2013-08-24 15:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66941
;

-- Aug 24, 2013 3:38:44 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET DefaultValue='A', ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2013-08-24 15:38:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66941
;

-- Aug 24, 2013 3:40:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-08-24 15:40:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66941
;

-- Aug 24, 2013 3:42:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66942,351,0,20,53560,'IsApproved',TO_TIMESTAMP('2013-08-24 15:42:42','YYYY-MM-DD HH24:MI:SS'),100,'''N''','Indicates if this document requires approval','ECA02',1,'The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Approved',0,TO_TIMESTAMP('2013-08-24 15:42:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 24, 2013 3:42:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66942 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 24, 2013 3:43:20 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66943,351,0,20,53561,'IsApproved',TO_TIMESTAMP('2013-08-24 15:43:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Indicates if this document requires approval','ECA02',1,'The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Approved',0,TO_TIMESTAMP('2013-08-24 15:43:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 24, 2013 3:43:20 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66943 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 24, 2013 3:43:32 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66943,68346,0,53731,TO_TIMESTAMP('2013-08-24 15:43:31','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval',1,'ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','Y','N','N','N','N','N','Approved',TO_TIMESTAMP('2013-08-24 15:43:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 24, 2013 3:43:32 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68346 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 24, 2013 3:44:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66942,68347,0,53730,TO_TIMESTAMP('2013-08-24 15:44:02','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval',1,'ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','Y','N','N','N','N','N','Approved',TO_TIMESTAMP('2013-08-24 15:44:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 24, 2013 3:44:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68347 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

