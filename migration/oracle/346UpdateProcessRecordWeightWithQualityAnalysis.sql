-- Jan 16, 2014 7:31:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-01-16 19:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71280
;

-- Jan 16, 2014 7:31:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2014-01-16 19:31:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71280
;

-- Jan 16, 2014 7:33:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Help='Detail Record Weight with Analysis', Name='Detail Record Weight with Analysis', Value='FTA_RecordWeight Detail with Analysis',Updated=TO_DATE('2014-01-16 19:33:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551
;

-- Jan 16, 2014 7:33:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53551
;

-- Jan 16, 2014 7:33:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Detail Record Weight with Analysis',Updated=TO_DATE('2014-01-16 19:33:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53739
;

-- Jan 16, 2014 7:33:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53739
;

-- Jan 16, 2014 7:34:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Registro de Peso con Análisis de Cálidad',Updated=TO_DATE('2014-01-16 19:34:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551 AND AD_Language='es_MX'
;

-- Jan 16, 2014 7:34:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Registro de Peso con Análisis de Cálidad',Updated=TO_DATE('2014-01-16 19:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551 AND AD_Language='es_VE'
;

-- Jan 16, 2014 7:34:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-01-16 19:34:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54349
;

-- Jan 16, 2014 7:35:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53551,54374,19,'AD_Org_ID',TO_DATE('2014-01-16 19:35:22','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',5,TO_DATE('2014-01-16 19:35:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 7:35:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54374 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

