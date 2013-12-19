-- Sep 26, 2013 3:44:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53549,54097,TO_TIMESTAMP('2013-09-26 15:44:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Extension',TO_TIMESTAMP('2013-09-26 15:44:12','YYYY-MM-DD HH24:MI:SS'),100,'E')
;

-- Sep 26, 2013 3:44:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54097 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 26, 2013 3:46:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Ampliación',Description='Ampliación de Crédito',Updated=TO_TIMESTAMP('2013-09-26 15:46:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54097 AND AD_Language='es_MX'
;

-- Sep 26, 2013 3:49:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54098,TO_TIMESTAMP('2013-09-26 15:49:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Extension',TO_TIMESTAMP('2013-09-26 15:49:36','YYYY-MM-DD HH24:MI:SS'),100,'FFE')
;

-- Sep 26, 2013 3:49:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54098 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 26, 2013 3:50:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Ampliación de Crédito',Updated=TO_TIMESTAMP('2013-09-26 15:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54098 AND AD_Language='es_MX'
;

-- Sep 26, 2013 3:50:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN(''FFC'', ''FFL'', ''FFR'', ''FFE'')', Name='C_DocType (FFC,FFL, FFR, FFE) Farmer Credit/Loan',Updated=TO_TIMESTAMP('2013-09-26 15:50:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52187
;

-- Sep 26, 2013 4:35:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53468,'org.spin.process.FarmingChangeStatus','N',TO_TIMESTAMP('2013-09-26 16:35:19','YYYY-MM-DD HH24:MI:SS'),100,'Farming Change Status','ECA02','Farming Change Status for a New','Y','N','N','N','N','Farming Change Status','Y',0,0,TO_TIMESTAMP('2013-09-26 16:35:19','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Farming FarmingChangeStatus')
;

-- Sep 26, 2013 4:35:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53468 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Sep 26, 2013 4:37:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Cambiar Estado de Siembra',Description='Cambia el Estado de la Siembra',Help='Cambia el Estado de la Siembra, Ejemplo: Activo, Dañado...',Updated=TO_TIMESTAMP('2013-09-26 16:37:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53468 AND AD_Language='es_MX'
;

-- Sep 26, 2013 5:33:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET Name='FTA_Farming Planting Status ',Updated=TO_TIMESTAMP('2013-09-26 17:33:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53531
;

-- Sep 26, 2013 5:33:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53531
;

-- Sep 26, 2013 5:33:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,0,53468,54020,17,53531,'Status',TO_TIMESTAMP('2013-09-26 17:33:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Status',10,TO_TIMESTAMP('2013-09-26 17:33:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 26, 2013 5:33:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54020 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 26, 2013 5:34:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53468,Updated=TO_TIMESTAMP('2013-09-26 17:34:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66941
;

-- Sep 26, 2013 5:38:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@Status@!''A''',Updated=TO_TIMESTAMP('2013-09-26 17:38:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66941
;

