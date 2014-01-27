-- Oct 12, 2013 10:57:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='@#AD_Org_ID@', IsMandatory='Y',Updated=TO_DATE('2013-10-12 10:57:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54126
;

-- Oct 12, 2013 10:59:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@GenerateOrder@=''Y''',Updated=TO_DATE('2013-10-12 10:59:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68681
;

-- Oct 12, 2013 11:03:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue=NULL,Updated=TO_DATE('2013-10-12 11:03:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54126
;

-- Oct 12, 2013 11:11:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_DATE('2013-10-12 11:11:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68681
;

-- Oct 12, 2013 11:28:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2013-10-12 11:28:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54126
;

-- Oct 12, 2013 11:33:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,459,0,53486,54138,19,189,'M_Warehouse_ID',TO_DATE('2013-10-12 11:33:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','M_Warehouse_ID',15,TO_DATE('2013-10-12 11:33:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 12, 2013 11:33:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54138 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 12, 2013 11:36:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2013-10-12 11:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54138
;

-- Oct 12, 2013 12:00:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,287,0,53486,54139,17,135,219,'DocAction',TO_DATE('2013-10-12 12:00:21','YYYY-MM-DD HH24:MI:SS'),100,'CO','ECA02',0,'Y','Y','Y','N','DocAction',70,TO_DATE('2013-10-12 12:00:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 12, 2013 12:00:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54139 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 12, 2013 12:40:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@!''L'' & @DocStatus@=''CO''',Updated=TO_DATE('2013-10-12 12:40:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

