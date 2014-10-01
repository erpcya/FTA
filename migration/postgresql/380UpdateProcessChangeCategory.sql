-- Feb 12, 2014 3:13:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-02-12 15:13:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54316
;

-- Feb 12, 2014 3:13:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=1,Updated=TO_TIMESTAMP('2014-02-12 15:13:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54316
;

-- Feb 12, 2014 3:13:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_TIMESTAMP('2014-02-12 15:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54319
;

-- Feb 12, 2014 3:15:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53536,54475,30,52222,'C_BPartner_ID',TO_TIMESTAMP('2014-02-12 15:15:12','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',30,TO_TIMESTAMP('2014-02-12 15:15:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 12, 2014 3:15:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54475 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 12, 2014 3:15:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=11,Updated=TO_TIMESTAMP('2014-02-12 15:15:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54475
;

-- Feb 12, 2014 3:16:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=2,Updated=TO_TIMESTAMP('2014-02-12 15:16:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54475
;

-- Feb 12, 2014 3:16:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52207,Updated=TO_TIMESTAMP('2014-02-12 15:16:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54319
;

-- Feb 12, 2014 3:26:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='FTA_CreditDefinition_To_ID',Updated=TO_TIMESTAMP('2014-02-12 15:26:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56619
;

-- Feb 12, 2014 3:26:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_CreditDefinition_To_ID', Name='Credit Definition To', Description=NULL, Help=NULL WHERE AD_Element_ID=56619
;

-- Feb 12, 2014 3:26:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_CreditDefinition_To_ID', Name='Credit Definition To', Description=NULL, Help=NULL, AD_Element_ID=56619 WHERE UPPER(ColumnName)='FTA_CREDITDEFINITION_TO_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Feb 12, 2014 3:26:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_CreditDefinition_To_ID', Name='Credit Definition To', Description=NULL, Help=NULL WHERE AD_Element_ID=56619 AND IsCentrallyMaintained='Y'
;

-- Feb 12, 2014 3:58:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CreditDefinition.FTA_CreditDefinition_ID <> @FTA_CreditDefinition_ID@',Updated=TO_TIMESTAMP('2014-02-12 15:58:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52290
;

-- Feb 12, 2014 4:02:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2014-02-12 16:02:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54318
;

-- Feb 12, 2014 4:32:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52205,Updated=TO_TIMESTAMP('2014-02-12 16:32:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54318
;

-- Feb 12, 2014 5:28:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=19, AD_Reference_Value_ID=NULL,Updated=TO_TIMESTAMP('2014-02-12 17:28:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54408
;

-- Feb 12, 2014 5:29:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53260,0,TO_TIMESTAMP('2014-02-12 17:29:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Not Equivalent Line','I',TO_TIMESTAMP('2014-02-12 17:29:15','YYYY-MM-DD HH24:MI:SS'),100,'NotEquivalentLine')
;

-- Feb 12, 2014 5:29:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53260 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Feb 12, 2014 5:29:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='No Hay linea equivalente',Updated=TO_TIMESTAMP('2014-02-12 17:29:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53260 AND AD_Language='es_MX'
;

-- Feb 12, 2014 5:29:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='No Hay linea equivalente',Updated=TO_TIMESTAMP('2014-02-12 17:29:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53260 AND AD_Language='es_VE'
;

