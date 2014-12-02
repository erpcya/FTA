-- Nov 27, 2014 2:01:48 PM CET
-- FTA
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO'' AND FTA_EntryTicket.OperationType = ''@OperationType@''
AND NOT EXISTS(SELECT 1 FROM FTA_LoadOrder lo WHERE lo.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND lo.DocStatus NOT IN(''VO'', ''RE'',''CL''))',Updated=TO_TIMESTAMP('2014-11-27 14:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52259
;

-- Nov 27, 2014 2:03:24 PM CET
-- FTA
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=55016
;

-- Nov 27, 2014 2:03:24 PM CET
-- FTA
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=55016
;

-- Nov 27, 2014 2:03:35 PM CET
-- FTA
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-11-27 14:03:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55017
;

-- Nov 27, 2014 2:03:43 PM CET
-- FTA
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=55019
;

-- Nov 27, 2014 2:03:43 PM CET
-- FTA
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=55019
;

-- Nov 27, 2014 2:03:47 PM CET
-- FTA
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-11-27 14:03:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55018
;

-- Nov 27, 2014 2:08:04 PM CET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,287,0,53713,55058,17,135,219,'DocAction',TO_TIMESTAMP('2014-11-27 14:08:01','YYYY-MM-DD HH24:MI:SS'),100,'CO','The targeted status of the document','ECA02',2,'You find the current status in the Document Status field. The options are listed in a popup','Y','Y','Y','N','Document Action',40,TO_TIMESTAMP('2014-11-27 14:08:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 27, 2014 2:08:04 PM CET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55058 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 27, 2014 2:08:51 PM CET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-11-27 14:08:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53952
;

-- Nov 27, 2014 2:10:26 PM CET
-- FTA
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53958
;

-- Nov 27, 2014 2:10:26 PM CET
-- FTA
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53958
;

-- Nov 27, 2014 2:10:31 PM CET
-- FTA
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53975
;

-- Nov 27, 2014 2:10:31 PM CET
-- FTA
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53975
;

-- Nov 27, 2014 2:10:35 PM CET
-- FTA
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53974
;

-- Nov 27, 2014 2:10:35 PM CET
-- FTA
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53974
;

-- Nov 27, 2014 2:10:41 PM CET
-- FTA
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53973
;

-- Nov 27, 2014 2:10:41 PM CET
-- FTA
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53973
;

-- Nov 27, 2014 2:15:06 PM CET
-- FTA
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_TIMESTAMP('2014-11-27 14:15:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53981
;

