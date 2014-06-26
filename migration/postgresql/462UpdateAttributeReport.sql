-- May 9, 2014 10:56:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CategoryCalc.FTA_CategoryCalcGroup_ID=@FTA_CategoryCalcGroup_ID@
AND  FTA_CategoryCalc.M_Product_ID = @M_Product_ID@',Updated=TO_TIMESTAMP('2014-05-09 22:56:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52354
;

-- May 10, 2014 12:16:13 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=73423
;

-- May 10, 2014 12:16:15 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=73423
;

-- May 10, 2014 12:17:08 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=72854
;

-- May 10, 2014 12:17:09 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=72854
;

-- May 10, 2014 12:18:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72856,454,0,19,53800,52241,'M_Product_ID',TO_TIMESTAMP('2014-05-10 00:18:37','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product',0,TO_TIMESTAMP('2014-05-10 00:18:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- May 10, 2014 12:18:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72856 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- May 10, 2014 12:19:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72856,73424,0,53952,TO_TIMESTAMP('2014-05-10 00:18:57','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',22,'ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',TO_TIMESTAMP('2014-05-10 00:18:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 10, 2014 12:19:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73424 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- May 10, 2014 12:19:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-05-10 00:19:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73424
;

-- May 10, 2014 12:19:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-10 00:19:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73388
;

-- May 10, 2014 12:19:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-10 00:19:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72856
;

-- May 10, 2014 1:08:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Table SET TableName='FTA_AttributeReport',Updated=TO_TIMESTAMP('2014-05-10 01:08:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53800
;

-- May 10, 2014 1:08:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53952,TO_TIMESTAMP('2014-05-10 01:08:08','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_AttributeReport',1,'Y','N','Y','Y','FTA_AttributeReport','N',1000000,TO_TIMESTAMP('2014-05-10 01:08:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 10, 2014 1:08:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Table SET TableName='FTA_AttributeReportLine',Updated=TO_TIMESTAMP('2014-05-10 01:08:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53801
;

-- May 10, 2014 1:08:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53953,TO_TIMESTAMP('2014-05-10 01:08:40','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_AttributeReportLine',1,'Y','N','Y','Y','FTA_AttributeReportLine','N',1000000,TO_TIMESTAMP('2014-05-10 01:08:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 10, 2014 1:08:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='FTA_AttributeReport_ID',Updated=TO_TIMESTAMP('2014-05-10 01:08:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57149
;

-- May 10, 2014 1:08:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_AttributeReport_ID', Name='Attributes Report', Description=NULL, Help=NULL WHERE AD_Element_ID=57149
;

-- May 10, 2014 1:08:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_AttributeReport_ID', Name='Attributes Report', Description=NULL, Help=NULL, AD_Element_ID=57149 WHERE UPPER(ColumnName)='FTA_ATTRIBUTEREPORT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- May 10, 2014 1:08:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_AttributeReport_ID', Name='Attributes Report', Description=NULL, Help=NULL WHERE AD_Element_ID=57149 AND IsCentrallyMaintained='Y'
;

-- May 10, 2014 1:09:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='FTA_AttributeReportLine_ID',Updated=TO_TIMESTAMP('2014-05-10 01:09:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57150
;

-- May 10, 2014 1:09:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_AttributeReportLine_ID', Name='Attributes', Description=NULL, Help=NULL WHERE AD_Element_ID=57150
;

-- May 10, 2014 1:09:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_AttributeReportLine_ID', Name='Attributes', Description=NULL, Help=NULL, AD_Element_ID=57150 WHERE UPPER(ColumnName)='FTA_ATTRIBUTEREPORTLINE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- May 10, 2014 1:09:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_AttributeReportLine_ID', Name='Attributes', Description=NULL, Help=NULL WHERE AD_Element_ID=57150 AND IsCentrallyMaintained='Y'
;

-- May 10, 2014 1:09:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CategoryCalc.M_Product_ID = @M_Product_ID@', Name='FTA_CategoryCalc of Product',Updated=TO_TIMESTAMP('2014-05-10 01:09:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52354
;

-- May 10, 2014 1:10:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 01:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 10, 2014 1:10:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@!=0',Updated=TO_TIMESTAMP('2014-05-10 01:10:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 10, 2014 1:11:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 01:11:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 1:17:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57149,0,53551,54739,19,'FTA_AttributeReport_ID',TO_TIMESTAMP('2014-05-10 01:17:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Attributes Report',175,TO_TIMESTAMP('2014-05-10 01:17:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 10, 2014 1:17:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54739 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 10, 2014 1:17:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-10 01:17:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54739
;

-- May 10, 2014 1:19:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic='@OperationType@ IN (''DBM'',''RMR'', )',Updated=TO_TIMESTAMP('2014-05-10 01:19:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54403
;

-- May 10, 2014 1:20:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic='@OperationType@ IN (''DBM'',''RMR'',''PBR'' )',Updated=TO_TIMESTAMP('2014-05-10 01:20:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54403
;

-- May 10, 2014 1:21:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57149,0,53584,54740,19,'FTA_AttributeReport_ID',TO_TIMESTAMP('2014-05-10 01:21:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Attributes Report',175,TO_TIMESTAMP('2014-05-10 01:21:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 10, 2014 1:21:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54740 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 10, 2014 1:21:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-10 01:21:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54530
;

-- May 10, 2014 1:22:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57149,0,53604,54741,19,'FTA_AttributeReport_ID',TO_TIMESTAMP('2014-05-10 01:22:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Attributes Report',175,TO_TIMESTAMP('2014-05-10 01:22:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 10, 2014 1:22:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54741 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 10, 2014 1:22:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-10 01:22:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54618
;

-- May 10, 2014 1:22:58 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57149,0,53606,54742,19,'FTA_AttributeReport_ID',TO_TIMESTAMP('2014-05-10 01:22:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Attributes Report',175,TO_TIMESTAMP('2014-05-10 01:22:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 10, 2014 1:22:58 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54742 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 10, 2014 1:23:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-10 01:23:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54645
;

-- May 10, 2014 1:26:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Table SET Name='Attribute',Updated=TO_TIMESTAMP('2014-05-10 01:26:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53801
;

-- May 10, 2014 1:26:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53801
;

-- May 10, 2014 1:26:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Table SET Name='Attribute Report',Updated=TO_TIMESTAMP('2014-05-10 01:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53800
;

-- May 10, 2014 1:26:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53800
;

-- May 10, 2014 1:26:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Attribute Report', PrintName='Attribute Report',Updated=TO_TIMESTAMP('2014-05-10 01:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57149
;

-- May 10, 2014 1:26:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57149
;

-- May 10, 2014 1:26:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_AttributeReport_ID', Name='Attribute Report', Description=NULL, Help=NULL WHERE AD_Element_ID=57149
;

-- May 10, 2014 1:26:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_AttributeReport_ID', Name='Attribute Report', Description=NULL, Help=NULL, AD_Element_ID=57149 WHERE UPPER(ColumnName)='FTA_ATTRIBUTEREPORT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- May 10, 2014 1:26:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_AttributeReport_ID', Name='Attribute Report', Description=NULL, Help=NULL WHERE AD_Element_ID=57149 AND IsCentrallyMaintained='Y'
;

-- May 10, 2014 1:26:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Attribute Report', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57149) AND IsCentrallyMaintained='Y'
;

-- May 10, 2014 1:26:49 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Attribute Report', Name='Attribute Report' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57149)
;

-- May 10, 2014 1:27:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET Name='Attribute Report',Updated=TO_TIMESTAMP('2014-05-10 01:27:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53952
;

-- May 10, 2014 1:27:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=53952
;

-- May 10, 2014 1:27:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET Name='Attribute',Updated=TO_TIMESTAMP('2014-05-10 01:27:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53954
;

-- May 10, 2014 1:27:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=53954
;

-- May 10, 2014 1:29:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 01:29:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 10, 2014 1:29:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 01:29:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 10, 2014 1:29:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 01:29:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 1:30:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@!=0',Updated=TO_TIMESTAMP('2014-05-10 01:30:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 1:30:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@!=0',Updated=TO_TIMESTAMP('2014-05-10 01:30:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 10, 2014 1:31:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 01:31:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 10, 2014 1:32:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 01:32:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 10, 2014 1:32:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 01:32:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 10, 2014 1:32:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 01:32:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 10, 2014 1:32:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 01:32:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73420
;

-- May 10, 2014 1:32:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 01:32:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 10, 2014 1:32:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 01:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

