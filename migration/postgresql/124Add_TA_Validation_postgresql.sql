-- Oct 3, 2013 10:45:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=219,Updated=TO_TIMESTAMP('2013-10-03 10:45:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54115
;

-- Oct 3, 2013 11:00:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52217,'C_DocType.DocBaseType IN (''SOO'', ''POO'') AND C_DocType.IsSOTrx=''@IsSOTrx@'' AND COALESCE(C_DocType.DocSubTypeSO,'' '') NOT IN(''RM'', ''OB'')',TO_TIMESTAMP('2013-10-03 11:00:37','YYYY-MM-DD HH24:MI:SS'),100,'Document Tpe for orders not Binding offer','ECA02','Y','C_DocType PO or SO not Binding offer','S',TO_TIMESTAMP('2013-10-03 11:00:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 3, 2013 11:18:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_Value_ID=172, AD_Val_Rule_ID=52217,Updated=TO_TIMESTAMP('2013-10-03 11:18:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54114
;

-- Oct 3, 2013 1:47:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52218,'FTA_TechnicalFormLine.FTA_TechnicalForm_ID = @FTA_TechnicalForm_ID@',TO_TIMESTAMP('2013-10-03 13:47:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_TechnicalFormLine in FTA_TechnicalForm','S',TO_TIMESTAMP('2013-10-03 13:47:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 3, 2013 1:47:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52218,Updated=TO_TIMESTAMP('2013-10-03 13:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65959
;

-- Oct 3, 2013 1:52:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Farm.C_BPartner_ID = @C_BPartner_ID@ AND FTA_Farm.IsValid = ''Y''',Updated=TO_TIMESTAMP('2013-10-03 13:52:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52170
;

-- Oct 3, 2013 1:53:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Farming.FTA_FarmDivision_ID = @FTA_FarmDivision_ID@ AND FTA_Farming.IsValid = ''Y''',Updated=TO_TIMESTAMP('2013-10-03 13:53:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52171
;

