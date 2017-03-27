-- 07-oct-2013 15:15:39 VET
-- SFAndroid Contribution
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50017,TO_TIMESTAMP('2013-10-07 15:15:37','YYYY-MM-DD HH24:MI:SS'),100,'Allocation Credit Act','ECA02','Allocation Credit Act','Y','Allocation Credit Act',TO_TIMESTAMP('2013-10-07 15:15:37','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_AllocationCreditAct')
;

-- 07-oct-2013 15:15:39 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50017 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- 07-oct-2013 15:16:38 VET
-- SFAndroid Contribution
UPDATE AD_View_Trl SET Name='Asignación de Acta de Credito',Description='Asignación de Acta de Credito',Help='Asignación de Acta de Credito',Updated=TO_TIMESTAMP('2013-10-07 15:16:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=50017
;

-- 07-oct-2013 15:18:15 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,53612,50054,50017,TO_TIMESTAMP('2013-10-07 15:18:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'ACA',TO_TIMESTAMP('2013-10-07 15:18:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:21 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68513,0,52078,50054,50017,'ACA_AD_Client_ID','ACA.AD_Client_ID',TO_TIMESTAMP('2013-10-07 15:18:20','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_TIMESTAMP('2013-10-07 15:18:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:22 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68514,0,52079,50054,50017,'ACA_AD_Org_ID','ACA.AD_Org_ID',TO_TIMESTAMP('2013-10-07 15:18:21','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_TIMESTAMP('2013-10-07 15:18:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:23 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68520,0,52080,50054,50017,'ACA_Amt','ACA.Amt',TO_TIMESTAMP('2013-10-07 15:18:22','YYYY-MM-DD HH24:MI:SS'),100,'Amount','ECA02','Amount','Y','Amount',TO_TIMESTAMP('2013-10-07 15:18:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:24 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68521,0,52081,50054,50017,'ACA_Beneficiary_ID','ACA.Beneficiary_ID',TO_TIMESTAMP('2013-10-07 15:18:23','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner to whom payment is made','ECA02','The Beneficiary indicates the Business Partner to whom payment will be made.','Y','Beneficiary',TO_TIMESTAMP('2013-10-07 15:18:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:26 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68522,0,52082,50054,50017,'ACA_C_BPartner_ID','ACA.C_BPartner_ID',TO_TIMESTAMP('2013-10-07 15:18:24','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Business Partner ',TO_TIMESTAMP('2013-10-07 15:18:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:27 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68523,0,52083,50054,50017,'ACA_C_Charge_ID','ACA.C_Charge_ID',TO_TIMESTAMP('2013-10-07 15:18:26','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','Charge',TO_TIMESTAMP('2013-10-07 15:18:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:28 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68524,0,52084,50054,50017,'ACA_C_DocType_ID','ACA.C_DocType_ID',TO_TIMESTAMP('2013-10-07 15:18:27','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','Document Type',TO_TIMESTAMP('2013-10-07 15:18:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:29 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68516,0,52085,50054,50017,'ACA_Created','ACA.Created',TO_TIMESTAMP('2013-10-07 15:18:28','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_TIMESTAMP('2013-10-07 15:18:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:30 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68518,0,52086,50054,50017,'ACA_CreatedBy','ACA.CreatedBy',TO_TIMESTAMP('2013-10-07 15:18:29','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_TIMESTAMP('2013-10-07 15:18:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:31 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68525,0,52087,50054,50017,'ACA_C_UOM_ID','ACA.C_UOM_ID',TO_TIMESTAMP('2013-10-07 15:18:30','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','ECA02','The UOM defines a unique non monetary Unit of Measure','Y','UOM',TO_TIMESTAMP('2013-10-07 15:18:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:32 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68526,0,52088,50054,50017,'ACA_DateDoc','ACA.DateDoc',TO_TIMESTAMP('2013-10-07 15:18:31','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Document Date',TO_TIMESTAMP('2013-10-07 15:18:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:34 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68527,0,52089,50054,50017,'ACA_Description','ACA.Description',TO_TIMESTAMP('2013-10-07 15:18:32','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02','A description is limited to 255 characters.','Y','Description',TO_TIMESTAMP('2013-10-07 15:18:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:35 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68528,0,52090,50054,50017,'ACA_DocAction','ACA.DocAction',TO_TIMESTAMP('2013-10-07 15:18:34','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','Document Action',TO_TIMESTAMP('2013-10-07 15:18:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:36 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68529,0,52091,50054,50017,'ACA_DocStatus','ACA.DocStatus',TO_TIMESTAMP('2013-10-07 15:18:35','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Document Status',TO_TIMESTAMP('2013-10-07 15:18:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:37 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68530,0,52092,50054,50017,'ACA_DocumentNo','ACA.DocumentNo',TO_TIMESTAMP('2013-10-07 15:18:36','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Document No',TO_TIMESTAMP('2013-10-07 15:18:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:41 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68531,0,52093,50054,50017,'ACA_FarmingAlloc','ACA.FarmingAlloc',TO_TIMESTAMP('2013-10-07 15:18:37','YYYY-MM-DD HH24:MI:SS'),100,'Farming Allocation','ECA02','Allocate or deallocate Credit to Farming, while credit is not completed.','Y','Farming Allocation',TO_TIMESTAMP('2013-10-07 15:18:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:42 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68532,0,52094,50054,50017,'ACA_FTA_CreditAct_ID','ACA.FTA_CreditAct_ID',TO_TIMESTAMP('2013-10-07 15:18:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Act',TO_TIMESTAMP('2013-10-07 15:18:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:43 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68533,0,52095,50054,50017,'ACA_FTA_CreditDefinition_ID','ACA.FTA_CreditDefinition_ID',TO_TIMESTAMP('2013-10-07 15:18:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Definition',TO_TIMESTAMP('2013-10-07 15:18:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:45 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68534,0,52096,50054,50017,'ACA_FTA_FarmerCredit_ID','ACA.FTA_FarmerCredit_ID',TO_TIMESTAMP('2013-10-07 15:18:43','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','Credit/Loan',TO_TIMESTAMP('2013-10-07 15:18:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:46 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68515,0,52097,50054,50017,'ACA_IsActive','ACA.IsActive',TO_TIMESTAMP('2013-10-07 15:18:45','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_TIMESTAMP('2013-10-07 15:18:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:47 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68539,0,52098,50054,50017,'ACA_IsAllocated','ACA.IsAllocated',TO_TIMESTAMP('2013-10-07 15:18:46','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if the payment has been allocated','ECA02','The Allocated checkbox indicates if a payment has been allocated or associated with an invoice or invoices.','Y','Allocated',TO_TIMESTAMP('2013-10-07 15:18:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:49 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68535,0,52099,50054,50017,'ACA_IsApproved','ACA.IsApproved',TO_TIMESTAMP('2013-10-07 15:18:47','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval','ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Approved',TO_TIMESTAMP('2013-10-07 15:18:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:50 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68536,0,52100,50054,50017,'ACA_Processed','ACA.Processed',TO_TIMESTAMP('2013-10-07 15:18:49','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02','The Processed checkbox indicates that a document has been processed.','Y','Processed',TO_TIMESTAMP('2013-10-07 15:18:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:51 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68537,0,52101,50054,50017,'ACA_Processing','ACA.Processing',TO_TIMESTAMP('2013-10-07 15:18:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Process Now',TO_TIMESTAMP('2013-10-07 15:18:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:52 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68538,0,52102,50054,50017,'ACA_Qty','ACA.Qty',TO_TIMESTAMP('2013-10-07 15:18:51','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','Quantity',TO_TIMESTAMP('2013-10-07 15:18:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:54 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68517,0,52103,50054,50017,'ACA_Updated','ACA.Updated',TO_TIMESTAMP('2013-10-07 15:18:52','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_TIMESTAMP('2013-10-07 15:18:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:18:55 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68519,0,52104,50054,50017,'ACA_UpdatedBy','ACA.UpdatedBy',TO_TIMESTAMP('2013-10-07 15:18:54','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_TIMESTAMP('2013-10-07 15:18:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:22:17 VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53482,'org.spin.process.FarmerCreditAllocation','N',TO_TIMESTAMP('2013-10-07 15:22:15','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit Allocation','ECA02','Allocate Farmer Credit to Act','Y','N','N','N','N','Farmer Credit Allocation','Y',0,0,TO_TIMESTAMP('2013-10-07 15:22:15','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmerCreditAllocation Process')
;

-- 07-oct-2013 15:22:17 VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53482 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 07-oct-2013 15:23:08 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value) VALUES ('3',50022,0,0,53482,50017,TO_TIMESTAMP('2013-10-07 15:23:06','YYYY-MM-DD HH24:MI:SS'),100,'Allocation Credit Act','ECA02','Process to Allocate Farmer Liquidation','Y','N','Allocation Credit Act','N',TO_TIMESTAMP('2013-10-07 15:23:06','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Allocation Credit Act')
;

-- 07-oct-2013 15:23:08 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50022 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- 07-oct-2013 15:23:23 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53285,50022,0,102,0,19,52078,TO_TIMESTAMP('2013-10-07 15:23:21','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',10,TO_TIMESTAMP('2013-10-07 15:23:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:23 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53285 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:25 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53286,50022,0,113,0,19,52079,TO_TIMESTAMP('2013-10-07 15:23:23','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',11,TO_TIMESTAMP('2013-10-07 15:23:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:25 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53286 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:27 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53287,50022,0,160,0,12,52080,TO_TIMESTAMP('2013-10-07 15:23:25','YYYY-MM-DD HH24:MI:SS'),100,'Amount','ECA02','Amount','Y','N','N','N','N','N','N','Amount',12,TO_TIMESTAMP('2013-10-07 15:23:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:27 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53287 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:30 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53288,50022,0,56104,0,30,53570,52081,TO_TIMESTAMP('2013-10-07 15:23:27','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner to whom payment is made','ECA02','The Beneficiary indicates the Business Partner to whom payment will be made.','Y','N','N','N','N','N','N','Beneficiary',13,TO_TIMESTAMP('2013-10-07 15:23:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:30 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53288 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:32 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53289,50022,0,187,0,19,52082,TO_TIMESTAMP('2013-10-07 15:23:30','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',14,TO_TIMESTAMP('2013-10-07 15:23:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:32 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53289 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:33 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53290,50022,0,968,0,19,200,52083,TO_TIMESTAMP('2013-10-07 15:23:32','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','N','N','N','N','N','N','Charge',15,TO_TIMESTAMP('2013-10-07 15:23:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:33 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53290 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:35 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53291,50022,0,196,0,19,52084,TO_TIMESTAMP('2013-10-07 15:23:33','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','Document Type',16,TO_TIMESTAMP('2013-10-07 15:23:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:35 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53291 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:37 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53292,50022,0,245,0,16,52085,TO_TIMESTAMP('2013-10-07 15:23:35','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',17,TO_TIMESTAMP('2013-10-07 15:23:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:37 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53292 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:39 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53293,50022,0,246,0,19,110,52086,TO_TIMESTAMP('2013-10-07 15:23:37','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',18,TO_TIMESTAMP('2013-10-07 15:23:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:39 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53293 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:41 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53294,50022,0,215,0,19,52087,TO_TIMESTAMP('2013-10-07 15:23:39','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','ECA02','The UOM defines a unique non monetary Unit of Measure','Y','N','N','N','N','N','N','UOM',19,TO_TIMESTAMP('2013-10-07 15:23:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:41 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53294 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:43 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53295,50022,0,265,0,16,52088,TO_TIMESTAMP('2013-10-07 15:23:41','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','N','N','N','N','N','N','Document Date',20,TO_TIMESTAMP('2013-10-07 15:23:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:43 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53295 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:44 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53296,50022,0,275,0,10,52089,TO_TIMESTAMP('2013-10-07 15:23:43','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02','A description is limited to 255 characters.','Y','N','N','N','N','N','N','Description',21,TO_TIMESTAMP('2013-10-07 15:23:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:44 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53296 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:46 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53297,50022,0,287,0,17,135,52090,TO_TIMESTAMP('2013-10-07 15:23:44','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','Document Action',22,TO_TIMESTAMP('2013-10-07 15:23:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:46 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53297 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:47 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53298,50022,0,289,0,10,131,52091,TO_TIMESTAMP('2013-10-07 15:23:46','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',23,TO_TIMESTAMP('2013-10-07 15:23:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:47 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53298 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:49 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53299,50022,0,290,0,10,52092,TO_TIMESTAMP('2013-10-07 15:23:47','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','Document No',24,TO_TIMESTAMP('2013-10-07 15:23:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:49 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53299 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:51 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53300,50022,0,56332,0,20,52093,TO_TIMESTAMP('2013-10-07 15:23:49','YYYY-MM-DD HH24:MI:SS'),100,'Farming Allocation','ECA02','Allocate or deallocate Credit to Farming, while credit is not completed.','Y','N','N','N','N','N','N','Farming Allocation',25,TO_TIMESTAMP('2013-10-07 15:23:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:51 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53300 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:53 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53301,50022,0,56396,0,19,52094,TO_TIMESTAMP('2013-10-07 15:23:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Credit Act',26,TO_TIMESTAMP('2013-10-07 15:23:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:53 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53301 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:55 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53302,50022,0,56108,0,19,52095,TO_TIMESTAMP('2013-10-07 15:23:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Credit Definition',27,TO_TIMESTAMP('2013-10-07 15:23:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:55 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53302 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:57 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53303,50022,0,56084,0,19,52096,TO_TIMESTAMP('2013-10-07 15:23:55','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','N','N','N','N','N','N','Credit/Loan',28,TO_TIMESTAMP('2013-10-07 15:23:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:57 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53303 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:23:59 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53304,50022,0,348,0,20,52097,TO_TIMESTAMP('2013-10-07 15:23:57','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',29,TO_TIMESTAMP('2013-10-07 15:23:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:23:59 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53304 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:24:00 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53305,50022,0,1508,0,14,52098,TO_TIMESTAMP('2013-10-07 15:23:59','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if the payment has been allocated','ECA02','The Allocated checkbox indicates if a payment has been allocated or associated with an invoice or invoices.','Y','N','N','N','N','N','N','Allocated',30,TO_TIMESTAMP('2013-10-07 15:23:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:24:00 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53305 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:24:02 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53306,50022,0,351,0,20,52099,TO_TIMESTAMP('2013-10-07 15:24:00','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval','ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','N','N','N','N','N','N','Approved',31,TO_TIMESTAMP('2013-10-07 15:24:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:24:02 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53306 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:24:04 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53307,50022,0,1047,0,20,52100,TO_TIMESTAMP('2013-10-07 15:24:02','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02','The Processed checkbox indicates that a document has been processed.','Y','N','N','N','N','N','N','Processed',32,TO_TIMESTAMP('2013-10-07 15:24:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:24:04 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53307 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:24:06 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53308,50022,0,524,0,20,52101,TO_TIMESTAMP('2013-10-07 15:24:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Process Now',33,TO_TIMESTAMP('2013-10-07 15:24:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:24:06 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53308 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:24:07 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53309,50022,0,526,0,29,52102,TO_TIMESTAMP('2013-10-07 15:24:06','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','N','N','N','N','N','N','Quantity',34,TO_TIMESTAMP('2013-10-07 15:24:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:24:07 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53309 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:24:09 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53310,50022,0,607,0,16,52103,TO_TIMESTAMP('2013-10-07 15:24:07','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','Updated',35,TO_TIMESTAMP('2013-10-07 15:24:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:24:09 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53310 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:24:11 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53311,50022,0,608,0,19,110,52104,TO_TIMESTAMP('2013-10-07 15:24:09','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','Updated By',36,TO_TIMESTAMP('2013-10-07 15:24:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 15:24:11 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53311 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 07-oct-2013 15:25:03 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Trl SET Name='Asignar Creditos a Acta',Description='Asignar Creditos a Acta',Help='Asignar Creditos a Actas',Updated=TO_TIMESTAMP('2013-10-07 15:25:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50022 AND AD_Language='es_VE'
;

-- 07-oct-2013 15:25:11 VET
-- SFAndroid Contribution
UPDATE AD_Browse SET Help='Allocation Credit Act',Updated=TO_TIMESTAMP('2013-10-07 15:25:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50022
;

-- 07-oct-2013 15:25:11 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Trl SET IsTranslated='N' WHERE AD_Browse_ID=50022
;

-- 07-oct-2013 15:27:57 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53285
;

-- 07-oct-2013 15:27:57 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53286
;

-- 07-oct-2013 15:27:57 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53289
;

-- 07-oct-2013 15:27:57 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53290
;

-- 07-oct-2013 15:27:57 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53294
;

-- 07-oct-2013 15:27:58 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53292
;

-- 07-oct-2013 15:27:58 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53293
;

-- 07-oct-2013 15:27:58 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53296
;

-- 07-oct-2013 15:27:58 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53297
;

-- 07-oct-2013 15:27:58 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53298
;

-- 07-oct-2013 15:27:58 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53301
;

-- 07-oct-2013 15:27:58 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53300
;

-- 07-oct-2013 15:27:58 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53304
;

-- 07-oct-2013 15:27:58 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53306
;

-- 07-oct-2013 15:27:58 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53307
;

-- 07-oct-2013 15:27:59 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53308
;

-- 07-oct-2013 15:27:59 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53310
;

-- 07-oct-2013 15:27:59 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-10-07 15:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53311
;

-- 07-oct-2013 15:27:59 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2013-10-07 15:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53303
;

-- 07-oct-2013 15:27:59 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2013-10-07 15:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53299
;

-- 07-oct-2013 15:27:59 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2013-10-07 15:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53291
;

-- 07-oct-2013 15:27:59 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-10-07 15:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53295
;

-- 07-oct-2013 15:27:59 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-10-07 15:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53288
;

-- 07-oct-2013 15:28:00 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-10-07 15:28:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53302
;

-- 07-oct-2013 15:28:00 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-10-07 15:28:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53309
;

-- 07-oct-2013 15:28:00 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-10-07 15:28:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53287
;

-- 07-oct-2013 15:28:00 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-10-07 15:28:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53305
;

-- 07-oct-2013 15:28:47 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_TIMESTAMP('2013-10-07 15:28:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53295
;

-- 07-oct-2013 15:28:47 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=20,Updated=TO_TIMESTAMP('2013-10-07 15:28:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53288
;

-- 07-oct-2013 15:28:47 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=30,Updated=TO_TIMESTAMP('2013-10-07 15:28:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53299
;

-- 07-oct-2013 15:29:05 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', IsMandatory='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-10-07 15:29:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53305
;

-- 07-oct-2013 15:29:40 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=20, FieldLength=1,Updated=TO_TIMESTAMP('2013-10-07 15:29:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68539
;

-- 07-oct-2013 15:29:52 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=20,Updated=TO_TIMESTAMP('2013-10-07 15:29:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53305
;

-- 07-oct-2013 15:30:19 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsKey='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-10-07 15:30:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53303
;

-- 07-oct-2013 15:30:28 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsMandatory='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-10-07 15:30:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53291
;

-- 07-oct-2013 15:30:40 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y', IsRange='Y',Updated=TO_TIMESTAMP('2013-10-07 15:30:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53295
;

-- 07-oct-2013 15:30:49 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-10-07 15:30:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53288
;

-- 07-oct-2013 15:34:22 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Process_ID=53482,Updated=TO_TIMESTAMP('2013-10-07 15:34:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68220
;

-- 07-oct-2013 15:35:02 VET
-- SFAndroid Contribution
UPDATE AD_Process SET AD_Browse_ID=50022,Updated=TO_TIMESTAMP('2013-10-07 15:35:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53482
;

