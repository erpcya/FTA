-- Apr 9, 2014 5:27:37 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53618,'N',TO_DATE('2014-04-09 17:27:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_FarmerAccountStatement_Internal.jrxml','Account Statement (Internal)','Y',0,0,TO_DATE('2014-04-09 17:27:33','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_AccountStatement ASInternal')
;

-- Apr 9, 2014 5:27:37 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53618 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Apr 9, 2014 5:28:33 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53618,54709,30,53570,'C_BPartner_ID',TO_DATE('2014-04-09 17:28:32','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','Business Partner ',10,TO_DATE('2014-04-09 17:28:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 5:28:33 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54709 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Apr 9, 2014 5:29:04 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56084,0,53618,54710,19,52207,'FTA_FarmerCredit_ID',TO_DATE('2014-04-09 17:29:02','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',0,'Y','Y','Y','N','Credit/Loan',20,TO_DATE('2014-04-09 17:29:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 5:29:04 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54710 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Apr 9, 2014 5:29:14 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53618,54711,15,'DateDoc',TO_DATE('2014-04-09 17:29:13','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','Y','Document Date',30,TO_DATE('2014-04-09 17:29:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 5:29:14 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54711 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Apr 9, 2014 5:30:03 PM CEST
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Estado de Cuenta (Productor Detallado)',Updated=TO_DATE('2014-04-09 17:30:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53618 AND AD_Language='es_MX'
;

-- Apr 9, 2014 5:30:07 PM CEST
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Estado de Cuenta (Productor Detallado)',Updated=TO_DATE('2014-04-09 17:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53618 AND AD_Language='es_VE'
;

-- Apr 9, 2014 5:30:29 PM CEST
-- Farming Technical Assistance
UPDATE AD_Process SET Name='Account Statement (Farmer Detail)', Value='FTA_RV_AccountStatement ASFarmerDetail',Updated=TO_DATE('2014-04-09 17:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53618
;

-- Apr 9, 2014 5:30:29 PM CEST
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53618
;

-- Apr 9, 2014 5:32:24 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53814,0,53618,TO_DATE('2014-04-09 17:32:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','saldkhaslkdjaskdasd',TO_DATE('2014-04-09 17:32:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 5:32:24 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53814 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Apr 9, 2014 5:32:24 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-04-09 17:32:24','YYYY-MM-DD HH24:MI:SS'),100,'Y',53814,0,999,TO_DATE('2014-04-09 17:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 5:32:32 PM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=4,Updated=TO_DATE('2014-04-09 17:32:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53814
;

-- Apr 9, 2014 5:32:32 PM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=5,Updated=TO_DATE('2014-04-09 17:32:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53651
;

-- Apr 9, 2014 5:32:32 PM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=6,Updated=TO_DATE('2014-04-09 17:32:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53813
;

-- Apr 9, 2014 5:32:33 PM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=7,Updated=TO_DATE('2014-04-09 17:32:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53662
;

-- Apr 9, 2014 5:32:33 PM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=8,Updated=TO_DATE('2014-04-09 17:32:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53676
;

-- Apr 9, 2014 5:32:33 PM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=9,Updated=TO_DATE('2014-04-09 17:32:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53680
;

