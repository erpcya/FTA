-- Jan 15, 2014 4:35:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52297,'C_DocType.DocBaseType = ''FMG'' AND C_DocType.AD_Org_ID = @#AD_Org_ID@',TO_DATE('2014-01-15 16:35:53','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Movilization Guide','ECA02','Y','C_DocType FMG Movilization Guide of Context','S',TO_DATE('2014-01-15 16:35:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 4:37:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52297,Updated=TO_DATE('2014-01-15 16:37:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53986
;

-- Jan 15, 2014 5:19:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52297,Updated=TO_DATE('2014-01-15 17:19:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66322
;

-- Jan 15, 2014 5:36:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,112,0,53426,54362,18,130,'AD_OrgTrx_ID',TO_DATE('2014-01-15 17:36:13','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization','ECA02',22,'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Y','Y','N','N','Trx Organization',10,TO_DATE('2014-01-15 17:36:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 5:36:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54362 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 15, 2014 5:37:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType = ''FMG'' AND C_DocType.AD_Org_ID = @#AD_OrgTrx_ID@',Updated=TO_DATE('2014-01-15 17:37:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52297
;

-- Jan 15, 2014 5:38:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52189,Updated=TO_DATE('2014-01-15 17:38:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66322
;

