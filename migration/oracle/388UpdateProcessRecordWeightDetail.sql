-- Feb 20, 2014 2:47:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57051,0,'c_doctypemobilizationguide_id',TO_DATE('2014-02-20 14:47:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','c_doctypemobilizationguide_id','c_doctypemobilizationguide_id',TO_DATE('2014-02-20 14:47:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 20, 2014 2:47:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57051 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 20, 2014 2:47:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72072,57051,0,19,53625,'c_doctypemobilizationguide_id',TO_DATE('2014-02-20 14:47:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','c_doctypemobilizationguide_id',TO_DATE('2014-02-20 14:47:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 20, 2014 2:47:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72072 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 20, 2014 2:48:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET AD_Reference_ID=18, AD_Reference_Value_ID=170, ColumnName='C_DoctypeMobilizationGuide_ID', Name='Doc Type Mobilization Guide', PrintName='Doc Type Mobilization Guide',Updated=TO_DATE('2014-02-20 14:48:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57051
;

-- Feb 20, 2014 2:48:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57051
;

-- Feb 20, 2014 2:48:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='C_DoctypeMobilizationGuide_ID', Name='Doc Type Mobilization Guide', Description=NULL, Help=NULL WHERE AD_Element_ID=57051
;

-- Feb 20, 2014 2:48:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='C_DoctypeMobilizationGuide_ID', Name='Doc Type Mobilization Guide', Description=NULL, Help=NULL, AD_Element_ID=57051 WHERE UPPER(ColumnName)='C_DOCTYPEMOBILIZATIONGUIDE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Feb 20, 2014 2:48:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='C_DoctypeMobilizationGuide_ID', Name='Doc Type Mobilization Guide', Description=NULL, Help=NULL WHERE AD_Element_ID=57051 AND IsCentrallyMaintained='Y'
;

-- Feb 20, 2014 2:48:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Doc Type Mobilization Guide', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57051) AND IsCentrallyMaintained='Y'
;

-- Feb 20, 2014 2:48:52 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Doc Type Mobilization Guide', Name='Doc Type Mobilization Guide' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57051)
;

-- Feb 20, 2014 2:49:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=170,Updated=TO_DATE('2014-02-20 14:49:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72072
;

-- Feb 20, 2014 2:49:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57051,0,53514,54510,18,170,'C_DoctypeMobilizationGuide_ID',TO_DATE('2014-02-20 14:49:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Doc Type Mobilization Guide',165,TO_DATE('2014-02-20 14:49:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 20, 2014 2:49:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54510 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 20, 2014 2:49:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=51,Updated=TO_DATE('2014-02-20 14:49:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54219
;

-- Feb 20, 2014 2:54:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_DATE('2014-02-20 14:54:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54510
;

-- Feb 20, 2014 2:54:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Guía de Mobilización',PrintName='Tipo de Documento Guía de Mobilización',Updated=TO_DATE('2014-02-20 14:54:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57051 AND AD_Language='es_MX'
;

-- Feb 20, 2014 2:55:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Guía de Mobilización',PrintName='Tipo de Documento Guía de Mobilización',Updated=TO_DATE('2014-02-20 14:55:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57051 AND AD_Language='es_VE'
;

-- Feb 20, 2014 2:55:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='C_DocTypeMobilizationGuide_ID',Updated=TO_DATE('2014-02-20 14:55:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57051
;

-- Feb 20, 2014 2:55:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='C_DocTypeMobilizationGuide_ID', Name='Doc Type Mobilization Guide', Description=NULL, Help=NULL WHERE AD_Element_ID=57051
;

-- Feb 20, 2014 2:55:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='C_DocTypeMobilizationGuide_ID', Name='Doc Type Mobilization Guide', Description=NULL, Help=NULL, AD_Element_ID=57051 WHERE UPPER(ColumnName)='C_DOCTYPEMOBILIZATIONGUIDE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Feb 20, 2014 2:55:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='C_DocTypeMobilizationGuide_ID', Name='Doc Type Mobilization Guide', Description=NULL, Help=NULL WHERE AD_Element_ID=57051 AND IsCentrallyMaintained='Y'
;

