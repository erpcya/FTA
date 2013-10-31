-- Oct 31, 2013 2:35:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53522,53061,'N',TO_DATE('2013-10-31 14:35:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Liquidations Detail','Y',0,0,TO_DATE('2013-10-31 14:35:10','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_Liquidation LiquidationsDetail')
;

-- Oct 31, 2013 2:35:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53522 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 31, 2013 2:35:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53678,0,53522,TO_DATE('2013-10-31 14:35:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Liquidations Detail',TO_DATE('2013-10-31 14:35:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:35:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53678 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Oct 31, 2013 2:35:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-10-31 14:35:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',53678,0,999,TO_DATE('2013-10-31 14:35:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:35:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53679,0,TO_DATE('2013-10-31 14:35:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','Y','Reports Liquidation',TO_DATE('2013-10-31 14:35:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:35:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53679 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Oct 31, 2013 2:35:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-10-31 14:35:56','YYYY-MM-DD HH24:MI:SS'),100,'Y',53679,0,999,TO_DATE('2013-10-31 14:35:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:36:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Reportes de Liquidación',Updated=TO_DATE('2013-10-31 14:36:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53679 AND AD_Language='es_MX'
;

-- Oct 31, 2013 2:36:29 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=0,Updated=TO_DATE('2013-10-31 14:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53679
;

-- Oct 31, 2013 2:36:29 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1,Updated=TO_DATE('2013-10-31 14:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53637
;

-- Oct 31, 2013 2:36:29 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2,Updated=TO_DATE('2013-10-31 14:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53620
;

-- Oct 31, 2013 2:36:29 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=3,Updated=TO_DATE('2013-10-31 14:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53618
;

-- Oct 31, 2013 2:36:30 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=4,Updated=TO_DATE('2013-10-31 14:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53674
;

-- Oct 31, 2013 2:36:30 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=5,Updated=TO_DATE('2013-10-31 14:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53677
;

-- Oct 31, 2013 2:36:30 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=6,Updated=TO_DATE('2013-10-31 14:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Oct 31, 2013 2:36:30 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=7,Updated=TO_DATE('2013-10-31 14:36:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53603
;

-- Oct 31, 2013 2:36:34 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53679, SeqNo=0,Updated=TO_DATE('2013-10-31 14:36:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53678
;

-- Oct 31, 2013 2:36:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle de Liquidaciones',Updated=TO_DATE('2013-10-31 14:36:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53522 AND AD_Language='es_MX'
;

-- Oct 31, 2013 2:37:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53522,54254,19,'AD_Org_ID',TO_DATE('2013-10-31 14:37:44','YYYY-MM-DD HH24:MI:SS'),100,'-1','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_DATE('2013-10-31 14:37:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:37:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54254 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 2:38:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53522,54255,19,'C_BPartner_ID',TO_DATE('2013-10-31 14:38:07','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',20,TO_DATE('2013-10-31 14:38:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:38:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54255 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 2:38:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56084,0,53522,54256,19,53571,52207,'FTA_FarmerCredit_ID',TO_DATE('2013-10-31 14:38:54','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',0,'Y','Y','N','N','Credit/Loan',30,TO_DATE('2013-10-31 14:38:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:38:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54256 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 2:39:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56145,0,53522,54257,19,'FTA_FarmerLiquidation_ID',TO_DATE('2013-10-31 14:39:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Farmer Liquidation',40,TO_DATE('2013-10-31 14:39:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:39:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54257 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 2:39:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,454,0,53522,54258,19,'M_Product_ID',TO_DATE('2013-10-31 14:39:46','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','Product',50,TO_DATE('2013-10-31 14:39:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:39:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54258 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 2:40:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53522,54259,15,'DateDoc',TO_DATE('2013-10-31 14:40:00','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','Y','Document Date',60,TO_DATE('2013-10-31 14:40:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:40:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54259 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 2:40:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,53522,54260,17,131,'DocStatus',TO_DATE('2013-10-31 14:40:10','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','Document Status',70,TO_DATE('2013-10-31 14:40:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 2:40:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54260 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

