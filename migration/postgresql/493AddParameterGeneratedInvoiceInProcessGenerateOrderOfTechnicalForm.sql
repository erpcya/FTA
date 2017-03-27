-- Sep 22, 2014 10:09:51 AM VET
-- FTA
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57457,0,20,'GenerateInvoice',TO_TIMESTAMP('2014-09-22 10:09:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Generate Invoice','Generate Invoice',TO_TIMESTAMP('2014-09-22 10:09:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 22, 2014 10:09:51 AM VET
-- FTA
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57457 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 22, 2014 10:10:03 AM VET
-- FTA
UPDATE AD_Element_Trl SET Name='Generar Factura',PrintName='Generar Factura',Updated=TO_TIMESTAMP('2014-09-22 10:10:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57457 AND AD_Language='es_VE'
;

-- Sep 22, 2014 10:10:48 AM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57457,0,53481,54968,20,'GenerateInvoice',TO_TIMESTAMP('2014-09-22 10:10:46','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','Generate Invoice',70,TO_TIMESTAMP('2014-09-22 10:10:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 22, 2014 10:10:48 AM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54968 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

