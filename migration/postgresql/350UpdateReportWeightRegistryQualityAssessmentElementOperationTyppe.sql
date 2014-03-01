-- Jan 17, 2014 11:43:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56084,0,53514,54382,18,53571,52207,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2014-01-17 11:43:35','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',0,'Y','Y','N','N','Credit/Loan',165,TO_TIMESTAMP('2014-01-17 11:43:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 11:43:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54382 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 11:43:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=33,Updated=TO_TIMESTAMP('2014-01-17 11:43:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54382
;

-- Jan 17, 2014 11:55:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-01-17 11:55:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54148
;

-- Jan 17, 2014 11:55:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-01-17 11:55:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54150
;

-- Jan 17, 2014 11:56:30 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54382
;

-- Jan 17, 2014 11:56:30 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54382
;

-- Jan 17, 2014 11:56:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56108,0,53514,54383,18,53641,'FTA_CreditDefinition_ID',TO_TIMESTAMP('2014-01-17 11:56:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Credit Definition',165,TO_TIMESTAMP('2014-01-17 11:56:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 11:56:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54383 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 11:57:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=29,Updated=TO_TIMESTAMP('2014-01-17 11:57:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54383
;

-- Jan 17, 2014 11:57:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=9,Updated=TO_TIMESTAMP('2014-01-17 11:57:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54225
;

-- Jan 17, 2014 11:58:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=1,Updated=TO_TIMESTAMP('2014-01-17 11:58:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54212
;

-- Jan 17, 2014 11:58:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56130,0,53514,54384,10,'Ext_Guide',TO_TIMESTAMP('2014-01-17 11:58:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Ext. Guide',165,TO_TIMESTAMP('2014-01-17 11:58:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 11:58:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54384 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 11:59:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56440,0,53514,54385,18,53568,'FTA_Vehicle_ID',TO_TIMESTAMP('2014-01-17 11:59:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Vehicle',175,TO_TIMESTAMP('2014-01-17 11:59:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 11:59:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54385 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 11:59:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56607,0,53514,54386,17,53597,'OperationType',TO_TIMESTAMP('2014-01-17 11:59:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','Y','N','N','Operation Type',185,TO_TIMESTAMP('2014-01-17 11:59:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 11:59:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54386 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 11:59:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=81,Updated=TO_TIMESTAMP('2014-01-17 11:59:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54384
;

-- Jan 17, 2014 11:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=71,Updated=TO_TIMESTAMP('2014-01-17 11:59:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54385
;

-- Jan 17, 2014 12:00:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=21,Updated=TO_TIMESTAMP('2014-01-17 12:00:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54386
;

-- Jan 17, 2014 2:07:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1383,0,53490,54387,19,'C_BP_Group_ID',TO_TIMESTAMP('2014-01-17 14:07:28','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner Group','ECA02',22,'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.','Y','Y','N','N','Business Partner Group',40,TO_TIMESTAMP('2014-01-17 14:07:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:07:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54387 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:07:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=6,Updated=TO_TIMESTAMP('2014-01-17 14:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54387
;

-- Jan 17, 2014 2:25:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71308,1383,0,19,53619,'C_BP_Group_ID',TO_TIMESTAMP('2014-01-17 14:25:17','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner Group','ECA02',10,'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.','Y','N','N','N','N','N','N','N','N','N','Business Partner Group',TO_TIMESTAMP('2014-01-17 14:25:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 17, 2014 2:25:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71308 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 2:27:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-01-17 14:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72140
;

-- Jan 17, 2014 2:28:25 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=72140
;

-- Jan 17, 2014 2:28:25 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=72140
;

-- Jan 17, 2014 2:29:00 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71302
;

-- Jan 17, 2014 2:29:00 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71302
;

-- Jan 17, 2014 2:29:08 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=56995
;

-- Jan 17, 2014 2:29:08 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Element WHERE AD_Element_ID=56995
;

-- Jan 17, 2014 2:29:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-17 14:29:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71304
;

-- Jan 17, 2014 2:29:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-17 14:29:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71303
;

-- Jan 17, 2014 2:29:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-17 14:29:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71295
;

-- Jan 17, 2014 2:29:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-17 14:29:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71296
;

-- Jan 17, 2014 2:30:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-17 14:30:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71285
;

-- Jan 17, 2014 2:30:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-17 14:30:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71286
;

-- Jan 17, 2014 2:31:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Element_ID=958, ColumnName='PrintName', Description='The label text to be printed on a document or correspondence.', Help='The Label to be printed indicates the name that will be printed on a document or correspondence. The max length is 2000 characters.', Name='Print Text', SeqNo=2,Updated=TO_TIMESTAMP('2014-01-17 14:31:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71305
;

-- Jan 17, 2014 2:31:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=71305
;

-- Jan 17, 2014 2:31:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Print Text', Description='The label text to be printed on a document or correspondence.', Help='The Label to be printed indicates the name that will be printed on a document or correspondence. The max length is 2000 characters.' WHERE AD_Column_ID=71305 AND IsCentrallyMaintained='Y'
;

-- Jan 17, 2014 2:36:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-17 14:36:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71303
;

-- Jan 17, 2014 2:40:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Grupo de Cálculo',Updated=TO_TIMESTAMP('2014-01-17 14:40:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53884 AND AD_Language='es_MX'
;

-- Jan 17, 2014 2:41:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Grupo de Cálculo',Updated=TO_TIMESTAMP('2014-01-17 14:41:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53884 AND AD_Language='es_VE'
;

-- Jan 17, 2014 2:43:47 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54348
;

-- Jan 17, 2014 2:43:47 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54348
;

-- Jan 17, 2014 2:43:50 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54349
;

-- Jan 17, 2014 2:43:50 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54349
;

-- Jan 17, 2014 2:43:54 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54350
;

-- Jan 17, 2014 2:43:54 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54350
;

-- Jan 17, 2014 2:44:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=53084, AD_Workflow_ID=NULL, Classname=NULL, Description=NULL, Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='Y', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_TIMESTAMP('2014-01-17 14:44:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551
;

-- Jan 17, 2014 2:44:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53551
;

-- Jan 17, 2014 2:44:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Detail Quality Analysis',Updated=TO_TIMESTAMP('2014-01-17 14:44:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53739
;

-- Jan 17, 2014 2:44:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53739
;

-- Jan 17, 2014 2:44:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53551,54388,19,'AD_Org_ID',TO_TIMESTAMP('2014-01-17 14:44:17','YYYY-MM-DD HH24:MI:SS'),100,'-1','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',1,TO_TIMESTAMP('2014-01-17 14:44:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54388 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,459,0,53551,54389,18,197,'M_Warehouse_ID',TO_TIMESTAMP('2014-01-17 14:44:19','YYYY-MM-DD HH24:MI:SS'),100,'-1','Storage Warehouse and Service Point','ECA02',22,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','N','N','Warehouse',9,TO_TIMESTAMP('2014-01-17 14:44:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54389 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56129,0,53551,54390,18,53537,'FTA_EntryTicket_ID',TO_TIMESTAMP('2014-01-17 14:44:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Entry Ticket',20,TO_TIMESTAMP('2014-01-17 14:44:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54390 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56607,0,53551,54391,17,53597,'OperationType',TO_TIMESTAMP('2014-01-17 14:44:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','Y','N','N','Operation Type',21,TO_TIMESTAMP('2014-01-17 14:44:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54391 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56108,0,53551,54392,18,53641,'FTA_CreditDefinition_ID',TO_TIMESTAMP('2014-01-17 14:44:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Credit Definition',29,TO_TIMESTAMP('2014-01-17 14:44:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54392 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53551,54393,30,53570,'C_BPartner_ID',TO_TIMESTAMP('2014-01-17 14:44:39','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',30,TO_TIMESTAMP('2014-01-17 14:44:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54393 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56251,0,53551,54394,17,53539,'AnalysisType',TO_TIMESTAMP('2014-01-17 14:44:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Analysis Type',40,TO_TIMESTAMP('2014-01-17 14:44:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54394 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,196,0,53551,54395,19,52192,'C_DocType_ID',TO_TIMESTAMP('2014-01-17 14:44:46','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',22,'The Document Type determines document sequence and processing rules','Y','Y','N','N','Document Type',50,TO_TIMESTAMP('2014-01-17 14:44:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54395 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56441,0,53551,54396,18,53567,'FTA_Driver_ID',TO_TIMESTAMP('2014-01-17 14:44:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Driver',70,TO_TIMESTAMP('2014-01-17 14:44:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54396 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56440,0,53551,54397,18,53568,'FTA_Vehicle_ID',TO_TIMESTAMP('2014-01-17 14:44:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Vehicle',71,TO_TIMESTAMP('2014-01-17 14:44:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54397 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,55979,0,53551,54398,30,53516,'FTA_MobilizationGuide_ID',TO_TIMESTAMP('2014-01-17 14:44:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Mobilization Guide',80,TO_TIMESTAMP('2014-01-17 14:44:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54398 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:44:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56130,0,53551,54399,10,'Ext_Guide',TO_TIMESTAMP('2014-01-17 14:44:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Ext. Guide',81,TO_TIMESTAMP('2014-01-17 14:44:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:44:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54399 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:45:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56131,0,53551,54400,30,53538,'FTA_QualityAnalysis_ID',TO_TIMESTAMP('2014-01-17 14:44:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Quality Analysis',90,TO_TIMESTAMP('2014-01-17 14:44:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:45:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54400 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:45:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56139,0,53551,54401,15,'InDate',TO_TIMESTAMP('2014-01-17 14:45:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','Y','In Date',100,TO_TIMESTAMP('2014-01-17 14:45:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:45:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54401 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:45:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56140,0,53551,54402,15,'OutDate',TO_TIMESTAMP('2014-01-17 14:45:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','Y','Out Date',101,TO_TIMESTAMP('2014-01-17 14:45:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:45:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54402 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:45:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,454,0,53551,54403,30,162,'M_Product_ID',TO_TIMESTAMP('2014-01-17 14:45:07','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','Product',110,TO_TIMESTAMP('2014-01-17 14:45:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:45:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54403 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:45:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56562,0,53551,54404,17,53587,'SelectionWeight',TO_TIMESTAMP('2014-01-17 14:45:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Selection Weight',130,TO_TIMESTAMP('2014-01-17 14:45:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:45:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54404 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:45:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53551,54405,15,'DateDoc',TO_TIMESTAMP('2014-01-17 14:45:15','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','Y','Document Date',150,TO_TIMESTAMP('2014-01-17 14:45:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:45:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54405 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:45:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,53551,54406,17,131,'DocStatus',TO_TIMESTAMP('2014-01-17 14:45:22','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','Document Status',155,TO_TIMESTAMP('2014-01-17 14:45:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 2:45:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54406 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 17, 2014 2:45:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AD_ReportView_ID=NULL,Updated=TO_TIMESTAMP('2014-01-17 14:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551
;

-- Jan 17, 2014 2:46:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Name='Detail Weight Registry Quality Assessment',Updated=TO_TIMESTAMP('2014-01-17 14:46:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551
;

-- Jan 17, 2014 2:46:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53551
;

-- Jan 17, 2014 2:46:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Detail Weight Registry Quality Assessment',Updated=TO_TIMESTAMP('2014-01-17 14:46:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53739
;

-- Jan 17, 2014 2:46:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53739
;

-- Jan 17, 2014 2:47:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Value='FTA_RecordWeight Quality Assessment',Updated=TO_TIMESTAMP('2014-01-17 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551
;

-- Jan 17, 2014 2:50:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-01-17 14:50:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54405
;

-- Jan 17, 2014 2:52:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Operación',PrintName='Tipo de Operación',Updated=TO_TIMESTAMP('2014-01-17 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56607 AND AD_Language='es_MX'
;

-- Jan 17, 2014 2:52:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Operación',PrintName='Tipo de Operación',Updated=TO_TIMESTAMP('2014-01-17 14:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56607 AND AD_Language='es_VE'
;

-- Jan 17, 2014 3:03:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53490,54407,19,'AD_Org_ID',TO_TIMESTAMP('2014-01-17 15:03:21','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',1,TO_TIMESTAMP('2014-01-17 15:03:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 3:03:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54407 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

