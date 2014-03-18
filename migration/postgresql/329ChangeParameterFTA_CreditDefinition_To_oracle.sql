-- 27/12/2013 03:43:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53641,TO_DATE('2013-12-27 15:43:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_CreditDefinition',TO_DATE('2013-12-27 15:43:08','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 27/12/2013 03:43:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53641 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 27/12/2013 03:44:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET Name='Definición de Crédito',Description='Definición de Crédito',Updated=TO_DATE('2013-12-27 15:44:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53641 AND AD_Language='es_MX'
;

-- 27/12/2013 03:44:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,67099,66672,0,53641,53549,53261,TO_DATE('2013-12-27 15:44:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2013-12-27 15:44:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/12/2013 03:45:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_Value_ID=53641,Updated=TO_DATE('2013-12-27 15:45:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54318
;

-- 27/12/2013 03:46:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52290,'FTA_CreditDefinition_ID <> @FTA_CreditDefinition_ID@',TO_DATE('2013-12-27 15:46:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_CreditDefinition_ID <> @FTA_CreditDefinition_ID@','S',TO_DATE('2013-12-27 15:46:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/12/2013 03:46:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52290,Updated=TO_DATE('2013-12-27 15:46:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54318
;

