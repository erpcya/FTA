-- Dec 11, 2013 9:00:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Load Order', PrintName='Load Order',Updated=TO_DATE('2013-12-11 09:00:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56599
;

-- Dec 11, 2013 9:00:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56599
;

-- Dec 11, 2013 9:00:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_LoadOrder_ID', Name='Load Order', Description=NULL, Help=NULL WHERE AD_Element_ID=56599
;

-- Dec 11, 2013 9:00:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_LoadOrder_ID', Name='Load Order', Description=NULL, Help=NULL, AD_Element_ID=56599 WHERE UPPER(ColumnName)='FTA_LOADORDER_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Dec 11, 2013 9:00:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_LoadOrder_ID', Name='Load Order', Description=NULL, Help=NULL WHERE AD_Element_ID=56599 AND IsCentrallyMaintained='Y'
;

-- Dec 11, 2013 9:00:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Load Order', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56599) AND IsCentrallyMaintained='Y'
;

-- Dec 11, 2013 9:00:10 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Load Order', Name='Load Order' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56599)
;

-- Dec 11, 2013 9:00:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Load Order Line', PrintName='Load Order Line',Updated=TO_DATE('2013-12-11 09:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56609
;

-- Dec 11, 2013 9:00:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56609
;

-- Dec 11, 2013 9:00:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_LoadOrderLine_ID', Name='Load Order Line', Description=NULL, Help=NULL WHERE AD_Element_ID=56609
;

-- Dec 11, 2013 9:00:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_LoadOrderLine_ID', Name='Load Order Line', Description=NULL, Help=NULL, AD_Element_ID=56609 WHERE UPPER(ColumnName)='FTA_LOADORDERLINE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Dec 11, 2013 9:00:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_LoadOrderLine_ID', Name='Load Order Line', Description=NULL, Help=NULL WHERE AD_Element_ID=56609 AND IsCentrallyMaintained='Y'
;

-- Dec 11, 2013 9:00:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Load Order Line', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56609) AND IsCentrallyMaintained='Y'
;

-- Dec 11, 2013 9:00:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Load Order Line', Name='Load Order Line' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56609)
;

-- Dec 11, 2013 9:01:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Orden de Carga',Updated=TO_DATE('2013-12-11 09:01:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54157 AND AD_Language='es_MX'
;

-- Dec 11, 2013 9:01:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Orden de Carga',Updated=TO_DATE('2013-12-11 09:01:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54157 AND AD_Language='es_VE'
;

-- Dec 11, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2013-12-11 09:05:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66883
;

