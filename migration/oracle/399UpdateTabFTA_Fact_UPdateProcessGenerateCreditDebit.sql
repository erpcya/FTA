-- Mar 6, 2014 11:02:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57072,0,'FTA_RV_Allocation_ID',TO_DATE('2014-03-06 11:02:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','View Allocation','View Allocation',TO_DATE('2014-03-06 11:02:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 6, 2014 11:02:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57072 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 6, 2014 11:02:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72185,57072,0,13,53661,'FTA_RV_Allocation_ID',TO_DATE('2014-03-06 11:02:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','Y','N','N','N','N','N','View Allocation',TO_DATE('2014-03-06 11:02:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 6, 2014 11:02:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72185 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 6, 2014 11:03:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72186,160,0,12,53662,'Amt',TO_DATE('2014-03-06 11:03:08','YYYY-MM-DD HH24:MI:SS'),100,'Amount','ECA02',131089,'Amount','Y','N','N','N','N','N','N','N','N','N','Amount',TO_DATE('2014-03-06 11:03:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 6, 2014 11:03:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72186 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 6, 2014 11:05:09 AM VET
-- Farming Technical Assistance
UPDATE AD_UserQuery SET UpdatedBy=100,Updated=TO_DATE('2014-03-06 11:05:09','YYYY-MM-DD HH24:MI:SS') WHERE AD_UserQuery_ID=1000000
;

-- Mar 6, 2014 11:07:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2014-03-06 11:07:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66881
;

-- Mar 6, 2014 11:08:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Uso Crédito',Updated=TO_DATE('2014-03-06 11:08:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53600 AND AD_Language='es_VE'
;

-- Mar 6, 2014 11:15:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Distribución en Créditos',Updated=TO_DATE('2014-03-06 11:15:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53889 AND AD_Language='es_MX'
;

-- Mar 6, 2014 11:15:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Distribución en Créditos',Updated=TO_DATE('2014-03-06 11:15:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53889 AND AD_Language='es_VE'
;

-- Mar 6, 2014 11:16:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET DisplayLogic='@FTA_FarmerCredit_ID@!0',Updated=TO_DATE('2014-03-06 11:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53889
;

-- Mar 6, 2014 11:17:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Distribución en Créditos',Updated=TO_DATE('2014-03-06 11:17:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53890 AND AD_Language='es_MX'
;

-- Mar 6, 2014 11:17:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Distribución en Créditos',Updated=TO_DATE('2014-03-06 11:17:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53890 AND AD_Language='es_VE'
;

-- Mar 6, 2014 11:17:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET DisplayLogic='@FTA_FarmerCredit_ID@!0',Updated=TO_DATE('2014-03-06 11:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53890
;

-- Mar 6, 2014 11:21:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,275,0,53500,54557,10,'Description',TO_DATE('2014-03-06 11:21:17','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','Y','N','N','Description',120,TO_DATE('2014-03-06 11:21:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 6, 2014 11:21:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54557 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 6, 2014 11:31:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,275,0,53572,54558,10,'Description',TO_DATE('2014-03-06 11:31:14','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','Y','N','N','Description',110,TO_DATE('2014-03-06 11:31:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 6, 2014 11:31:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54558 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

