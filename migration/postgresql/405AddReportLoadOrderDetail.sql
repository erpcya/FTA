-- Mar 8, 2014 2:39:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53785,0,TO_TIMESTAMP('2014-03-08 14:39:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','Y','Reports',TO_TIMESTAMP('2014-03-08 14:39:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:39:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53785 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Mar 8, 2014 2:39:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-03-08 14:39:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',53785,0,999,TO_TIMESTAMP('2014-03-08 14:39:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:39:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Reportes',Updated=TO_TIMESTAMP('2014-03-08 14:39:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53785 AND AD_Language='es_MX'
;

-- Mar 8, 2014 2:39:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Reportes',Updated=TO_TIMESTAMP('2014-03-08 14:39:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53785 AND AD_Language='es_VE'
;

-- Mar 8, 2014 2:39:45 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=7,Updated=TO_TIMESTAMP('2014-03-08 14:39:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Mar 8, 2014 2:39:45 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=8,Updated=TO_TIMESTAMP('2014-03-08 14:39:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53784
;

-- Mar 8, 2014 2:39:45 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=9,Updated=TO_TIMESTAMP('2014-03-08 14:39:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53756
;

-- Mar 8, 2014 2:39:45 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=10,Updated=TO_TIMESTAMP('2014-03-08 14:39:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53764
;

-- Mar 8, 2014 2:39:46 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=11,Updated=TO_TIMESTAMP('2014-03-08 14:39:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53755
;

-- Mar 8, 2014 2:39:46 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=12,Updated=TO_TIMESTAMP('2014-03-08 14:39:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Mar 8, 2014 2:39:46 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=13,Updated=TO_TIMESTAMP('2014-03-08 14:39:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Mar 8, 2014 2:39:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=2,Updated=TO_TIMESTAMP('2014-03-08 14:39:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Mar 8, 2014 2:39:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=3,Updated=TO_TIMESTAMP('2014-03-08 14:39:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53685
;

-- Mar 8, 2014 2:39:51 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=0,Updated=TO_TIMESTAMP('2014-03-08 14:39:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Mar 8, 2014 2:39:51 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=1,Updated=TO_TIMESTAMP('2014-03-08 14:39:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53745
;

-- Mar 8, 2014 2:39:51 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=2,Updated=TO_TIMESTAMP('2014-03-08 14:39:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53686
;

-- Mar 8, 2014 2:39:52 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=3,Updated=TO_TIMESTAMP('2014-03-08 14:39:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Mar 8, 2014 2:39:52 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=4,Updated=TO_TIMESTAMP('2014-03-08 14:39:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53685
;

-- Mar 8, 2014 2:40:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53786,0,TO_TIMESTAMP('2014-03-08 14:40:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Load Orders Detail',TO_TIMESTAMP('2014-03-08 14:40:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:40:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53786 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Mar 8, 2014 2:40:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-03-08 14:40:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',53786,0,999,TO_TIMESTAMP('2014-03-08 14:40:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:41:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53115,53774,TO_TIMESTAMP('2014-03-08 14:41:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_LoadOrderLine',TO_TIMESTAMP('2014-03-08 14:41:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:42:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53595,53115,'N',TO_TIMESTAMP('2014-03-08 14:42:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Load Order Detail','Y',0,0,TO_TIMESTAMP('2014-03-08 14:42:04','YYYY-MM-DD HH24:MI:SS'),100,'FTA_LoadOrder LoadOrderDetail')
;

-- Mar 8, 2014 2:42:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53595 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Mar 8, 2014 2:42:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle Orden De Carga',Updated=TO_TIMESTAMP('2014-03-08 14:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53595 AND AD_Language='es_MX'
;

-- Mar 8, 2014 2:42:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle Orden De Carga',Updated=TO_TIMESTAMP('2014-03-08 14:42:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53595 AND AD_Language='es_VE'
;

-- Mar 8, 2014 2:43:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53595,54567,19,202,'AD_Org_ID',TO_TIMESTAMP('2014-03-08 14:43:01','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_TIMESTAMP('2014-03-08 14:43:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:43:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54567 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 8, 2014 2:43:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53595,54568,30,'C_BPartner_ID',TO_TIMESTAMP('2014-03-08 14:43:34','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',20,TO_TIMESTAMP('2014-03-08 14:43:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:43:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54568 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 8, 2014 2:44:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56599,0,53595,54569,19,'FTA_LoadOrder_ID',TO_TIMESTAMP('2014-03-08 14:44:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Load Order',30,TO_TIMESTAMP('2014-03-08 14:44:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:44:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54569 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 8, 2014 2:44:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,454,0,53595,54570,19,'M_Product_ID',TO_TIMESTAMP('2014-03-08 14:44:22','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','Product',40,TO_TIMESTAMP('2014-03-08 14:44:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:44:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54570 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 8, 2014 2:46:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72267,289,0,10,131,53774,'DocStatus',TO_TIMESTAMP('2014-03-08 14:46:30','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','N','N','N','Document Status',TO_TIMESTAMP('2014-03-08 14:46:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 8, 2014 2:46:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72267 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 8, 2014 2:46:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72268,196,0,19,53774,'C_DocType_ID',TO_TIMESTAMP('2014-03-08 14:46:34','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',10,'The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','N','N','N','Document Type',TO_TIMESTAMP('2014-03-08 14:46:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 8, 2014 2:46:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72268 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 8, 2014 2:46:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Table SET Name='View Load Order Line',Updated=TO_TIMESTAMP('2014-03-08 14:46:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53774
;

-- Mar 8, 2014 2:46:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53774
;

-- Mar 8, 2014 2:47:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=17,Updated=TO_TIMESTAMP('2014-03-08 14:47:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72267
;

-- Mar 8, 2014 2:47:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,196,0,53595,54571,19,'C_DocType_ID',TO_TIMESTAMP('2014-03-08 14:47:20','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',22,'The Document Type determines document sequence and processing rules','Y','Y','N','N','Document Type',50,TO_TIMESTAMP('2014-03-08 14:47:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:47:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54571 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 8, 2014 2:47:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,53595,54572,17,131,'DocStatus',TO_TIMESTAMP('2014-03-08 14:47:36','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','Document Status',60,TO_TIMESTAMP('2014-03-08 14:47:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:47:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54572 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 8, 2014 2:52:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0,Updated=TO_TIMESTAMP('2014-03-08 14:52:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53786
;

-- Mar 8, 2014 2:52:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1,Updated=TO_TIMESTAMP('2014-03-08 14:52:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53684
;

-- Mar 8, 2014 2:52:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2,Updated=TO_TIMESTAMP('2014-03-08 14:52:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53654
;

-- Mar 8, 2014 2:52:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_TIMESTAMP('2014-03-08 14:52:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53646
;

-- Mar 8, 2014 2:52:45 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_TIMESTAMP('2014-03-08 14:52:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53748
;

-- Mar 8, 2014 2:52:45 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_TIMESTAMP('2014-03-08 14:52:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Mar 8, 2014 2:52:45 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_TIMESTAMP('2014-03-08 14:52:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53757
;

-- Mar 8, 2014 2:52:45 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=7,Updated=TO_TIMESTAMP('2014-03-08 14:52:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53561
;

-- Mar 8, 2014 2:52:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1,Updated=TO_TIMESTAMP('2014-03-08 14:52:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53786
;

-- Mar 8, 2014 2:52:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2,Updated=TO_TIMESTAMP('2014-03-08 14:52:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53684
;

-- Mar 8, 2014 2:52:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_TIMESTAMP('2014-03-08 14:52:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53654
;

-- Mar 8, 2014 2:52:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_TIMESTAMP('2014-03-08 14:52:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53646
;

-- Mar 8, 2014 2:52:49 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_TIMESTAMP('2014-03-08 14:52:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53748
;

-- Mar 8, 2014 2:52:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_TIMESTAMP('2014-03-08 14:52:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Mar 8, 2014 2:52:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=7,Updated=TO_TIMESTAMP('2014-03-08 14:52:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53757
;

-- Mar 8, 2014 2:52:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=8,Updated=TO_TIMESTAMP('2014-03-08 14:52:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53561
;

-- Mar 8, 2014 2:52:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=9,Updated=TO_TIMESTAMP('2014-03-08 14:52:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53784
;

-- Mar 8, 2014 2:52:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=10,Updated=TO_TIMESTAMP('2014-03-08 14:52:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53756
;

-- Mar 8, 2014 2:52:50 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=11,Updated=TO_TIMESTAMP('2014-03-08 14:52:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53764
;

-- Mar 8, 2014 2:52:51 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=12,Updated=TO_TIMESTAMP('2014-03-08 14:52:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53755
;

-- Mar 8, 2014 2:52:51 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=13,Updated=TO_TIMESTAMP('2014-03-08 14:52:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Mar 8, 2014 2:52:51 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=14,Updated=TO_TIMESTAMP('2014-03-08 14:52:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Mar 8, 2014 2:52:54 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=0,Updated=TO_TIMESTAMP('2014-03-08 14:52:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53786
;

-- Mar 8, 2014 2:52:57 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53785, SeqNo=0,Updated=TO_TIMESTAMP('2014-03-08 14:52:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53786
;

-- Mar 8, 2014 2:53:01 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=0,Updated=TO_TIMESTAMP('2014-03-08 14:53:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53745
;

-- Mar 8, 2014 2:53:01 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=1,Updated=TO_TIMESTAMP('2014-03-08 14:53:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Mar 8, 2014 2:53:01 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=3,Updated=TO_TIMESTAMP('2014-03-08 14:53:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Mar 8, 2014 2:53:02 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=0,Updated=TO_TIMESTAMP('2014-03-08 14:53:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Mar 8, 2014 2:53:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=1,Updated=TO_TIMESTAMP('2014-03-08 14:53:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53745
;

-- Mar 8, 2014 2:53:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=2,Updated=TO_TIMESTAMP('2014-03-08 14:53:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Mar 8, 2014 2:53:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=3,Updated=TO_TIMESTAMP('2014-03-08 14:53:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53686
;

-- Mar 8, 2014 2:54:30 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=0,Updated=TO_TIMESTAMP('2014-03-08 14:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Mar 8, 2014 2:54:30 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=2,Updated=TO_TIMESTAMP('2014-03-08 14:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Mar 8, 2014 2:55:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Value='FTA_LoadOrderLine LoadOrderDetail',Updated=TO_TIMESTAMP('2014-03-08 14:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53595
;

-- Mar 8, 2014 2:55:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET AD_Process_ID=53595,Updated=TO_TIMESTAMP('2014-03-08 14:55:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53786
;

-- Mar 8, 2014 2:57:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,Name,Updated,UpdatedBy) VALUES (11,11,100,130,50210,100,53115,53774,TO_TIMESTAMP('2014-03-08 14:57:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y','Load Order Detail',TO_TIMESTAMP('2014-03-08 14:57:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 8, 2014 2:57:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72243,11,50210,57119,0,TO_TIMESTAMP('2014-03-08 14:57:03','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Active','C','F','Active',0,'N',0,TO_TIMESTAMP('2014-03-08 14:57:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57119 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72243) WHERE AD_PrintFormatItem_ID = 57119 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72243 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57119) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72248,11,50210,57120,0,TO_TIMESTAMP('2014-03-08 14:57:07','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Business Partner ','C','F','Business Partner ',2,'N',0,TO_TIMESTAMP('2014-03-08 14:57:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57120 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72248) WHERE AD_PrintFormatItem_ID = 57120 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72248 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57120) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72241,11,50210,57121,0,TO_TIMESTAMP('2014-03-08 14:57:11','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Client','C','F','Client',0,'N',0,TO_TIMESTAMP('2014-03-08 14:57:11','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57121 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72241) WHERE AD_PrintFormatItem_ID = 57121 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72241 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57121) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72250,11,50210,57122,0,TO_TIMESTAMP('2014-03-08 14:57:14','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Confirmed Quantity','C','F','Confirmed Qty',4,'N',0,TO_TIMESTAMP('2014-03-08 14:57:14','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57122 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72250) WHERE AD_PrintFormatItem_ID = 57122 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72250 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57122) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72251,11,50210,57123,0,TO_TIMESTAMP('2014-03-08 14:57:17','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Confirmed Weight','C','F','Confirmed Weight',5,'N',0,TO_TIMESTAMP('2014-03-08 14:57:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57123 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:21 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72251) WHERE AD_PrintFormatItem_ID = 57123 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72251 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57123) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72244,11,50210,57124,0,TO_TIMESTAMP('2014-03-08 14:57:21','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created','C','F','Created',0,'N',0,TO_TIMESTAMP('2014-03-08 14:57:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57124 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:24 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72244) WHERE AD_PrintFormatItem_ID = 57124 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72244 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57124) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72246,11,50210,57125,0,TO_TIMESTAMP('2014-03-08 14:57:24','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created By','C','F','Created By',0,'N',0,TO_TIMESTAMP('2014-03-08 14:57:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57125 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72246) WHERE AD_PrintFormatItem_ID = 57125 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72246 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57125) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72254,11,50210,57126,0,TO_TIMESTAMP('2014-03-08 14:57:27','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Description','C','F','Description',8,'N',0,TO_TIMESTAMP('2014-03-08 14:57:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57126 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72254) WHERE AD_PrintFormatItem_ID = 57126 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72254 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57126) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72253,11,50210,57127,0,TO_TIMESTAMP('2014-03-08 14:57:30','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Distribution Order Line','C','F','Distribution Order Line',9,'N',0,TO_TIMESTAMP('2014-03-08 14:57:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57127 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:34 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72253) WHERE AD_PrintFormatItem_ID = 57127 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72253 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57127) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72267,11,50210,57128,0,TO_TIMESTAMP('2014-03-08 14:57:34','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Status','C','F','Doc Status',10,'N',0,TO_TIMESTAMP('2014-03-08 14:57:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57128 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72267) WHERE AD_PrintFormatItem_ID = 57128 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72267 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57128) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72268,11,50210,57129,0,TO_TIMESTAMP('2014-03-08 14:57:37','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Type','C','F','Doc Type',11,'N',0,TO_TIMESTAMP('2014-03-08 14:57:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57129 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:40 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72268) WHERE AD_PrintFormatItem_ID = 57129 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72268 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57129) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72249,11,50210,57130,0,TO_TIMESTAMP('2014-03-08 14:57:40','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Invoice Line','C','F','Invoice Line',12,'N',0,TO_TIMESTAMP('2014-03-08 14:57:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57130 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72249) WHERE AD_PrintFormatItem_ID = 57130 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72249 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57130) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72255,11,50210,57131,0,TO_TIMESTAMP('2014-03-08 14:57:43','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Load Order','C','F','Load Order',13,'N',0,TO_TIMESTAMP('2014-03-08 14:57:43','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57131 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72255) WHERE AD_PrintFormatItem_ID = 57131 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72255 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57131) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72256,11,50210,57132,0,TO_TIMESTAMP('2014-03-08 14:57:47','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Load Order Line','C','F','Load Order Line',14,'N',0,TO_TIMESTAMP('2014-03-08 14:57:47','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57132 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72256) WHERE AD_PrintFormatItem_ID = 57132 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72256 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57132) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72258,11,50210,57133,0,TO_TIMESTAMP('2014-03-08 14:57:50','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Move Line','C','F','Move Line',15,'N',0,TO_TIMESTAMP('2014-03-08 14:57:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57133 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:53 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72258) WHERE AD_PrintFormatItem_ID = 57133 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72258 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57133) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:57:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72242,11,50210,57134,0,TO_TIMESTAMP('2014-03-08 14:57:53','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Organization','C','F','Organization',0,'N',0,TO_TIMESTAMP('2014-03-08 14:57:53','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:57:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57134 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:57:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72242) WHERE AD_PrintFormatItem_ID = 57134 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72242 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57134) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:58:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72260,11,50210,57135,0,TO_TIMESTAMP('2014-03-08 14:57:57','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Processed','C','F','Processed',17,'N',0,TO_TIMESTAMP('2014-03-08 14:57:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:58:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57135 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:58:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72260) WHERE AD_PrintFormatItem_ID = 57135 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72260 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57135) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:58:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72259,11,50210,57136,0,TO_TIMESTAMP('2014-03-08 14:58:00','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Product','C','F','Product',18,'N',0,TO_TIMESTAMP('2014-03-08 14:58:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:58:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57136 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:58:03 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72259) WHERE AD_PrintFormatItem_ID = 57136 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72259 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57136) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:58:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72261,11,50210,57137,0,TO_TIMESTAMP('2014-03-08 14:58:03','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Quantity','C','F','Qty',19,'N',0,TO_TIMESTAMP('2014-03-08 14:58:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:58:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57137 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:58:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72261) WHERE AD_PrintFormatItem_ID = 57137 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72261 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57137) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:58:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72252,11,50210,57138,0,TO_TIMESTAMP('2014-03-08 14:58:06','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Sales Order Line','C','F','Order Line',20,'N',0,TO_TIMESTAMP('2014-03-08 14:58:06','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:58:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57138 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:58:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72252) WHERE AD_PrintFormatItem_ID = 57138 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72252 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57138) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:58:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72262,11,50210,57139,0,TO_TIMESTAMP('2014-03-08 14:58:10','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Sequence','C','F','Sequence',21,'N',0,TO_TIMESTAMP('2014-03-08 14:58:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:58:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57139 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:58:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72262) WHERE AD_PrintFormatItem_ID = 57139 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72262 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57139) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:58:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72257,11,50210,57140,0,TO_TIMESTAMP('2014-03-08 14:58:13','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Shipment/Receipt Line','C','F','Shipment/Receipt Line',22,'N',0,TO_TIMESTAMP('2014-03-08 14:58:13','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:58:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57140 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:58:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72257) WHERE AD_PrintFormatItem_ID = 57140 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72257 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57140) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:58:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72245,11,50210,57141,0,TO_TIMESTAMP('2014-03-08 14:58:17','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated','C','F','Updated',0,'N',0,TO_TIMESTAMP('2014-03-08 14:58:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:58:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57141 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:58:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72245) WHERE AD_PrintFormatItem_ID = 57141 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72245 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57141) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:58:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72247,11,50210,57142,0,TO_TIMESTAMP('2014-03-08 14:58:20','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated By','C','F','Updated By',0,'N',0,TO_TIMESTAMP('2014-03-08 14:58:20','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:58:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57142 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:58:23 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72247) WHERE AD_PrintFormatItem_ID = 57142 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72247 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57142) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:58:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72263,11,50210,57143,0,TO_TIMESTAMP('2014-03-08 14:58:23','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Volume','C','F','Volume',25,'N',0,TO_TIMESTAMP('2014-03-08 14:58:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:58:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57143 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:58:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72263) WHERE AD_PrintFormatItem_ID = 57143 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72263 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57143) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 2:58:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,72264,11,50210,57144,0,TO_TIMESTAMP('2014-03-08 14:58:27','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Weight','C','F','Weight',26,'N',0,TO_TIMESTAMP('2014-03-08 14:58:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 8, 2014 2:58:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57144 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 8, 2014 2:58:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72264) WHERE AD_PrintFormatItem_ID = 57144 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=72264 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57144) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 8, 2014 3:07:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-03-08 15:07:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69887
;

-- Mar 8, 2014 3:08:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET SeqNo=1,Updated=TO_TIMESTAMP('2014-03-08 15:08:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69887
;

-- Mar 8, 2014 3:08:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_TIMESTAMP('2014-03-08 15:08:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69885
;

-- Mar 8, 2014 3:08:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=3,Updated=TO_TIMESTAMP('2014-03-08 15:08:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69886
;

-- Mar 8, 2014 3:10:44 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57127
;

-- Mar 8, 2014 3:10:44 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57129
;

-- Mar 8, 2014 3:10:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57130
;

-- Mar 8, 2014 3:10:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57132
;

-- Mar 8, 2014 3:10:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57133
;

-- Mar 8, 2014 3:10:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57135
;

-- Mar 8, 2014 3:10:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57138
;

-- Mar 8, 2014 3:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57139
;

-- Mar 8, 2014 3:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57140
;

-- Mar 8, 2014 3:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=10, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57134
;

-- Mar 8, 2014 3:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57131
;

-- Mar 8, 2014 3:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57120
;

-- Mar 8, 2014 3:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57136
;

-- Mar 8, 2014 3:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57128
;

-- Mar 8, 2014 3:10:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57126
;

-- Mar 8, 2014 3:10:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57122
;

-- Mar 8, 2014 3:10:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57123
;

-- Mar 8, 2014 3:10:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57143
;

-- Mar 8, 2014 3:10:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57144
;

-- Mar 8, 2014 3:10:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:10:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57137
;

-- Mar 8, 2014 3:11:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:11:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57143
;

-- Mar 8, 2014 3:11:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:11:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57144
;

-- Mar 8, 2014 3:11:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:11:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57126
;

-- Mar 8, 2014 3:11:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:11:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57137
;

-- Mar 8, 2014 3:11:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:11:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57122
;

-- Mar 8, 2014 3:11:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:11:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57123
;

-- Mar 8, 2014 3:11:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:11:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57128
;

-- Mar 8, 2014 3:12:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=133,Updated=TO_TIMESTAMP('2014-03-08 15:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50210
;

-- Mar 8, 2014 3:12:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:12:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57122
;

-- Mar 8, 2014 3:12:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:12:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57123
;

-- Mar 8, 2014 3:12:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:12:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57128
;

-- Mar 8, 2014 3:12:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:12:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57134
;

-- Mar 8, 2014 3:12:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:12:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57131
;

-- Mar 8, 2014 3:13:04 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:13:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57120
;

-- Mar 8, 2014 3:13:08 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:13:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57136
;

-- Mar 8, 2014 3:13:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=45, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:13:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57143
;

-- Mar 8, 2014 3:13:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=45, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:13:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57144
;

-- Mar 8, 2014 3:13:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:13:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57126
;

-- Mar 8, 2014 3:13:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=45, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:13:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57137
;

-- Mar 8, 2014 3:13:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:13:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57128
;

UPDATE AD_PrintFormat SET AD_Client_ID = 0, AD_Org_ID = 0 WHERE AD_PrintFormat_ID IN(50210);
UPDATE AD_PrintFormatItem SET AD_Client_ID = 0, AD_Org_ID = 0 WHERE AD_PrintFormat_ID IN(50210);
UPDATE AD_PrintFormatItem_Trl SET AD_Client_ID = 0, AD_Org_ID = 0 WHERE AD_PrintFormatItem_ID IN(
SELECT pfi.AD_PrintFormatItem_ID FROM 
AD_PrintFormatItem pfi WHERE pfi.AD_PrintFormat_ID IN(50210));

-- 08/03/2014 03:20:51 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSuppressRepeats='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:20:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013264 WHERE AD_PrintFormatItem_ID=57134
;

-- 08/03/2014 03:20:58 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='Y', IsOrderBy='Y', SortNo=1, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:20:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013264 WHERE AD_PrintFormatItem_ID=57134
;

-- 08/03/2014 03:21:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsOrderBy='Y', IsSuppressRepeats='Y', SortNo=2, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:21:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013264 WHERE AD_PrintFormatItem_ID=57131
;

-- 08/03/2014 03:21:15 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='Y', IsOrderBy='Y', IsSuppressRepeats='Y', SortNo=3, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:21:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013264 WHERE AD_PrintFormatItem_ID=57120
;

-- 08/03/2014 03:21:21 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSuppressRepeats='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-08 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013264 WHERE AD_PrintFormatItem_ID=57136
;

-- 08/03/2014 03:21:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=0,Updated=TO_TIMESTAMP('2014-03-08 15:21:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013264 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- 08/03/2014 03:21:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=2,Updated=TO_TIMESTAMP('2014-03-08 15:21:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013264 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- 08/03/2014 03:23:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-03-08 15:23:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013264 WHERE AD_Process_Para_ID=54567
;

