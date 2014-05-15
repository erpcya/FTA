-- Oct 14, 2013 9:39:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C'' | @CreditType@=''E''',Updated=TO_DATE('2013-10-14 09:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Oct 14, 2013 10:10:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53489,'org.spin.process.FarmerCreditDocGenerate','N',TO_DATE('2013-10-14 10:10:30','YYYY-MM-DD HH24:MI:SS'),100,'Generate the Loan Document','ECA02','You can Generate a AP Credit Memo and AP Invoice','Y','N','N','N','N','Document Generate','Y',0,0,TO_DATE('2013-10-14 10:10:30','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmerCredit DocGenerate')
;

-- Oct 14, 2013 10:10:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53489 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 14, 2013 10:11:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Documento de Préstamo',Description='Genera los Documentos de Préstamo',Help='Puede Generar una Nota de Crédito y una Factura dependiendo del Campo Beneficiario',Updated=TO_DATE('2013-10-14 10:11:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53489 AND AD_Language='es_MX'
;

-- Oct 14, 2013 10:30:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53489,54142,19,'AD_Org_ID',TO_DATE('2013-10-14 10:30:47','YYYY-MM-DD HH24:MI:SS'),100,'-1','ECA02',0,'Y','Y','Y','N','Org',10,TO_DATE('2013-10-14 10:30:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 10:30:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54142 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 10:31:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53489,54143,15,'DateDoc',TO_DATE('2013-10-14 10:31:18','YYYY-MM-DD HH24:MI:SS'),100,'@#Date@','ECA02',0,'Y','Y','Y','N','DateDoc',20,TO_DATE('2013-10-14 10:31:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 10:31:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54143 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 10:36:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52224,'C_DocType.DocBaseType IN (''API'',''APC'') AND C_DocType.IsSOTrx=''@IsSOTrx@''',TO_DATE('2013-10-14 10:36:29','YYYY-MM-DD HH24:MI:SS'),100,'Document Type AR/AP Credit Memos','ECA02','Y','C_DocType AR/AP Credit Memos','S',TO_DATE('2013-10-14 10:36:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 10:37:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53489,54144,18,170,52224,'C_DocTypeTarget_ID',TO_DATE('2013-10-14 10:37:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','N','Y','N','Document Type Credit Memo',30,TO_DATE('2013-10-14 10:37:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 10:37:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54144 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 10:38:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para_Trl SET Name='Tipo de Documento para Nota de Crédito',Description='Tipo de Documento que se utilizará para generar la Nota de Crédito',Updated=TO_DATE('2013-10-14 10:38:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54144 AND AD_Language='es_MX'
;

-- Oct 14, 2013 10:41:53 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52225,'C_DocType.DocBaseType IN (''ARI'', ''API'') AND C_DocType.IsSOTrx=''@IsSOTrx@''',TO_DATE('2013-10-14 10:41:50','YYYY-MM-DD HH24:MI:SS'),100,'Document Type AR/AP Invoice','ECA02','Y','C_DocType AR/AP Invoices','S',TO_DATE('2013-10-14 10:41:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 10:42:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1072,0,53489,54145,18,170,52225,'C_DocTypeInvoice_ID',TO_DATE('2013-10-14 10:42:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','sa',40,TO_DATE('2013-10-14 10:42:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 10:42:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54145 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 10:42:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN (''APC'',''ARC'') AND C_DocType.IsSOTrx=''@IsSOTrx@''',Updated=TO_DATE('2013-10-14 10:42:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52224
;

-- Oct 14, 2013 10:43:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,449,0,53489,54146,19,271,'M_PriceList_ID',TO_DATE('2013-10-14 10:43:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','ProceList',50,TO_DATE('2013-10-14 10:43:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 10:43:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54146 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 10:43:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53489,Updated=TO_DATE('2013-10-14 10:43:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66935
;

-- Oct 14, 2013 10:44:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Window SET IsSOTrx='Y',Updated=TO_DATE('2013-10-14 10:44:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53259
;

-- Oct 14, 2013 10:44:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Window SET IsSOTrx='N',Updated=TO_DATE('2013-10-14 10:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53259
;

-- Oct 14, 2013 10:49:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2013-10-14 10:49:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54144
;

-- Oct 14, 2013 10:49:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2013-10-14 10:49:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54145
;

-- Oct 14, 2013 10:50:58 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy) VALUES (0,1106,0,53489,54147,20,'IsSOTrx',TO_DATE('2013-10-14 10:50:56','YYYY-MM-DD HH24:MI:SS'),100,'Y','ECA02',0,'Y','Y','N','N','Stra','Y',60,TO_DATE('2013-10-14 10:50:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 10:50:58 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54147 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 10:52:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ReadOnlyLogic='1=1',Updated=TO_DATE('2013-10-14 10:52:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54147
;

-- Oct 14, 2013 10:52:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_DATE('2013-10-14 10:52:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54146
;

-- Oct 14, 2013 10:53:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1', IsMandatory='Y',Updated=TO_DATE('2013-10-14 10:53:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54146
;

-- Oct 14, 2013 10:58:48 AM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54146
;

-- Oct 14, 2013 10:58:48 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54146
;

-- Oct 14, 2013 10:58:59 AM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54147
;

-- Oct 14, 2013 10:58:59 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54147
;

-- Oct 14, 2013 11:00:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=NULL,Updated=TO_DATE('2013-10-14 11:00:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54144
;

-- Oct 14, 2013 11:00:35 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Val_Rule WHERE AD_Val_Rule_ID=52224
;

-- Oct 14, 2013 11:01:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN (''API'')', Description='Document Type AP Invoice', Name='C_DocType AP Invoices',Updated=TO_DATE('2013-10-14 11:01:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52225
;

-- Oct 14, 2013 11:01:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52226,'C_DocType.DocBaseType IN (''ARI'')',TO_DATE('2013-10-14 11:01:58','YYYY-MM-DD HH24:MI:SS'),100,'Document Type AR Invoice','ECA02','Y','C_DocType AR Invoices','S',TO_DATE('2013-10-14 11:01:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 11:02:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52226, Name='Document Type Collect',Updated=TO_DATE('2013-10-14 11:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54144
;

-- Oct 14, 2013 11:02:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=54144
;

-- Oct 14, 2013 11:03:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para_Trl SET Name='Tipo de Documento (CxC)',Description='Tipo de Documento que se utilizará para generar la CXC',Updated=TO_DATE('2013-10-14 11:03:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54144 AND AD_Language='es_MX'
;

-- Oct 14, 2013 11:04:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic='@Beneficiary_ID@!0',Updated=TO_DATE('2013-10-14 11:04:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54145
;

-- Oct 14, 2013 3:29:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53619,'N',TO_DATE('2013-10-14 15:29:42','YYYY-MM-DD HH24:MI:SS'),100,'Credit Definition Balance','ECA02','N','Y','Y','N','N','N','N','Y',0,'Credit Definition Balance','L','FTA_RV_CreditDefinitionBalance',TO_DATE('2013-10-14 15:29:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:29:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53619 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Oct 14, 2013 3:29:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53764,TO_DATE('2013-10-14 15:29:43','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_RV_CreditDefinitionBalance',1,'Y','N','Y','Y','FTA_RV_CreditDefinitionBalance','N',1000000,TO_DATE('2013-10-14 15:29:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:34:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68744,56108,0,19,53619,'FTA_CreditDefinition_ID',TO_DATE('2013-10-14 15:34:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit Definition',TO_DATE('2013-10-14 15:34:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:34:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68744 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:34:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68745,102,0,19,53619,'AD_Client_ID',TO_DATE('2013-10-14 15:34:58','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','N','N','N','Client',TO_DATE('2013-10-14 15:34:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:34:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68745 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:34:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68746,113,0,19,53619,'AD_Org_ID',TO_DATE('2013-10-14 15:34:58','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','N','N','N','Organization',TO_DATE('2013-10-14 15:34:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:34:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68746 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:34:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68747,245,0,16,53619,'Created',TO_DATE('2013-10-14 15:34:59','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','N','N','N','Created',TO_DATE('2013-10-14 15:34:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:34:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68747 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68748,246,0,18,110,53619,'CreatedBy',TO_DATE('2013-10-14 15:34:59','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','N','N','N','Created By',TO_DATE('2013-10-14 15:34:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68748 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68749,607,0,16,53619,'Updated',TO_DATE('2013-10-14 15:35:00','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','N','N','N','Updated',TO_DATE('2013-10-14 15:35:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68749 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68750,608,0,18,110,53619,'UpdatedBy',TO_DATE('2013-10-14 15:35:01','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','N','N','N','Updated By',TO_DATE('2013-10-14 15:35:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68750 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68751,348,0,20,53619,'IsActive',TO_DATE('2013-10-14 15:35:01','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','N','N','N','Active',TO_DATE('2013-10-14 15:35:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68751 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68752,196,0,19,53619,'C_DocType_ID',TO_DATE('2013-10-14 15:35:02','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',10,'The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','N','N','N','Document Type',TO_DATE('2013-10-14 15:35:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68752 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68753,265,0,16,53619,'DateDoc',TO_DATE('2013-10-14 15:35:02','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',29,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','N','N','N','N','N','N','N','N','N','Document Date',TO_DATE('2013-10-14 15:35:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68753 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68754,290,0,10,53619,'DocumentNo',TO_DATE('2013-10-14 15:35:03','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02',60,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','N','N','N','Document No',TO_DATE('2013-10-14 15:35:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68754 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68755,275,0,10,53619,'Description',TO_DATE('2013-10-14 15:35:03','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','N','N','Description',TO_DATE('2013-10-14 15:35:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68755 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68756,289,0,10,53619,'DocStatus',TO_DATE('2013-10-14 15:35:04','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','N','N','N','Document Status',TO_DATE('2013-10-14 15:35:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68756 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68757,160,0,12,53619,'Amt',TO_DATE('2013-10-14 15:35:04','YYYY-MM-DD HH24:MI:SS'),100,'Amount','ECA02',131089,'Amount','Y','N','N','N','N','N','N','N','N','N','Amount',TO_DATE('2013-10-14 15:35:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68757 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68758,56142,0,19,53619,'Category_ID',TO_DATE('2013-10-14 15:35:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Category',TO_DATE('2013-10-14 15:35:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68758 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68759,449,0,19,53619,'M_PriceList_ID',TO_DATE('2013-10-14 15:35:05','YYYY-MM-DD HH24:MI:SS'),100,'Unique identifier of a Price List','ECA02',10,'Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Y','N','N','N','N','N','N','N','N','N','Price List',TO_DATE('2013-10-14 15:35:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68759 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68760,469,0,10,53619,'Name',TO_DATE('2013-10-14 15:35:06','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','N','N','N','N','N','Name',1,TO_DATE('2013-10-14 15:35:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68760 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68761,55970,0,19,53619,'PlantingCycle_ID',TO_DATE('2013-10-14 15:35:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Planting Cycle',TO_DATE('2013-10-14 15:35:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68761 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68762,56109,0,19,53619,'FTA_CreditDefinitionLine_ID',TO_DATE('2013-10-14 15:35:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit Definition Line',TO_DATE('2013-10-14 15:35:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68762 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68763,439,0,11,53619,'Line',TO_DATE('2013-10-14 15:35:08','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document','ECA02',10,'Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Y','N','N','N','N','N','N','N','N','N','Line No',TO_DATE('2013-10-14 15:35:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68763 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68764,453,0,19,53619,'M_Product_Category_ID',TO_DATE('2013-10-14 15:35:08','YYYY-MM-DD HH24:MI:SS'),100,'Category of a Product','ECA02',10,'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Y','N','N','N','N','N','N','N','N','N','Product Category',TO_DATE('2013-10-14 15:35:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68764 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68765,454,0,19,53619,'M_Product_ID',TO_DATE('2013-10-14 15:35:09','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',10,'Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','N','N','N','Product',TO_DATE('2013-10-14 15:35:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68765 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68766,968,0,19,53619,'C_Charge_ID',TO_DATE('2013-10-14 15:35:09','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02',10,'The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','N','N','N','N','N','N','N','N','N','Charge',TO_DATE('2013-10-14 15:35:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68766 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68767,2108,0,14,53619,'LineDescription',TO_DATE('2013-10-14 15:35:10','YYYY-MM-DD HH24:MI:SS'),100,'Description of the Line','ECA02',2147483647,'Y','N','N','N','N','N','N','N','N','N','Line Description',TO_DATE('2013-10-14 15:35:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68767 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68768,215,0,19,53619,'C_UOM_ID',TO_DATE('2013-10-14 15:35:11','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','ECA02',10,'The UOM defines a unique non monetary Unit of Measure','Y','N','N','N','N','N','N','N','N','N','UOM',TO_DATE('2013-10-14 15:35:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68768 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68769,526,0,29,53619,'Qty',TO_DATE('2013-10-14 15:35:11','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02',131089,'The Quantity indicates the number of a specific product or item for this document.','Y','N','N','N','N','N','N','N','N','N','Quantity',TO_DATE('2013-10-14 15:35:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68769 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68770,1416,0,22,53619,'Price',TO_DATE('2013-10-14 15:35:12','YYYY-MM-DD HH24:MI:SS'),100,'Price','ECA02',131089,'The Price indicates the Price for a product or service.','Y','N','N','N','N','N','N','N','N','N','Price',TO_DATE('2013-10-14 15:35:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68770 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68771,187,0,19,53619,'C_BPartner_ID',TO_DATE('2013-10-14 15:35:12','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','N','N','N','Business Partner ',TO_DATE('2013-10-14 15:35:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68771 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68772,126,0,19,53619,'AD_Table_ID',TO_DATE('2013-10-14 15:35:13','YYYY-MM-DD HH24:MI:SS'),100,'Database Table information','ECA02',10,'The Database Table provides the information of the table definition','Y','N','N','N','N','N','N','N','N','N','Table',TO_DATE('2013-10-14 15:35:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68772 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68773,538,0,19,53619,'Record_ID',TO_DATE('2013-10-14 15:35:13','YYYY-MM-DD HH24:MI:SS'),100,'Direct internal record ID','ECA02',10,'The Record ID is the internal unique identifier of a record. Please note that zooming to the record may not be successful for Orders, Invoices and Shipment/Receipts as sometimes the Sales Order type is not known.','Y','N','N','N','N','N','N','N','N','N','Record ID',TO_DATE('2013-10-14 15:35:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68773 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68774,553,0,22,53619,'SO_CreditLimit',TO_DATE('2013-10-14 15:35:14','YYYY-MM-DD HH24:MI:SS'),100,'Total outstanding invoice amounts allowed','ECA02',131089,'The Credit Limit indicates the total amount allowed "on account" in primary accounting currency.  If the Credit Limit is 0, no check is performed.  Credit Management is based on the Total Open Amount, which includes Vendor activities.','Y','N','N','N','N','N','N','N','N','N','Credit Limit',TO_DATE('2013-10-14 15:35:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68774 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68775,554,0,22,53619,'SO_CreditUsed',TO_DATE('2013-10-14 15:35:14','YYYY-MM-DD HH24:MI:SS'),100,'Current open balance','ECA02',131089,'The Credit Used indicates the total amount of open or unpaid invoices in primary accounting currency for the Business Partner. Credit Management is based on the Total Open Amount, which includes Vendor activities.','Y','N','N','N','N','N','N','N','N','N','Credit Used',TO_DATE('2013-10-14 15:35:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68775 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:35:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68776,1986,0,22,53619,'Balance',TO_DATE('2013-10-14 15:35:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Balance',TO_DATE('2013-10-14 15:35:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:35:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68776 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:37:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=10,Updated=TO_DATE('2013-10-14 15:37:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68757
;

-- Oct 14, 2013 3:37:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=10,Updated=TO_DATE('2013-10-14 15:37:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68776
;

-- Oct 14, 2013 3:37:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=162,Updated=TO_DATE('2013-10-14 15:37:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68758
;

-- Oct 14, 2013 3:38:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=53570,Updated=TO_DATE('2013-10-14 15:38:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68771
;

-- Oct 14, 2013 3:38:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-10-14 15:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68753
;

-- Oct 14, 2013 3:38:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=131,Updated=TO_DATE('2013-10-14 15:38:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68756
;

-- Oct 14, 2013 3:39:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=255,Updated=TO_DATE('2013-10-14 15:39:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68767
;

-- Oct 14, 2013 3:39:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=53523,Updated=TO_DATE('2013-10-14 15:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68761
;

-- Oct 14, 2013 3:39:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=10,Updated=TO_DATE('2013-10-14 15:39:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68770
;

-- Oct 14, 2013 3:39:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=10,Updated=TO_DATE('2013-10-14 15:39:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68769
;

-- Oct 14, 2013 3:39:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=28,Updated=TO_DATE('2013-10-14 15:39:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68773
;

-- Oct 14, 2013 3:40:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=10,Updated=TO_DATE('2013-10-14 15:40:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68774
;

-- Oct 14, 2013 3:40:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=10,Updated=TO_DATE('2013-10-14 15:40:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68775
;

-- Oct 14, 2013 3:43:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Table SET AD_Window_ID=53282,Updated=TO_DATE('2013-10-14 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53619
;

-- Oct 14, 2013 3:43:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET Description='Credit Fact (All)', Name='Credit Fact (All)',Updated=TO_DATE('2013-10-14 15:43:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774
;

-- Oct 14, 2013 3:43:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=53774
;

-- Oct 14, 2013 3:43:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Movimiento (Todos)',Updated=TO_DATE('2013-10-14 15:43:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774 AND AD_Language='es_MX'
;

-- Oct 14, 2013 3:47:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53781,53619,53282,TO_DATE('2013-10-14 15:47:54','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Balance','ECA02','N','N','Y','N','N','Y','N','N','N','N','Farmer Balance','N',20,0,TO_DATE('2013-10-14 15:47:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:47:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53781 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Oct 14, 2013 3:48:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68751,69885,0,53781,TO_DATE('2013-10-14 15:48:05','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2013-10-14 15:48:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69885 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68757,69886,0,53781,TO_DATE('2013-10-14 15:48:06','YYYY-MM-DD HH24:MI:SS'),100,'Amount',10,'ECA02','Amount','Y','Y','Y','N','N','N','N','N','Amount',TO_DATE('2013-10-14 15:48:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69886 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68776,69887,0,53781,TO_DATE('2013-10-14 15:48:08','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Balance',TO_DATE('2013-10-14 15:48:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69887 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68771,69888,0,53781,TO_DATE('2013-10-14 15:48:09','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_DATE('2013-10-14 15:48:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69888 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68758,69889,0,53781,TO_DATE('2013-10-14 15:48:10','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Category',TO_DATE('2013-10-14 15:48:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69889 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68766,69890,0,53781,TO_DATE('2013-10-14 15:48:11','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges',10,'ECA02','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','Y','Y','N','N','N','N','N','Charge',TO_DATE('2013-10-14 15:48:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69890 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68745,69891,0,53781,TO_DATE('2013-10-14 15:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2013-10-14 15:48:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69891 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68744,69892,0,53781,TO_DATE('2013-10-14 15:48:13','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Credit Definition',TO_DATE('2013-10-14 15:48:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69892 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68762,69893,0,53781,TO_DATE('2013-10-14 15:48:15','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Credit Definition Line',TO_DATE('2013-10-14 15:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69893 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68774,69894,0,53781,TO_DATE('2013-10-14 15:48:16','YYYY-MM-DD HH24:MI:SS'),100,'Total outstanding invoice amounts allowed',10,'ECA02','The Credit Limit indicates the total amount allowed "on account" in primary accounting currency.  If the Credit Limit is 0, no check is performed.  Credit Management is based on the Total Open Amount, which includes Vendor activities.','Y','Y','Y','N','N','N','N','N','Credit Limit',TO_DATE('2013-10-14 15:48:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69894 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68775,69895,0,53781,TO_DATE('2013-10-14 15:48:17','YYYY-MM-DD HH24:MI:SS'),100,'Current open balance',10,'ECA02','The Credit Used indicates the total amount of open or unpaid invoices in primary accounting currency for the Business Partner. Credit Management is based on the Total Open Amount, which includes Vendor activities.','Y','Y','Y','N','N','N','N','N','Credit Used',TO_DATE('2013-10-14 15:48:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69895 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68755,69896,0,53781,TO_DATE('2013-10-14 15:48:18','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2013-10-14 15:48:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69896 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68753,69897,0,53781,TO_DATE('2013-10-14 15:48:19','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',29,'ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',TO_DATE('2013-10-14 15:48:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69897 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68754,69898,0,53781,TO_DATE('2013-10-14 15:48:20','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',60,'ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Document No',TO_DATE('2013-10-14 15:48:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69898 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68756,69899,0,53781,TO_DATE('2013-10-14 15:48:22','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',2,'ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','Y','N','N','N','N','N','Document Status',TO_DATE('2013-10-14 15:48:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69899 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68752,69900,0,53781,TO_DATE('2013-10-14 15:48:23','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',10,'ECA02','The Document Type determines document sequence and processing rules','Y','Y','Y','N','N','N','N','N','Document Type',TO_DATE('2013-10-14 15:48:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69900 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68767,69901,0,53781,TO_DATE('2013-10-14 15:48:24','YYYY-MM-DD HH24:MI:SS'),100,'Description of the Line',255,'ECA02','Y','Y','Y','N','N','N','N','N','Line Description',TO_DATE('2013-10-14 15:48:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69901 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68763,69902,0,53781,TO_DATE('2013-10-14 15:48:25','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document',10,'ECA02','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Y','Y','Y','N','N','N','N','N','Line No',TO_DATE('2013-10-14 15:48:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69902 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68760,69903,0,53781,TO_DATE('2013-10-14 15:48:26','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_DATE('2013-10-14 15:48:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69903 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68746,69904,0,53781,TO_DATE('2013-10-14 15:48:27','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2013-10-14 15:48:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69904 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68761,69905,0,53781,TO_DATE('2013-10-14 15:48:28','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Planting Cycle',TO_DATE('2013-10-14 15:48:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69905 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68770,69906,0,53781,TO_DATE('2013-10-14 15:48:30','YYYY-MM-DD HH24:MI:SS'),100,'Price',10,'ECA02','The Price indicates the Price for a product or service.','Y','Y','Y','N','N','N','N','N','Price',TO_DATE('2013-10-14 15:48:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69906 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68759,69907,0,53781,TO_DATE('2013-10-14 15:48:31','YYYY-MM-DD HH24:MI:SS'),100,'Unique identifier of a Price List',10,'ECA02','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Y','Y','Y','N','N','N','N','N','Price List',TO_DATE('2013-10-14 15:48:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69907 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68765,69908,0,53781,TO_DATE('2013-10-14 15:48:32','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',10,'ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',TO_DATE('2013-10-14 15:48:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69908 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68764,69909,0,53781,TO_DATE('2013-10-14 15:48:33','YYYY-MM-DD HH24:MI:SS'),100,'Category of a Product',10,'ECA02','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Y','Y','Y','N','N','N','N','N','Product Category',TO_DATE('2013-10-14 15:48:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69909 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68769,69910,0,53781,TO_DATE('2013-10-14 15:48:34','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',10,'ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','Y','Y','N','N','N','N','N','Quantity',TO_DATE('2013-10-14 15:48:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69910 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68773,69911,0,53781,TO_DATE('2013-10-14 15:48:35','YYYY-MM-DD HH24:MI:SS'),100,'Direct internal record ID',10,'ECA02','The Record ID is the internal unique identifier of a record. Please note that zooming to the record may not be successful for Orders, Invoices and Shipment/Receipts as sometimes the Sales Order type is not known.','Y','Y','Y','N','N','N','N','N','Record ID',TO_DATE('2013-10-14 15:48:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69911 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68772,69912,0,53781,TO_DATE('2013-10-14 15:48:36','YYYY-MM-DD HH24:MI:SS'),100,'Database Table information',10,'ECA02','The Database Table provides the information of the table definition','Y','Y','Y','N','N','N','N','N','Table',TO_DATE('2013-10-14 15:48:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69912 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:48:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68768,69913,0,53781,TO_DATE('2013-10-14 15:48:37','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure',10,'ECA02','The UOM defines a unique non monetary Unit of Measure','Y','Y','Y','N','N','N','N','N','UOM',TO_DATE('2013-10-14 15:48:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:48:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69913 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69885
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69889
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69890
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69892
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69893
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69899
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69906
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69907
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69908
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69909
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69913
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=69891
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=69904
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=69888
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=69900
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=69898
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=69897
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=69905
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=69896
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=69901
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=69886
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=69902
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=69894
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=69895
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=69887
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=69903
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=69910
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=69912
;

-- Oct 14, 2013 3:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=69911
;

-- Oct 14, 2013 3:56:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69910
;

-- Oct 14, 2013 3:56:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=69903
;

-- Oct 14, 2013 3:56:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=69905
;

-- Oct 14, 2013 3:56:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=69896
;

-- Oct 14, 2013 3:56:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=69901
;

-- Oct 14, 2013 3:56:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=69894
;

-- Oct 14, 2013 3:56:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=69895
;

-- Oct 14, 2013 3:56:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=69887
;

-- Oct 14, 2013 3:56:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=69912
;

-- Oct 14, 2013 3:56:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=69911
;

-- Oct 14, 2013 3:57:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-14 15:57:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69904
;

-- Oct 14, 2013 3:58:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-14 15:58:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69900
;

-- Oct 14, 2013 3:58:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-14 15:58:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69897
;

-- Oct 14, 2013 3:58:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-14 15:58:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69905
;

-- Oct 14, 2013 3:58:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2013-10-14 15:58:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69903
;

-- Oct 14, 2013 3:59:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2013-10-14 15:59:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69898
;

-- Oct 14, 2013 3:59:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=126,Updated=TO_DATE('2013-10-14 15:59:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69902
;

-- Oct 14, 2013 3:59:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2013-10-14 15:59:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69901
;

-- Oct 14, 2013 3:59:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=10,Updated=TO_DATE('2013-10-14 15:59:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68767
;

-- Oct 14, 2013 3:59:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-14 15:59:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69895
;

-- Oct 14, 2013 4:00:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-14 16:00:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69901
;

-- Oct 14, 2013 4:00:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-14 16:00:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69911
;

-- Oct 14, 2013 4:00:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET SeqNo=30,Updated=TO_DATE('2013-10-14 16:00:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774
;

-- Oct 14, 2013 4:00:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET SeqNo=10,Updated=TO_DATE('2013-10-14 16:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53781
;

-- Oct 14, 2013 4:00:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET SeqNo=20,Updated=TO_DATE('2013-10-14 16:00:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774
;

-- Oct 14, 2013 4:04:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET WhereClause='AD_Table_ID = 318 AND Balance != 0',Updated=TO_DATE('2013-10-14 16:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774
;

-- Oct 14, 2013 4:05:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Window SET WindowType='Q',Updated=TO_DATE('2013-10-14 16:05:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53282
;

-- Oct 14, 2013 4:05:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET WhereClause='AD_Table_ID = 318 AND Balance IS NOT NULL',Updated=TO_DATE('2013-10-14 16:05:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774
;

-- Oct 14, 2013 4:10:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Image_ID=100, OrderByClause='C_BPartner_ID',Updated=TO_DATE('2013-10-14 16:10:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774
;

-- Oct 14, 2013 4:10:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET WhereClause=NULL,Updated=TO_DATE('2013-10-14 16:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774
;

-- Oct 14, 2013 4:10:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET WhereClause='AD_Table_ID = 318 AND Balance IS NOT NULL',Updated=TO_DATE('2013-10-14 16:10:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53781
;

-- Oct 14, 2013 4:10:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET OrderByClause=NULL,Updated=TO_DATE('2013-10-14 16:10:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774
;

-- Oct 14, 2013 4:10:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET OrderByClause='C_BPartner_ID',Updated=TO_DATE('2013-10-14 16:10:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53781
;

-- Oct 14, 2013 4:11:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Image_ID=NULL,Updated=TO_DATE('2013-10-14 16:11:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774
;

-- Oct 14, 2013 4:11:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Window SET AD_Image_ID=100,Updated=TO_DATE('2013-10-14 16:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53282
;

-- Oct 14, 2013 4:11:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Image_ID=106,Updated=TO_DATE('2013-10-14 16:11:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53781
;

-- Oct 14, 2013 4:14:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:14:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68771
;

-- Oct 14, 2013 4:14:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:14:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68766
;

-- Oct 14, 2013 4:14:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:14:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68752
;

-- Oct 14, 2013 4:14:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:14:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68768
;

-- Oct 14, 2013 4:14:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:14:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68753
;

-- Oct 14, 2013 4:14:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:14:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68755
;

-- Oct 14, 2013 4:15:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:15:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68754
;

-- Oct 14, 2013 4:15:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:15:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68767
;

-- Oct 14, 2013 4:15:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:15:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68764
;

-- Oct 14, 2013 4:16:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68760
;

-- Oct 14, 2013 4:16:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:16:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68761
;

-- Oct 14, 2013 4:18:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Saldo de Productor',Description='Saldo de Productor',Updated=TO_DATE('2013-10-14 16:18:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53781 AND AD_Language='es_MX'
;

-- Oct 14, 2013 4:20:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68777,56084,0,19,53619,'FTA_FarmerCredit_ID',TO_DATE('2013-10-14 16:20:12','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit/Loan',TO_DATE('2013-10-14 16:20:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 4:20:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68777 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 4:20:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-14 16:20:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68777
;

-- Oct 14, 2013 4:21:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68777,69914,0,53781,TO_DATE('2013-10-14 16:21:00','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan',10,'ECA02','Y','Y','Y','N','N','N','N','N','Credit/Loan',TO_DATE('2013-10-14 16:21:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 4:21:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69914 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 4:21:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=69914
;

-- Oct 14, 2013 4:21:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=69901
;

-- Oct 14, 2013 4:21:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=69894
;

-- Oct 14, 2013 4:21:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=69895
;

-- Oct 14, 2013 4:21:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=69887
;

-- Oct 14, 2013 4:21:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=69912
;

-- Oct 14, 2013 4:21:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=69911
;

-- Oct 14, 2013 4:21:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=69914
;

-- Oct 14, 2013 4:21:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=69902
;

-- Oct 14, 2013 4:22:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_DATE('2013-10-14 16:22:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69902
;

-- Oct 14, 2013 4:22:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=126,Updated=TO_DATE('2013-10-14 16:22:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69914
;

-- Oct 14, 2013 4:23:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52207,Updated=TO_DATE('2013-10-14 16:23:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68777
;

-- Oct 14, 2013 4:30:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=69913
;

-- Oct 14, 2013 4:30:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=69910
;

-- Oct 14, 2013 4:30:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=69906
;

-- Oct 14, 2013 4:30:21 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=69912
;

-- Oct 14, 2013 4:30:21 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=69912
;

-- Oct 14, 2013 4:30:21 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=69911
;

-- Oct 14, 2013 4:30:21 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=69911
;

-- Oct 14, 2013 4:30:21 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=69913
;

-- Oct 14, 2013 4:30:21 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=69913
;

-- Oct 14, 2013 4:30:21 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=69910
;

-- Oct 14, 2013 4:30:21 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=69910
;

-- Oct 14, 2013 4:30:21 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=69906
;

-- Oct 14, 2013 4:30:21 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=69906
;

-- Oct 14, 2013 4:31:25 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=68770
;

-- Oct 14, 2013 4:31:26 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=68770
;

-- Oct 14, 2013 4:31:26 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=68769
;

-- Oct 14, 2013 4:31:26 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=68769
;

-- Oct 14, 2013 4:31:27 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=68773
;

-- Oct 14, 2013 4:31:27 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=68773
;

-- Oct 14, 2013 4:31:33 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=68768
;

-- Oct 14, 2013 4:31:33 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=68768
;

-- Oct 14, 2013 4:33:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69903
;

-- Oct 14, 2013 4:33:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=69892
;

-- Oct 14, 2013 4:34:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=69893
;

-- Oct 14, 2013 4:34:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=69914
;

-- Oct 14, 2013 4:34:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=69902
;

-- Oct 14, 2013 4:34:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=69901
;

-- Oct 14, 2013 4:34:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=69894
;

-- Oct 14, 2013 4:34:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=69895
;

-- Oct 14, 2013 4:34:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=69887
;

-- Oct 14, 2013 4:34:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-14 16:34:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69893
;

-- Oct 14, 2013 5:00:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,WhereClause) VALUES (0,0,53074,53619,TO_DATE('2013-10-14 17:00:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_CreditDefinitionBalance',TO_DATE('2013-10-14 17:00:44','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_CreditDefinitionBalance.AD_Table_ID = 318 AND FTA_RV_CreditDefinitionBalance.Balance IS NOT NULL')
;

-- Oct 14, 2013 5:01:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53490,53074,'N',TO_DATE('2013-10-14 17:01:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Farmer Balance','Y',0,0,TO_DATE('2013-10-14 17:01:04','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_CreditDefinitionBalance Balance')
;

-- Oct 14, 2013 5:01:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53490 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 14, 2013 5:02:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53490,54148,30,53570,'C_BPartner_ID',TO_DATE('2013-10-14 17:02:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Farmer',10,TO_DATE('2013-10-14 17:02:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 5:02:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54148 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 5:03:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53490,54149,15,'DateDoc',TO_DATE('2013-10-14 17:03:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','Y','DateDoc',20,TO_DATE('2013-10-14 17:03:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 5:03:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54149 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 5:03:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_DATE('2013-10-14 17:03:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54149
;

-- Oct 14, 2013 5:05:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56084,0,53490,54150,19,52207,'FTA_FarmerCredit_ID',TO_DATE('2013-10-14 17:05:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','FTA_FarmerCredit_ID',40,TO_DATE('2013-10-14 17:05:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 5:05:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54150 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 5:05:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_DATE('2013-10-14 17:05:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54150
;

-- Oct 14, 2013 5:08:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53651,0,53490,TO_DATE('2013-10-14 17:08:30','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Balance','ECA02','Y','Y','N','Y','N','Farmer Balance',TO_DATE('2013-10-14 17:08:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 5:08:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53651 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Oct 14, 2013 5:08:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53651, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53651)
;

-- Oct 14, 2013 5:08:40 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53651
;

-- Oct 14, 2013 5:08:40 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53637
;

-- Oct 14, 2013 5:08:40 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53620
;

-- Oct 14, 2013 5:08:40 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Oct 14, 2013 5:08:40 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53603
;

