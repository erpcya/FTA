-- Sep 12, 2013 10:44:23 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50016,TO_TIMESTAMP('2013-09-12 10:44:21','YYYY-MM-DD HH24:MI:SS'),100,'Record Weight Unliquidated','ECA02','Record Weight Unliquidated','Y','Record Weight Unliquidated',TO_TIMESTAMP('2013-09-12 10:44:21','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RecordWeightUnLiquidated')
;

-- Sep 12, 2013 10:44:23 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50016 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- Sep 12, 2013 10:45:14 AM VET
-- SFAndroid Contribution
UPDATE AD_View_Trl SET Name='Registros de Peso sin Liquidar',Description='Registros de Peso sin Liquidar',Help='Registros de Peso sin Liquidar',Updated=TO_TIMESTAMP('2013-09-12 10:45:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=50016
;

-- Sep 12, 2013 10:45:50 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,53586,50053,50016,TO_TIMESTAMP('2013-09-12 10:45:49','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'RWUL',TO_TIMESTAMP('2013-09-12 10:45:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:45:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67749,0,52061,50053,50016,'RWUL_AD_Client_ID','RWUL.AD_Client_ID',TO_TIMESTAMP('2013-09-12 10:45:53','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_TIMESTAMP('2013-09-12 10:45:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:45:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67750,0,52062,50053,50016,'RWUL_AD_Org_ID','RWUL.AD_Org_ID',TO_TIMESTAMP('2013-09-12 10:45:54','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_TIMESTAMP('2013-09-12 10:45:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:45:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67760,0,52063,50053,50016,'RWUL_Category_ID','RWUL.Category_ID',TO_TIMESTAMP('2013-09-12 10:45:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Category',TO_TIMESTAMP('2013-09-12 10:45:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:45:59 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67763,0,52064,50053,50016,'RWUL_C_BPartner_ID','RWUL.C_BPartner_ID',TO_TIMESTAMP('2013-09-12 10:45:57','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Business Partner ',TO_TIMESTAMP('2013-09-12 10:45:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:00 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67753,0,52065,50053,50016,'RWUL_DateDoc','RWUL.DateDoc',TO_TIMESTAMP('2013-09-12 10:45:59','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Document Date',TO_TIMESTAMP('2013-09-12 10:45:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:02 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67756,0,52066,50053,50016,'RWUL_FTA_EntryTicket_ID','RWUL.FTA_EntryTicket_ID',TO_TIMESTAMP('2013-09-12 10:46:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Entry Ticket',TO_TIMESTAMP('2013-09-12 10:46:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:03 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67761,0,52067,50053,50016,'RWUL_FTA_FarmDivision_ID','RWUL.FTA_FarmDivision_ID',TO_TIMESTAMP('2013-09-12 10:46:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farm Division',TO_TIMESTAMP('2013-09-12 10:46:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:05 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67759,0,52068,50053,50016,'RWUL_FTA_FarmerCredit_ID','RWUL.FTA_FarmerCredit_ID',TO_TIMESTAMP('2013-09-12 10:46:03','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','Credit/Loan',TO_TIMESTAMP('2013-09-12 10:46:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:06 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67762,0,52069,50053,50016,'RWUL_FTA_Farm_ID','RWUL.FTA_Farm_ID',TO_TIMESTAMP('2013-09-12 10:46:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farm',TO_TIMESTAMP('2013-09-12 10:46:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:08 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67758,0,52070,50053,50016,'RWUL_FTA_Farming_ID','RWUL.FTA_Farming_ID',TO_TIMESTAMP('2013-09-12 10:46:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farming',TO_TIMESTAMP('2013-09-12 10:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:09 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67757,0,52071,50053,50016,'RWUL_FTA_MobilizationGuide_ID','RWUL.FTA_MobilizationGuide_ID',TO_TIMESTAMP('2013-09-12 10:46:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Mobilization Guide',TO_TIMESTAMP('2013-09-12 10:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:11 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67754,0,52072,50053,50016,'RWUL_FTA_QualityAnalysis_ID','RWUL.FTA_QualityAnalysis_ID',TO_TIMESTAMP('2013-09-12 10:46:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Quality Analysis',TO_TIMESTAMP('2013-09-12 10:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:13 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67751,0,52073,50053,50016,'RWUL_FTA_RecordWeight_ID','RWUL.FTA_RecordWeight_ID',TO_TIMESTAMP('2013-09-12 10:46:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Record Weight',TO_TIMESTAMP('2013-09-12 10:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:14 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67752,0,52074,50053,50016,'RWUL_NetWeight','RWUL.NetWeight',TO_TIMESTAMP('2013-09-12 10:46:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Net Weight',TO_TIMESTAMP('2013-09-12 10:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:16 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67764,0,52075,50053,50016,'RWUL_PayWeight','RWUL.PayWeight',TO_TIMESTAMP('2013-09-12 10:46:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Pay Weight',TO_TIMESTAMP('2013-09-12 10:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:18 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67765,0,52076,50053,50016,'RWUL_Price','RWUL.Price',TO_TIMESTAMP('2013-09-12 10:46:16','YYYY-MM-DD HH24:MI:SS'),100,'Price','ECA02','The Price indicates the Price for a product or service.','Y','Price',TO_TIMESTAMP('2013-09-12 10:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:46:21 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67755,0,52077,50053,50016,'RWUL_QualityAnalysis_ID','RWUL.QualityAnalysis_ID',TO_TIMESTAMP('2013-09-12 10:46:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Quality Analysis',TO_TIMESTAMP('2013-09-12 10:46:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:57:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53456,'org.spin.process.FarmerLiquidationGenerate','N',TO_TIMESTAMP('2013-09-12 10:57:55','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Liquidation Generate','ECA02','Generates Farmer Liquidation','Y','N','N','N','N','Farmer Liquidation Generate ','Y',0,0,TO_TIMESTAMP('2013-09-12 10:57:55','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmerLiquidation Generate')
;

-- Sep 12, 2013 10:57:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53456 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Sep 12, 2013 10:58:42 AM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Generar Liquidación a Productor',Description='Generar Liquidación a Productor',Help='Generar Liquidación a Productor',Updated=TO_TIMESTAMP('2013-09-12 10:58:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53456 AND AD_Language='es_MX'
;

-- Sep 12, 2013 10:59:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53456,53989,15,'DateDoc',TO_TIMESTAMP('2013-09-12 10:59:52','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','Document Date',10,TO_TIMESTAMP('2013-09-12 10:59:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 10:59:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53989 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 12, 2013 11:01:31 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,53456,53990,17,131,219,'DocStatus',TO_TIMESTAMP('2013-09-12 11:01:29','YYYY-MM-DD HH24:MI:SS'),100,'CO','The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','Y','N','Document Status',20,TO_TIMESTAMP('2013-09-12 11:01:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:01:31 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53990 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 12, 2013 11:02:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value) VALUES ('3',50021,0,0,53456,50016,TO_TIMESTAMP('2013-09-12 11:02:19','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Liquidation Generate','ECA02','Process to Generate Farmer Liquidation','Y','N','Farmer Liquidation Generate','N',TO_TIMESTAMP('2013-09-12 11:02:19','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Generate Farmer Liquidation')
;

-- Sep 12, 2013 11:02:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50021 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- Sep 12, 2013 11:02:29 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53267,50021,0,102,0,19,52061,TO_TIMESTAMP('2013-09-12 11:02:27','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',10,TO_TIMESTAMP('2013-09-12 11:02:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:29 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53267 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53268,50021,0,113,0,19,52062,TO_TIMESTAMP('2013-09-12 11:02:29','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',11,TO_TIMESTAMP('2013-09-12 11:02:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53268 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:34 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53269,50021,0,56142,0,19,52063,TO_TIMESTAMP('2013-09-12 11:02:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Category',12,TO_TIMESTAMP('2013-09-12 11:02:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:34 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53269 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:37 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53270,50021,0,187,0,19,52064,TO_TIMESTAMP('2013-09-12 11:02:34','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',13,TO_TIMESTAMP('2013-09-12 11:02:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:37 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53270 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:39 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53271,50021,0,265,0,16,52065,TO_TIMESTAMP('2013-09-12 11:02:37','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','N','N','N','N','N','N','Document Date',14,TO_TIMESTAMP('2013-09-12 11:02:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:39 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53271 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:41 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53272,50021,0,56129,0,19,52066,TO_TIMESTAMP('2013-09-12 11:02:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Entry Ticket',15,TO_TIMESTAMP('2013-09-12 11:02:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:41 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53272 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:44 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53273,50021,0,55969,0,19,52067,TO_TIMESTAMP('2013-09-12 11:02:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Farm Division',16,TO_TIMESTAMP('2013-09-12 11:02:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:44 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53273 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:46 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53274,50021,0,56084,0,19,52068,TO_TIMESTAMP('2013-09-12 11:02:44','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','N','N','N','N','N','N','Credit/Loan',17,TO_TIMESTAMP('2013-09-12 11:02:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:46 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53274 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:48 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53275,50021,0,55966,0,19,52069,TO_TIMESTAMP('2013-09-12 11:02:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Farm',18,TO_TIMESTAMP('2013-09-12 11:02:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:48 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53275 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:49 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53276,50021,0,55971,0,19,52070,TO_TIMESTAMP('2013-09-12 11:02:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Farming',19,TO_TIMESTAMP('2013-09-12 11:02:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:49 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53276 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:51 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53277,50021,0,55979,0,19,52071,TO_TIMESTAMP('2013-09-12 11:02:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Mobilization Guide',20,TO_TIMESTAMP('2013-09-12 11:02:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:51 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53277 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:53 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53278,50021,0,56131,0,19,52072,TO_TIMESTAMP('2013-09-12 11:02:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Quality Analysis',21,TO_TIMESTAMP('2013-09-12 11:02:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:53 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53278 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:55 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53279,50021,0,56135,0,19,52073,TO_TIMESTAMP('2013-09-12 11:02:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Record Weight',22,TO_TIMESTAMP('2013-09-12 11:02:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:55 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53279 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53280,50021,0,56138,0,22,52074,TO_TIMESTAMP('2013-09-12 11:02:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Net Weight',23,TO_TIMESTAMP('2013-09-12 11:02:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53280 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:02:59 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53281,50021,0,56148,0,22,52075,TO_TIMESTAMP('2013-09-12 11:02:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Pay Weight',24,TO_TIMESTAMP('2013-09-12 11:02:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:02:59 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53281 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:03:01 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53282,50021,0,1416,0,22,52076,TO_TIMESTAMP('2013-09-12 11:02:59','YYYY-MM-DD HH24:MI:SS'),100,'Price','ECA02','The Price indicates the Price for a product or service.','Y','N','N','N','N','N','N','Price',25,TO_TIMESTAMP('2013-09-12 11:02:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:03:01 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53282 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:03:03 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53283,50021,0,56132,0,19,52077,TO_TIMESTAMP('2013-09-12 11:03:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Quality Analysis',26,TO_TIMESTAMP('2013-09-12 11:03:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:03:03 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53283 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Sep 12, 2013 11:04:42 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Trl SET Name='Generar Liquidación al Productor',Description='Generar Liquidación al Productor',Help='Proceso que genera la liquidación al productor',Updated=TO_TIMESTAMP('2013-09-12 11:04:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50021 AND AD_Language='es_MX'
;

-- Sep 12, 2013 11:07:33 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-09-12 11:07:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53267
;

-- Sep 12, 2013 11:07:33 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-09-12 11:07:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53268
;

-- Sep 12, 2013 11:07:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2013-09-12 11:07:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53279
;

-- Sep 12, 2013 11:07:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2013-09-12 11:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53271
;

-- Sep 12, 2013 11:07:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2013-09-12 11:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53270
;

-- Sep 12, 2013 11:07:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-09-12 11:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53269
;

-- Sep 12, 2013 11:07:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-09-12 11:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53283
;

-- Sep 12, 2013 11:07:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-09-12 11:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53280
;

-- Sep 12, 2013 11:07:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-09-12 11:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53281
;

-- Sep 12, 2013 11:07:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-09-12 11:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53282
;

-- Sep 12, 2013 11:07:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-09-12 11:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53275
;

-- Sep 12, 2013 11:07:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-09-12 11:07:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53273
;

-- Sep 12, 2013 11:07:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-09-12 11:07:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53276
;

-- Sep 12, 2013 11:07:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2013-09-12 11:07:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53274
;

-- Sep 12, 2013 11:07:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-09-12 11:07:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53277
;

-- Sep 12, 2013 11:07:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-09-12 11:07:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53272
;

-- Sep 12, 2013 11:07:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-09-12 11:07:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53278
;

-- Sep 12, 2013 11:08:02 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53275
;

-- Sep 12, 2013 11:08:06 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:08:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53273
;

-- Sep 12, 2013 11:08:09 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:08:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53276
;

-- Sep 12, 2013 11:08:14 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:08:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53274
;

-- Sep 12, 2013 11:08:18 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53277
;

-- Sep 12, 2013 11:08:22 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:08:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53272
;

-- Sep 12, 2013 11:08:28 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:08:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53278
;

-- Sep 12, 2013 11:08:40 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsKey='Y',Updated=TO_TIMESTAMP('2013-09-12 11:08:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53279
;

-- Sep 12, 2013 11:09:15 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=15, IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53271
;

-- Sep 12, 2013 11:09:28 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:09:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53270
;

-- Sep 12, 2013 11:10:02 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:10:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53269
;

-- Sep 12, 2013 11:10:10 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-09-12 11:10:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53283
;

-- Sep 12, 2013 11:10:32 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-09-12 11:10:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53283
;

-- Sep 12, 2013 11:12:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu ("action",AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',50021,0,53618,0,TO_TIMESTAMP('2013-09-12 11:12:55','YYYY-MM-DD HH24:MI:SS'),100,'Generate Farmer Liquidation','ECA02','Y','Y','N','N','N','Generate Farmer Liquidation',TO_TIMESTAMP('2013-09-12 11:12:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:12:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53618 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Sep 12, 2013 11:12:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-09-12 11:12:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',53618,0,999,TO_TIMESTAMP('2013-09-12 11:12:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 11:13:06 AM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Generar Liquidación al Productor',Description='Generar Liquidación al Productor',Updated=TO_TIMESTAMP('2013-09-12 11:13:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53618 AND AD_Language='es_MX'
;

-- Sep 12, 2013 11:13:10 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=0,Updated=TO_TIMESTAMP('2013-09-12 11:13:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53618
;

-- Sep 12, 2013 11:13:20 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1,Updated=TO_TIMESTAMP('2013-09-12 11:13:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53618
;

-- Sep 12, 2013 11:13:20 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2,Updated=TO_TIMESTAMP('2013-09-12 11:13:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Sep 12, 2013 11:13:20 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=3,Updated=TO_TIMESTAMP('2013-09-12 11:13:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53603
;

-- Sep 12, 2013 11:13:24 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6,Updated=TO_TIMESTAMP('2013-09-12 11:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Sep 12, 2013 11:13:24 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7,Updated=TO_TIMESTAMP('2013-09-12 11:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Sep 12, 2013 11:13:24 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8,Updated=TO_TIMESTAMP('2013-09-12 11:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Sep 12, 2013 11:13:24 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9,Updated=TO_TIMESTAMP('2013-09-12 11:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Sep 12, 2013 11:13:24 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10,Updated=TO_TIMESTAMP('2013-09-12 11:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Sep 12, 2013 11:13:24 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11,Updated=TO_TIMESTAMP('2013-09-12 11:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Sep 12, 2013 11:13:24 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12,Updated=TO_TIMESTAMP('2013-09-12 11:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Sep 12, 2013 11:13:24 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15,Updated=TO_TIMESTAMP('2013-09-12 11:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53618
;

-- Sep 12, 2013 11:13:28 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=0,Updated=TO_TIMESTAMP('2013-09-12 11:13:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53618
;

-- Sep 12, 2013 11:13:28 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1,Updated=TO_TIMESTAMP('2013-09-12 11:13:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Sep 12, 2013 11:13:28 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2,Updated=TO_TIMESTAMP('2013-09-12 11:13:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53603
;

-- Sep 12, 2013 11:13:30 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=0,Updated=TO_TIMESTAMP('2013-09-12 11:13:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Sep 12, 2013 11:13:30 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1,Updated=TO_TIMESTAMP('2013-09-12 11:13:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53618
;

-- Sep 12, 2013 11:13:30 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2,Updated=TO_TIMESTAMP('2013-09-12 11:13:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Sep 12, 2013 11:13:30 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=3,Updated=TO_TIMESTAMP('2013-09-12 11:13:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53603
;

-- Sep 12, 2013 11:13:31 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=0,Updated=TO_TIMESTAMP('2013-09-12 11:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Sep 12, 2013 11:13:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1,Updated=TO_TIMESTAMP('2013-09-12 11:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53603
;

-- Sep 12, 2013 11:13:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2,Updated=TO_TIMESTAMP('2013-09-12 11:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53618
;

-- Sep 12, 2013 11:13:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=3,Updated=TO_TIMESTAMP('2013-09-12 11:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53603
;

-- Sep 12, 2013 11:20:44 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=35,Updated=TO_TIMESTAMP('2013-09-12 11:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53283
;

-- Sep 12, 2013 11:22:01 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=30, AD_Reference_Value_ID=162,Updated=TO_TIMESTAMP('2013-09-12 11:22:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53269
;

