-- 7/07/2014 04:29:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53652,'N',TO_DATE('2014-07-07 16:29:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_FarmerAccountStatement_Resumen.jrxml','FTA AccountStatement Resumen','Y',0,0,TO_DATE('2014-07-07 16:29:06','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_AccountStatement Resumen')
;

-- 7/07/2014 04:29:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53652 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 7/07/2014 04:29:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53652,0,TO_DATE('2014-07-07 16:29:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-07 16:29:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 04:29:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53652,102,TO_DATE('2014-07-07 16:29:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-07 16:29:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 04:29:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53652,103,TO_DATE('2014-07-07 16:29:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-07 16:29:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 04:29:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53652,50001,TO_DATE('2014-07-07 16:29:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-07 16:29:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 04:29:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53652,50002,TO_DATE('2014-07-07 16:29:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-07 16:29:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 04:40:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET JasperReport='attachment:inf_FarmerAccountStatement_Summary.jrxml', Name='FTA AccountStatement Summary', Value='FTA_RV_AccountStatement Summary',Updated=TO_DATE('2014-07-07 16:40:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53652
;

-- 7/07/2014 04:40:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53652
;

-- 7/07/2014 04:43:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53652,54870,19,'AD_Org_ID',TO_DATE('2014-07-07 16:43:37','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_DATE('2014-07-07 16:43:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 04:43:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54870 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 7/07/2014 04:44:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53652,54871,30,'C_BPartner_ID',TO_DATE('2014-07-07 16:44:26','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',20,TO_DATE('2014-07-07 16:44:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 04:44:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54871 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 7/07/2014 04:50:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53652,54872,15,'DateDoc',TO_DATE('2014-07-07 16:50:13','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','Document Date',30,TO_DATE('2014-07-07 16:50:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 04:50:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54872 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 7/07/2014 04:53:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Estado de Cuenta (Resumen)',Updated=TO_DATE('2014-07-07 16:53:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53652 AND AD_Language='es_MX'
;

-- 7/07/2014 05:27:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53847,0,53652,TO_DATE('2014-07-07 17:27:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Account Statement Summary',TO_DATE('2014-07-07 17:27:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 05:27:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53847 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 7/07/2014 05:28:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Estado de Cuenta(Resumen)',Updated=TO_DATE('2014-07-07 17:28:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53847 AND AD_Language='es_MX'
;

