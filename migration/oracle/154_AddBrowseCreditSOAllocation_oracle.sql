-- Oct 15, 2013 1:06:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50019,TO_DATE('2013-10-15 01:06:31','YYYY-MM-DD HH24:MI:SS'),100,'Credit SO Allocation','ECA02','Credit SO Allocation','Y','Credit SO Allocation',TO_DATE('2013-10-15 01:06:31','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_CreditSOAllocation')
;

-- Oct 15, 2013 1:06:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50019 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- Oct 15, 2013 1:07:43 AM VET
-- SFAndroid Contribution
UPDATE AD_View_Trl SET Name='Asignación de Crédito (Venta)',Description='Asignación de Crédito (Venta)',Help='Asignación de Crédito (Venta)',Updated=TO_DATE('2013-10-15 01:07:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=50019
;

-- Oct 15, 2013 1:08:14 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,53624,50056,50019,TO_DATE('2013-10-15 01:08:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'CSOALL',TO_DATE('2013-10-15 01:08:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:17 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68870,0,52198,50056,50019,'CSOALL_AllocatedAmt','CSOALL.AllocatedAmt',TO_DATE('2013-10-15 01:08:16','YYYY-MM-DD HH24:MI:SS'),100,'Amount allocated to this document','ECA02','Y','Allocated Amountt',TO_DATE('2013-10-15 01:08:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:18 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68855,0,52199,50056,50019,'CSOALL_C_BPartner_ID','CSOALL.C_BPartner_ID',TO_DATE('2013-10-15 01:08:17','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Business Partner ',TO_DATE('2013-10-15 01:08:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:20 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68867,0,52200,50056,50019,'CSOALL_C_Charge_ID','CSOALL.C_Charge_ID',TO_DATE('2013-10-15 01:08:18','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','Charge',TO_DATE('2013-10-15 01:08:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:21 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68856,0,52201,50056,50019,'CSOALL_C_Invoice_ID','CSOALL.C_Invoice_ID',TO_DATE('2013-10-15 01:08:20','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','Invoice',TO_DATE('2013-10-15 01:08:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68857,0,52202,50056,50019,'CSOALL_C_InvoiceLine_ID','CSOALL.C_InvoiceLine_ID',TO_DATE('2013-10-15 01:08:21','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Detail Line','ECA02','The Invoice Line uniquely identifies a single line of an Invoice.','Y','Invoice Line',TO_DATE('2013-10-15 01:08:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:23 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68858,0,52203,50056,50019,'CSOALL_C_Order_ID','CSOALL.C_Order_ID',TO_DATE('2013-10-15 01:08:22','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Order',TO_DATE('2013-10-15 01:08:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:25 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68859,0,52204,50056,50019,'CSOALL_C_OrderLine_ID','CSOALL.C_OrderLine_ID',TO_DATE('2013-10-15 01:08:23','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line','ECA02','The Sales Order Line is a unique identifier for a line in an order.','Y','Sales Order Line',TO_DATE('2013-10-15 01:08:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:26 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68861,0,52205,50056,50019,'CSOALL_DocAction','CSOALL.DocAction',TO_DATE('2013-10-15 01:08:25','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','Document Action',TO_DATE('2013-10-15 01:08:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:27 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68860,0,52206,50056,50019,'CSOALL_DocStatus','CSOALL.DocStatus',TO_DATE('2013-10-15 01:08:26','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Document Status',TO_DATE('2013-10-15 01:08:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:28 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68862,0,52207,50056,50019,'CSOALL_FTA_FarmerCredit_ID','CSOALL.FTA_FarmerCredit_ID',TO_DATE('2013-10-15 01:08:27','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','Credit/Loan',TO_DATE('2013-10-15 01:08:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:29 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68871,0,52208,50056,50019,'CSOALL_IsSOTrx','CSOALL.IsSOTrx',TO_DATE('2013-10-15 01:08:28','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Sales Transaction',TO_DATE('2013-10-15 01:08:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:30 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68863,0,52209,50056,50019,'CSOALL_Line','CSOALL.Line',TO_DATE('2013-10-15 01:08:29','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document','ECA02','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Y','Line No',TO_DATE('2013-10-15 01:08:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:31 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68864,0,52210,50056,50019,'CSOALL_LineDescription','CSOALL.LineDescription',TO_DATE('2013-10-15 01:08:30','YYYY-MM-DD HH24:MI:SS'),100,'Description of the Line','ECA02','Y','Line Description',TO_DATE('2013-10-15 01:08:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68866,0,52211,50056,50019,'CSOALL_M_Product_Category_ID','CSOALL.M_Product_Category_ID',TO_DATE('2013-10-15 01:08:31','YYYY-MM-DD HH24:MI:SS'),100,'Category of a Product','ECA02','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Y','Product Category',TO_DATE('2013-10-15 01:08:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68865,0,52212,50056,50019,'CSOALL_M_Product_ID','CSOALL.M_Product_ID',TO_DATE('2013-10-15 01:08:32','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Product',TO_DATE('2013-10-15 01:08:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:34 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68868,0,52213,50056,50019,'CSOALL_SO_CreditLimit','CSOALL.SO_CreditLimit',TO_DATE('2013-10-15 01:08:33','YYYY-MM-DD HH24:MI:SS'),100,'Total outstanding invoice amounts allowed','ECA02','The Credit Limit indicates the total amount allowed "on account" in primary accounting currency.  If the Credit Limit is 0, no check is performed.  Credit Management is based on the Total Open Amount, which includes Vendor activities.','Y','Credit Limit',TO_DATE('2013-10-15 01:08:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:08:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68869,0,52214,50056,50019,'CSOALL_SO_CreditUsed','CSOALL.SO_CreditUsed',TO_DATE('2013-10-15 01:08:34','YYYY-MM-DD HH24:MI:SS'),100,'Current open balance','ECA02','The Credit Used indicates the total amount of open or unpaid invoices in primary accounting currency for the Business Partner. Credit Management is based on the Total Open Amount, which includes Vendor activities.','Y','Credit Used',TO_DATE('2013-10-15 01:08:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:10:38 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53492,'org.spin.process.SuggestedProducts','N',TO_DATE('2013-10-15 01:10:36','YYYY-MM-DD HH24:MI:SS'),100,'Credit Sales Allocation','U','Y','N','N','N','N','Credit Sales Allocation','Y',1,1,TO_DATE('2013-10-15 01:10:36','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CreditSOAllocation Process')
;

-- Oct 15, 2013 1:10:38 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53492 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 15, 2013 1:10:43 AM VET
-- SFAndroid Contribution
UPDATE AD_Process SET EntityType='ECA02',Updated=TO_DATE('2013-10-15 01:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53492
;

-- Oct 15, 2013 1:11:05 AM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Classname='org.spin.process.CreditSOAllocation',Updated=TO_DATE('2013-10-15 01:11:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53492
;

-- Oct 15, 2013 1:11:58 AM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Asignación de Crédito (Ventas)',Description='Asignación de Crédito (Ventas)',Updated=TO_DATE('2013-10-15 01:11:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53492 AND AD_Language='es_MX'
;

-- Oct 15, 2013 1:14:08 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value,WhereClause) VALUES ('3',50024,0,0,53492,50019,TO_DATE('2013-10-15 01:14:07','YYYY-MM-DD HH24:MI:SS'),100,'Credit SO Allocation','ECA02','Credit SO Allocation','Y','N','Credit SO Allocation','N',TO_DATE('2013-10-15 01:14:07','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Credit SO Allocation','FTA_FarmerCredit_ID Is Not Null And IsSOTrx=''Y''')
;

-- Oct 15, 2013 1:14:08 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50024 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- Oct 15, 2013 1:14:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Trl SET Name='Asignación de Crédito (Ventas)',Description='Asignación de Crédito (Ventas)',Help='Asignación de Crédito (Ventas)',Updated=TO_DATE('2013-10-15 01:14:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50024 AND AD_Language='es_MX'
;

-- Oct 15, 2013 1:14:46 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53340,50024,0,2677,0,12,52198,TO_DATE('2013-10-15 01:14:45','YYYY-MM-DD HH24:MI:SS'),100,'Amount allocated to this document','ECA02','Y','N','N','N','N','N','N','Allocated Amountt',10,TO_DATE('2013-10-15 01:14:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:14:46 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53340 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:14:48 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53341,50024,0,187,0,19,52199,TO_DATE('2013-10-15 01:14:46','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',11,TO_DATE('2013-10-15 01:14:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:14:48 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53341 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:14:50 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53342,50024,0,968,0,19,52200,TO_DATE('2013-10-15 01:14:48','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','N','N','N','N','N','N','Charge',12,TO_DATE('2013-10-15 01:14:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:14:50 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53342 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:14:52 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53343,50024,0,1008,0,19,52201,TO_DATE('2013-10-15 01:14:50','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','N','N','N','N','N','N','Invoice',13,TO_DATE('2013-10-15 01:14:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:14:52 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53343 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:14:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53344,50024,0,1076,0,19,52202,TO_DATE('2013-10-15 01:14:52','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Detail Line','ECA02','The Invoice Line uniquely identifies a single line of an Invoice.','Y','N','N','N','N','N','N','Invoice Line',14,TO_DATE('2013-10-15 01:14:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:14:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53344 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:14:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53345,50024,0,558,0,19,52203,TO_DATE('2013-10-15 01:14:54','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','Order',15,TO_DATE('2013-10-15 01:14:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:14:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53345 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:14:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53346,50024,0,561,0,19,52204,TO_DATE('2013-10-15 01:14:56','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line','ECA02','The Sales Order Line is a unique identifier for a line in an order.','Y','N','N','N','N','N','N','Sales Order Line',16,TO_DATE('2013-10-15 01:14:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:14:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53346 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:14:59 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53347,50024,0,287,0,17,52205,TO_DATE('2013-10-15 01:14:57','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','Document Action',17,TO_DATE('2013-10-15 01:14:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:14:59 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53347 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:15:01 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53348,50024,0,289,0,17,52206,TO_DATE('2013-10-15 01:14:59','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',18,TO_DATE('2013-10-15 01:14:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:15:01 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53348 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:15:02 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53349,50024,0,56084,0,19,52207,TO_DATE('2013-10-15 01:15:01','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','N','N','N','N','N','N','Credit/Loan',19,TO_DATE('2013-10-15 01:15:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:15:02 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53349 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:15:04 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53350,50024,0,1106,0,20,52208,TO_DATE('2013-10-15 01:15:02','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','N','N','N','N','N','N','Sales Transaction',20,TO_DATE('2013-10-15 01:15:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:15:04 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53350 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:15:06 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53351,50024,0,439,0,11,52209,TO_DATE('2013-10-15 01:15:04','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document','ECA02','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Y','N','N','N','N','N','N','Line No',21,TO_DATE('2013-10-15 01:15:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:15:06 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53351 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:15:07 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53352,50024,0,2108,0,14,52210,TO_DATE('2013-10-15 01:15:06','YYYY-MM-DD HH24:MI:SS'),100,'Description of the Line','ECA02','Y','N','N','N','N','N','N','Line Description',22,TO_DATE('2013-10-15 01:15:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:15:07 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53352 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:15:09 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53353,50024,0,453,0,19,52211,TO_DATE('2013-10-15 01:15:07','YYYY-MM-DD HH24:MI:SS'),100,'Category of a Product','ECA02','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Y','N','N','N','N','N','N','Product Category',23,TO_DATE('2013-10-15 01:15:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:15:09 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53353 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:15:11 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53354,50024,0,454,0,19,52212,TO_DATE('2013-10-15 01:15:09','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','Product',24,TO_DATE('2013-10-15 01:15:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:15:11 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53354 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:15:13 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53355,50024,0,553,0,22,52213,TO_DATE('2013-10-15 01:15:11','YYYY-MM-DD HH24:MI:SS'),100,'Total outstanding invoice amounts allowed','ECA02','The Credit Limit indicates the total amount allowed "on account" in primary accounting currency.  If the Credit Limit is 0, no check is performed.  Credit Management is based on the Total Open Amount, which includes Vendor activities.','Y','N','N','N','N','N','N','Credit Limit',25,TO_DATE('2013-10-15 01:15:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:15:13 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53355 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:15:14 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53356,50024,0,554,0,22,52214,TO_DATE('2013-10-15 01:15:13','YYYY-MM-DD HH24:MI:SS'),100,'Current open balance','ECA02','The Credit Used indicates the total amount of open or unpaid invoices in primary accounting currency for the Business Partner. Credit Management is based on the Total Open Amount, which includes Vendor activities.','Y','N','N','N','N','N','N','Credit Used',26,TO_DATE('2013-10-15 01:15:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:15:14 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53356 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:19:51 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-15 01:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53347
;

-- Oct 15, 2013 1:19:51 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-15 01:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53348
;

-- Oct 15, 2013 1:19:51 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-15 01:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53350
;

-- Oct 15, 2013 1:19:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-15 01:19:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53351
;

-- Oct 15, 2013 1:19:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_DATE('2013-10-15 01:19:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53341
;

-- Oct 15, 2013 1:19:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2013-10-15 01:19:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53352
;

-- Oct 15, 2013 1:19:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2013-10-15 01:19:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53354
;

-- Oct 15, 2013 1:19:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2013-10-15 01:19:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53353
;

-- Oct 15, 2013 1:19:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2013-10-15 01:19:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53342
;

-- Oct 15, 2013 1:19:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-10-15 01:19:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53346
;

-- Oct 15, 2013 1:19:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-10-15 01:19:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53344
;

-- Oct 15, 2013 1:19:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-10-15 01:19:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53340
;

-- Oct 15, 2013 1:19:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-10-15 01:19:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53356
;

-- Oct 15, 2013 1:19:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-10-15 01:19:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53355
;

-- Oct 15, 2013 1:19:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-10-15 01:19:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53345
;

-- Oct 15, 2013 1:19:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-10-15 01:19:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53343
;

-- Oct 15, 2013 1:19:54 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-10-15 01:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53349
;

-- Oct 15, 2013 1:20:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_DATE('2013-10-15 01:20:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53351
;

-- Oct 15, 2013 1:20:09 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_DATE('2013-10-15 01:20:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53343
;

-- Oct 15, 2013 1:20:10 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=20,Updated=TO_DATE('2013-10-15 01:20:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53345
;

-- Oct 15, 2013 1:20:10 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=30,Updated=TO_DATE('2013-10-15 01:20:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53351
;

-- Oct 15, 2013 1:20:33 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2013-10-15 01:20:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53345
;

-- Oct 15, 2013 1:20:38 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2013-10-15 01:20:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53343
;

-- Oct 15, 2013 1:21:54 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_DATE('2013-10-15 01:21:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53340
;

-- Oct 15, 2013 1:23:15 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu (Action,AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',50024,0,53652,0,TO_DATE('2013-10-15 01:23:13','YYYY-MM-DD HH24:MI:SS'),100,'Credit SO Allocation','ECA02','Y','Y','N','N','N','Credit SO Allocation',TO_DATE('2013-10-15 01:23:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:23:15 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53652 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Oct 15, 2013 1:23:15 AM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-10-15 01:23:15','YYYY-MM-DD HH24:MI:SS'),100,'Y',53652,0,999,TO_DATE('2013-10-15 01:23:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:23:26 AM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Asignación de Crédito (Ventas)',Description='Asignación de Crédito (Ventas)',Updated=TO_DATE('2013-10-15 01:23:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53652 AND AD_Language='es_MX'
;

-- Oct 15, 2013 1:27:51 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68872,56109,0,19,53624,'FTA_CreditDefinitionLine_ID',TO_DATE('2013-10-15 01:27:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit Definition Line',TO_DATE('2013-10-15 01:27:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 15, 2013 1:27:51 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68872 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 15, 2013 1:28:06 AM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68872,0,52215,50056,50019,'CSOALL_FTA_CreditDefinitionLin','CSOALL.FTA_CreditDefinitionLine_ID',TO_DATE('2013-10-15 01:28:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Definition Line',TO_DATE('2013-10-15 01:28:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:28:17 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53357,50024,0,56109,0,19,52215,TO_DATE('2013-10-15 01:28:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Credit Definition Line',10,TO_DATE('2013-10-15 01:28:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 1:28:17 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53357 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 15, 2013 1:29:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-15 01:29:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53343
;

-- Oct 15, 2013 1:29:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-15 01:29:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53345
;

-- Oct 15, 2013 1:29:08 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2013-10-15 01:29:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53357
;

-- Oct 15, 2013 1:29:08 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-10-15 01:29:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53342
;

-- Oct 15, 2013 1:29:08 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-10-15 01:29:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53346
;

-- Oct 15, 2013 1:29:08 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-10-15 01:29:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53344
;

-- Oct 15, 2013 1:29:08 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-10-15 01:29:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53340
;

-- Oct 15, 2013 1:29:08 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-10-15 01:29:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53356
;

-- Oct 15, 2013 1:29:08 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-10-15 01:29:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53355
;

-- Oct 15, 2013 1:29:08 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-10-15 01:29:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53349
;

-- Oct 15, 2013 1:29:19 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2013-10-15 01:29:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53357
;

-- Oct 15, 2013 1:29:19 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2013-10-15 01:29:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53354
;

-- Oct 15, 2013 1:29:19 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2013-10-15 01:29:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53353
;

-- Oct 15, 2013 1:30:11 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=0,Updated=TO_DATE('2013-10-15 01:30:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53652
;

-- Oct 15, 2013 1:30:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=0,Updated=TO_DATE('2013-10-15 01:30:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53652
;

-- Oct 15, 2013 1:30:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1,Updated=TO_DATE('2013-10-15 01:30:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53637
;

-- Oct 15, 2013 1:30:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2,Updated=TO_DATE('2013-10-15 01:30:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53620
;

-- Oct 15, 2013 1:30:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=3,Updated=TO_DATE('2013-10-15 01:30:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53618
;

-- Oct 15, 2013 1:30:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=4,Updated=TO_DATE('2013-10-15 01:30:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Oct 15, 2013 1:30:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=5,Updated=TO_DATE('2013-10-15 01:30:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53603
;

-- Oct 15, 2013 1:32:37 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_DATE('2013-10-15 01:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53357
;

-- Oct 15, 2013 1:32:38 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2013-10-15 01:32:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53341
;

-- Oct 15, 2013 1:32:38 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2013-10-15 01:32:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53352
;

-- Oct 15, 2013 1:33:04 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsKey='Y',Updated=TO_DATE('2013-10-15 01:33:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53357
;

-- Oct 15, 2013 1:33:18 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_DATE('2013-10-15 01:33:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53346
;

-- Oct 15, 2013 1:33:21 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_DATE('2013-10-15 01:33:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53344
;

-- Oct 15, 2013 1:37:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68873,102,0,19,53624,'AD_Client_ID',TO_DATE('2013-10-15 01:37:20','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','N','N','N','Client',TO_DATE('2013-10-15 01:37:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 15, 2013 1:37:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68873 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 15, 2013 1:37:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68874,113,0,19,53624,'AD_Org_ID',TO_DATE('2013-10-15 01:37:22','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','N','N','N','Organization',TO_DATE('2013-10-15 01:37:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 15, 2013 1:37:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68874 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 15, 2013 1:41:17 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-10-15 01:41:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53341
;

-- Oct 15, 2013 1:43:27 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse SET WhereClause='FTA_FarmerCredit_ID Is Not Null And IsSOTrx=''Y'' And DocStatus In(''CO'',''CL'')',Updated=TO_DATE('2013-10-15 01:43:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50024
;

-- Oct 15, 2013 1:51:15 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-10-15 01:51:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53344
;

-- Oct 15, 2013 1:51:24 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-10-15 01:51:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53346
;

-- Oct 15, 2013 1:53:10 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='N',Updated=TO_DATE('2013-10-15 01:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53344
;

-- Oct 15, 2013 1:53:15 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='N',Updated=TO_DATE('2013-10-15 01:53:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53346
;

