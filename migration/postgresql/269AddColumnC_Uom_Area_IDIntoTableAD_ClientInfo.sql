-- Nov 2, 2013 11:11:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56587,0,18,114,'C_UOM_Area_ID',TO_TIMESTAMP('2013-11-02 11:11:06','YYYY-MM-DD HH24:MI:SS'),100,'Standard Unit of Measure for Area','ECA02',22,'The Standard UOM for Area indicates the UOM to use for referenced by area in a document.','Y','UOM for Area','UOM for Area',TO_TIMESTAMP('2013-11-02 11:11:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 2, 2013 11:11:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56587 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Nov 2, 2013 11:18:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='UM para Área',PrintName='UM para Área',Description='Unidad de medida estándar para el Área',Help='La unidad de medida estándar para el Área indica la unidad de medida que se utilizará para referencia por área en un documento.',Updated=TO_TIMESTAMP('2013-11-02 11:18:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56587 AND AD_Language='es_VE'
;

-- Nov 2, 2013 11:18:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='UM para Área',PrintName='UM para Área',Updated=TO_TIMESTAMP('2013-11-02 11:18:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56587 AND AD_Language='es_VE'
;

-- Nov 2, 2013 11:18:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Description='Unidad de medida estándar para el Área',Updated=TO_TIMESTAMP('2013-11-02 11:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56587 AND AD_Language='es_VE'
;

-- Nov 2, 2013 11:19:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Help='La unidad de medida estándar para el Área indica la unidad de medida que se utilizará para referencia por área en un documento.',Updated=TO_TIMESTAMP('2013-11-02 11:19:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56587 AND AD_Language='es_VE'
;

-- Nov 2, 2013 11:19:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,Updated,UpdatedBy,Version) VALUES (0,69696,56587,0,18,114,227,'C_UOM_Area_ID',TO_TIMESTAMP('2013-11-02 11:19:41','YYYY-MM-DD HH24:MI:SS'),100,'Standard Unit of Measure for Area','ECA02',22,'The Standard UOM for Area indicates the UOM to use for referenced by area in a document.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','UOM for Area','@AD_Client_ID=0',TO_TIMESTAMP('2013-11-02 11:19:41','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Nov 2, 2013 11:19:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69696 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 2, 2013 11:20:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69696,70258,0,169,TO_TIMESTAMP('2013-11-02 11:20:17','YYYY-MM-DD HH24:MI:SS'),100,'Standard Unit of Measure for Area',22,'ECA02','The Standard UOM for Area indicates the UOM to use for referenced by area in a document.','Y','Y','Y','N','N','N','N','N','UOM for Area',TO_TIMESTAMP('2013-11-02 11:20:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 2, 2013 11:20:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70258 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Nov 2, 2013 11:22:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-11-02 11:22:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=910
;

-- Nov 2, 2013 11:22:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-11-02 11:22:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=911
;

-- Nov 2, 2013 11:22:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2013-11-02 11:22:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=904
;

-- Nov 2, 2013 11:22:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2013-11-02 11:22:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5346
;

-- Nov 2, 2013 11:22:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2013-11-02 11:22:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4727
;

-- Nov 2, 2013 11:22:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-11-02 11:22:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=905
;

-- Nov 2, 2013 11:22:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-11-02 11:22:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1309
;

-- Nov 2, 2013 11:22:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-11-02 11:22:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1310
;

-- Nov 2, 2013 11:22:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-11-02 11:22:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1311
;

-- Nov 2, 2013 11:22:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-11-02 11:22:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1312
;

-- Nov 2, 2013 11:22:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-11-02 11:22:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3052
;

-- Nov 2, 2013 11:22:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-11-02 11:22:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70258
;

-- Nov 2, 2013 11:22:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-11-02 11:22:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3054
;

-- Nov 2, 2013 11:22:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2013-11-02 11:22:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9201
;

-- Nov 2, 2013 11:22:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-11-02 11:22:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1564
;

-- Nov 2, 2013 11:22:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-11-02 11:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1563
;

-- Nov 2, 2013 11:22:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-11-02 11:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1562
;

-- Nov 2, 2013 11:22:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-11-02 11:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1565
;

-- Nov 2, 2013 11:22:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-11-02 11:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1566
;

-- Nov 2, 2013 11:22:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-11-02 11:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1567
;

-- Nov 2, 2013 11:22:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-11-02 11:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10319
;

-- Nov 2, 2013 11:22:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2013-11-02 11:22:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10320
;

-- Nov 2, 2013 11:22:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2013-11-02 11:22:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57531
;

-- Nov 2, 2013 11:22:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2013-11-02 11:22:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57534
;

-- Nov 2, 2013 11:22:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2013-11-02 11:22:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57535
;

-- Nov 2, 2013 11:22:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-11-02 11:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70258
;

-- Nov 2, 2013 11:30:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=11,Updated=TO_TIMESTAMP('2013-11-02 11:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54278
;

-- Nov 2, 2013 11:32:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69697,56587,0,18,114,53509,'C_UOM_Area_ID','(SELECT C_UOM_Area_ID FROM AD_ClientInfo WHERE AD_ClientInfo.AD_Client_ID = @#AD_Client_ID@)',TO_TIMESTAMP('2013-11-02 11:32:01','YYYY-MM-DD HH24:MI:SS'),100,'Standard Unit of Measure for Area','ECA02',22,'The Standard UOM for Area indicates the UOM to use for referenced by area in a document.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','UOM for Area',0,TO_TIMESTAMP('2013-11-02 11:32:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 2, 2013 11:32:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69697 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 2, 2013 11:32:23 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69697,70259,0,53725,TO_TIMESTAMP('2013-11-02 11:32:21','YYYY-MM-DD HH24:MI:SS'),100,'Standard Unit of Measure for Area',22,'ECA02','The Standard UOM for Area indicates the UOM to use for referenced by area in a document.','Y','Y','Y','N','N','N','N','N','UOM for Area',TO_TIMESTAMP('2013-11-02 11:32:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 2, 2013 11:32:23 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70259 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Nov 2, 2013 11:36:38 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=70259
;

-- Nov 2, 2013 11:36:38 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=70259
;

-- Nov 2, 2013 11:37:03 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=69697
;

-- Nov 2, 2013 11:37:03 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=69697
;

