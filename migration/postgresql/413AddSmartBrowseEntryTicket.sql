-- Mar 13, 2014 11:50:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50026,TO_TIMESTAMP('2014-03-13 23:50:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Entry Ticket View',TO_TIMESTAMP('2014-03-13 23:50:23','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_EntryTicket')
;

-- Mar 13, 2014 11:50:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50026 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- Mar 13, 2014 11:50:38 PM VET
-- Farming Technical Assistance
UPDATE AD_View_Trl SET Name='Ticket de Entrada',Updated=TO_TIMESTAMP('2014-03-13 23:50:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=50026
;

-- Mar 13, 2014 11:51:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,53585,50063,50026,TO_TIMESTAMP('2014-03-13 23:51:10','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'ET',TO_TIMESTAMP('2014-03-13 23:51:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67721,0,52390,50063,50026,'ET_AD_Client_ID','ET.AD_Client_ID',TO_TIMESTAMP('2014-03-13 23:51:14','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_TIMESTAMP('2014-03-13 23:51:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67722,0,52391,50063,50026,'ET_AD_Org_ID','ET.AD_Org_ID',TO_TIMESTAMP('2014-03-13 23:51:16','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_TIMESTAMP('2014-03-13 23:51:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67739,0,52392,50063,50026,'ET_BPName','ET.BPName',TO_TIMESTAMP('2014-03-13 23:51:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','BP Name',TO_TIMESTAMP('2014-03-13 23:51:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67738,0,52393,50063,50026,'ET_BPTaxID','ET.BPTaxID',TO_TIMESTAMP('2014-03-13 23:51:19','YYYY-MM-DD HH24:MI:SS'),100,'Tax ID of the Business Partner','ECA02','Y','Partner Tax ID',TO_TIMESTAMP('2014-03-13 23:51:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67737,0,52394,50063,50026,'ET_C_BPartner_ID','ET.C_BPartner_ID',TO_TIMESTAMP('2014-03-13 23:51:21','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Business Partner ',TO_TIMESTAMP('2014-03-13 23:51:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67740,0,52395,50063,50026,'ET_C_DocType_ID','ET.C_DocType_ID',TO_TIMESTAMP('2014-03-13 23:51:22','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','Document Type',TO_TIMESTAMP('2014-03-13 23:51:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,69651,0,52396,50063,50026,'ET_Copy','ET.Copy',TO_TIMESTAMP('2014-03-13 23:51:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Copy',TO_TIMESTAMP('2014-03-13 23:51:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67725,0,52397,50063,50026,'ET_Created','ET.Created',TO_TIMESTAMP('2014-03-13 23:51:25','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_TIMESTAMP('2014-03-13 23:51:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67726,0,52398,50063,50026,'ET_CreatedBy','ET.CreatedBy',TO_TIMESTAMP('2014-03-13 23:51:26','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_TIMESTAMP('2014-03-13 23:51:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67728,0,52399,50063,50026,'ET_DateDoc','ET.DateDoc',TO_TIMESTAMP('2014-03-13 23:51:27','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Document Date',TO_TIMESTAMP('2014-03-13 23:51:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67733,0,52400,50063,50026,'ET_Description','ET.Description',TO_TIMESTAMP('2014-03-13 23:51:29','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02','A description is limited to 255 characters.','Y','Description',TO_TIMESTAMP('2014-03-13 23:51:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67729,0,52401,50063,50026,'ET_DocAction','ET.DocAction',TO_TIMESTAMP('2014-03-13 23:51:30','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','Document Action',TO_TIMESTAMP('2014-03-13 23:51:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67730,0,52402,50063,50026,'ET_DocStatus','ET.DocStatus',TO_TIMESTAMP('2014-03-13 23:51:32','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Document Status',TO_TIMESTAMP('2014-03-13 23:51:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67731,0,52403,50063,50026,'ET_DocumentNo','ET.DocumentNo',TO_TIMESTAMP('2014-03-13 23:51:34','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Document No',TO_TIMESTAMP('2014-03-13 23:51:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67741,0,52404,50063,50026,'ET_DocumentType','ET.DocumentType',TO_TIMESTAMP('2014-03-13 23:51:37','YYYY-MM-DD HH24:MI:SS'),100,'Document Type','ECA02','Y','Document Type',TO_TIMESTAMP('2014-03-13 23:51:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67734,0,52405,50063,50026,'ET_Ext_Guide','ET.Ext_Guide',TO_TIMESTAMP('2014-03-13 23:51:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Ext. Guide',TO_TIMESTAMP('2014-03-13 23:51:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68778,0,52406,50063,50026,'ET_FTA_Driver_ID','ET.FTA_Driver_ID',TO_TIMESTAMP('2014-03-13 23:51:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Driver',TO_TIMESTAMP('2014-03-13 23:51:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67719,0,52407,50063,50026,'ET_FTA_EntryTicket_ID','ET.FTA_EntryTicket_ID',TO_TIMESTAMP('2014-03-13 23:51:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Entry Ticket',TO_TIMESTAMP('2014-03-13 23:51:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,71066,0,52408,50063,50026,'ET_FTA_FarmDivision_ID','ET.FTA_FarmDivision_ID',TO_TIMESTAMP('2014-03-13 23:51:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farm Division',TO_TIMESTAMP('2014-03-13 23:51:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67742,0,52409,50063,50026,'ET_FTA_MobilizationGuide_ID','ET.FTA_MobilizationGuide_ID',TO_TIMESTAMP('2014-03-13 23:51:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Mobilization Guide',TO_TIMESTAMP('2014-03-13 23:51:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67720,0,52410,50063,50026,'ET_FTA_RV_EntryTicket_ID','ET.FTA_RV_EntryTicket_ID',TO_TIMESTAMP('2014-03-13 23:51:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','View Entry Ticket',TO_TIMESTAMP('2014-03-13 23:51:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68779,0,52411,50063,50026,'ET_FTA_Vehicle_ID','ET.FTA_Vehicle_ID',TO_TIMESTAMP('2014-03-13 23:51:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Vehicle',TO_TIMESTAMP('2014-03-13 23:51:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67732,0,52412,50063,50026,'ET_IsActive','ET.IsActive',TO_TIMESTAMP('2014-03-13 23:51:49','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_TIMESTAMP('2014-03-13 23:51:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,71068,0,52413,50063,50026,'ET_M_Lot_ID','ET.M_Lot_ID',TO_TIMESTAMP('2014-03-13 23:51:51','YYYY-MM-DD HH24:MI:SS'),100,'Product Lot Definition','ECA02','The individual Lot of a Product','Y','Lot',TO_TIMESTAMP('2014-03-13 23:51:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68945,0,52414,50063,50026,'ET_M_Product_ID','ET.M_Product_ID',TO_TIMESTAMP('2014-03-13 23:51:52','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Product',TO_TIMESTAMP('2014-03-13 23:51:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68780,0,52415,50063,50026,'ET_M_Shipper_ID','ET.M_Shipper_ID',TO_TIMESTAMP('2014-03-13 23:51:53','YYYY-MM-DD HH24:MI:SS'),100,'Method or manner of product delivery','ECA02','The Shipper indicates the method of delivering product','Y','Shipper',TO_TIMESTAMP('2014-03-13 23:51:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,71341,0,52416,50063,50026,'ET_Name','ET.Name',TO_TIMESTAMP('2014-03-13 23:51:54','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Name',TO_TIMESTAMP('2014-03-13 23:51:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,71065,0,52417,50063,50026,'ET_OperationType','ET.OperationType',TO_TIMESTAMP('2014-03-13 23:51:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Operation Type',TO_TIMESTAMP('2014-03-13 23:51:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,67735,0,52418,50063,50026,'ET_Org_Location_ID','ET.Org_Location_ID',TO_TIMESTAMP('2014-03-13 23:51:57','YYYY-MM-DD HH24:MI:SS'),100,'Organization Location/Address','ECA02','Y','Org Address',TO_TIMESTAMP('2014-03-13 23:51:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:51:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67727,0,52419,50063,50026,'ET_Processed','ET.Processed',TO_TIMESTAMP('2014-03-13 23:51:58','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02','The Processed checkbox indicates that a document has been processed.','Y','Processed',TO_TIMESTAMP('2014-03-13 23:51:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:52:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68781,0,52420,50063,50026,'ET_ReferenceNo','ET.ReferenceNo',TO_TIMESTAMP('2014-03-13 23:51:59','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site','ECA02','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','Reference No',TO_TIMESTAMP('2014-03-13 23:51:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:52:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67736,0,52421,50063,50026,'ET_TaxID','ET.TaxID',TO_TIMESTAMP('2014-03-13 23:52:01','YYYY-MM-DD HH24:MI:SS'),100,'Tax Identification','ECA02','The Tax ID field identifies the legal Identification number of this Entity.','Y','Tax ID',TO_TIMESTAMP('2014-03-13 23:52:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:52:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67723,0,52422,50063,50026,'ET_Updated','ET.Updated',TO_TIMESTAMP('2014-03-13 23:52:02','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_TIMESTAMP('2014-03-13 23:52:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:52:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,67724,0,52423,50063,50026,'ET_UpdatedBy','ET.UpdatedBy',TO_TIMESTAMP('2014-03-13 23:52:03','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_TIMESTAMP('2014-03-13 23:52:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:52:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,71340,0,52424,50063,50026,'ET_Value','ET.Value',TO_TIMESTAMP('2014-03-13 23:52:04','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','ECA02','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Search Key',TO_TIMESTAMP('2014-03-13 23:52:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:54:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value) VALUES ('4',50033,0,0,53497,50026,TO_TIMESTAMP('2014-03-13 23:54:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','Tickets pending Quality Analysis input','N',TO_TIMESTAMP('2014-03-13 23:54:56','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_EntryTicket')
;

-- Mar 13, 2014 11:54:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50033 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- Mar 13, 2014 11:55:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET AccessLevel='3',Updated=TO_TIMESTAMP('2014-03-13 23:55:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50033
;

-- Mar 13, 2014 11:55:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Trl SET Name='Tickets de entrada pendientes por Análisis de Calidad',Updated=TO_TIMESTAMP('2014-03-13 23:55:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50033 AND AD_Language='es_MX'
;

-- Mar 13, 2014 11:55:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53561,50033,0,102,0,19,52390,TO_TIMESTAMP('2014-03-13 23:55:24','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',10,TO_TIMESTAMP('2014-03-13 23:55:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53561 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53562,50033,0,113,0,19,52391,TO_TIMESTAMP('2014-03-13 23:55:26','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',11,TO_TIMESTAMP('2014-03-13 23:55:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53562 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53563,50033,0,2510,0,10,52392,TO_TIMESTAMP('2014-03-13 23:55:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','Y','N','N','N','N','BP Name',12,TO_TIMESTAMP('2014-03-13 23:55:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53563 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53564,50033,0,2266,0,14,52393,TO_TIMESTAMP('2014-03-13 23:55:32','YYYY-MM-DD HH24:MI:SS'),100,'Tax ID of the Business Partner','ECA02','Y','N','N','N','N','N','N','Partner Tax ID',13,TO_TIMESTAMP('2014-03-13 23:55:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53564 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53565,50033,0,187,0,19,52394,TO_TIMESTAMP('2014-03-13 23:55:34','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',14,TO_TIMESTAMP('2014-03-13 23:55:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53565 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53566,50033,0,196,0,19,52395,TO_TIMESTAMP('2014-03-13 23:55:36','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','Document Type',15,TO_TIMESTAMP('2014-03-13 23:55:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53566 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53567,50033,0,56586,0,14,52396,TO_TIMESTAMP('2014-03-13 23:55:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Copy',16,TO_TIMESTAMP('2014-03-13 23:55:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53567 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53568,50033,0,245,0,16,52397,TO_TIMESTAMP('2014-03-13 23:55:40','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',17,TO_TIMESTAMP('2014-03-13 23:55:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53568 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53569,50033,0,246,0,18,110,52398,TO_TIMESTAMP('2014-03-13 23:55:42','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',18,TO_TIMESTAMP('2014-03-13 23:55:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53569 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53570,50033,0,265,0,15,52399,TO_TIMESTAMP('2014-03-13 23:55:44','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','N','N','N','N','N','N','Document Date',19,TO_TIMESTAMP('2014-03-13 23:55:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53570 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53571,50033,0,275,0,10,52400,TO_TIMESTAMP('2014-03-13 23:55:46','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02','A description is limited to 255 characters.','Y','N','N','N','N','N','N','Description',20,TO_TIMESTAMP('2014-03-13 23:55:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53571 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53572,50033,0,287,0,17,135,52401,TO_TIMESTAMP('2014-03-13 23:55:48','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','Document Action',21,TO_TIMESTAMP('2014-03-13 23:55:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53572 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53573,50033,0,289,0,17,131,52402,TO_TIMESTAMP('2014-03-13 23:55:50','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',22,TO_TIMESTAMP('2014-03-13 23:55:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53573 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53574,50033,0,290,0,10,52403,TO_TIMESTAMP('2014-03-13 23:55:51','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','Document No',23,TO_TIMESTAMP('2014-03-13 23:55:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53574 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53575,50033,0,1841,0,10,52404,TO_TIMESTAMP('2014-03-13 23:55:54','YYYY-MM-DD HH24:MI:SS'),100,'Document Type','ECA02','Y','N','N','N','N','N','N','Document Type',24,TO_TIMESTAMP('2014-03-13 23:55:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53575 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:55:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53576,50033,0,56130,0,10,52405,TO_TIMESTAMP('2014-03-13 23:55:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Ext. Guide',25,TO_TIMESTAMP('2014-03-13 23:55:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:55:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53576 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53577,50033,0,56441,0,19,52406,TO_TIMESTAMP('2014-03-13 23:55:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Driver',26,TO_TIMESTAMP('2014-03-13 23:55:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53577 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53578,50033,0,56129,0,18,53537,52407,TO_TIMESTAMP('2014-03-13 23:56:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Entry Ticket',27,TO_TIMESTAMP('2014-03-13 23:56:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53578 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53579,50033,0,55969,0,19,52408,TO_TIMESTAMP('2014-03-13 23:56:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Farm Division',28,TO_TIMESTAMP('2014-03-13 23:56:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53579 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53580,50033,0,55979,0,18,53516,52409,TO_TIMESTAMP('2014-03-13 23:56:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Mobilization Guide',29,TO_TIMESTAMP('2014-03-13 23:56:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53580 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53581,50033,0,56334,0,13,52410,TO_TIMESTAMP('2014-03-13 23:56:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','View Entry Ticket',30,TO_TIMESTAMP('2014-03-13 23:56:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53581 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53582,50033,0,56440,0,19,52411,TO_TIMESTAMP('2014-03-13 23:56:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Vehicle',31,TO_TIMESTAMP('2014-03-13 23:56:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53582 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53583,50033,0,348,0,20,52412,TO_TIMESTAMP('2014-03-13 23:56:10','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',32,TO_TIMESTAMP('2014-03-13 23:56:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53583 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53584,50033,0,2021,0,18,53523,52413,TO_TIMESTAMP('2014-03-13 23:56:12','YYYY-MM-DD HH24:MI:SS'),100,'Product Lot Definition','ECA02','The individual Lot of a Product','Y','N','N','N','N','N','N','Lot',33,TO_TIMESTAMP('2014-03-13 23:56:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53584 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53585,50033,0,454,0,19,52414,TO_TIMESTAMP('2014-03-13 23:56:15','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','Product',34,TO_TIMESTAMP('2014-03-13 23:56:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53585 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53586,50033,0,455,0,19,52415,TO_TIMESTAMP('2014-03-13 23:56:17','YYYY-MM-DD HH24:MI:SS'),100,'Method or manner of product delivery','ECA02','The Shipper indicates the method of delivering product','Y','N','N','N','N','N','N','Shipper',35,TO_TIMESTAMP('2014-03-13 23:56:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53586 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53587,50033,0,469,0,10,52416,TO_TIMESTAMP('2014-03-13 23:56:19','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','Y','N','N','N','N','Name',36,TO_TIMESTAMP('2014-03-13 23:56:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53587 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53588,50033,0,56607,0,10,52417,TO_TIMESTAMP('2014-03-13 23:56:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Operation Type',37,TO_TIMESTAMP('2014-03-13 23:56:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53588 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53589,50033,0,1874,0,21,52418,TO_TIMESTAMP('2014-03-13 23:56:22','YYYY-MM-DD HH24:MI:SS'),100,'Organization Location/Address','ECA02','Y','N','N','N','N','N','N','Org Address',38,TO_TIMESTAMP('2014-03-13 23:56:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53589 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53590,50033,0,1047,0,17,319,52419,TO_TIMESTAMP('2014-03-13 23:56:24','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02','The Processed checkbox indicates that a document has been processed.','Y','N','N','N','N','N','N','Processed',39,TO_TIMESTAMP('2014-03-13 23:56:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53590 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53591,50033,0,540,0,10,52420,TO_TIMESTAMP('2014-03-13 23:56:26','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site','ECA02','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','N','N','N','N','N','N','Reference No',40,TO_TIMESTAMP('2014-03-13 23:56:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53591 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53592,50033,0,590,0,10,52421,TO_TIMESTAMP('2014-03-13 23:56:29','YYYY-MM-DD HH24:MI:SS'),100,'Tax Identification','ECA02','The Tax ID field identifies the legal Identification number of this Entity.','Y','N','N','N','N','N','N','Tax ID',41,TO_TIMESTAMP('2014-03-13 23:56:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53592 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53593,50033,0,607,0,16,52422,TO_TIMESTAMP('2014-03-13 23:56:31','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','Updated',42,TO_TIMESTAMP('2014-03-13 23:56:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53593 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53594,50033,0,608,0,18,110,52423,TO_TIMESTAMP('2014-03-13 23:56:33','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','Updated By',43,TO_TIMESTAMP('2014-03-13 23:56:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53594 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:56:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53595,50033,0,620,0,10,52424,TO_TIMESTAMP('2014-03-13 23:56:36','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','ECA02','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','Y','N','N','N','N','Search Key',44,TO_TIMESTAMP('2014-03-13 23:56:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:56:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53595 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Mar 13, 2014 11:57:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53562
;

-- Mar 13, 2014 11:57:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53563
;

-- Mar 13, 2014 11:57:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53564
;

-- Mar 13, 2014 11:57:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53566
;

-- Mar 13, 2014 11:57:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53567
;

-- Mar 13, 2014 11:57:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53568
;

-- Mar 13, 2014 11:57:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53569
;

-- Mar 13, 2014 11:57:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53570
;

-- Mar 13, 2014 11:57:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53571
;

-- Mar 13, 2014 11:57:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53572
;

-- Mar 13, 2014 11:57:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53573
;

-- Mar 13, 2014 11:57:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53574
;

-- Mar 13, 2014 11:57:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53575
;

-- Mar 13, 2014 11:57:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53577
;

-- Mar 13, 2014 11:57:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53578
;

-- Mar 13, 2014 11:57:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53579
;

-- Mar 13, 2014 11:57:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53580
;

-- Mar 13, 2014 11:57:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53581
;

-- Mar 13, 2014 11:57:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53582
;

-- Mar 13, 2014 11:57:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53583
;

-- Mar 13, 2014 11:57:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53584
;

-- Mar 13, 2014 11:57:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53585
;

-- Mar 13, 2014 11:57:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53586
;

-- Mar 13, 2014 11:57:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53587
;

-- Mar 13, 2014 11:57:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53588
;

-- Mar 13, 2014 11:57:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53589
;

-- Mar 13, 2014 11:57:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53590
;

-- Mar 13, 2014 11:57:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53591
;

-- Mar 13, 2014 11:57:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53592
;

-- Mar 13, 2014 11:57:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53593
;

-- Mar 13, 2014 11:57:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53594
;

-- Mar 13, 2014 11:57:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-13 23:57:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53595
;

-- Mar 13, 2014 11:57:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-03-13 23:57:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53561
;

-- Mar 13, 2014 11:57:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-03-13 23:57:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53565
;

-- Mar 13, 2014 11:57:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-03-13 23:57:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53576
;

-- Mar 13, 2014 11:58:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',50033,0,53791,0,TO_TIMESTAMP('2014-03-13 23:58:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Tickets pending Quality Analysis input',TO_TIMESTAMP('2014-03-13 23:58:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 11:58:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53791 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Mar 13, 2014 11:58:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-03-13 23:58:38','YYYY-MM-DD HH24:MI:SS'),100,'Y',53791,0,999,TO_TIMESTAMP('2014-03-13 23:58:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 14, 2014 12:02:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-14 00:02:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53561
;

-- Mar 14, 2014 12:02:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-14 00:02:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53565
;

-- Mar 14, 2014 12:02:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-14 00:02:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53576
;

-- Mar 14, 2014 12:02:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-03-14 00:02:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53578
;

-- Mar 14, 2014 12:02:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-03-14 00:02:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53595
;

-- Mar 14, 2014 12:02:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-03-14 00:02:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53579
;

-- Mar 14, 2014 12:02:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-03-14 00:02:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53577
;

-- Mar 14, 2014 12:02:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-03-14 00:02:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53580
;

-- Mar 14, 2014 12:02:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-03-14 00:02:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53574
;

-- Mar 14, 2014 12:03:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-03-14 00:03:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53578
;

-- Mar 14, 2014 12:03:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-03-14 00:03:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53595
;

-- Mar 14, 2014 12:18:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53599,'org.spin.process.EntryTicketPrinted','N',TO_TIMESTAMP('2014-03-14 00:18:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Entry Ticket Smart Browse','Y',0,0,TO_TIMESTAMP('2014-03-14 00:18:39','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_EntryTicket EntryTicketSB ')
;

-- Mar 14, 2014 12:18:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53599 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Mar 14, 2014 12:18:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AD_ReportView_ID=53078, IsReport='Y',Updated=TO_TIMESTAMP('2014-03-14 00:18:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53599
;

-- Mar 14, 2014 12:18:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Value='FTA_RV_EntryTicket EntryTicketSB',Updated=TO_TIMESTAMP('2014-03-14 00:18:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53599
;

-- Mar 14, 2014 12:21:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET AD_Process_ID=53599,Updated=TO_TIMESTAMP('2014-03-14 00:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50033
;

-- Mar 14, 2014 12:28:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-03-14 00:28:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53578
;

-- Mar 14, 2014 12:28:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsIdentifier='N',Updated=TO_TIMESTAMP('2014-03-14 00:28:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53595
;

-- Mar 14, 2014 12:29:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsQueryCriteria='N',Updated=TO_TIMESTAMP('2014-03-14 00:29:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53595
;

-- Mar 14, 2014 12:29:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2014-03-14 00:29:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53578
;

-- Mar 14, 2014 12:30:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsIdentifier='N', IsKey='Y',Updated=TO_TIMESTAMP('2014-03-14 00:30:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53578
;

