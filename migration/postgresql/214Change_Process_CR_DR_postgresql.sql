-- Oct 28, 2013 1:12:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic='DocBaseType = ''ARI''',Updated=TO_TIMESTAMP('2013-10-28 01:12:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54204
;

-- Oct 28, 2013 1:14:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic='@DocBaseType@=''ARI''',Updated=TO_TIMESTAMP('2013-10-28 01:14:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54204
;

-- Oct 28, 2013 1:15:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic='@GeneratePayRequest@=''Y''',Updated=TO_TIMESTAMP('2013-10-28 01:15:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54205
;

-- Oct 28, 2013 2:48:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56108,0,53490,54211,19,'FTA_CreditDefinition_ID',TO_TIMESTAMP('2013-10-28 02:48:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','FTA_CreditDefinition_ID',5,TO_TIMESTAMP('2013-10-28 02:48:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 2:48:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54211 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 28, 2013 4:02:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-10-28 04:02:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54148
;

-- Oct 28, 2013 4:02:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-10-28 04:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54150
;

