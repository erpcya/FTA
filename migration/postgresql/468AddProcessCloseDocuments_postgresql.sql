-- 19/05/2014 10:56:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53631,'org.spin.process.CloseDocuments','N',TO_TIMESTAMP('2014-05-19 10:56:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Close Documents From Farmer Credit','Y',0,0,TO_TIMESTAMP('2014-05-19 10:56:37','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CloseDocuments Process')
;

-- 19/05/2014 10:56:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53631 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 19/05/2014 10:57:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Cerrar Documentos de Credito a Productor',Description='Cerrar Documentos de Credito a Productor',Updated=TO_TIMESTAMP('2014-05-19 10:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53631 AND AD_Language='es_VE'
;

-- 19/05/2014 10:57:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Cerrar Documentos de Credito a Productor',Description='Cerrar Documentos de Credito a Productor',Updated=TO_TIMESTAMP('2014-05-19 10:57:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53631 AND AD_Language='es_VE'
;

-- 19/05/2014 10:57:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53631,54777,30,52222,'C_BPartner_ID',TO_TIMESTAMP('2014-05-19 10:57:42','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','Business Partner ',10,TO_TIMESTAMP('2014-05-19 10:57:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/05/2014 10:57:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54777 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 19/05/2014 10:59:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52359,'FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' ',TO_TIMESTAMP('2014-05-19 10:59:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farmer Credit From Farmer And Complete','S',TO_TIMESTAMP('2014-05-19 10:59:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/05/2014 10:59:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='Farmer Credit From Farmer And Completed',Updated=TO_TIMESTAMP('2014-05-19 10:59:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52359
;

-- 19/05/2014 11:00:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='FTA_FarmerCredit From Farmer And Completed',Updated=TO_TIMESTAMP('2014-05-19 11:00:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52359
;

-- 19/05/2014 11:00:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56084,0,53631,54778,19,52359,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2014-05-19 11:00:36','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',0,'Y','Y','N','N','Credit/Loan',20,TO_TIMESTAMP('2014-05-19 11:00:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/05/2014 11:00:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54778 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 19/05/2014 11:02:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-19 11:02:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54778
;

-- 19/05/2014 11:03:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,196,0,53631,54779,19,52226,'C_DocType_ID',TO_TIMESTAMP('2014-05-19 11:03:11','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',22,'The Document Type determines document sequence and processing rules','Y','Y','Y','N','Document Type',30,TO_TIMESTAMP('2014-05-19 11:03:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/05/2014 11:03:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54779 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 19/05/2014 11:04:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,968,0,53631,54780,18,200,52030,'C_Charge_ID',TO_TIMESTAMP('2014-05-19 11:03:59','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02',22,'The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','Y','N','N','Charge',40,TO_TIMESTAMP('2014-05-19 11:03:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/05/2014 11:04:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54780 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 19/05/2014 11:04:22 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Element_ID=197, AD_Reference_ID=18, ColumnName='C_DocTypeTarget_ID',Updated=TO_TIMESTAMP('2014-05-19 11:04:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54779
;

-- 19/05/2014 11:04:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-19 11:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54780
;

