-- Mar 26, 2014 10:36:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52348,'AD_Ref_List.AD_Reference_ID=135 AND EXISTS (SELECT AD_Ref_List_ID FROM AD_Document_Action_Access WHERE AD_Role_ID = @AD_Role_ID@)',TO_TIMESTAMP('2014-03-26 10:35:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','AD_Ref_List_ID (Document Actions) Of Role','S',TO_TIMESTAMP('2014-03-26 10:35:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2014 10:37:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,287,0,53518,54696,17,135,52348,'DocAction',TO_TIMESTAMP('2014-03-26 10:37:04','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02',2,'You find the current status in the Document Status field. The options are listed in a popup','Y','Y','N','N','Document Action',70,TO_TIMESTAMP('2014-03-26 10:37:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2014 10:37:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54696 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 26, 2014 10:51:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='AD_Ref_List.AD_Reference_ID=135 AND EXISTS (SELECT AD_Ref_List_ID FROM AD_Document_Action_Access WHERE AD_Role_ID = @AD_Role_ID@ AND AD_Ref_List.AD_Ref_List_ID = AD_Document_Action_Access.AD_Ref_List_ID )',Updated=TO_TIMESTAMP('2014-03-26 10:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52348
;

