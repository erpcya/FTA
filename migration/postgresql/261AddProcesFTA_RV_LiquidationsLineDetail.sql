-- Oct 31, 2013 8:10:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Name='Liquidations',Updated=TO_TIMESTAMP('2013-10-31 20:10:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53678
;

-- Oct 31, 2013 8:10:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53678
;

-- Oct 31, 2013 8:10:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Name='Liquidations', Value='FTA_RV_Liquidation Liquidations',Updated=TO_TIMESTAMP('2013-10-31 20:10:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53522
;

-- Oct 31, 2013 8:10:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53522
;

-- Oct 31, 2013 8:10:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Liquidations',Updated=TO_TIMESTAMP('2013-10-31 20:10:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53678
;

-- Oct 31, 2013 8:10:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53678
;

-- Oct 31, 2013 8:10:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Listado Liquidaciones',Updated=TO_TIMESTAMP('2013-10-31 20:10:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53522 AND AD_Language='es_MX'
;

-- Oct 31, 2013 8:10:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Listado Liquidaciones',Updated=TO_TIMESTAMP('2013-10-31 20:10:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53522 AND AD_Language='es_VE'
;

-- Oct 31, 2013 8:11:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Listado Liquidaciones',Updated=TO_TIMESTAMP('2013-10-31 20:11:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53678 AND AD_Language='es_MX'
;

-- Oct 31, 2013 8:11:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Listado Liquidaciones',Updated=TO_TIMESTAMP('2013-10-31 20:11:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53678 AND AD_Language='es_VE'
;

-- Oct 31, 2013 8:11:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53682,0,53522,TO_TIMESTAMP('2013-10-31 20:11:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Liquidations Detail',TO_TIMESTAMP('2013-10-31 20:11:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 8:11:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53682 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Oct 31, 2013 8:11:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-10-31 20:11:23','YYYY-MM-DD HH24:MI:SS'),100,'Y',53682,0,999,TO_TIMESTAMP('2013-10-31 20:11:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 8:11:54 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET Name='FTA_RV_Liquidation Detail List',Updated=TO_TIMESTAMP('2013-10-31 20:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53087
;

-- Oct 31, 2013 8:12:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53089,53583,TO_TIMESTAMP('2013-10-31 20:12:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_Liquidation Detail',TO_TIMESTAMP('2013-10-31 20:12:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 8:12:33 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET AD_Table_ID=53584, Name='FTA_RV_LiquidationLine Detail',Updated=TO_TIMESTAMP('2013-10-31 20:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53089
;

-- Oct 31, 2013 8:12:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53524,53089,'N',TO_TIMESTAMP('2013-10-31 20:12:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Liquidations Detail','Y',0,0,TO_TIMESTAMP('2013-10-31 20:12:49','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_Liquidation LiquidationsDetail')
;

-- Oct 31, 2013 8:12:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53524 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 31, 2013 8:13:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Value='FTA_RV_LiquidationLine LiquidationDetail',Updated=TO_TIMESTAMP('2013-10-31 20:13:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53524
;

-- Oct 31, 2013 8:14:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53524,54270,19,'AD_Org_ID',TO_TIMESTAMP('2013-10-31 20:14:08','YYYY-MM-DD HH24:MI:SS'),100,'-1','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_TIMESTAMP('2013-10-31 20:14:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 8:14:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54270 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 8:14:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53524,54271,19,'C_BPartner_ID',TO_TIMESTAMP('2013-10-31 20:14:21','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',20,TO_TIMESTAMP('2013-10-31 20:14:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 8:14:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54271 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 8:14:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56084,0,53524,54272,19,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2013-10-31 20:14:34','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',0,'Y','Y','N','N','Credit/Loan',30,TO_TIMESTAMP('2013-10-31 20:14:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 8:14:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54272 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 8:14:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56145,0,53524,54273,19,'FTA_FarmerLiquidation_ID',TO_TIMESTAMP('2013-10-31 20:14:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Farmer Liquidation',40,TO_TIMESTAMP('2013-10-31 20:14:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 8:14:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54273 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 8:15:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,454,0,53524,54274,19,'M_Product_ID',TO_TIMESTAMP('2013-10-31 20:15:04','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','Product',50,TO_TIMESTAMP('2013-10-31 20:15:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 8:15:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54274 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 8:15:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53524,54275,15,'DateDoc',TO_TIMESTAMP('2013-10-31 20:15:15','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','Y','Document Date',60,TO_TIMESTAMP('2013-10-31 20:15:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 8:15:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54275 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 8:15:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,53524,54276,17,131,'DocStatus',TO_TIMESTAMP('2013-10-31 20:15:26','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','Document Status',70,TO_TIMESTAMP('2013-10-31 20:15:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 31, 2013 8:15:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54276 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 31, 2013 8:15:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle Liquidaciones',Updated=TO_TIMESTAMP('2013-10-31 20:15:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53524 AND AD_Language='es_MX'
;

-- Oct 31, 2013 8:15:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle Liquidaciones',Updated=TO_TIMESTAMP('2013-10-31 20:15:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53524 AND AD_Language='es_VE'
;

-- Oct 31, 2013 8:16:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET AD_Process_ID=53524,Updated=TO_TIMESTAMP('2013-10-31 20:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53682
;

-- Oct 31, 2013 8:16:12 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1,Updated=TO_TIMESTAMP('2013-10-31 20:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53682
;

-- Oct 31, 2013 8:16:12 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2,Updated=TO_TIMESTAMP('2013-10-31 20:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53637
;

-- Oct 31, 2013 8:16:12 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=3,Updated=TO_TIMESTAMP('2013-10-31 20:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53620
;

-- Oct 31, 2013 8:16:12 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=4,Updated=TO_TIMESTAMP('2013-10-31 20:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53618
;

-- Oct 31, 2013 8:16:12 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=5,Updated=TO_TIMESTAMP('2013-10-31 20:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53674
;

-- Oct 31, 2013 8:16:13 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=6,Updated=TO_TIMESTAMP('2013-10-31 20:16:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53677
;

-- Oct 31, 2013 8:16:13 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=7,Updated=TO_TIMESTAMP('2013-10-31 20:16:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Oct 31, 2013 8:16:13 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=8,Updated=TO_TIMESTAMP('2013-10-31 20:16:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53603
;

-- Oct 31, 2013 8:16:15 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53679, SeqNo=0,Updated=TO_TIMESTAMP('2013-10-31 20:16:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53682
;

-- Oct 31, 2013 8:16:15 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53679, SeqNo=1,Updated=TO_TIMESTAMP('2013-10-31 20:16:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53678
;

-- Oct 31, 2013 8:16:18 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53679, SeqNo=1,Updated=TO_TIMESTAMP('2013-10-31 20:16:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53682
;

-- Oct 31, 2013 8:16:18 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53679, SeqNo=2,Updated=TO_TIMESTAMP('2013-10-31 20:16:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53678
;

-- Oct 31, 2013 8:16:21 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53679, SeqNo=0,Updated=TO_TIMESTAMP('2013-10-31 20:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53678
;

-- Oct 31, 2013 8:16:21 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53679, SeqNo=2,Updated=TO_TIMESTAMP('2013-10-31 20:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53678
;