-- Dec 11, 2013 9:13:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET FieldLength=3,Updated=TO_DATE('2013-12-11 09:13:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56607
;

-- Dec 11, 2013 9:14:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=3,Updated=TO_DATE('2013-12-11 09:14:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70628
;

-- Dec 11, 2013 9:15:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=3,Updated=TO_DATE('2013-12-11 09:15:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70629
;

-- Dec 11, 2013 9:15:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-12-11 09:15:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70627
;

-- Dec 11, 2013 9:31:35 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52273,'C_Order.DocStatus IN (''CO'',''CL'') AND C_Order.IsSOTrx = @IsSOTrx@',TO_DATE('2013-12-11 09:31:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Order SO or PO (Order Completed)','S',TO_DATE('2013-12-11 09:31:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 9:31:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52273,Updated=TO_DATE('2013-12-11 09:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70630
;

-- Dec 11, 2013 10:05:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_DATE('2013-12-11 10:05:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70628
;

-- Dec 11, 2013 10:05:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-12-11 10:05:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70628
;

-- Dec 11, 2013 10:49:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2013-12-11 10:49:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 10:49:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-12-11 10:49:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68298
;

-- Dec 11, 2013 10:49:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-12-11 10:49:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68309
;

-- Dec 11, 2013 10:49:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-12-11 10:49:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68311
;

-- Dec 11, 2013 10:50:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-11 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68300
;

-- Dec 11, 2013 10:50:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68310
;

-- Dec 11, 2013 10:50:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-11 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68297
;

-- Dec 11, 2013 10:50:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-12-11 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 10:50:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 10:50:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 10:51:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMR''',Updated=TO_DATE('2013-12-11 10:51:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 10:51:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2013-12-11 10:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 10:52:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory=NULL,Updated=TO_DATE('2013-12-11 10:52:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 10:53:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMR'' | @OperationType@=''PBR''',Updated=TO_DATE('2013-12-11 10:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 10:54:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMR'' | @OperationType@=''PBR'' | @OperationType@=''RMP''',Updated=TO_DATE('2013-12-11 10:54:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 10:55:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70644,56135,0,19,53560,'FTA_RecordWeight_ID',TO_DATE('2013-12-11 10:55:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Record Weight',0,TO_DATE('2013-12-11 10:55:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 11, 2013 10:55:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70644 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 11, 2013 10:55:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70644,71464,0,53730,TO_DATE('2013-12-11 10:55:12','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Record Weight',TO_DATE('2013-12-11 10:55:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 10:55:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71464 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 11, 2013 10:55:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-12-11 10:55:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71464
;

-- Dec 11, 2013 10:55:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-12-11 10:55:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68304
;

-- Dec 11, 2013 10:55:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-12-11 10:55:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68301
;

-- Dec 11, 2013 10:55:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-12-11 10:55:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68308
;

-- Dec 11, 2013 10:55:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-11 10:55:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68347
;

-- Dec 11, 2013 10:55:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-11 10:55:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70192
;

-- Dec 11, 2013 10:55:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-11 10:55:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70212
;

-- Dec 11, 2013 10:55:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMP''',Updated=TO_DATE('2013-12-11 10:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71464
;

-- Dec 11, 2013 10:55:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 10:55:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71464
;

-- Dec 11, 2013 11:00:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2013-12-11 11:00:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71464
;

-- Dec 11, 2013 11:01:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-12-11 11:01:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68311
;

-- Dec 11, 2013 11:01:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-12-11 11:01:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68300
;

-- Dec 11, 2013 11:01:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-11 11:01:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68310
;

-- Dec 11, 2013 11:01:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 11:01:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68297
;

-- Dec 11, 2013 11:01:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-11 11:01:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 11:01:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-12-11 11:01:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71464
;

-- Dec 11, 2013 11:01:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-12-11 11:01:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68309
;

-- Dec 11, 2013 11:02:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,50042,0,TO_DATE('2013-12-11 11:02:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','C','Y','N','Quality Analysis',TO_DATE('2013-12-11 11:02:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 11:02:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=50042 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- Dec 11, 2013 11:03:04 AM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup_Trl SET Name='Análisis de Calidad',Updated=TO_DATE('2013-12-11 11:03:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50042 AND AD_Language='es_MX'
;

-- Dec 11, 2013 11:03:10 AM VET
-- Farming Technical Assistance
UPDATE AD_FieldGroup_Trl SET Name='Análisis de Calidad',Updated=TO_DATE('2013-12-11 11:03:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50042 AND AD_Language='es_VE'
;

-- Dec 11, 2013 11:03:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50042,Updated=TO_DATE('2013-12-11 11:03:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68309
;

-- Dec 11, 2013 11:03:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-12-11 11:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68300
;

-- Dec 11, 2013 11:03:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-12-11 11:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68310
;

-- Dec 11, 2013 11:03:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-11 11:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68297
;

-- Dec 11, 2013 11:03:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 11:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 11:03:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-11 11:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71464
;

-- Dec 11, 2013 11:03:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-12-11 11:03:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68309
;

-- Dec 11, 2013 11:03:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-12-11 11:03:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68311
;

-- Dec 11, 2013 11:04:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-12-11 11:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68297
;

-- Dec 11, 2013 11:04:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-12-11 11:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71460
;

-- Dec 11, 2013 11:04:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-12-11 11:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68298
;

-- Dec 11, 2013 11:04:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-12-11 11:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68300
;

-- Dec 11, 2013 11:04:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-11 11:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 11:04:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 11:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71464
;

-- Dec 11, 2013 11:04:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-11 11:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68309
;

-- Dec 11, 2013 11:04:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-12-11 11:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68311
;

-- Dec 11, 2013 11:04:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-12-11 11:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68310
;

-- Dec 11, 2013 11:05:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 11:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71460
;

-- Dec 11, 2013 11:06:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 11:06:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68310
;

-- Dec 11, 2013 11:06:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 11:06:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68297
;

-- Dec 11, 2013 11:07:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2013-12-11 11:07:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68309
;

-- Dec 11, 2013 11:09:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@OperationType@=''RMR''',Updated=TO_DATE('2013-12-11 11:09:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66902
;

-- Dec 11, 2013 11:10:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@OperationType@=''RMR'' | @OperationType@=''PBR''',Updated=TO_DATE('2013-12-11 11:10:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66902
;

-- Dec 11, 2013 11:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52274,'AD_Ref_List.Value IN (''RMR'',''PBR'',''RMP'',)',TO_DATE('2013-12-11 11:14:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_OperationType In Quality Analysis','S',TO_DATE('2013-12-11 11:14:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 11:14:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Reference_ID=17, AD_Reference_Value_ID=53597, AD_Val_Rule_ID=52274,Updated=TO_DATE('2013-12-11 11:14:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71460
;

-- Dec 11, 2013 11:15:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='AD_Ref_List.Value IN (''RMR'',''PBR'',''RMP'',''DBM'')',Updated=TO_DATE('2013-12-11 11:15:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52274
;

-- Dec 11, 2013 11:16:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2013-12-11 11:16:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68309
;

-- Dec 11, 2013 11:23:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMR'' | @OperationType@=''PBR'' | @OperationType@=''RMP'' | @OperationType@=''DBM''',Updated=TO_DATE('2013-12-11 11:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 11:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@OperationType@=''RMR'' | @OperationType@=''PBR'' | @OperationType@=''DBM''',Updated=TO_DATE('2013-12-11 11:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66902
;

-- Dec 11, 2013 11:26:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52275,NULL,TO_DATE('2013-12-11 11:26:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Product Quality Analysis','S',TO_DATE('2013-12-11 11:26:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 11:26:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Reference_ID=30, AD_Val_Rule_ID=52275,Updated=TO_DATE('2013-12-11 11:26:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68309
;

-- Dec 11, 2013 11:29:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMP'' | @OperationType@=''DBM''',Updated=TO_DATE('2013-12-11 11:29:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71464
;

-- Dec 11, 2013 11:32:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@OperationType@=''RMR'' | @OperationType@=''PBR'' | @OperationType@=''DBM'' | @FTA_RecordWeight_ID@=0 | @FTA_EntryTicket_ID@=0',Updated=TO_DATE('2013-12-11 11:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66902
;

-- Dec 11, 2013 11:34:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70628,71465,0,53742,TO_DATE('2013-12-11 11:34:31','YYYY-MM-DD HH24:MI:SS'),100,3,'ECA02','Y','Y','Y','N','N','N','N','N','Operation Type',TO_DATE('2013-12-11 11:34:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 11:34:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71465 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 11, 2013 11:34:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70644,71466,0,53742,TO_DATE('2013-12-11 11:34:34','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Record Weight',TO_DATE('2013-12-11 11:34:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 11:34:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71466 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 11, 2013 11:36:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-12-11 11:36:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68741
;

-- Dec 11, 2013 11:36:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-12-11 11:36:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71465
;

-- Dec 11, 2013 11:36:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-12-11 11:36:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68736
;

-- Dec 11, 2013 11:36:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-12-11 11:36:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68739
;

-- Dec 11, 2013 11:36:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-11 11:36:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68735
;

-- Dec 11, 2013 11:36:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 11:36:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71466
;

-- Dec 11, 2013 11:36:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-11 11:36:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68737
;

-- Dec 11, 2013 11:36:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-12-11 11:36:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68738
;

-- Dec 11, 2013 11:36:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-12-11 11:36:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68740
;

-- Dec 11, 2013 11:36:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-12-11 11:36:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68742
;

-- Dec 11, 2013 11:36:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-12-11 11:36:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68743
;

-- Dec 11, 2013 11:36:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-12-11 11:36:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68744
;

-- Dec 11, 2013 11:36:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-11 11:36:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68745
;

-- Dec 11, 2013 11:36:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-11 11:36:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70213
;

-- Dec 11, 2013 11:36:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-11 11:36:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70214
;

-- Dec 11, 2013 11:37:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 11:37:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68741
;

-- Dec 11, 2013 11:37:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Reference_ID=17, AD_Reference_Value_ID=53597, AD_Val_Rule_ID=52274, IsSameLine='Y',Updated=TO_DATE('2013-12-11 11:37:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71465
;

-- Dec 11, 2013 11:38:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=104, DisplayLogic='@OperationType@=''RMR'' | @OperationType@=''PBR'' | @OperationType@=''RMP'' | @OperationType@=''DBM''',Updated=TO_DATE('2013-12-11 11:38:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68735
;

-- Dec 11, 2013 11:38:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMP'' | @OperationType@=''DBM''', IsMandatory='Y',Updated=TO_DATE('2013-12-11 11:38:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71466
;

-- Dec 11, 2013 11:39:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Reference_ID=30, AD_Val_Rule_ID=52275, IsMandatory='Y',Updated=TO_DATE('2013-12-11 11:39:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68737
;

-- Dec 11, 2013 11:42:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 11:42:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68740
;

-- Dec 11, 2013 11:43:18 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52276,'AD_Ref_List.Value IN (''RMR'',''PBR'','';MIM'')',TO_DATE('2013-12-11 11:43:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_OperationType In Quality Analysis Chute','S',TO_DATE('2013-12-11 11:43:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 11:43:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='FTA_OperationType In Chute Quality Analysis',Updated=TO_DATE('2013-12-11 11:43:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52276
;

-- Dec 11, 2013 11:43:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Val_Rule_ID=52276,Updated=TO_DATE('2013-12-11 11:43:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71465
;

-- Dec 11, 2013 11:44:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='AD_Ref_List.Value IN (''RMR'',''PBR'',''MIM'')',Updated=TO_DATE('2013-12-11 11:44:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52276
;

-- Dec 11, 2013 11:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMR'' | @OperationType@=''DBM''',Updated=TO_DATE('2013-12-11 11:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71466
;

-- Dec 11, 2013 11:53:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 11:53:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71466
;

-- Dec 11, 2013 11:54:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMR'' | @OperationType@=''PBR''',Updated=TO_DATE('2013-12-11 11:54:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71466
;

-- Dec 11, 2013 11:54:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMR'' | @OperationType@=''PBR''',Updated=TO_DATE('2013-12-11 11:54:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68735
;

-- Dec 11, 2013 11:56:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMR'' | @OperationType@=''PBR'' | @OperationType@=''MIM''',Updated=TO_DATE('2013-12-11 11:56:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68735
;

-- Dec 11, 2013 11:56:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''RMR'' | @OperationType@=''PBR'' | @OperationType@=''MIM''',Updated=TO_DATE('2013-12-11 11:56:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71466
;

-- Dec 11, 2013 2:14:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2013-12-11 14:14:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Dec 11, 2013 2:15:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2013-12-11 14:15:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 2:15:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-12-11 14:15:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68314
;

-- Dec 11, 2013 2:15:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-12-11 14:15:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68319
;

-- Dec 11, 2013 2:15:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-12-11 14:15:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68317
;

-- Dec 11, 2013 2:15:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-12-11 14:15:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68335
;

-- Dec 11, 2013 2:15:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-12-11 14:15:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68316
;

-- Dec 11, 2013 2:15:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-11 14:15:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69290
;

-- Dec 11, 2013 2:15:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 14:15:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68324
;

-- Dec 11, 2013 2:15:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-11 14:15:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68337
;

-- Dec 11, 2013 2:15:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-12-11 14:15:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68334
;

-- Dec 11, 2013 2:15:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-12-11 14:15:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70255
;

-- Dec 11, 2013 2:15:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-12-11 14:15:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Dec 11, 2013 2:15:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-12-11 14:15:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Dec 11, 2013 2:15:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-12-11 14:15:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Dec 11, 2013 2:15:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-11 14:15:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68329
;

-- Dec 11, 2013 2:15:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-11 14:15:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70143
;

-- Dec 11, 2013 2:15:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-11 14:15:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70142
;

-- Dec 11, 2013 2:15:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2013-12-11 14:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70144
;

-- Dec 11, 2013 2:15:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2013-12-11 14:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68321
;

-- Dec 11, 2013 2:15:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2013-12-11 14:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68318
;

-- Dec 11, 2013 2:15:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2013-12-11 14:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68330
;

-- Dec 11, 2013 2:15:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2013-12-11 14:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68346
;

-- Dec 11, 2013 2:15:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2013-12-11 14:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70193
;

-- Dec 11, 2013 2:15:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2013-12-11 14:15:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70215
;

-- Dec 11, 2013 2:15:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2013-12-11 14:15:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71459
;

-- Dec 11, 2013 2:16:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_DATE('2013-12-11 14:16:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Dec 11, 2013 2:16:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 14:16:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Dec 11, 2013 2:17:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 14:17:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Dec 11, 2013 2:18:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 14:18:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Dec 11, 2013 2:18:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 14:18:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Dec 11, 2013 2:21:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-12-11 14:21:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69290
;

-- Dec 11, 2013 2:21:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-12-11 14:21:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71459
;

-- Dec 11, 2013 2:21:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-12-11 14:21:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68317
;

-- Dec 11, 2013 2:21:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-11 14:21:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68335
;

-- Dec 11, 2013 2:21:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 14:21:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68316
;

-- Dec 11, 2013 2:21:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-11 14:21:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68324
;

-- Dec 11, 2013 2:21:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-12-11 14:21:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68337
;

-- Dec 11, 2013 2:21:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-12-11 14:21:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68334
;

-- Dec 11, 2013 2:21:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-12-11 14:21:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70255
;

-- Dec 11, 2013 2:21:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-12-11 14:21:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Dec 11, 2013 2:21:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-12-11 14:21:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Dec 11, 2013 2:21:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-11 14:21:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Dec 11, 2013 2:21:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-11 14:21:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68329
;

-- Dec 11, 2013 2:21:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-11 14:21:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70143
;

-- Dec 11, 2013 2:21:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2013-12-11 14:21:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70142
;

-- Dec 11, 2013 2:21:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2013-12-11 14:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70144
;

-- Dec 11, 2013 2:21:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2013-12-11 14:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68321
;

-- Dec 11, 2013 2:21:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2013-12-11 14:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68318
;

-- Dec 11, 2013 2:21:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2013-12-11 14:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68330
;

-- Dec 11, 2013 2:21:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2013-12-11 14:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68346
;

-- Dec 11, 2013 2:21:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2013-12-11 14:21:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70193
;

-- Dec 11, 2013 2:21:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2013-12-11 14:21:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70215
;

-- Dec 11, 2013 2:21:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2013-12-11 14:21:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70256
;

-- Dec 11, 2013 2:21:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2013-12-11 14:21:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70254
;

-- Dec 11, 2013 2:21:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2013-12-11 14:21:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70257
;

-- Dec 11, 2013 2:21:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 14:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71459
;

-- Dec 11, 2013 2:27:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-12-11 14:27:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71459
;

-- Dec 11, 2013 2:27:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-12-11 14:27:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68314
;

-- Dec 11, 2013 2:27:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-12-11 14:27:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69290
;

-- Dec 11, 2013 2:28:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 14:28:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71459
;

-- Dec 11, 2013 2:28:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 14:28:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69290
;

-- Dec 11, 2013 2:30:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-12-11 14:30:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70256
;

-- Dec 11, 2013 2:30:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-11 14:30:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70254
;

-- Dec 11, 2013 2:30:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-11 14:30:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70257
;

-- Dec 11, 2013 2:30:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-11 14:30:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Dec 11, 2013 2:30:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2013-12-11 14:30:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Dec 11, 2013 2:30:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2013-12-11 14:30:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68329
;

-- Dec 11, 2013 2:30:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2013-12-11 14:30:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70143
;

-- Dec 11, 2013 2:30:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2013-12-11 14:30:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70142
;

-- Dec 11, 2013 2:30:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2013-12-11 14:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70144
;

-- Dec 11, 2013 2:30:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2013-12-11 14:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68321
;

-- Dec 11, 2013 2:30:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2013-12-11 14:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68318
;

-- Dec 11, 2013 2:30:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2013-12-11 14:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68330
;

-- Dec 11, 2013 2:30:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2013-12-11 14:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68346
;

-- Dec 11, 2013 2:30:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2013-12-11 14:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70193
;

-- Dec 11, 2013 2:30:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2013-12-11 14:30:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70215
;

-- Dec 11, 2013 2:32:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 14:32:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70256
;

-- Dec 11, 2013 2:32:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 14:32:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70254
;

-- Dec 11, 2013 2:32:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 14:32:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70257
;

-- Dec 11, 2013 2:32:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 14:32:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Dec 11, 2013 2:36:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 14:36:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 2:38:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_DATE('2013-12-11 14:38:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68324
;

-- Dec 11, 2013 2:38:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50029,Updated=TO_DATE('2013-12-11 14:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68335
;

-- Dec 11, 2013 2:39:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-11 14:39:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70255
;

-- Dec 11, 2013 2:39:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 14:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Dec 11, 2013 2:39:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-11 14:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70256
;

-- Dec 11, 2013 2:39:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-12-11 14:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70254
;

-- Dec 11, 2013 2:39:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-12-11 14:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70257
;

-- Dec 11, 2013 2:39:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-12-11 14:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Dec 11, 2013 2:39:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-12-11 14:39:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Dec 11, 2013 2:39:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-12-11 14:39:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68329
;

-- Dec 11, 2013 2:39:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-11 14:39:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68335
;

-- Dec 11, 2013 2:39:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-11 14:39:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68316
;

-- Dec 11, 2013 2:39:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-11 14:39:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68324
;

-- Dec 11, 2013 2:39:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2013-12-11 14:39:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68337
;

-- Dec 11, 2013 2:39:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2013-12-11 14:39:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68334
;

-- Dec 11, 2013 2:41:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-12-11 14:41:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68335
;

-- Dec 11, 2013 2:41:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-12-11 14:41:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68316
;

-- Dec 11, 2013 2:41:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-12-11 14:41:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68324
;

-- Dec 11, 2013 2:41:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-11 14:41:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Dec 11, 2013 2:41:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-11 14:41:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Dec 11, 2013 2:41:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-11 14:41:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68329
;

-- Dec 11, 2013 2:42:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-11 14:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68337
;

-- Dec 11, 2013 2:42:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-11 14:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68334
;

-- Dec 11, 2013 2:42:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-11 14:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Dec 11, 2013 2:42:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2013-12-11 14:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Dec 11, 2013 2:42:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2013-12-11 14:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68329
;

-- Dec 11, 2013 2:44:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2013-12-11 14:44:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71459
;

-- Dec 11, 2013 2:44:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-12-11 14:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68319
;

-- Dec 11, 2013 2:44:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-12-11 14:44:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68314
;

-- Dec 11, 2013 2:44:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-12-11 14:44:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69290
;

-- Dec 11, 2013 2:44:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-12-11 14:44:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68317
;

-- Dec 11, 2013 2:44:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-12-11 14:44:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70255
;

-- Dec 11, 2013 2:44:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-11 14:44:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Dec 11, 2013 2:44:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 14:44:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 2:44:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 14:44:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Dec 11, 2013 2:44:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 14:44:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 2:45:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-12-11 14:45:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Dec 11, 2013 2:45:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-11 14:45:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 2:45:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 14:45:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70256
;

-- Dec 11, 2013 2:45:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-11 14:45:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70255
;

-- Dec 11, 2013 2:45:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_DATE('2013-12-11 14:45:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70255
;

-- Dec 11, 2013 2:45:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2013-12-11 14:45:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68323
;

-- Dec 11, 2013 2:46:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 14:46:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70255
;

-- Dec 11, 2013 2:46:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-11 14:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70254
;

-- Dec 11, 2013 2:46:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 14:46:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70257
;

-- Dec 11, 2013 2:50:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO''
AND NOT EXISTS(SELECT 1 FROM FTA_RecordWeight r WHERE r.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND OperationType = @OperationType@',Updated=TO_DATE('2013-12-11 14:50:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52197
;

-- Dec 11, 2013 2:52:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='FTA_EntryTicket only completed and not yet used in RW ',Updated=TO_DATE('2013-12-11 14:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52197
;

-- Dec 11, 2013 2:53:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO''
AND NOT EXISTS(SELECT 1 FROM FTA_RecordWeight r WHERE r.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 14:53:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52197
;

-- Dec 11, 2013 2:57:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_EntryTicket_ID@!0 & @OpertionType@= ''RMR''',Updated=TO_DATE('2013-12-11 14:57:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 2:58:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_EntryTicket_ID@!0 & @OpertionType@= ''RMR'' | @OpertionType@= ''PBR''',Updated=TO_DATE('2013-12-11 14:58:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 2:58:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_EntryTicket_ID@!0 & (@OpertionType@= ''RMR'' | @OpertionType@= ''PBR'')',Updated=TO_DATE('2013-12-11 14:58:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 2:59:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2013-12-11 14:59:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66924
;

-- Dec 11, 2013 2:59:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET MandatoryLogic='@OpertionType@= ''RMR''',Updated=TO_DATE('2013-12-11 14:59:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66924
;

-- Dec 11, 2013 3:01:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OpertionType@= ''RMR'' | @OpertionType@= ''PBR''', Help='@FTA_EntryTicket_ID@!0 & ',Updated=TO_DATE('2013-12-11 15:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:01:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:02:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_EntryTicket_ID@!0 & (@OperationType@= ''RMR'' | @OperationType@= ''PBR'')', Help=NULL,Updated=TO_DATE('2013-12-11 15:02:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:02:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=' (@OperationType@= ''RMR'' | @OperationType@= ''PBR'')', Help='@FTA_EntryTicket_ID@!0 &',Updated=TO_DATE('2013-12-11 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:02:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='(@OperationType@= ''RMR'' | @OperationType@= ''PBR'')',Updated=TO_DATE('2013-12-11 15:02:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:03:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@= ''RMR'' | @OperationType@= ''PBR''',Updated=TO_DATE('2013-12-11 15:03:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:04:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_EntryTicket_ID@!0 & (@OperationType@= ''RMR'' | @OperationType@= ''PBR'')', Help=NULL,Updated=TO_DATE('2013-12-11 15:04:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:04:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:05:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_EntryTicket_ID@!0 & @OperationType@= ''RMR'' | @OperationType@= ''PBR''',Updated=TO_DATE('2013-12-11 15:05:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:05:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@= ''RMR'' | @OperationType@= ''PBR''', Help='@FTA_EntryTicket_ID@!0 & ',Updated=TO_DATE('2013-12-11 15:05:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:05:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:05:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET MandatoryLogic='@OperationType@= ''RMR''',Updated=TO_DATE('2013-12-11 15:05:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66924
;

-- Dec 11, 2013 3:11:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70645,56599,0,18,53596,53561,'FTA_LoadOrder_ID',TO_DATE('2013-12-11 15:11:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Load Order',0,TO_DATE('2013-12-11 15:11:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 11, 2013 3:11:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70645 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 11, 2013 3:11:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70645,71467,0,53731,TO_DATE('2013-12-11 15:11:42','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Load Order',TO_DATE('2013-12-11 15:11:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 3:11:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71467 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 11, 2013 3:11:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-11 15:11:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71467
;

-- Dec 11, 2013 3:12:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-11 15:12:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70256
;

-- Dec 11, 2013 3:12:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-12-11 15:12:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70255
;

-- Dec 11, 2013 3:12:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-12-11 15:12:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70254
;

-- Dec 11, 2013 3:12:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-12-11 15:12:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70257
;

-- Dec 11, 2013 3:12:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-12-11 15:12:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68335
;

-- Dec 11, 2013 3:12:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-12-11 15:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68316
;

-- Dec 11, 2013 3:12:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-11 15:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68324
;

-- Dec 11, 2013 3:12:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-11 15:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68337
;

-- Dec 11, 2013 3:12:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-11 15:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68334
;

-- Dec 11, 2013 3:12:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2013-12-11 15:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Dec 11, 2013 3:12:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2013-12-11 15:12:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Dec 11, 2013 3:12:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2013-12-11 15:12:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68329
;

-- Dec 11, 2013 3:12:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2013-12-11 15:12:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70143
;

-- Dec 11, 2013 3:12:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2013-12-11 15:12:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70142
;

-- Dec 11, 2013 3:12:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2013-12-11 15:12:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70144
;

-- Dec 11, 2013 3:12:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2013-12-11 15:12:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68321
;

-- Dec 11, 2013 3:12:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2013-12-11 15:12:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68318
;

-- Dec 11, 2013 3:12:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2013-12-11 15:12:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68330
;

-- Dec 11, 2013 3:12:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2013-12-11 15:12:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68346
;

-- Dec 11, 2013 3:12:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2013-12-11 15:12:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70193
;

-- Dec 11, 2013 3:12:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2013-12-11 15:12:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70215
;

-- Dec 11, 2013 3:12:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-11 15:12:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71467
;

-- Dec 11, 2013 3:13:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@WeightStatus@=''T''',Updated=TO_DATE('2013-12-11 15:13:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71467
;

-- Dec 11, 2013 3:14:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@WeightStatus@=''T'' & @OperationType@=''DBM''',Updated=TO_DATE('2013-12-11 15:14:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71467
;

-- Dec 11, 2013 3:15:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''DBM''',Updated=TO_DATE('2013-12-11 15:15:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71467
;

-- Dec 11, 2013 3:16:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-12-11 15:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70645
;

-- Dec 11, 2013 3:16:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2013-12-11 15:16:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71467
;

-- Dec 11, 2013 3:16:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=NULL,Updated=TO_DATE('2013-12-11 15:16:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70645
;

-- Dec 11, 2013 3:18:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_QualityAnalysis.DocStatus = ''CO'' 
AND FTA_QualityAnalysis.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@ 
AND NOT EXISTS(SELECT 1 FROM FTA_RecordWeight r WHERE r.FTA_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 15:18:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52198
;

-- Dec 11, 2013 3:20:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=53596,Updated=TO_DATE('2013-12-11 15:20:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70645
;

-- Dec 11, 2013 3:23:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52277,'FTA_LoadOrder.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@
AND FTA_LoadOrder.DocStatus IN (''CO'')
AND NOT EXISTS',TO_DATE('2013-12-11 15:23:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_LoadOrder In Record Weight','S',TO_DATE('2013-12-11 15:23:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 3:24:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_LoadOrder.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@
AND FTA_LoadOrder.DocStatus IN (''CO'')
AND NOT EXISTS (SELECT 1 FROM FTA_LoadOrder WHERE FTA_LoadOrder.DocStatus NOT IN (''VO'',''RE''))',Updated=TO_DATE('2013-12-11 15:24:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52277
;

-- Dec 11, 2013 3:31:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_LoadOrder.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@
AND FTA_LoadOrder.DocStatus IN (''CO'')
AND NOT EXISTS(SELECT 1 FROM FTA_RecordWeight r WHERE r.FTA_LoadOrder_ID = FTA_EntryTicket.FTA_LoadOrder_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND OperationType = ''@OperationType@''
',Updated=TO_DATE('2013-12-11 15:31:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52277
;

-- Dec 11, 2013 3:31:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52277,Updated=TO_DATE('2013-12-11 15:31:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70645
;

-- Dec 11, 2013 3:44:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_LoadOrder.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@
AND FTA_LoadOrder.DocStatus IN (''CO'')
AND NOT EXISTS(SELECT 1 FROM FTA_RecordWeight r WHERE r.FTA_LoadOrder_ID = FTA_LoadOrder.FTA_LoadOrder_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND OperationType = ''@OperationType@''
',Updated=TO_DATE('2013-12-11 15:44:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52277
;

-- Dec 11, 2013 3:53:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''DBM'' | @OperationType@=''DFP'' | @OperationType@=''MOM''',Updated=TO_DATE('2013-12-11 15:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71467
;

-- Dec 11, 2013 3:55:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@= ''RMR'' | @OperationType@= ''PBR'' ',Updated=TO_DATE('2013-12-11 15:55:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:56:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@= ''RMR'' | @OperationType@= ''PBR'' & @OperationType@! ''ORW''',Updated=TO_DATE('2013-12-11 15:56:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68331
;

-- Dec 11, 2013 3:56:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''DBM'' | @OperationType@=''DFP'' | @OperationType@=''MOM'' & @OperationType@! ''ORW''',Updated=TO_DATE('2013-12-11 15:56:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71467
;

-- Dec 11, 2013 4:01:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-12-11 16:01:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70629
;

-- Dec 11, 2013 4:22:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Reference_ID=30, AD_Val_Rule_ID=52195,Updated=TO_DATE('2013-12-11 16:22:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68305
;

-- Dec 11, 2013 4:23:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_DATE('2013-12-11 16:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66901
;

-- Dec 11, 2013 4:25:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO''
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis q WHERE q.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND q.DocStatus NOT IN(''VO'', ''RE''))
AND OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 16:25:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52195
;

-- Dec 11, 2013 4:34:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53632,TO_DATE('2013-12-11 16:34:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_RecordWeight',TO_DATE('2013-12-11 16:34:27','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Dec 11, 2013 4:34:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53632 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Dec 11, 2013 4:34:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET Name='FTA_RecordWeight Reference',Updated=TO_DATE('2013-12-11 16:34:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53632
;

-- Dec 11, 2013 4:34:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53632
;

-- Dec 11, 2013 4:35:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,OrderByClause,Updated,UpdatedBy) VALUES (0,66914,66915,0,53632,53561,TO_DATE('2013-12-11 16:35:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','DocumentNo',TO_DATE('2013-12-11 16:35:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 4:35:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=53632,Updated=TO_DATE('2013-12-11 16:35:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70644
;

-- Dec 11, 2013 4:37:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52278,'FTA_LoadOrder.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@
AND FTA_LoadOrder.DocStatus IN (''CO'')
AND NOT EXISTS(SELECT 1 FROM FTA_RecordWeight r WHERE r.FTA_LoadOrder_ID = FTA_LoadOrder.FTA_LoadOrder_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND OperationType = ''@OperationType@''
',TO_DATE('2013-12-11 16:37:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RecordWeight In Quality Analysis','S',TO_DATE('2013-12-11 16:37:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 11, 2013 4:38:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_QualityAnalysis.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@
AND FTA_QualityAnalysis.DocStatus IN (''CO'')
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis r WHERE r.FTA_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND OperationType = ''@OperationType@''
',Updated=TO_DATE('2013-12-11 16:38:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52278
;

-- Dec 11, 2013 4:39:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52278,Updated=TO_DATE('2013-12-11 16:39:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70644
;

-- Dec 11, 2013 4:42:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_QualityAnalysis.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@
AND FTA_QualityAnalysis.DocStatus IN (''CO'')
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis r WHERE r.FTA_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND FTA_QualityAnalysis.OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 16:42:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52278
;

-- Dec 11, 2013 4:54:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_QualityAnalysis.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@
AND FTA_RecordWeight.DocStatus IN (''CO'',CL'')
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis r WHERE r.FTA_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND FTA_QualityAnalysis.OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 16:54:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52278
;

-- Dec 11, 2013 4:54:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_QualityAnalysis.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@
AND FTA_RecordWeight.DocStatus IN (''CO'',CL'')
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis r WHERE r.FTA_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND FTA_RecordWeight.OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 16:54:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52278
;

-- Dec 11, 2013 4:54:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_QualityAnalysis.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@
AND FTA_RecordWeight.DocStatus IN (''IP'',''CO'')
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis r WHERE r.FTA_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND FTA_RecordWeight.OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 16:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52278
;

-- Dec 11, 2013 4:57:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_RecordWeight.DocStatus IN (''IP'',''CO'')
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis r WHERE r.FTA_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND FTA_RecordWeight.OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 16:57:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52278
;

-- Dec 11, 2013 4:58:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_RecordWeight.DocStatus IN (''IP'',''CO'')
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis r WHERE r.FTA_RecordWeight_ID = FTA_RecordWeight.FTA_RecordWeight_ID AND r.DocStatus NOT IN(''VO'', ''RE''))
AND FTA_RecordWeight.OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 16:58:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52278
;

-- Dec 11, 2013 5:04:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO''
AND EXISTS(SELECT 1 FROM FTA_QualityAnalysis q 
INNER JOIN FTA_RecordWeight rw ON(rw.FTA_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
LEFT JOIN FTA_QualityAnalysis ca ON(ca.Orig_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
WHERE (ca.DocStatus IN(''VO'', ''RE'') OR ca.DocStatus IS NULL)
AND rw.DocStatus = ''IP''
AND q.Orig_QualityAnalysis_ID IS NULL 
AND rw.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID)
AND OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 17:04:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52202
;

-- Dec 11, 2013 5:07:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO''
AND EXISTS(SELECT 1 FROM FTA_QualityAnalysis q 
INNER JOIN FTA_RecordWeight rw ON(rw.FTA_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
LEFT JOIN FTA_QualityAnalysis ca ON(ca.Orig_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
WHERE (ca.DocStatus IN(''VO'', ''RE'') OR ca.DocStatus IS NULL)
AND rw.DocStatus = ''IP''
AND q.Orig_QualityAnalysis_ID IS NULL 
AND rw.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID)
',Updated=TO_DATE('2013-12-11 17:07:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52202
;

-- Dec 11, 2013 5:08:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET OrderByClause='FTA_RecordWeight.DocumentNo',Updated=TO_DATE('2013-12-11 17:08:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53632
;

-- Dec 11, 2013 5:13:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO''
AND EXISTS(SELECT 1 FROM FTA_QualityAnalysis q 
INNER JOIN FTA_RecordWeight rw ON(rw.FTA_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
LEFT JOIN FTA_QualityAnalysis ca ON(ca.Orig_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
WHERE (ca.DocStatus IN(''VO'', ''RE'') OR ca.DocStatus IS NULL)
AND rw.DocStatus = ''IP''
AND q.Orig_QualityAnalysis_ID IS NULL 
AND rw.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID)
AND OperationType = ''@OperationType@''',Updated=TO_DATE('2013-12-11 17:13:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52202
;

-- Dec 11, 2013 5:14:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'',''CL'') AND C_Order.IsSOTrx = ''@IsSOTrx@''',Updated=TO_DATE('2013-12-11 17:14:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52273
;

-- Dec 11, 2013 5:17:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='Y', ReadOnlyLogic='FTA_RecordWeight.DocStatus!=''DR''',Updated=TO_DATE('2013-12-11 17:17:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66924
;

