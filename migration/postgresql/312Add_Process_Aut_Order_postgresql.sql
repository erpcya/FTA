-- Nov 25, 2013 11:21:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Help='Al Comenzar el proceso se verificarán las definiciones de crédito y serán agregadas las lineas faltantes',Updated=TO_TIMESTAMP('2013-11-25 11:21:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53533 AND AD_Language='es_VE'
;

-- Nov 25, 2013 11:21:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Help='Al Comenzar el proceso se verificarán las definiciones de crédito y serán agregadas las lineas faltantes',Updated=TO_TIMESTAMP('2013-11-25 11:21:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53533 AND AD_Language='es_VE'
;

-- Nov 25, 2013 11:39:48 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53534,'org.spin.process.FarmerCreditSOAuthorizing','N',TO_TIMESTAMP('2013-11-25 11:39:45','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Authorizing','ECA02','Y','N','N','N','N','Sales Order Authorizing','Y',0,0,TO_TIMESTAMP('2013-11-25 11:39:45','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmerCredit SOAuthorizing')
;

-- Nov 25, 2013 11:39:48 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53534 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Nov 25, 2013 11:41:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Autorizar Orden de Venta',Description='Autoriza una Orden de Venta',Help='Al comenzar el proceso se realiza la autorización de una Orden de Venta',Updated=TO_TIMESTAMP('2013-11-25 11:41:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53534 AND AD_Language='es_VE'
;

-- Nov 25, 2013 11:41:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Autorizar Orden de Venta',Updated=TO_TIMESTAMP('2013-11-25 11:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53534 AND AD_Language='es_VE'
;

-- Nov 25, 2013 11:41:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Description='Autoriza una Orden de Venta',Updated=TO_TIMESTAMP('2013-11-25 11:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53534 AND AD_Language='es_VE'
;

-- Nov 25, 2013 11:41:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Help='Al comenzar el proceso se realiza la autorización de una Orden de Venta',Updated=TO_TIMESTAMP('2013-11-25 11:41:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53534 AND AD_Language='es_VE'
;

-- Nov 25, 2013 12:04:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52261,'C_Order.DocStatus NOT IN(''CO'', ''CL'', ''VO'')',TO_TIMESTAMP('2013-11-25 12:04:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Order not completed','S',TO_TIMESTAMP('2013-11-25 12:04:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 12:04:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='C_Order not Completed',Updated=TO_TIMESTAMP('2013-11-25 12:04:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52261
;

-- Nov 25, 2013 12:04:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,558,0,53534,54309,19,52261,'C_Order_ID',TO_TIMESTAMP('2013-11-25 12:04:53','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02',22,'The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Y','Y','N','Order',10,TO_TIMESTAMP('2013-11-25 12:04:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 12:04:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54309 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 25, 2013 12:05:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56571,0,53534,54310,17,319,'IsExceedCreditLimit',TO_TIMESTAMP('2013-11-25 12:05:44','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02',1,'Y','Y','Y','N','Exceed Credit Limit',20,TO_TIMESTAMP('2013-11-25 12:05:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 12:05:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54310 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 25, 2013 2:29:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.FarmerCreditSOARAuthorizing',Updated=TO_TIMESTAMP('2013-11-25 14:29:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53534
;

-- Nov 25, 2013 2:30:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.FarmerCreditSOOARIAuthorizing',Updated=TO_TIMESTAMP('2013-11-25 14:30:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53534
;

-- Nov 25, 2013 2:30:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53535,'org.spin.process.FarmerCreditSOOARIAuthorizing','N',TO_TIMESTAMP('2013-11-25 14:30:52','YYYY-MM-DD HH24:MI:SS'),100,'AR Invoice Authorizing','ECA02','Y','N','N','N','N','AR Invoice Authorizing','Y',0,0,TO_TIMESTAMP('2013-11-25 14:30:52','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmerCredit ARIAuthorizing')
;

-- Nov 25, 2013 2:30:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53535 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Nov 25, 2013 2:31:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname='org.spin.process.FarmerCreditSOOARIAuthorizing', Description='Sales Order Authorizing', Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='N', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_TIMESTAMP('2013-11-25 14:31:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53535
;

-- Nov 25, 2013 2:31:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53535
;

-- Nov 25, 2013 2:31:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,558,0,53535,54311,19,52261,'C_Order_ID',TO_TIMESTAMP('2013-11-25 14:31:16','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02',22,'The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Y','Y','N','Order',10,TO_TIMESTAMP('2013-11-25 14:31:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 2:31:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54311 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 25, 2013 2:31:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56571,0,53535,54312,17,319,'IsExceedCreditLimit',TO_TIMESTAMP('2013-11-25 14:31:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','Y','N','Exceed Credit Limit',20,TO_TIMESTAMP('2013-11-25 14:31:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 2:31:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54312 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 25, 2013 2:31:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Description='AR Invoice Authorizing',Updated=TO_TIMESTAMP('2013-11-25 14:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53535
;

-- Nov 25, 2013 2:31:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53535
;

-- Nov 25, 2013 2:32:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Autorizar Factura',Updated=TO_TIMESTAMP('2013-11-25 14:32:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53535 AND AD_Language='es_VE'
;

-- Nov 25, 2013 2:32:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Description='Autoriza una Factura',Updated=TO_TIMESTAMP('2013-11-25 14:32:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53535 AND AD_Language='es_VE'
;

-- Nov 25, 2013 2:33:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Help='Al comenzar el proceso se realiza la autorización de una Factura',Updated=TO_TIMESTAMP('2013-11-25 14:33:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53535 AND AD_Language='es_VE'
;

-- Nov 25, 2013 2:33:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Help='Al comenzar el proceso se realiza la autorización de una Factura',Updated=TO_TIMESTAMP('2013-11-25 14:33:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53535 AND AD_Language='es_VE'
;

-- Nov 25, 2013 2:33:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Description='Autoriza una Factura',Updated=TO_TIMESTAMP('2013-11-25 14:33:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53535 AND AD_Language='es_VE'
;

-- Nov 25, 2013 2:33:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Autorizar Factura',Updated=TO_TIMESTAMP('2013-11-25 14:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53535 AND AD_Language='es_VE'
;

-- Nov 25, 2013 2:39:59 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54311
;

-- Nov 25, 2013 2:39:59 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54311
;

-- Nov 25, 2013 2:42:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52262,'C_Invoice.DocStatus NOT IN(''CO'', ''CL'', ''VO'', ''RE'')',TO_TIMESTAMP('2013-11-25 14:42:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Invoice not Completed','S',TO_TIMESTAMP('2013-11-25 14:42:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 2:43:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1008,0,53535,54313,19,52262,'C_Invoice_ID',TO_TIMESTAMP('2013-11-25 14:43:22','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02',22,'The Invoice Document.','Y','Y','Y','N','Invoice',10,TO_TIMESTAMP('2013-11-25 14:43:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 2:43:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54313 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 25, 2013 2:43:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53691,0,53535,TO_TIMESTAMP('2013-11-25 14:43:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','ASA',TO_TIMESTAMP('2013-11-25 14:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 2:43:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53691 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Nov 25, 2013 2:43:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-11-25 14:43:51','YYYY-MM-DD HH24:MI:SS'),100,'Y',53691,0,999,TO_TIMESTAMP('2013-11-25 14:43:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 2:44:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53692,0,53534,TO_TIMESTAMP('2013-11-25 14:44:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','sdsadasd',TO_TIMESTAMP('2013-11-25 14:44:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 2:44:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53692 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Nov 25, 2013 2:44:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-11-25 14:44:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',53692,0,999,TO_TIMESTAMP('2013-11-25 14:44:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 2:44:34 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=8,Updated=TO_TIMESTAMP('2013-11-25 14:44:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53691
;

-- Nov 25, 2013 2:44:37 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=9,Updated=TO_TIMESTAMP('2013-11-25 14:44:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53692
;

-- Nov 25, 2013 2:44:37 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=10,Updated=TO_TIMESTAMP('2013-11-25 14:44:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53657
;

-- Nov 25, 2013 2:44:37 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=11,Updated=TO_TIMESTAMP('2013-11-25 14:44:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53664
;

-- Nov 25, 2013 2:44:37 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=12,Updated=TO_TIMESTAMP('2013-11-25 14:44:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53675
;

-- Nov 25, 2013 2:55:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_Invoice.DocStatus NOT IN(''CO'', ''CL'', ''VO'', ''RE'') AND C_Invoice.IsSOTrx = ''Y''', Name='C_Invoice not Completed and SO',Updated=TO_TIMESTAMP('2013-11-25 14:55:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52262
;

-- Nov 25, 2013 2:56:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus NOT IN(''CO'', ''CL'', ''VO'') AND C_Order.IsSOTrx = ''Y''', Name='C_Order not Completed and SO',Updated=TO_TIMESTAMP('2013-11-25 14:56:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52261
;

-- Nov 25, 2013 4:21:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,387,0,53534,54314,20,'IsInvoiced',TO_TIMESTAMP('2013-11-25 16:21:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Is this invoiced?','ECA02',1,'If selected, invoices are created','Y','Y','N','N','Invoiced',5,TO_TIMESTAMP('2013-11-25 16:21:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 4:21:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54314 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 25, 2013 4:22:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic='@IsInvoiced@!''Y''',Updated=TO_TIMESTAMP('2013-11-25 16:22:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54309
;

-- Nov 25, 2013 4:22:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,DisplayLogic,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1008,0,53534,54315,19,'C_Invoice_ID',TO_TIMESTAMP('2013-11-25 16:22:39','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','@IsInvoiced@=''Y''','ECA02',22,'The Invoice Document.','Y','Y','Y','N','Invoice',15,TO_TIMESTAMP('2013-11-25 16:22:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 4:22:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54315 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 25, 2013 4:23:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Autorizar (Orden de Venta/Factura)',Description='Autoriza (Orden de Venta/Factura)',Help='Al comenzar el proceso se realiza la autorización de una Orden de Venta/Factura',Updated=TO_TIMESTAMP('2013-11-25 16:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53534 AND AD_Language='es_VE'
;

-- Nov 25, 2013 4:23:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Autorizar (Orden de Venta/Factura)',Description='Autoriza (Orden de Venta/Factura)',Updated=TO_TIMESTAMP('2013-11-25 16:23:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53534 AND AD_Language='es_VE'
;

-- Nov 25, 2013 4:23:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Help='Al comenzar el proceso se realiza la autorización de una Orden de Venta/Factura',Updated=TO_TIMESTAMP('2013-11-25 16:23:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53534 AND AD_Language='es_VE'
;

-- Nov 25, 2013 4:24:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Description='Sales Order/Invoice Authorizing', Name='Sales Order/Invoice Authorizing', Value='FTA_FarmerCredit SOOARIAuthorizing',Updated=TO_TIMESTAMP('2013-11-25 16:24:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53534
;

-- Nov 25, 2013 4:24:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53534
;

-- Nov 25, 2013 4:24:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description='Sales Order/Invoice Authorizing', IsActive='Y', Name='Sales Order/Invoice Authorizing',Updated=TO_TIMESTAMP('2013-11-25 16:24:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53692
;

-- Nov 25, 2013 4:24:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53692
;

-- Nov 25, 2013 4:25:32 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Menu_Trl WHERE AD_Menu_ID=53691
;

-- Nov 25, 2013 4:25:32 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Menu WHERE AD_Menu_ID=53691
;

-- Nov 25, 2013 4:25:33 PM VET
-- Farming Technical Assistance
DELETE FROM AD_TreeNodeMM WHERE AD_Tree_ID=10 AND Node_ID=53691
;

-- Nov 25, 2013 4:25:42 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Trl WHERE AD_Process_ID=53535
;

-- Nov 25, 2013 4:25:42 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process WHERE AD_Process_ID=53535
;

