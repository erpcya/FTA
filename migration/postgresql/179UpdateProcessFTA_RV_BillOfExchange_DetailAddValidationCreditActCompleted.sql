-- 22/10/2013 07:25:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56396,0,53507,54184,18,'FTA_CreditAct_ID',TO_TIMESTAMP('2013-10-22 19:25:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Credit Act',30,TO_TIMESTAMP('2013-10-22 19:25:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2013 07:25:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54184 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 22/10/2013 07:26:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52235,'FTA_CreditAct.DocStatus = ''CO''',TO_TIMESTAMP('2013-10-22 19:26:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_CreditAct Completed','S',TO_TIMESTAMP('2013-10-22 19:26:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2013 07:27:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=19, AD_Val_Rule_ID=52235,Updated=TO_TIMESTAMP('2013-10-22 19:27:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54184
;

