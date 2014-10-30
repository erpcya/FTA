-- 14/06/2014 02:17:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53814,'N',TO_TIMESTAMP('2014-06-14 14:17:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','N','N','N','Y',0,'View Bill Of Exchange Pending by Document','L','FTA_RV_BillOfExchangeDoc',TO_TIMESTAMP('2014-06-14 14:17:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:17:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53814 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 14/06/2014 02:17:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73087,102,0,19,53814,129,'AD_Client_ID',TO_TIMESTAMP('2014-06-14 14:17:12','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','Y','N','N','N','Y','Client',TO_TIMESTAMP('2014-06-14 14:17:12','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 14/06/2014 02:17:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73087 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:17:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73088,113,0,19,53814,104,'AD_Org_ID',TO_TIMESTAMP('2014-06-14 14:17:14','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','Y','N','N','N','Y','Organization',TO_TIMESTAMP('2014-06-14 14:17:14','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 14/06/2014 02:17:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73088 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:17:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73089,348,0,20,53814,'IsActive',TO_TIMESTAMP('2014-06-14 14:17:15','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2014-06-14 14:17:15','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 14/06/2014 02:17:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73089 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:17:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73090,245,0,16,53814,'Created',TO_TIMESTAMP('2014-06-14 14:17:17','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created',TO_TIMESTAMP('2014-06-14 14:17:17','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 14/06/2014 02:17:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73090 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:17:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73091,607,0,16,53814,'Updated',TO_TIMESTAMP('2014-06-14 14:17:19','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated',TO_TIMESTAMP('2014-06-14 14:17:19','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 14/06/2014 02:17:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73091 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:17:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73092,246,0,19,110,53814,'CreatedBy',TO_TIMESTAMP('2014-06-14 14:17:20','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created By',TO_TIMESTAMP('2014-06-14 14:17:20','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 14/06/2014 02:17:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73092 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:17:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73093,608,0,19,110,53814,'UpdatedBy',TO_TIMESTAMP('2014-06-14 14:17:22','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated By',TO_TIMESTAMP('2014-06-14 14:17:22','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 14/06/2014 02:17:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73093 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:17:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53962,TO_TIMESTAMP('2014-06-14 14:17:23','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_RV_BillOfExchangeDoc',1,'Y','N','Y','Y','FTA_RV_BillOfExchangeDoc','N',1000000,TO_TIMESTAMP('2014-06-14 14:17:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:17:38 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73090
;

-- 14/06/2014 02:17:38 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=73090
;

-- 14/06/2014 02:17:41 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73092
;

-- 14/06/2014 02:17:41 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=73092
;

-- 14/06/2014 02:17:51 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73089
;

-- 14/06/2014 02:17:51 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=73089
;

-- 14/06/2014 02:17:56 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73093
;

-- 14/06/2014 02:17:56 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=73093
;

-- 14/06/2014 02:18:00 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73091
;

-- 14/06/2014 02:18:00 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=73091
;

-- 14/06/2014 02:18:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73094,1008,0,19,53814,'C_Invoice_ID',TO_TIMESTAMP('2014-06-14 14:18:10','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02',10,'The Invoice Document.','Y','N','N','N','N','N','N','N','N','N','Invoice',TO_TIMESTAMP('2014-06-14 14:18:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73094 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73095,290,0,10,53814,'DocumentNo',TO_TIMESTAMP('2014-06-14 14:18:12','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02',30,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','Y','N','N','Document No',TO_TIMESTAMP('2014-06-14 14:18:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73095 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73096,267,0,16,53814,'DateInvoiced',TO_TIMESTAMP('2014-06-14 14:18:13','YYYY-MM-DD HH24:MI:SS'),100,'Date printed on Invoice','ECA02',29,'The Date Invoice indicates the date printed on the invoice.','Y','N','N','N','N','N','N','N','N','N','Date Invoiced',TO_TIMESTAMP('2014-06-14 14:18:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73096 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73097,263,0,16,53814,'DateAcct',TO_TIMESTAMP('2014-06-14 14:18:15','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02',29,'The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','N','N','N','N','N','N','N','N','N','Account Date',TO_TIMESTAMP('2014-06-14 14:18:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73097 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73098,289,0,17,131,53814,'DocStatus',TO_TIMESTAMP('2014-06-14 14:18:16','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','N','N','N','Document Status',TO_TIMESTAMP('2014-06-14 14:18:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73098 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73099,287,0,17,135,53814,'DocAction',TO_TIMESTAMP('2014-06-14 14:18:18','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02',2,'You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','N','N','N','Document Action',TO_TIMESTAMP('2014-06-14 14:18:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73099 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73100,1106,0,20,53814,'IsSOTrx',TO_TIMESTAMP('2014-06-14 14:18:19','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02',1,'The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','N','N','N','N','N','N','N','N','N','Sales Transaction',TO_TIMESTAMP('2014-06-14 14:18:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73100 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73101,316,0,22,53814,'GrandTotal',TO_TIMESTAMP('2014-06-14 14:18:21','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02',131089,'The Grand Total displays the total amount including Tax and Freight in document currency','Y','N','N','N','N','N','N','N','N','N','Grand Total',TO_TIMESTAMP('2014-06-14 14:18:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73101 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73102,56084,0,19,53814,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2014-06-14 14:18:23','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit/Loan',TO_TIMESTAMP('2014-06-14 14:18:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73102 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73103,187,0,19,53814,'C_BPartner_ID',TO_TIMESTAMP('2014-06-14 14:18:25','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','N','N','N','Business Partner ',TO_TIMESTAMP('2014-06-14 14:18:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73103 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73104,196,0,19,53814,'C_DocType_ID',TO_TIMESTAMP('2014-06-14 14:18:26','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',10,'The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','N','N','N','Document Type',TO_TIMESTAMP('2014-06-14 14:18:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73104 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:18:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73105,197,0,19,170,53814,'C_DocTypeTarget_ID',TO_TIMESTAMP('2014-06-14 14:18:28','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02',10,'You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','N','N','N','N','N','N','N','N','N','Target Document Type',TO_TIMESTAMP('2014-06-14 14:18:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/06/2014 02:18:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73105 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/06/2014 02:29:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50027,TO_TIMESTAMP('2014-06-14 14:29:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','View Bill Of Exchange Pending by Document',TO_TIMESTAMP('2014-06-14 14:29:30','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_BillOfExchangeDoc')
;

-- 14/06/2014 02:29:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50027 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- 14/06/2014 02:30:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,53814,50064,50027,TO_TIMESTAMP('2014-06-14 14:30:35','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'BOE',TO_TIMESTAMP('2014-06-14 14:30:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73087,0,52426,50064,50027,'BOE_AD_Client_ID','BOE.AD_Client_ID',TO_TIMESTAMP('2014-06-14 14:30:38','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_TIMESTAMP('2014-06-14 14:30:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73088,0,52427,50064,50027,'BOE_AD_Org_ID','BOE.AD_Org_ID',TO_TIMESTAMP('2014-06-14 14:30:39','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_TIMESTAMP('2014-06-14 14:30:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73103,0,52428,50064,50027,'BOE_C_BPartner_ID','BOE.C_BPartner_ID',TO_TIMESTAMP('2014-06-14 14:30:40','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Business Partner ',TO_TIMESTAMP('2014-06-14 14:30:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73104,0,52429,50064,50027,'BOE_C_DocType_ID','BOE.C_DocType_ID',TO_TIMESTAMP('2014-06-14 14:30:41','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','Document Type',TO_TIMESTAMP('2014-06-14 14:30:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73105,0,52430,50064,50027,'BOE_C_DocTypeTarget_ID','BOE.C_DocTypeTarget_ID',TO_TIMESTAMP('2014-06-14 14:30:42','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','Target Document Type',TO_TIMESTAMP('2014-06-14 14:30:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73094,0,52431,50064,50027,'BOE_C_Invoice_ID','BOE.C_Invoice_ID',TO_TIMESTAMP('2014-06-14 14:30:43','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','Invoice',TO_TIMESTAMP('2014-06-14 14:30:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73097,0,52432,50064,50027,'BOE_DateAcct','BOE.DateAcct',TO_TIMESTAMP('2014-06-14 14:30:44','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Account Date',TO_TIMESTAMP('2014-06-14 14:30:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73096,0,52433,50064,50027,'BOE_DateInvoiced','BOE.DateInvoiced',TO_TIMESTAMP('2014-06-14 14:30:46','YYYY-MM-DD HH24:MI:SS'),100,'Date printed on Invoice','ECA02','The Date Invoice indicates the date printed on the invoice.','Y','Date Invoiced',TO_TIMESTAMP('2014-06-14 14:30:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73099,0,52434,50064,50027,'BOE_DocAction','BOE.DocAction',TO_TIMESTAMP('2014-06-14 14:30:47','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','Document Action',TO_TIMESTAMP('2014-06-14 14:30:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73098,0,52435,50064,50027,'BOE_DocStatus','BOE.DocStatus',TO_TIMESTAMP('2014-06-14 14:30:48','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Document Status',TO_TIMESTAMP('2014-06-14 14:30:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73095,0,52436,50064,50027,'BOE_DocumentNo','BOE.DocumentNo',TO_TIMESTAMP('2014-06-14 14:30:49','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Document No',TO_TIMESTAMP('2014-06-14 14:30:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,73102,0,52437,50064,50027,'BOE_FTA_FarmerCredit_ID','BOE.FTA_FarmerCredit_ID',TO_TIMESTAMP('2014-06-14 14:30:50','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','Credit/Loan',TO_TIMESTAMP('2014-06-14 14:30:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73101,0,52438,50064,50027,'BOE_GrandTotal','BOE.GrandTotal',TO_TIMESTAMP('2014-06-14 14:30:51','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02','The Grand Total displays the total amount including Tax and Freight in document currency','Y','Grand Total',TO_TIMESTAMP('2014-06-14 14:30:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:30:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73100,0,52439,50064,50027,'BOE_IsSOTrx','BOE.IsSOTrx',TO_TIMESTAMP('2014-06-14 14:30:52','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Sales Transaction',TO_TIMESTAMP('2014-06-14 14:30:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value) VALUES ('3',50034,0,0,50027,TO_TIMESTAMP('2014-06-14 14:33:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','View Bill Of Exchange Pending by Document','N',TO_TIMESTAMP('2014-06-14 14:33:00','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_BillOfExchangeDoc')
;

-- 14/06/2014 02:33:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50034 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- 14/06/2014 02:33:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53596,50034,0,102,0,19,52426,TO_TIMESTAMP('2014-06-14 14:33:18','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',10,TO_TIMESTAMP('2014-06-14 14:33:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53596 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53597,50034,0,113,0,19,52427,TO_TIMESTAMP('2014-06-14 14:33:20','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',11,TO_TIMESTAMP('2014-06-14 14:33:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53597 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53598,50034,0,187,0,19,52428,TO_TIMESTAMP('2014-06-14 14:33:22','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',12,TO_TIMESTAMP('2014-06-14 14:33:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53598 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53599,50034,0,196,0,19,52429,TO_TIMESTAMP('2014-06-14 14:33:23','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','Document Type',13,TO_TIMESTAMP('2014-06-14 14:33:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53599 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53600,50034,0,197,0,19,170,52430,TO_TIMESTAMP('2014-06-14 14:33:25','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','N','N','N','N','N','N','Target Document Type',14,TO_TIMESTAMP('2014-06-14 14:33:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53600 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53601,50034,0,1008,0,19,52431,TO_TIMESTAMP('2014-06-14 14:33:26','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','N','N','N','N','N','N','Invoice',15,TO_TIMESTAMP('2014-06-14 14:33:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53601 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53602,50034,0,263,0,16,52432,TO_TIMESTAMP('2014-06-14 14:33:28','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','N','N','N','N','N','N','Account Date',16,TO_TIMESTAMP('2014-06-14 14:33:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53602 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53603,50034,0,267,0,16,52433,TO_TIMESTAMP('2014-06-14 14:33:29','YYYY-MM-DD HH24:MI:SS'),100,'Date printed on Invoice','ECA02','The Date Invoice indicates the date printed on the invoice.','Y','N','N','N','N','N','N','Date Invoiced',17,TO_TIMESTAMP('2014-06-14 14:33:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53603 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53604,50034,0,287,0,17,135,52434,TO_TIMESTAMP('2014-06-14 14:33:31','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','Document Action',18,TO_TIMESTAMP('2014-06-14 14:33:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53604 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53605,50034,0,289,0,17,131,52435,TO_TIMESTAMP('2014-06-14 14:33:33','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',19,TO_TIMESTAMP('2014-06-14 14:33:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53605 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53606,50034,0,290,0,10,52436,TO_TIMESTAMP('2014-06-14 14:33:34','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','Document No',20,TO_TIMESTAMP('2014-06-14 14:33:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53606 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53607,50034,0,56084,0,19,52437,TO_TIMESTAMP('2014-06-14 14:33:36','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','N','N','N','N','N','N','Credit/Loan',21,TO_TIMESTAMP('2014-06-14 14:33:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53607 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53608,50034,0,316,0,22,52438,TO_TIMESTAMP('2014-06-14 14:33:37','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02','The Grand Total displays the total amount including Tax and Freight in document currency','Y','N','N','N','N','N','N','Grand Total',22,TO_TIMESTAMP('2014-06-14 14:33:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53608 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:33:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53609,50034,0,1106,0,20,52439,TO_TIMESTAMP('2014-06-14 14:33:39','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','N','N','N','N','N','N','Sales Transaction',23,TO_TIMESTAMP('2014-06-14 14:33:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:33:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53609 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/06/2014 02:35:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-06-14 14:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53596
;

-- 14/06/2014 02:35:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-06-14 14:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53597
;

-- 14/06/2014 02:35:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-06-14 14:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53600
;

-- 14/06/2014 02:35:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-06-14 14:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53604
;

-- 14/06/2014 02:35:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-06-14 14:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53605
;

-- 14/06/2014 02:35:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-06-14 14:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53609
;

-- 14/06/2014 02:35:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-06-14 14:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53602
;

-- 14/06/2014 02:35:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-06-14 14:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53607
;

-- 14/06/2014 02:35:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-06-14 14:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53601
;

-- 14/06/2014 02:35:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-06-14 14:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53606
;

-- 14/06/2014 02:35:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-06-14 14:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53603
;

-- 14/06/2014 02:35:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-06-14 14:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53598
;

-- 14/06/2014 02:35:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-06-14 14:35:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53599
;

-- 14/06/2014 02:35:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-06-14 14:35:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53608
;

-- 14/06/2014 02:41:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-06-14 14:41:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53607
;

-- 14/06/2014 02:41:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-06-14 14:41:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53601
;

-- 14/06/2014 02:41:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-06-14 14:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53606
;

-- 14/06/2014 02:41:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-06-14 14:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53603
;

-- 14/06/2014 02:41:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-06-14 14:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53598
;

-- 14/06/2014 02:41:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-06-14 14:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53599
;

-- 14/06/2014 02:41:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-06-14 14:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53608
;

-- 14/06/2014 02:41:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-06-14 14:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53602
;

-- 14/06/2014 02:42:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-06-14 14:42:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53607
;

-- 14/06/2014 02:42:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y',Updated=TO_TIMESTAMP('2014-06-14 14:42:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53607
;

-- 14/06/2014 02:42:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-06-14 14:42:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53601
;

-- 14/06/2014 02:42:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-06-14 14:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53606
;

-- 14/06/2014 02:42:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-06-14 14:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53603
;

-- 14/06/2014 02:42:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-06-14 14:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53598
;

-- 14/06/2014 02:42:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-06-14 14:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53599
;

-- 14/06/2014 02:42:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-06-14 14:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53608
;

-- 14/06/2014 02:42:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-06-14 14:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53607
;

-- 14/06/2014 02:43:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-06-14 14:43:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53598
;

-- 14/06/2014 02:43:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-14 14:43:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53607
;

-- 14/06/2014 02:43:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsQueryCriteria='Y', IsRange='Y',Updated=TO_TIMESTAMP('2014-06-14 14:43:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53602
;

-- 14/06/2014 02:44:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-06-14 14:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73105
;

-- 14/06/2014 02:47:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Trl SET Name='Generar Letra de Cambio por Documentos',Updated=TO_TIMESTAMP('2014-06-14 14:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50034 AND AD_Language='es_MX'
;

-- 14/06/2014 02:47:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Trl SET Name='Generar Letra de Cambio por Documentos',Updated=TO_TIMESTAMP('2014-06-14 14:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50034 AND AD_Language='es_VE'
;

-- 14/06/2014 02:51:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',50034,0,53841,0,TO_TIMESTAMP('2014-06-14 14:51:46','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02','Y','Y','N','N','N','View Bill Of Exchange Pending by Document',TO_TIMESTAMP('2014-06-14 14:51:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:51:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53841 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 14/06/2014 02:51:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-06-14 14:51:47','YYYY-MM-DD HH24:MI:SS'),100,'Y',53841,0,999,TO_TIMESTAMP('2014-06-14 14:51:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/06/2014 02:52:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Generar Letra de Cambio por Documentos',Description='Generar Letra de Cambio por Documentos',Updated=TO_TIMESTAMP('2014-06-14 14:52:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53841 AND AD_Language='es_MX'
;

-- 14/06/2014 02:53:54 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=0,Updated=TO_TIMESTAMP('2014-06-14 14:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53841
;

-- 14/06/2014 02:53:55 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-14 14:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53804
;

-- 14/06/2014 02:53:55 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-14 14:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53801
;

-- 14/06/2014 02:53:55 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-14 14:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53753
;

-- 14/06/2014 02:53:55 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-14 14:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53763
;

-- 14/06/2014 02:53:55 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=5,Updated=TO_TIMESTAMP('2014-06-14 14:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53814
;

-- 14/06/2014 02:53:55 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=6,Updated=TO_TIMESTAMP('2014-06-14 14:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53651
;

-- 14/06/2014 02:53:55 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=7,Updated=TO_TIMESTAMP('2014-06-14 14:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53813
;

-- 14/06/2014 02:53:55 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=8,Updated=TO_TIMESTAMP('2014-06-14 14:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53662
;

-- 14/06/2014 02:53:55 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=9,Updated=TO_TIMESTAMP('2014-06-14 14:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53676
;

-- 14/06/2014 02:53:56 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=10,Updated=TO_TIMESTAMP('2014-06-14 14:53:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53680
;

-- 14/06/2014 02:54:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=11,Updated=TO_TIMESTAMP('2014-06-14 14:54:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53834
;

-- 14/06/2014 02:54:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=12,Updated=TO_TIMESTAMP('2014-06-14 14:54:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53692
;

-- 14/06/2014 02:54:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=13,Updated=TO_TIMESTAMP('2014-06-14 14:54:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53657
;

-- 14/06/2014 02:54:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=14,Updated=TO_TIMESTAMP('2014-06-14 14:54:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53762
;

-- 14/06/2014 02:54:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=15,Updated=TO_TIMESTAMP('2014-06-14 14:54:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53829
;

-- 14/06/2014 02:54:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=17,Updated=TO_TIMESTAMP('2014-06-14 14:54:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53841
;

-- 14/06/2014 02:54:11 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=18,Updated=TO_TIMESTAMP('2014-06-14 14:54:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53675
;

-- 14/06/2014 02:54:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET Name='Generate Bill Of Exchange by Document',Updated=TO_TIMESTAMP('2014-06-14 14:54:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50034
;

-- 14/06/2014 02:54:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Trl SET IsTranslated='N' WHERE AD_Browse_ID=50034
;

-- 14/06/2014 02:54:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Name='Generate Bill Of Exchange by Document',Updated=TO_TIMESTAMP('2014-06-14 14:54:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53841
;

-- 14/06/2014 02:54:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53841
;

