-- Mar 13, 2014 6:58:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57083,0,'FTA_RV_M_Movement_ID',TO_DATE('2014-03-13 18:58:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','View M_Movement','View M_Movement',TO_DATE('2014-03-13 18:58:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 6:58:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57083 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 13, 2014 6:58:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72378,57083,0,13,53639,'FTA_RV_M_Movement_ID',TO_DATE('2014-03-13 18:58:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','Y','N','N','N','N','N','View M_Movement',TO_DATE('2014-03-13 18:58:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 13, 2014 6:58:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72378 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 13, 2014 7:00:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72379,2266,0,14,53639,'BPTaxID',TO_DATE('2014-03-13 19:00:11','YYYY-MM-DD HH24:MI:SS'),100,'Tax ID of the Business Partner','ECA02',2147483647,'Y','N','N','N','N','N','N','N','N','N','Partner Tax ID',TO_DATE('2014-03-13 19:00:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 13, 2014 7:00:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72379 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 13, 2014 7:00:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72380,2510,0,14,53639,'BPName',TO_DATE('2014-03-13 19:00:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2147483647,'Y','N','N','N','N','N','N','Y','N','N','BP Name',TO_DATE('2014-03-13 19:00:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 13, 2014 7:00:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72380 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 13, 2014 7:00:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72381,590,0,10,53639,'TaxID',TO_DATE('2014-03-13 19:00:16','YYYY-MM-DD HH24:MI:SS'),100,'Tax Identification','ECA02',20,'The Tax ID field identifies the legal Identification number of this Entity.','Y','N','N','N','N','N','N','N','N','N','Tax ID',TO_DATE('2014-03-13 19:00:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 13, 2014 7:00:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72381 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 13, 2014 7:00:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72382,1874,0,19,53639,'Org_Location_ID',TO_DATE('2014-03-13 19:00:18','YYYY-MM-DD HH24:MI:SS'),100,'Organization Location/Address','ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Org Address',TO_DATE('2014-03-13 19:00:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 13, 2014 7:00:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72382 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 13, 2014 7:00:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72383,2552,0,19,53639,'M_MovementConfirm_ID',TO_DATE('2014-03-13 19:00:20','YYYY-MM-DD HH24:MI:SS'),100,'Inventory Move Confirmation','ECA02',10,'The document is automatically created when the document type of the movement indicates In Transit.','Y','N','N','N','N','N','N','N','N','N','Move Confirm',TO_DATE('2014-03-13 19:00:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 13, 2014 7:00:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72383 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 13, 2014 7:01:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=21,Updated=TO_DATE('2014-03-13 19:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72382
;

-- Mar 13, 2014 7:08:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Estado de Vehículo ',Updated=TO_DATE('2014-03-13 19:08:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53597 AND AD_Language='es_MX'
;

-- Mar 13, 2014 7:08:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Estado de Vehículo ',Updated=TO_DATE('2014-03-13 19:08:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53597 AND AD_Language='es_VE'
;

-- Mar 13, 2014 10:31:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET JasperReport='attachment:inf_FarmerAccountStatement.jrxml',Updated=TO_DATE('2014-03-13 22:31:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53573
;

-- Mar 13, 2014 10:32:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET JasperReport='attachment:inf_FarmerCreditBalance.jrxml',Updated=TO_DATE('2014-03-13 22:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53490
;

-- Mar 13, 2014 10:32:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=19, AD_Reference_Value_ID=NULL,Updated=TO_DATE('2014-03-13 22:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54392
;

-- Mar 13, 2014 10:32:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=19, AD_Reference_Value_ID=NULL,Updated=TO_DATE('2014-03-13 22:32:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54437
;

-- Mar 13, 2014 10:33:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=19, AD_Reference_Value_ID=NULL,Updated=TO_DATE('2014-03-13 22:33:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54520
;

-- Mar 13, 2014 10:34:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Resumen de Liquidaciones',Updated=TO_DATE('2014-03-13 22:34:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53522 AND AD_Language='es_MX'
;

-- Mar 13, 2014 10:34:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Resumen de Liquidaciones',Updated=TO_DATE('2014-03-13 22:34:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53522 AND AD_Language='es_VE'
;

-- Mar 13, 2014 10:37:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=30,Updated=TO_DATE('2014-03-13 22:37:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54271
;

-- Mar 13, 2014 10:39:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=30,Updated=TO_DATE('2014-03-13 22:39:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54255
;

-- Mar 13, 2014 11:05:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Letra de Cambio (Giro)',Description='Generar Letra de Cambio (Giro)',Updated=TO_DATE('2014-03-13 23:05:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53510 AND AD_Language='es_MX'
;

-- Mar 13, 2014 11:05:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Letra de Cambio (Giro)',Description='Generar Letra de Cambio (Giro)',Updated=TO_DATE('2014-03-13 23:05:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53510 AND AD_Language='es_VE'
;

