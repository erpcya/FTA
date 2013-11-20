-- Oct 30, 2013 3:36:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69564,56546,0,19,53619,'FTA_CDL_Category_ID',TO_TIMESTAMP('2013-10-30 15:36:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit Definition Line Category',TO_TIMESTAMP('2013-10-30 15:36:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 30, 2013 3:36:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69564 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 30, 2013 4:20:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50076,'C',TO_TIMESTAMP('2013-10-30 16:20:10','YYYY-MM-DD HH24:MI:SS'),100,'Days for Calculate Interest','ECA02','Y','FTA_DAYS_FOR_CALCULATE_INTEREST',TO_TIMESTAMP('2013-10-30 16:20:10','YYYY-MM-DD HH24:MI:SS'),100,'360')
;

-- Oct 30, 2013 4:28:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-10-30 16:28:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54242
;

-- Oct 30, 2013 5:47:37 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=70220
;

-- Oct 30, 2013 5:47:37 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=70220
;

-- Oct 30, 2013 5:49:48 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=69543
;

-- Oct 30, 2013 5:49:48 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=69543
;

-- Oct 30, 2013 5:53:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56575,0,20,'RateFixed',TO_TIMESTAMP('2013-10-30 17:53:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','% Fixed','% Fixed',TO_TIMESTAMP('2013-10-30 17:53:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 5:53:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56575 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 30, 2013 5:53:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='% Fijo',PrintName='% Fijo',Updated=TO_TIMESTAMP('2013-10-30 17:53:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56575 AND AD_Language='es_MX'
;

-- Oct 30, 2013 5:53:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='% Fijo',PrintName='% Fijo',Updated=TO_TIMESTAMP('2013-10-30 17:53:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56575 AND AD_Language='es_VE'
;

-- Oct 30, 2013 5:54:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69565,56575,0,20,53647,'RateFixed',TO_TIMESTAMP('2013-10-30 17:54:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','ECA02',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','% Fixed',0,TO_TIMESTAMP('2013-10-30 17:54:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 30, 2013 5:54:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69565 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 30, 2013 5:54:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69565,70239,0,53791,TO_TIMESTAMP('2013-10-30 17:54:32','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','Y','N','N','N','N','N','% Fixed',TO_TIMESTAMP('2013-10-30 17:54:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 5:54:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70239 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 30, 2013 5:54:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-10-30 17:54:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70239
;

-- Oct 30, 2013 5:54:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-30 17:54:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70239
;

-- Oct 30, 2013 5:58:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53590,TO_TIMESTAMP('2013-10-30 17:58:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_InterestType CalculationType',TO_TIMESTAMP('2013-10-30 17:58:27','YYYY-MM-DD HH24:MI:SS'),100,'L','L')
;

-- Oct 30, 2013 5:58:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53590 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Oct 30, 2013 5:59:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53590,54141,TO_TIMESTAMP('2013-10-30 17:59:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Definition Category',TO_TIMESTAMP('2013-10-30 17:59:27','YYYY-MM-DD HH24:MI:SS'),100,'C')
;

-- Oct 30, 2013 5:59:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54141 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 30, 2013 5:59:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='En Base a Partida',Updated=TO_TIMESTAMP('2013-10-30 17:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54141 AND AD_Language='es_MX'
;

-- Oct 30, 2013 6:00:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53590,54142,TO_TIMESTAMP('2013-10-30 17:59:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Documents',TO_TIMESTAMP('2013-10-30 17:59:59','YYYY-MM-DD HH24:MI:SS'),100,'D')
;

-- Oct 30, 2013 6:00:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54142 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 30, 2013 6:00:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='En Base a Documentos',Updated=TO_TIMESTAMP('2013-10-30 18:00:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54142 AND AD_Language='es_MX'
;

-- Oct 30, 2013 6:00:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='En Base a Documentos',Updated=TO_TIMESTAMP('2013-10-30 18:00:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54142 AND AD_Language='es_VE'
;

-- Oct 30, 2013 6:00:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='En Base a Partida',Updated=TO_TIMESTAMP('2013-10-30 18:00:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54141 AND AD_Language='es_VE'
;

-- Oct 30, 2013 6:00:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69566,1605,0,17,53590,53647,'CalculationType',TO_TIMESTAMP('2013-10-30 18:00:56','YYYY-MM-DD HH24:MI:SS'),100,'C','ECA02',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Calculation',0,TO_TIMESTAMP('2013-10-30 18:00:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 30, 2013 6:00:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69566 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 30, 2013 6:01:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69566,70240,0,53791,TO_TIMESTAMP('2013-10-30 18:01:32','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Calculation',TO_TIMESTAMP('2013-10-30 18:01:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 6:01:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70240 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 30, 2013 6:02:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-10-30 18:02:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70240
;

-- Oct 30, 2013 6:02:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-10-30 18:02:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70219
;

-- Oct 30, 2013 6:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-30 18:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70219
;

-- Oct 30, 2013 6:13:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET DisplayLogic='@CalculationType@=''C''',Updated=TO_TIMESTAMP('2013-10-30 18:13:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53797
;

-- Oct 30, 2013 6:15:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-10-30 18:15:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69566
;

-- Oct 30, 2013 6:16:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-10-30 18:16:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69323
;

-- Oct 30, 2013 6:17:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-10-30 18:17:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69522
;

