-- Sep 11, 2013 2:48:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54055,TO_TIMESTAMP('2013-09-11 14:48:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Reception Agreement',TO_TIMESTAMP('2013-09-11 14:48:01','YYYY-MM-DD HH24:MI:SS'),100,'FFR')
;

-- Sep 11, 2013 2:48:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54055 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 11, 2013 2:48:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Acuerdo de Recepción',Updated=TO_TIMESTAMP('2013-09-11 14:48:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54055 AND AD_Language='es_MX'
;

-- Sep 11, 2013 2:54:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN(''FFC'', ''FFL'', ''FFR'')', Name='C_DocType (FFC,FFL, FFR) Farmer Credit/Loan',Updated=TO_TIMESTAMP('2013-09-11 14:54:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52187
;

-- Sep 11, 2013 2:55:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Description='Farmer Credit or Loan', Name='Farmer Credit/Loan', PrintName='Farmer Credit/Loan',Updated=TO_TIMESTAMP('2013-09-11 14:55:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56084
;

-- Sep 11, 2013 2:55:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56084
;

-- Sep 11, 2013 2:55:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_FarmerCredit_ID', Name='Farmer Credit/Loan', Description='Farmer Credit or Loan', Help=NULL WHERE AD_Element_ID=56084
;

-- Sep 11, 2013 2:55:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_FarmerCredit_ID', Name='Farmer Credit/Loan', Description='Farmer Credit or Loan', Help=NULL, AD_Element_ID=56084 WHERE UPPER(ColumnName)='FTA_FARMERCREDIT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 11, 2013 2:55:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_FarmerCredit_ID', Name='Farmer Credit/Loan', Description='Farmer Credit or Loan', Help=NULL WHERE AD_Element_ID=56084 AND IsCentrallyMaintained='Y'
;

-- Sep 11, 2013 2:55:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Farmer Credit/Loan', Description='Farmer Credit or Loan', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56084) AND IsCentrallyMaintained='Y'
;

-- Sep 11, 2013 2:55:25 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Farmer Credit/Loan', Name='Farmer Credit/Loan' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56084)
;

-- Sep 11, 2013 2:55:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Crédito/Préstamo',PrintName='Crédito/Préstamo',Updated=TO_TIMESTAMP('2013-09-11 14:55:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56084 AND AD_Language='es_MX'
;

-- Sep 11, 2013 2:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Credit/Loan', PrintName='Credit/Loan',Updated=TO_TIMESTAMP('2013-09-11 14:56:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56084
;

-- Sep 11, 2013 2:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56084
;

-- Sep 11, 2013 2:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_FarmerCredit_ID', Name='Credit/Loan', Description='Farmer Credit or Loan', Help=NULL WHERE AD_Element_ID=56084
;

-- Sep 11, 2013 2:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_FarmerCredit_ID', Name='Credit/Loan', Description='Farmer Credit or Loan', Help=NULL, AD_Element_ID=56084 WHERE UPPER(ColumnName)='FTA_FARMERCREDIT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 11, 2013 2:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_FarmerCredit_ID', Name='Credit/Loan', Description='Farmer Credit or Loan', Help=NULL WHERE AD_Element_ID=56084 AND IsCentrallyMaintained='Y'
;

-- Sep 11, 2013 2:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Credit/Loan', Description='Farmer Credit or Loan', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56084) AND IsCentrallyMaintained='Y'
;

-- Sep 11, 2013 2:56:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Credit/Loan', Name='Credit/Loan' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56084)
;

-- Sep 11, 2013 2:56:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Table SET Name='Farmer Credit/Loan',Updated=TO_TIMESTAMP('2013-09-11 14:56:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53544
;

-- Sep 11, 2013 2:56:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53544
;

-- Sep 11, 2013 2:56:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Crédito/Préstamo del Productor',Updated=TO_TIMESTAMP('2013-09-11 14:56:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53544 AND AD_Language='es_MX'
;

-- Sep 11, 2013 2:56:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Window SET Description='Farmer Credit or Loan', Name='Farmer Credit/Loan',Updated=TO_TIMESTAMP('2013-09-11 14:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53259
;

-- Sep 11, 2013 2:56:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=53259
;

-- Sep 11, 2013 2:56:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description='Farmer Credit or Loan', IsActive='Y', Name='Farmer Credit/Loan',Updated=TO_TIMESTAMP('2013-09-11 14:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53589
;

-- Sep 11, 2013 2:56:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53589
;

-- Sep 11, 2013 2:57:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Window_Trl SET Name='Crédito/Préstamo del Productor',Description='Crédito/Préstamo Otorgados al Productor',Updated=TO_TIMESTAMP('2013-09-11 14:57:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53259 AND AD_Language='es_MX'
;

-- Sep 11, 2013 2:57:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET Description='Farmer Credit/Loan', Name='Credit/Loan',Updated=TO_TIMESTAMP('2013-09-11 14:57:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53721
;

-- Sep 11, 2013 2:57:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=53721
;

-- Sep 11, 2013 2:58:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Crédito/Préstamo',Description='Crédito/Préstamo o Acuerdo que tiene el Productor con la Empresa o con un Tercero',Updated=TO_TIMESTAMP('2013-09-11 14:58:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53721 AND AD_Language='es_MX'
;

-- Sep 11, 2013 3:01:41 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68188
;

-- Sep 11, 2013 3:01:41 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68188
;

-- Sep 11, 2013 3:04:07 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68494
;

-- Sep 11, 2013 3:04:07 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68494
;

-- Sep 11, 2013 3:04:34 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=65874
;

-- Sep 11, 2013 3:04:34 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=65874
;

-- Sep 11, 2013 3:14:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C'' | @CreditType@=''R''',Updated=TO_TIMESTAMP('2013-09-11 15:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69292
;

-- Sep 11, 2013 3:14:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''L''',Updated=TO_TIMESTAMP('2013-09-11 15:14:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68120
;

-- Sep 11, 2013 3:17:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C''',Updated=TO_TIMESTAMP('2013-09-11 15:17:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Sep 11, 2013 3:27:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''L''',Updated=TO_TIMESTAMP('2013-09-11 15:27:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68340
;

-- Sep 11, 2013 3:28:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''L''',Updated=TO_TIMESTAMP('2013-09-11 15:28:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68341
;

-- Sep 11, 2013 3:28:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''L''',Updated=TO_TIMESTAMP('2013-09-11 15:28:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68339
;

-- Sep 11, 2013 3:35:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@CreditType@=''C'' | @CreditType@=''R''',Updated=TO_TIMESTAMP('2013-09-11 15:35:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66657
;

-- Sep 11, 2013 3:35:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@CreditType@=''C'' | @CreditType@=''R''',Updated=TO_TIMESTAMP('2013-09-11 15:35:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Sep 11, 2013 3:43:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Sep 11, 2013 3:43:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53606
;

-- Sep 11, 2013 3:43:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Sep 11, 2013 3:43:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Sep 11, 2013 3:57:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-11 15:57:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68189
;

-- Sep 11, 2013 3:59:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.ProducerDebtLineDocGenerate',Updated=TO_TIMESTAMP('2013-09-11 15:59:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53428
;

-- Sep 11, 2013 3:59:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.ProducerDebtClose',Updated=TO_TIMESTAMP('2013-09-11 15:59:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53427
;

-- Sep 11, 2013 3:59:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.FarmValidate',Updated=TO_TIMESTAMP('2013-09-11 15:59:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53419
;

-- Sep 11, 2013 4:00:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.FarmingGuideGenerate',Updated=TO_TIMESTAMP('2013-09-11 16:00:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53426
;

-- Sep 11, 2013 4:00:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.FarmingEstimateQty',Updated=TO_TIMESTAMP('2013-09-11 16:00:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53425
;

-- Sep 11, 2013 4:00:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.CopyFromFarmingStage',Updated=TO_TIMESTAMP('2013-09-11 16:00:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53420
;

-- Sep 11, 2013 4:07:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53426,53982,15,'DateDoc',TO_TIMESTAMP('2013-09-11 16:07:29','YYYY-MM-DD HH24:MI:SS'),100,'@#Date@','ECA02',0,'Y','Y','Y','N','Document Date',10,TO_TIMESTAMP('2013-09-11 16:07:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 4:07:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53982 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 11, 2013 4:08:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53550,TO_TIMESTAMP('2013-09-11 16:08:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_VehicleType reference',TO_TIMESTAMP('2013-09-11 16:08:39','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Sep 11, 2013 4:08:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53550 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Sep 11, 2013 4:09:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,66526,66523,0,53550,53543,TO_TIMESTAMP('2013-09-11 16:09:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y',TO_TIMESTAMP('2013-09-11 16:09:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 4:09:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56074,0,53426,53983,30,53550,'FTA_VehicleType_ID',TO_TIMESTAMP('2013-09-11 16:09:25','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','Y','Y','N','Vehicle Type',20,TO_TIMESTAMP('2013-09-11 16:09:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 4:09:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53983 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 11, 2013 4:09:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-09-11 16:09:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53983
;

-- Sep 11, 2013 4:10:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56335,0,'MaxQty',TO_TIMESTAMP('2013-09-11 16:10:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Max Quantity','Max Quantity',TO_TIMESTAMP('2013-09-11 16:10:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 4:10:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56335 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 11, 2013 4:11:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Cantidad Máxima',PrintName='Cantidad Máxima',Description='Cantidad Máxima',Updated=TO_TIMESTAMP('2013-09-11 16:11:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56335 AND AD_Language='es_MX'
;

-- Sep 11, 2013 4:12:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56335,0,53426,53984,11,'MaxQty',TO_TIMESTAMP('2013-09-11 16:12:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Max Quantity',30,TO_TIMESTAMP('2013-09-11 16:12:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 4:12:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53984 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 11, 2013 4:15:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Help='Genera las Guías de Movilización del Cultivo',Updated=TO_TIMESTAMP('2013-09-11 16:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53426 AND AD_Language='es_MX'
;

-- Sep 11, 2013 4:16:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Help='Generates Farming Mobilization Guides',Updated=TO_TIMESTAMP('2013-09-11 16:16:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53426
;

-- Sep 11, 2013 4:16:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53426
;

-- Sep 11, 2013 4:18:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Key=66525,Updated=TO_TIMESTAMP('2013-09-11 16:18:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53550
;

-- Sep 11, 2013 5:00:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53426,53985,19,'AD_Org_ID',TO_TIMESTAMP('2013-09-11 17:00:17','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','Y','Y','N','Organization',40,TO_TIMESTAMP('2013-09-11 17:00:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 5:00:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53985 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 11, 2013 5:01:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-09-11 17:01:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53985
;

-- Sep 11, 2013 5:02:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53426,53986,19,52189,'C_DocTypeTarget_ID',TO_TIMESTAMP('2013-09-11 17:02:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Document Type Target',50,TO_TIMESTAMP('2013-09-11 17:02:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 5:02:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53986 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 11, 2013 5:02:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,459,0,53426,53987,19,189,'M_Warehouse_ID',TO_TIMESTAMP('2013-09-11 17:02:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Warehouse',60,TO_TIMESTAMP('2013-09-11 17:02:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 5:02:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53987 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 11, 2013 5:03:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53426,53988,30,'C_BPartner_ID',TO_TIMESTAMP('2013-09-11 17:03:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Business Partner',70,TO_TIMESTAMP('2013-09-11 17:03:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 11, 2013 5:03:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53988 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 11, 2013 5:05:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=55,Updated=TO_TIMESTAMP('2013-09-11 17:05:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53986
;

-- Sep 11, 2013 5:05:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=50,Updated=TO_TIMESTAMP('2013-09-11 17:05:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53987
;

-- Sep 11, 2013 5:05:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=60,Updated=TO_TIMESTAMP('2013-09-11 17:05:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53986
;

-- Sep 11, 2013 5:06:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=100,Updated=TO_TIMESTAMP('2013-09-11 17:06:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53988
;

-- Sep 11, 2013 5:06:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=70,Updated=TO_TIMESTAMP('2013-09-11 17:06:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53982
;

-- Sep 11, 2013 5:06:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=80,Updated=TO_TIMESTAMP('2013-09-11 17:06:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53983
;

-- Sep 11, 2013 5:06:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=90,Updated=TO_TIMESTAMP('2013-09-11 17:06:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53984
;

-- Sep 11, 2013 5:06:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='0',Updated=TO_TIMESTAMP('2013-09-11 17:06:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53986
;

-- Sep 11, 2013 5:09:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2013-09-11 17:09:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53986
;

-- Sep 11, 2013 5:09:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='0',Updated=TO_TIMESTAMP('2013-09-11 17:09:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53985
;

-- Sep 11, 2013 5:10:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='0',Updated=TO_TIMESTAMP('2013-09-11 17:10:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53987
;

-- Sep 11, 2013 5:20:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-09-11 17:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68450
;

-- Sep 11, 2013 5:21:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=138,Updated=TO_TIMESTAMP('2013-09-11 17:21:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66316
;

