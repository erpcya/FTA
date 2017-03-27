-- Feb 24, 2014 1:59:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72078,56084,0,18,53571,335,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2014-02-24 13:59:27','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','U',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Credit/Loan',0,TO_TIMESTAMP('2014-02-24 13:59:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 24, 2014 1:59:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72078 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 24, 2014 2:00:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52207,Updated=TO_TIMESTAMP('2014-02-24 14:00:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72078
;

-- Feb 24, 2014 2:03:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72078,72665,0,330,TO_TIMESTAMP('2014-02-24 14:02:59','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan',10,'U','Y','Y','Y','N','N','N','N','N','Credit/Loan',TO_TIMESTAMP('2014-02-24 14:02:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 24, 2014 2:03:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72665 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 24, 2014 2:03:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,59039,72666,0,330,TO_TIMESTAMP('2014-02-24 14:03:01','YYYY-MM-DD HH24:MI:SS'),100,'The date+time (expressed in decimal format) when the document has been processed',20,'D','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed On',TO_TIMESTAMP('2014-02-24 14:03:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 24, 2014 2:03:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72666 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 24, 2014 2:03:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,55309,72667,0,330,TO_TIMESTAMP('2014-02-24 14:03:03','YYYY-MM-DD HH24:MI:SS'),100,'ID of document reversal',22,'D','Y','Y','Y','N','N','N','N','N','Reversal ID',TO_TIMESTAMP('2014-02-24 14:03:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 24, 2014 2:03:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72667 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 24, 2014 2:03:17 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=72667
;

-- Feb 24, 2014 2:03:17 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=72667
;

-- Feb 24, 2014 2:03:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=72666
;

-- Feb 24, 2014 2:03:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=72666
;

-- Feb 24, 2014 2:04:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50037,Updated=TO_TIMESTAMP('2014-02-24 14:04:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72665
;

-- Feb 24, 2014 2:04:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-02-24 14:04:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72665
;

-- Feb 24, 2014 2:05:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-02-24 14:05:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72078
;

-- Feb 24, 2014 2:17:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Name='Detail Weight Registry (Guided)', Value='FTA_RecordWeight WeightRegistry(Guided)',Updated=TO_TIMESTAMP('2014-02-24 14:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53584
;

-- Feb 24, 2014 2:17:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53584
;

-- Feb 24, 2014 2:17:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Detail Weight Registry (Guided)',Updated=TO_TIMESTAMP('2014-02-24 14:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53777
;

-- Feb 24, 2014 2:17:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53777
;

-- Feb 24, 2014 2:17:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Registro de Peso (Guiado)',Updated=TO_TIMESTAMP('2014-02-24 14:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53584 AND AD_Language='es_VE'
;

-- Feb 24, 2014 2:18:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Registro de Peso (Guiado)',Updated=TO_TIMESTAMP('2014-02-24 14:18:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53584 AND AD_Language='es_VE'
;

-- Feb 24, 2014 2:50:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='Y',Updated=TO_TIMESTAMP('2014-02-24 14:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54378
;

-- Feb 24, 2014 4:22:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-02-24 16:22:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54391
;

-- Feb 24, 2014 4:22:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-02-24 16:22:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54437
;

-- Feb 24, 2014 5:14:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72079,1525,0,22,53600,'Multiplier',TO_TIMESTAMP('2014-02-24 17:14:41','YYYY-MM-DD HH24:MI:SS'),100,'Type Multiplier (Credit = -1)','ECA02',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Multiplier',0,TO_TIMESTAMP('2014-02-24 17:14:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 24, 2014 5:14:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72079 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 24, 2014 5:15:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72076,72668,0,53774,TO_TIMESTAMP('2014-02-24 17:15:06','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Credit Definition Line Category',TO_TIMESTAMP('2014-02-24 17:15:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 24, 2014 5:15:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72668 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 24, 2014 5:15:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72079,72669,0,53774,TO_TIMESTAMP('2014-02-24 17:15:08','YYYY-MM-DD HH24:MI:SS'),100,'Type Multiplier (Credit = -1)',22,'ECA02','Y','Y','Y','N','N','N','N','N','Multiplier',TO_TIMESTAMP('2014-02-24 17:15:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 24, 2014 5:15:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72669 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 24, 2014 5:15:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_TIMESTAMP('2014-02-24 17:15:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72668
;

-- Feb 25, 2014 1:31:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Registro de Peso (Guiado)',Updated=TO_TIMESTAMP('2014-02-25 13:31:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53777 AND AD_Language='es_VE'
;

-- Feb 25, 2014 1:31:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Registro de Peso (Guiado)',Updated=TO_TIMESTAMP('2014-02-25 13:31:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53777 AND AD_Language='es_VE'
;

