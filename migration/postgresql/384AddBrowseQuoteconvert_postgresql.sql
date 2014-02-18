-- Feb 18, 2014 11:24:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53583,'org.compiere.process.CopyOrder','N',TO_TIMESTAMP('2014-02-18 11:24:00','YYYY-MM-DD HH24:MI:SS'),100,'Convert open Proposal or Quotation to Order','ECA02','You can convert a Proposal or Quotation to any other Order document type. You would use this process, if you want to maintain/keep the Proposal or Quotation. The document status needs to be In Process.','Y','N','N','N','N','Quote convert','Y',0,0,TO_TIMESTAMP('2014-02-18 11:24:00','YYYY-MM-DD HH24:MI:SS'),100,'FTA_C_Order QuoteCopy')
;

-- Feb 18, 2014 11:24:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53583 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Feb 18, 2014 11:24:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Description='Convert open Proposal or Quotation to Order And Allocated to Farmer Credit', Name='Quote convert And Allocated to Farmer Credit',Updated=TO_TIMESTAMP('2014-02-18 11:24:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53583
;

-- Feb 18, 2014 11:24:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53583
;

-- Feb 18, 2014 11:25:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Convertir Cotización y Asignar A Credito de Productor',Description='Convierte una Propuesta o Cotización abierta a Orden y Asignar A Credito de Productor',Help='Usted puede convertir una Propuesta o una Cotización a cualquier otro tipo de documento de Orden. Utilizaría este proceso, si usted desea mantener la Propuesta o la Cotización. El estado del documento necesita estar en proceso.',Updated=TO_TIMESTAMP('2014-02-18 11:25:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53583 AND AD_Language='es_MX'
;

-- Feb 18, 2014 11:25:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Convertir Cotización y Asignar A Credito de Productor',Updated=TO_TIMESTAMP('2014-02-18 11:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53583 AND AD_Language='es_VE'
;

-- Feb 18, 2014 11:25:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Description='Convierte una Propuesta o Cotización abierta a Orden y Asignar A Credito de Productor',Updated=TO_TIMESTAMP('2014-02-18 11:25:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53583 AND AD_Language='es_VE'
;

-- Feb 18, 2014 11:25:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Help='Usted puede convertir una Propuesta o una Cotización a cualquier otro tipo de documento de Orden. Utilizaría este proceso, si usted desea mantener la Propuesta o la Cotización. El estado del documento necesita estar en proceso.',Updated=TO_TIMESTAMP('2014-02-18 11:25:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53583 AND AD_Language='es_VE'
;

-- Feb 18, 2014 11:26:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,196,0,53583,54507,19,172,'C_DocType_ID',TO_TIMESTAMP('2014-02-18 11:26:25','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',22,'The Document Type determines document sequence and processing rules','Y','Y','Y','N','Document Type',10,TO_TIMESTAMP('2014-02-18 11:26:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 11:26:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54507 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 18, 2014 11:27:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53583,54508,15,'DateDoc',TO_TIMESTAMP('2014-02-18 11:27:26','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','Document Date',20,TO_TIMESTAMP('2014-02-18 11:27:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 11:27:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54508 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 18, 2014 11:27:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,2186,0,53583,54509,20,'IsCloseDocument',TO_TIMESTAMP('2014-02-18 11:27:49','YYYY-MM-DD HH24:MI:SS'),100,'Close Document (process)','ECA02',0,'Y','Y','N','N','Close Document',30,TO_TIMESTAMP('2014-02-18 11:27:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 11:27:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54509 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 18, 2014 11:59:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value,WhereClause) VALUES ('3',50032,0,0,53583,50019,TO_TIMESTAMP('2014-02-18 11:59:54','YYYY-MM-DD HH24:MI:SS'),100,'Quote convert And Allocated to Farmer Credit','ECA02',NULL,'Y','N','Quote convert And Allocated to Farmer Credit','N',TO_TIMESTAMP('2014-02-18 11:59:54','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Quote convert to Order And Allocate to Farmer Credit','FTA_FarmerCredit_ID Is Not Null And IsSOTrx=''Y'' And DocStatus In(''CO'',''CL'')')
;

-- Feb 18, 2014 11:59:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50032 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- Feb 18, 2014 12:00:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Trl SET Name='Convertir Cotización y Asignar A Credito de Productor',Description='Convertir Cotización y Asignar A Credito de Productor',Updated=TO_TIMESTAMP('2014-02-18 12:00:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50032 AND AD_Language='es_MX'
;

-- Feb 18, 2014 12:00:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Trl SET Name='Convertir Cotización y Asignar A Credito de Productor',Description='Convertir Cotización y Asignar A Credito de Productor',Updated=TO_TIMESTAMP('2014-02-18 12:00:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50032 AND AD_Language='es_VE'
;

-- Feb 18, 2014 12:00:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53543,50032,0,2677,0,12,52198,TO_TIMESTAMP('2014-02-18 12:00:35','YYYY-MM-DD HH24:MI:SS'),100,'Amount allocated to this document','ECA02','Y','N','N','N','N','N','N','Allocated Amountt',10,TO_TIMESTAMP('2014-02-18 12:00:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53543 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:00:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53544,50032,0,187,0,19,52199,TO_TIMESTAMP('2014-02-18 12:00:41','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',11,TO_TIMESTAMP('2014-02-18 12:00:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53544 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:00:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53545,50032,0,1008,0,19,52201,TO_TIMESTAMP('2014-02-18 12:00:43','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','N','N','N','N','N','N','Invoice',12,TO_TIMESTAMP('2014-02-18 12:00:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53545 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:00:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53546,50032,0,558,0,19,52203,TO_TIMESTAMP('2014-02-18 12:00:45','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','Order',13,TO_TIMESTAMP('2014-02-18 12:00:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53546 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:00:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53547,50032,0,287,0,17,52205,TO_TIMESTAMP('2014-02-18 12:00:47','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','Document Action',14,TO_TIMESTAMP('2014-02-18 12:00:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53547 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:00:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53548,50032,0,289,0,17,52206,TO_TIMESTAMP('2014-02-18 12:00:48','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',15,TO_TIMESTAMP('2014-02-18 12:00:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53548 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:00:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53549,50032,0,56084,0,19,52207,TO_TIMESTAMP('2014-02-18 12:00:50','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','N','N','N','N','N','N','Credit/Loan',16,TO_TIMESTAMP('2014-02-18 12:00:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53549 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:00:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53550,50032,0,1106,0,20,52208,TO_TIMESTAMP('2014-02-18 12:00:51','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','N','N','N','N','N','N','Sales Transaction',17,TO_TIMESTAMP('2014-02-18 12:00:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53550 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:00:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53551,50032,0,439,0,11,52209,TO_TIMESTAMP('2014-02-18 12:00:53','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document','ECA02','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Y','N','N','N','N','N','N','Line No',18,TO_TIMESTAMP('2014-02-18 12:00:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53551 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:00:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53552,50032,0,2108,0,14,52210,TO_TIMESTAMP('2014-02-18 12:00:55','YYYY-MM-DD HH24:MI:SS'),100,'Description of the Line','ECA02','Y','N','N','N','N','N','N','Line Description',19,TO_TIMESTAMP('2014-02-18 12:00:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53552 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:00:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53553,50032,0,553,0,22,52213,TO_TIMESTAMP('2014-02-18 12:00:57','YYYY-MM-DD HH24:MI:SS'),100,'Total outstanding invoice amounts allowed','ECA02','The Credit Limit indicates the total amount allowed "on account" in primary accounting currency.  If the Credit Limit is 0, no check is performed.  Credit Management is based on the Total Open Amount, which includes Vendor activities.','Y','N','N','N','N','N','N','Credit Limit',20,TO_TIMESTAMP('2014-02-18 12:00:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:00:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53553 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:01:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53554,50032,0,554,0,22,52214,TO_TIMESTAMP('2014-02-18 12:00:58','YYYY-MM-DD HH24:MI:SS'),100,'Current open balance','ECA02','The Credit Used indicates the total amount of open or unpaid invoices in primary accounting currency for the Business Partner. Credit Management is based on the Total Open Amount, which includes Vendor activities.','Y','N','N','N','N','N','N','Credit Used',21,TO_TIMESTAMP('2014-02-18 12:00:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:01:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53554 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:01:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53555,50032,0,56109,0,19,52215,TO_TIMESTAMP('2014-02-18 12:01:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Credit Definition Line',22,TO_TIMESTAMP('2014-02-18 12:01:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:01:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53555 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:01:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53556,50032,0,102,0,19,52219,TO_TIMESTAMP('2014-02-18 12:01:02','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',23,TO_TIMESTAMP('2014-02-18 12:01:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:01:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53556 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:01:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53557,50032,0,113,0,19,52220,TO_TIMESTAMP('2014-02-18 12:01:03','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',24,TO_TIMESTAMP('2014-02-18 12:01:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:01:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53557 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:01:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53558,50032,0,316,0,22,52229,TO_TIMESTAMP('2014-02-18 12:01:05','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02','The Grand Total displays the total amount including Tax and Freight in document currency','Y','N','N','N','N','N','N','Grand Total',25,TO_TIMESTAMP('2014-02-18 12:01:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:01:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53558 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:01:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53559,50032,0,56546,0,19,52235,TO_TIMESTAMP('2014-02-18 12:01:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Credit Definition Line Category',26,TO_TIMESTAMP('2014-02-18 12:01:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:01:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53559 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Feb 18, 2014 12:06:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-18 12:06:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53556
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53557
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53545
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53547
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53548
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53550
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53551
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53555
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53559
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53552
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53558
;

-- Feb 18, 2014 12:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-02-18 12:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53543
;

-- Feb 18, 2014 12:06:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-02-18 12:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53554
;

-- Feb 18, 2014 12:06:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-02-18 12:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53553
;

-- Feb 18, 2014 12:06:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-02-18 12:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53544
;

-- Feb 18, 2014 12:06:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-02-18 12:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53549
;

-- Feb 18, 2014 12:06:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-02-18 12:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53546
;

-- Feb 18, 2014 12:07:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsKey='Y',Updated=TO_TIMESTAMP('2014-02-18 12:07:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53555
;

-- Feb 18, 2014 12:08:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2014-02-18 12:08:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53543
;

-- Feb 18, 2014 12:09:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', IsIdentifier='Y', IsMandatory='Y', IsQueryCriteria='Y', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-18 12:09:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53544
;

-- Feb 18, 2014 12:10:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', IsIdentifier='Y', IsMandatory='Y', IsQueryCriteria='Y', SeqNo=1,Updated=TO_TIMESTAMP('2014-02-18 12:10:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53549
;

-- Feb 18, 2014 12:20:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52321,'C_Order.DocStatus=''IP'' AND C_DocType_ID IN 
(SELECT C_DocType_ID FROM C_DocType WHERE DocSubTypeSO IN (''OB'',''ON''))',TO_TIMESTAMP('2014-02-18 12:20:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Order Open Quote From C_BPartner','S',TO_TIMESTAMP('2014-02-18 12:20:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:20:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus=''IP'' AND C_DocType_ID IN 
(SELECT C_DocType_ID FROM C_DocType WHERE DocSubTypeSO IN (''OB'',''ON'')) AND C_BPartner_ID=@C_BPartner_ID@',Updated=TO_TIMESTAMP('2014-02-18 12:20:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52321
;

-- Feb 18, 2014 12:21:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='C_Order Open Quote Of C_BPartner',Updated=TO_TIMESTAMP('2014-02-18 12:21:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52321
;

-- Feb 18, 2014 12:21:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET AD_Reference_ID=30, AD_Reference_Value_ID=290, AD_Val_Rule_ID=52321, IsDisplayed='N', IsIdentifier='Y', IsMandatory='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-02-18 12:21:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53546
;

-- Feb 18, 2014 12:23:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',50032,0,53776,0,TO_TIMESTAMP('2014-02-18 12:23:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Quote convert And Allocated to Farmer Credit',TO_TIMESTAMP('2014-02-18 12:23:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:23:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53776 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Feb 18, 2014 12:23:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-02-18 12:23:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',53776,0,999,TO_TIMESTAMP('2014-02-18 12:23:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 18, 2014 12:23:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Convertir Cotización y Asignar A Credito de Productor',Updated=TO_TIMESTAMP('2014-02-18 12:23:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53776 AND AD_Language='es_MX'
;

-- Feb 18, 2014 12:23:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Convertir Cotización y Asignar A Credito de Productor',Updated=TO_TIMESTAMP('2014-02-18 12:23:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53776 AND AD_Language='es_VE'
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=0,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53681
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=1,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53667
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=2,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53589
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=3,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53660
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=4,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53669
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=5,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53636
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=6,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53740
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=7,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53652
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=8,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53776
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=10,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53658
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=11,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53692
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=12,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53657
;

-- Feb 18, 2014 12:24:00 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=13,Updated=TO_TIMESTAMP('2014-02-18 12:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53762
;

-- Feb 18, 2014 2:08:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET AD_Reference_ID=30, AD_Val_Rule_ID=52222,Updated=TO_TIMESTAMP('2014-02-18 14:08:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53544
;

-- Feb 18, 2014 2:08:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET AD_Val_Rule_ID=52207,Updated=TO_TIMESTAMP('2014-02-18 14:08:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53549
;

