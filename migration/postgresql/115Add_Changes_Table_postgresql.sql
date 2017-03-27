-- Sep 25, 2013 10:16:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET DisplayLogic='@CreditType@!''L''',Updated=TO_TIMESTAMP('2013-09-25 10:16:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53739
;

-- Sep 25, 2013 10:39:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='@SQL=SELECT ws.C_UOM_ID FROM FTA_WeightScale ws INNER JOIN FTA_WeightScale_Role wsr ON(wsr.FTA_WeightScale_ID = ws.FTA_WeightScale_ID) WHERE wsr.AD_Role_ID = @#AD_Role_ID@',Updated=TO_TIMESTAMP('2013-09-25 10:39:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66925
;

-- Sep 25, 2013 10:49:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='@SQL=SELECT MAX(ws.C_UOM_ID) FROM FTA_WeightScale ws INNER JOIN FTA_WeightScale_Role wsr ON(wsr.FTA_WeightScale_ID = ws.FTA_WeightScale_ID) WHERE wsr.AD_Role_ID = @#AD_Role_ID@',Updated=TO_TIMESTAMP('2013-09-25 10:49:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66925
;

-- Sep 25, 2013 2:50:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Element_ID=56104, ColumnName='Beneficiary_ID', Description='Business Partner to whom payment is made', Help='The Beneficiary indicates the Business Partner to whom payment will be made.', Name='Beneficiary',Updated=TO_TIMESTAMP('2013-09-25 14:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66577
;

-- Sep 25, 2013 2:50:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Beneficiary', Description='Business Partner to whom payment is made', Help='The Beneficiary indicates the Business Partner to whom payment will be made.' WHERE AD_Column_ID=66577 AND IsCentrallyMaintained='Y'
;

-- Sep 25, 2013 3:03:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='/*Framing Category Equals Credit Definition Category */
FTA_Farming.Category_ID In (Select CD.Category_ID From FTA_CreditDefinition CD Where FTA_CreditDefinition_ID=@FTA_CreditDefinition_ID@)
/*Business Partner Credit Equals to Farm*/
And Exists(Select 1 From FTA_FarmDivision fd 
Inner Join FTA_Farm f On f.FTA_Farm_ID=fd.FTA_Farm_ID Where f.C_BPartner_ID=@C_BPartner_ID@ And FTA_Farming.FTA_FarmDivision_ID=fd.FTA_FarmDivision_ID AND f.IsValid = ''Y'')
/*Not In Another Credi Or in Current Credit*/
And (FTA_Farming.FTA_FarmerCredit_ID Is Null Or FTA_Farming.FTA_FarmerCredit_ID=@FTA_FarmerCredit_ID@)',Updated=TO_TIMESTAMP('2013-09-25 15:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52206
;

-- Sep 25, 2013 3:16:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Help='Verifica que el Area de los Lotes Sobrepase el Area de la Finca',Updated=TO_TIMESTAMP('2013-09-25 15:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53419 AND AD_Language='es_VE'
;

-- Sep 25, 2013 3:19:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Farming.IsValid = ''Y''
/*Framing Category Equals Credit Definition Category */
AND FTA_Farming.Category_ID In (Select CD.Category_ID From FTA_CreditDefinition CD Where FTA_CreditDefinition_ID=@FTA_CreditDefinition_ID@)
/*Business Partner Credit Equals to Farm*/
And Exists(Select 1 From FTA_FarmDivision fd 
Inner Join FTA_Farm f On f.FTA_Farm_ID=fd.FTA_Farm_ID Where f.C_BPartner_ID=@C_BPartner_ID@ And FTA_Farming.FTA_FarmDivision_ID=fd.FTA_FarmDivision_ID)
/*Not In Another Credi Or in Current Credit*/
And (FTA_Farming.FTA_FarmerCredit_ID Is Null Or FTA_Farming.FTA_FarmerCredit_ID=@FTA_FarmerCredit_ID@)',Updated=TO_TIMESTAMP('2013-09-25 15:19:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52206
;

-- Sep 25, 2013 3:20:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68026,2002,0,20,53509,'IsValid',TO_TIMESTAMP('2013-09-25 15:20:11','YYYY-MM-DD HH24:MI:SS'),100,'Element is valid','ECA02',1,'The element passed the validation check','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Valid',0,TO_TIMESTAMP('2013-09-25 15:20:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 25, 2013 3:20:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68026 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 25, 2013 3:21:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56388,0,'ValidateFarming',TO_TIMESTAMP('2013-09-25 15:21:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Validate Farming','Validate Farming',TO_TIMESTAMP('2013-09-25 15:21:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 3:21:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56388 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 25, 2013 3:22:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Validar Cultivo',PrintName='Validar Cultivo',Description='Verifica que el Cultivo no exceda el Area del Lote',Updated=TO_TIMESTAMP('2013-09-25 15:22:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56388 AND AD_Language='es_VE'
;

-- Sep 25, 2013 3:23:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53467,'org.spin.process.FarmingValidate','N',TO_TIMESTAMP('2013-09-25 15:23:45','YYYY-MM-DD HH24:MI:SS'),100,'Validate Farming','ECA02','Y','N','N','N','N','Validate','Y',0,0,TO_TIMESTAMP('2013-09-25 15:23:45','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Farming Validate')
;

-- Sep 25, 2013 3:23:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53467 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Sep 25, 2013 3:24:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68027,56388,0,53467,28,53509,'ValidateFarming',TO_TIMESTAMP('2013-09-25 15:24:37','YYYY-MM-DD HH24:MI:SS'),100,'U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Validate Farming',0,TO_TIMESTAMP('2013-09-25 15:24:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 25, 2013 3:24:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68027 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 25, 2013 3:25:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68026,69656,0,53725,TO_TIMESTAMP('2013-09-25 15:25:47','YYYY-MM-DD HH24:MI:SS'),100,'Element is valid',1,'ECA02','The element passed the validation check','Y','Y','Y','N','N','N','N','N','Valid',TO_TIMESTAMP('2013-09-25 15:25:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 3:25:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69656 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 25, 2013 3:25:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68027,69657,0,53725,TO_TIMESTAMP('2013-09-25 15:25:49','YYYY-MM-DD HH24:MI:SS'),100,1,'U','Y','Y','Y','N','N','N','N','N','Validate Farming',TO_TIMESTAMP('2013-09-25 15:25:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 3:25:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69657 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 25, 2013 3:29:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='FarmingValidate', Name='Farming Validate', PrintName='Farming Validate',Updated=TO_TIMESTAMP('2013-09-25 15:29:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56388
;

-- Sep 25, 2013 3:29:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56388
;

-- Sep 25, 2013 3:29:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FarmingValidate', Name='Farming Validate', Description=NULL, Help=NULL WHERE AD_Element_ID=56388
;

-- Sep 25, 2013 3:29:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FarmingValidate', Name='Farming Validate', Description=NULL, Help=NULL, AD_Element_ID=56388 WHERE UPPER(ColumnName)='FARMINGVALIDATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 25, 2013 3:29:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FarmingValidate', Name='Farming Validate', Description=NULL, Help=NULL WHERE AD_Element_ID=56388 AND IsCentrallyMaintained='Y'
;

-- Sep 25, 2013 3:29:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Farming Validate', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56388) AND IsCentrallyMaintained='Y'
;

-- Sep 25, 2013 3:29:34 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Farming Validate', Name='Farming Validate' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56388)
;

-- Sep 25, 2013 3:29:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-09-25 15:29:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68027
;

-- Sep 25, 2013 3:30:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-25 15:30:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69657
;

-- Sep 25, 2013 3:32:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-09-25 15:32:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69657
;

-- Sep 25, 2013 3:32:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=69657
;

-- Sep 25, 2013 3:32:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=69656
;

-- Sep 25, 2013 3:32:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68187
;

-- Sep 25, 2013 3:32:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=68189
;

-- Sep 25, 2013 3:32:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68190
;

-- Sep 25, 2013 3:32:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68191
;

-- Sep 25, 2013 3:32:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=68192
;

-- Sep 25, 2013 3:32:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=68193
;

-- Sep 25, 2013 3:32:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-09-25 15:32:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69657
;

-- Sep 25, 2013 3:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-25 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69656
;

-- Sep 25, 2013 3:33:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-09-25 15:33:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66941
;

-- Sep 25, 2013 3:35:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Farming.IsValid = ''Y'' AND FTA_Farming.Status = ''A'' 
/*Framing Category Equals Credit Definition Category */
AND FTA_Farming.Category_ID In (Select CD.Category_ID From FTA_CreditDefinition CD Where FTA_CreditDefinition_ID=@FTA_CreditDefinition_ID@)
/*Business Partner Credit Equals to Farm*/
And Exists(Select 1 From FTA_FarmDivision fd 
Inner Join FTA_Farm f On f.FTA_Farm_ID=fd.FTA_Farm_ID Where f.C_BPartner_ID=@C_BPartner_ID@ And FTA_Farming.FTA_FarmDivision_ID=fd.FTA_FarmDivision_ID)
/*Not In Another Credi Or in Current Credit*/
And (FTA_Farming.FTA_FarmerCredit_ID Is Null Or FTA_Farming.FTA_FarmerCredit_ID=@FTA_FarmerCredit_ID@)',Updated=TO_TIMESTAMP('2013-09-25 15:35:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52206
;

