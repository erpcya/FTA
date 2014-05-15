-- Feb 21, 2014 8:01:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,2459,0,53560,54511,20,'CopyLines',TO_DATE('2014-02-21 08:01:11','YYYY-MM-DD HH24:MI:SS'),100,'Y','ECA02',1,'Y','Y','N','N','Copy Lines',30,TO_DATE('2014-02-21 08:01:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 21, 2014 8:01:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54511 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 21, 2014 8:01:18 AM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54511
;

-- Feb 21, 2014 8:01:18 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54511
;

-- Feb 21, 2014 8:02:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57052,0,20,'CopyProduct',TO_DATE('2014-02-21 08:02:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Copy Product','Copy Product',TO_DATE('2014-02-21 08:02:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 21, 2014 8:02:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57052 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 21, 2014 8:02:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Copiar Productos',PrintName='Copiar Productos',Updated=TO_DATE('2014-02-21 08:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57052 AND AD_Language='es_MX'
;

-- Feb 21, 2014 8:03:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Copiar Productos',PrintName='Copiar Productos',Updated=TO_DATE('2014-02-21 08:03:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57052 AND AD_Language='es_VE'
;

-- Feb 21, 2014 8:03:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57052,0,53560,54512,20,'CopyProduct',TO_DATE('2014-02-21 08:03:10','YYYY-MM-DD HH24:MI:SS'),100,'Y','ECA02',1,'Y','Y','N','N','Copy Product',30,TO_DATE('2014-02-21 08:03:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 21, 2014 8:03:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54512 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 21, 2014 8:04:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=40,Updated=TO_DATE('2014-02-21 08:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54512
;

-- Feb 21, 2014 8:41:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='CopyOnlyProduct', Name='Copy Only Product', PrintName='Copy Only Product',Updated=TO_DATE('2014-02-21 08:41:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57052
;

-- Feb 21, 2014 8:41:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57052
;

-- Feb 21, 2014 8:41:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='CopyOnlyProduct', Name='Copy Only Product', Description=NULL, Help=NULL WHERE AD_Element_ID=57052
;

-- Feb 21, 2014 8:41:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='CopyOnlyProduct', Name='Copy Only Product', Description=NULL, Help=NULL, AD_Element_ID=57052 WHERE UPPER(ColumnName)='COPYONLYPRODUCT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Feb 21, 2014 8:41:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='CopyOnlyProduct', Name='Copy Only Product', Description=NULL, Help=NULL WHERE AD_Element_ID=57052 AND IsCentrallyMaintained='Y'
;

-- Feb 21, 2014 8:41:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Copy Only Product', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57052) AND IsCentrallyMaintained='Y'
;

-- Feb 21, 2014 8:41:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Copy Only Product', Name='Copy Only Product' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57052)
;

-- Feb 21, 2014 8:41:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Copiar Solo Productos',PrintName='Copiar Solo Productos',Updated=TO_DATE('2014-02-21 08:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57052 AND AD_Language='es_MX'
;

-- Feb 21, 2014 8:41:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Copiar Solo Productos',PrintName='Copiar Solo Productos',Updated=TO_DATE('2014-02-21 08:41:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57052 AND AD_Language='es_VE'
;

-- Feb 21, 2014 10:02:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='N',Updated=TO_DATE('2014-02-21 10:02:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54512
;

