-- Jan 22, 2014 10:27:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53560,'org.spin.process.CreditDefinitionCopyFrom','N',TO_TIMESTAMP('2014-01-22 10:27:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Copy From','Y',0,0,TO_TIMESTAMP('2014-01-22 10:27:04','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CreditDefinition CopyFrom')
;

-- Jan 22, 2014 10:27:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53560 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 22, 2014 10:27:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56108,0,53560,54408,18,53641,'FTA_CreditDefinition_ID',TO_TIMESTAMP('2014-01-22 10:27:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Credit Definition',10,TO_TIMESTAMP('2014-01-22 10:27:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 22, 2014 10:27:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54408 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 22, 2014 10:28:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56619,0,53560,54409,18,53641,'FTA_CreditDefinition_ID_To',TO_TIMESTAMP('2014-01-22 10:28:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Credit Definition To',20,TO_TIMESTAMP('2014-01-22 10:28:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 22, 2014 10:28:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54409 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 22, 2014 10:31:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Name='Credit Definition Copy From ',Updated=TO_TIMESTAMP('2014-01-22 10:31:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53560
;

-- Jan 22, 2014 10:31:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53560
;

-- Jan 22, 2014 10:32:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Name='Copy From Credit Definition ',Updated=TO_TIMESTAMP('2014-01-22 10:32:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53560
;

-- Jan 22, 2014 10:32:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53560
;

-- Jan 22, 2014 10:33:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.CopyFromCreditDefinition',Updated=TO_TIMESTAMP('2014-01-22 10:33:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53560
;

-- Jan 22, 2014 10:33:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Copia Desde Definición de Crédito',Updated=TO_TIMESTAMP('2014-01-22 10:33:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53560 AND AD_Language='es_MX'
;

-- Jan 22, 2014 10:33:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Copia Desde Definición de Crédito',Updated=TO_TIMESTAMP('2014-01-22 10:33:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53560 AND AD_Language='es_VE'
;

-- Jan 22, 2014 10:33:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71339,2037,0,53560,28,53549,'CopyFrom',TO_TIMESTAMP('2014-01-22 10:33:43','YYYY-MM-DD HH24:MI:SS'),100,'Copy From Record','ECA02',1,'Copy From Record','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Copy From',0,TO_TIMESTAMP('2014-01-22 10:33:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 22, 2014 10:33:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71339 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 22, 2014 10:34:00 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71339,72191,0,53727,TO_TIMESTAMP('2014-01-22 10:33:57','YYYY-MM-DD HH24:MI:SS'),100,'Copy From Record',1,'ECA02','Copy From Record','Y','Y','Y','N','N','N','N','N','Copy From',TO_TIMESTAMP('2014-01-22 10:33:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 22, 2014 10:34:00 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72191 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 22, 2014 10:34:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-01-22 10:34:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68214
;

-- Jan 22, 2014 10:34:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-01-22 10:34:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68436
;

-- Jan 22, 2014 10:34:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-01-22 10:34:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68211
;

-- Jan 22, 2014 10:34:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-01-22 10:34:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72191
;

-- Jan 22, 2014 10:38:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-01-22 10:38:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54409
;

