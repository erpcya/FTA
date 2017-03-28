-- Dec 15, 2014 10:12:07 PM VET
-- FTA
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53899,'N',TO_TIMESTAMP('2014-12-15 22:12:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','N','N','N','Y',0,'Movement Load Order','L','FTA_RV_MovementLoadOrder',TO_TIMESTAMP('2014-12-15 22:12:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:12:07 PM VET
-- FTA
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53899 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Dec 15, 2014 10:12:08 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74906,102,0,19,53899,129,'AD_Client_ID',TO_TIMESTAMP('2014-12-15 22:12:07','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','Y','N','N','N','Y','Client',TO_TIMESTAMP('2014-12-15 22:12:07','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Dec 15, 2014 10:12:08 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74906 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:12:10 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74907,113,0,19,53899,104,'AD_Org_ID',TO_TIMESTAMP('2014-12-15 22:12:08','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','Y','N','N','N','Y','Organization',TO_TIMESTAMP('2014-12-15 22:12:08','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Dec 15, 2014 10:12:10 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74907 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:12:11 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74908,348,0,20,53899,'IsActive',TO_TIMESTAMP('2014-12-15 22:12:10','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2014-12-15 22:12:10','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Dec 15, 2014 10:12:11 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74908 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:12:12 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74909,245,0,16,53899,'Created',TO_TIMESTAMP('2014-12-15 22:12:11','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created',TO_TIMESTAMP('2014-12-15 22:12:11','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Dec 15, 2014 10:12:12 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74909 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:12:13 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74910,607,0,16,53899,'Updated',TO_TIMESTAMP('2014-12-15 22:12:12','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated',TO_TIMESTAMP('2014-12-15 22:12:12','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Dec 15, 2014 10:12:13 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74910 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:12:14 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74911,246,0,19,110,53899,'CreatedBy',TO_TIMESTAMP('2014-12-15 22:12:13','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created By',TO_TIMESTAMP('2014-12-15 22:12:13','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Dec 15, 2014 10:12:14 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74911 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:12:15 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74912,608,0,19,110,53899,'UpdatedBy',TO_TIMESTAMP('2014-12-15 22:12:14','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated By',TO_TIMESTAMP('2014-12-15 22:12:14','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Dec 15, 2014 10:12:15 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74912 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:12:17 PM VET
-- FTA
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,54059,TO_TIMESTAMP('2014-12-15 22:12:15','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_RV_MovementLoadOrder',1,'Y','N','Y','Y','FTA_RV_MovementLoadOrder','N',1000000,TO_TIMESTAMP('2014-12-15 22:12:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:13:05 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74913,289,0,10,131,53899,'DocStatus',TO_TIMESTAMP('2014-12-15 22:12:58','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','N','N','N','Document Status',TO_TIMESTAMP('2014-12-15 22:12:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:05 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74913 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:06 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74914,265,0,16,53899,'DateDoc',TO_TIMESTAMP('2014-12-15 22:13:05','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',29,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','N','N','N','N','N','N','N','N','N','Document Date',TO_TIMESTAMP('2014-12-15 22:13:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:06 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74914 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:07 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74915,196,0,19,53899,'C_DocType_ID',TO_TIMESTAMP('2014-12-15 22:13:06','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',10,'The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','N','N','N','Document Type',TO_TIMESTAMP('2014-12-15 22:13:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:07 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74915 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:08 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74916,454,0,19,53899,'M_Product_ID',TO_TIMESTAMP('2014-12-15 22:13:07','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',10,'Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','N','N','N','Product',TO_TIMESTAMP('2014-12-15 22:13:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:08 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74916 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:09 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74917,459,0,19,53899,'M_Warehouse_ID',TO_TIMESTAMP('2014-12-15 22:13:08','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02',10,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','N','N','N','N','N','N','N','N','N','Warehouse',TO_TIMESTAMP('2014-12-15 22:13:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:09 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74917 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:10 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74918,56599,0,19,53899,'FTA_LoadOrder_ID',TO_TIMESTAMP('2014-12-15 22:13:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Load Order',TO_TIMESTAMP('2014-12-15 22:13:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:10 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74918 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:12 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74919,526,0,29,53899,'Qty',TO_TIMESTAMP('2014-12-15 22:13:10','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02',131089,'The Quantity indicates the number of a specific product or item for this document.','Y','N','N','N','N','N','N','N','N','N','Quantity',TO_TIMESTAMP('2014-12-15 22:13:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:12 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74919 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:13 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74920,629,0,22,53899,'Weight',TO_TIMESTAMP('2014-12-15 22:13:12','YYYY-MM-DD HH24:MI:SS'),100,'Weight of a product','ECA02',131089,'The Weight indicates the weight  of the product in the Weight UOM of the Client','Y','N','N','N','N','N','N','N','N','N','Weight',TO_TIMESTAMP('2014-12-15 22:13:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:13 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74920 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:15 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74921,2386,0,29,53899,'ConfirmedQty',TO_TIMESTAMP('2014-12-15 22:13:13','YYYY-MM-DD HH24:MI:SS'),100,'Confirmation of a received quantity','ECA02',131089,'Confirmation of a received quantity','Y','N','N','N','N','N','N','N','N','N','Confirmed Quantity',TO_TIMESTAMP('2014-12-15 22:13:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:15 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74921 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:16 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74922,56608,0,22,53899,'ConfirmedWeight',TO_TIMESTAMP('2014-12-15 22:13:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Confirmed Weight',TO_TIMESTAMP('2014-12-15 22:13:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:16 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74922 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:18 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74923,561,0,19,53899,'C_OrderLine_ID',TO_TIMESTAMP('2014-12-15 22:13:16','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line','ECA02',10,'The Sales Order Line is a unique identifier for a line in an order.','Y','N','N','N','N','N','N','N','N','N','Sales Order Line',TO_TIMESTAMP('2014-12-15 22:13:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:18 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74923 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:19 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74924,56609,0,19,53899,'FTA_LoadOrderLine_ID',TO_TIMESTAMP('2014-12-15 22:13:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Load Order Line',TO_TIMESTAMP('2014-12-15 22:13:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:19 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74924 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:21 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74925,1008,0,19,53899,'C_Invoice_ID',TO_TIMESTAMP('2014-12-15 22:13:19','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02',10,'The Invoice Document.','Y','N','N','N','N','N','N','N','N','N','Invoice',TO_TIMESTAMP('2014-12-15 22:13:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:21 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74925 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:23 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74926,290,0,10,53899,'DocumentNo',TO_TIMESTAMP('2014-12-15 22:13:21','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02',30,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','Y','N','N','Document No',TO_TIMESTAMP('2014-12-15 22:13:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:23 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74926 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:25 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74927,1076,0,19,53899,'C_InvoiceLine_ID',TO_TIMESTAMP('2014-12-15 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Detail Line','ECA02',10,'The Invoice Line uniquely identifies a single line of an Invoice.','Y','N','N','N','N','N','N','N','N','N','Invoice Line',TO_TIMESTAMP('2014-12-15 22:13:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:25 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74927 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:26 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74928,2589,0,29,53899,'QtyEntered',TO_TIMESTAMP('2014-12-15 22:13:25','YYYY-MM-DD HH24:MI:SS'),100,'The Quantity Entered is based on the selected UoM','ECA02',131089,'The Quantity Entered is converted to base product UoM quantity','Y','N','N','N','N','N','N','N','N','N','Quantity',TO_TIMESTAMP('2014-12-15 22:13:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:26 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74928 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:28 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74929,2588,0,22,53899,'PriceEntered',TO_TIMESTAMP('2014-12-15 22:13:26','YYYY-MM-DD HH24:MI:SS'),100,'Price Entered - the price based on the selected/base UoM','ECA02',131089,'The price entered is converted to the actual price based on the UoM conversion','Y','N','N','N','N','N','N','N','N','N','Price',TO_TIMESTAMP('2014-12-15 22:13:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:28 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74929 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:30 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74930,519,0,22,53899,'PriceActual',TO_TIMESTAMP('2014-12-15 22:13:28','YYYY-MM-DD HH24:MI:SS'),100,'Actual Price ','ECA02',131089,'The Actual or Unit Price indicates the Price for a product in source currency.','Y','N','N','N','N','N','N','N','N','N','Unit Price',TO_TIMESTAMP('2014-12-15 22:13:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:30 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74930 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:32 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74931,441,0,12,53899,'LineNetAmt',TO_TIMESTAMP('2014-12-15 22:13:30','YYYY-MM-DD HH24:MI:SS'),100,'Line Extended Amount (Quantity * Actual Price) without Freight and Charges','ECA02',131089,'Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.','Y','N','N','N','N','N','N','N','N','N','Line Amount',TO_TIMESTAMP('2014-12-15 22:13:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:32 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74931 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:34 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74932,215,0,19,53899,'C_UOM_ID',TO_TIMESTAMP('2014-12-15 22:13:32','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','ECA02',10,'The UOM defines a unique non monetary Unit of Measure','Y','N','N','N','N','N','N','N','N','N','UOM',TO_TIMESTAMP('2014-12-15 22:13:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:34 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74932 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:37 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74933,1031,0,19,53899,'M_MovementLine_ID',TO_TIMESTAMP('2014-12-15 22:13:34','YYYY-MM-DD HH24:MI:SS'),100,'Inventory Move document Line','ECA02',10,'The Movement Line indicates the inventory movement document line (if applicable) for this transaction','Y','N','N','N','N','N','N','N','N','N','Move Line',TO_TIMESTAMP('2014-12-15 22:13:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:37 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74933 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:39 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74934,558,0,19,53899,'C_Order_ID',TO_TIMESTAMP('2014-12-15 22:13:37','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02',10,'The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','N','N','N','Order',TO_TIMESTAMP('2014-12-15 22:13:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:39 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74934 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:40 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74935,1030,0,19,53899,'M_Movement_ID',TO_TIMESTAMP('2014-12-15 22:13:39','YYYY-MM-DD HH24:MI:SS'),100,'Movement of Inventory','ECA02',10,'The Inventory Movement uniquely identifies a group of movement lines.','Y','N','N','N','N','N','N','N','N','N','Inventory Move',TO_TIMESTAMP('2014-12-15 22:13:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:40 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74935 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:42 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74936,187,0,19,53899,'C_BPartner_ID',TO_TIMESTAMP('2014-12-15 22:13:40','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','N','N','N','Business Partner ',TO_TIMESTAMP('2014-12-15 22:13:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:42 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74936 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:13:43 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74937,1038,0,29,53899,'MovementQty',TO_TIMESTAMP('2014-12-15 22:13:42','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.','ECA02',131089,'The Movement Quantity indicates the quantity of a product that has been moved.','Y','N','N','N','N','N','N','N','N','N','Movement Quantity',TO_TIMESTAMP('2014-12-15 22:13:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 10:13:43 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74937 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 10:16:16 PM VET
-- FTA
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50036,TO_TIMESTAMP('2014-12-15 22:16:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Generate Movement of Load Order',TO_TIMESTAMP('2014-12-15 22:16:14','YYYY-MM-DD HH24:MI:SS'),100,'FTA_LoadOrderGenerateMovement')
;

-- Dec 15, 2014 10:16:16 PM VET
-- FTA
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50036 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- Dec 15, 2014 10:16:31 PM VET
-- FTA
UPDATE AD_View_Trl SET Name='Generar Movimientos desde Orden de Carga',Updated=TO_TIMESTAMP('2014-12-15 22:16:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=50036
;

-- Dec 15, 2014 10:16:56 PM VET
-- FTA
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,53899,50074,50036,TO_TIMESTAMP('2014-12-15 22:16:55','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'MLO',TO_TIMESTAMP('2014-12-15 22:16:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:02 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74906,0,52793,50074,50036,'MLO_AD_Client_ID','MLO.AD_Client_ID',TO_TIMESTAMP('2014-12-15 22:17:01','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_TIMESTAMP('2014-12-15 22:17:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:03 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74907,0,52794,50074,50036,'MLO_AD_Org_ID','MLO.AD_Org_ID',TO_TIMESTAMP('2014-12-15 22:17:02','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_TIMESTAMP('2014-12-15 22:17:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:05 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74936,0,52795,50074,50036,'MLO_C_BPartner_ID','MLO.C_BPartner_ID',TO_TIMESTAMP('2014-12-15 22:17:03','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Business Partner ',TO_TIMESTAMP('2014-12-15 22:17:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:06 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74915,0,52796,50074,50036,'MLO_C_DocType_ID','MLO.C_DocType_ID',TO_TIMESTAMP('2014-12-15 22:17:05','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','Document Type',TO_TIMESTAMP('2014-12-15 22:17:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:07 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74925,0,52797,50074,50036,'MLO_C_Invoice_ID','MLO.C_Invoice_ID',TO_TIMESTAMP('2014-12-15 22:17:06','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','Invoice',TO_TIMESTAMP('2014-12-15 22:17:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:08 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74927,0,52798,50074,50036,'MLO_C_InvoiceLine_ID','MLO.C_InvoiceLine_ID',TO_TIMESTAMP('2014-12-15 22:17:07','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Detail Line','ECA02','The Invoice Line uniquely identifies a single line of an Invoice.','Y','Invoice Line',TO_TIMESTAMP('2014-12-15 22:17:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:10 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74921,0,52799,50074,50036,'MLO_ConfirmedQty','MLO.ConfirmedQty',TO_TIMESTAMP('2014-12-15 22:17:08','YYYY-MM-DD HH24:MI:SS'),100,'Confirmation of a received quantity','ECA02','Confirmation of a received quantity','Y','Confirmed Quantity',TO_TIMESTAMP('2014-12-15 22:17:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:11 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,74922,0,52800,50074,50036,'MLO_ConfirmedWeight','MLO.ConfirmedWeight',TO_TIMESTAMP('2014-12-15 22:17:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Confirmed Weight',TO_TIMESTAMP('2014-12-15 22:17:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:12 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74934,0,52801,50074,50036,'MLO_C_Order_ID','MLO.C_Order_ID',TO_TIMESTAMP('2014-12-15 22:17:11','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Order',TO_TIMESTAMP('2014-12-15 22:17:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:13 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74923,0,52802,50074,50036,'MLO_C_OrderLine_ID','MLO.C_OrderLine_ID',TO_TIMESTAMP('2014-12-15 22:17:12','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line','ECA02','The Sales Order Line is a unique identifier for a line in an order.','Y','Sales Order Line',TO_TIMESTAMP('2014-12-15 22:17:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:15 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74909,0,52803,50074,50036,'MLO_Created','MLO.Created',TO_TIMESTAMP('2014-12-15 22:17:13','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_TIMESTAMP('2014-12-15 22:17:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:16 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74911,0,52804,50074,50036,'MLO_CreatedBy','MLO.CreatedBy',TO_TIMESTAMP('2014-12-15 22:17:15','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_TIMESTAMP('2014-12-15 22:17:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:18 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74932,0,52805,50074,50036,'MLO_C_UOM_ID','MLO.C_UOM_ID',TO_TIMESTAMP('2014-12-15 22:17:16','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','ECA02','The UOM defines a unique non monetary Unit of Measure','Y','UOM',TO_TIMESTAMP('2014-12-15 22:17:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:19 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74914,0,52806,50074,50036,'MLO_DateDoc','MLO.DateDoc',TO_TIMESTAMP('2014-12-15 22:17:18','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Document Date',TO_TIMESTAMP('2014-12-15 22:17:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:20 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74913,0,52807,50074,50036,'MLO_DocStatus','MLO.DocStatus',TO_TIMESTAMP('2014-12-15 22:17:19','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Document Status',TO_TIMESTAMP('2014-12-15 22:17:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:21 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74926,0,52808,50074,50036,'MLO_DocumentNo','MLO.DocumentNo',TO_TIMESTAMP('2014-12-15 22:17:20','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Document No',TO_TIMESTAMP('2014-12-15 22:17:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:23 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,74918,0,52809,50074,50036,'MLO_FTA_LoadOrder_ID','MLO.FTA_LoadOrder_ID',TO_TIMESTAMP('2014-12-15 22:17:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Load Order',TO_TIMESTAMP('2014-12-15 22:17:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:24 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,74924,0,52810,50074,50036,'MLO_FTA_LoadOrderLine_ID','MLO.FTA_LoadOrderLine_ID',TO_TIMESTAMP('2014-12-15 22:17:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Load Order Line',TO_TIMESTAMP('2014-12-15 22:17:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:26 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74908,0,52811,50074,50036,'MLO_IsActive','MLO.IsActive',TO_TIMESTAMP('2014-12-15 22:17:24','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_TIMESTAMP('2014-12-15 22:17:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:27 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74931,0,52812,50074,50036,'MLO_LineNetAmt','MLO.LineNetAmt',TO_TIMESTAMP('2014-12-15 22:17:26','YYYY-MM-DD HH24:MI:SS'),100,'Line Extended Amount (Quantity * Actual Price) without Freight and Charges','ECA02','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.','Y','Line Amount',TO_TIMESTAMP('2014-12-15 22:17:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:29 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74935,0,52813,50074,50036,'MLO_M_Movement_ID','MLO.M_Movement_ID',TO_TIMESTAMP('2014-12-15 22:17:27','YYYY-MM-DD HH24:MI:SS'),100,'Movement of Inventory','ECA02','The Inventory Movement uniquely identifies a group of movement lines.','Y','Inventory Move',TO_TIMESTAMP('2014-12-15 22:17:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:30 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74933,0,52814,50074,50036,'MLO_M_MovementLine_ID','MLO.M_MovementLine_ID',TO_TIMESTAMP('2014-12-15 22:17:29','YYYY-MM-DD HH24:MI:SS'),100,'Inventory Move document Line','ECA02','The Movement Line indicates the inventory movement document line (if applicable) for this transaction','Y','Move Line',TO_TIMESTAMP('2014-12-15 22:17:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:31 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74937,0,52815,50074,50036,'MLO_MovementQty','MLO.MovementQty',TO_TIMESTAMP('2014-12-15 22:17:30','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.','ECA02','The Movement Quantity indicates the quantity of a product that has been moved.','Y','Movement Quantity',TO_TIMESTAMP('2014-12-15 22:17:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:33 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74916,0,52816,50074,50036,'MLO_M_Product_ID','MLO.M_Product_ID',TO_TIMESTAMP('2014-12-15 22:17:31','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Product',TO_TIMESTAMP('2014-12-15 22:17:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:34 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74917,0,52817,50074,50036,'MLO_M_Warehouse_ID','MLO.M_Warehouse_ID',TO_TIMESTAMP('2014-12-15 22:17:33','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Warehouse',TO_TIMESTAMP('2014-12-15 22:17:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:36 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74930,0,52818,50074,50036,'MLO_PriceActual','MLO.PriceActual',TO_TIMESTAMP('2014-12-15 22:17:34','YYYY-MM-DD HH24:MI:SS'),100,'Actual Price ','ECA02','The Actual or Unit Price indicates the Price for a product in source currency.','Y','Unit Price',TO_TIMESTAMP('2014-12-15 22:17:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:37 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74929,0,52819,50074,50036,'MLO_PriceEntered','MLO.PriceEntered',TO_TIMESTAMP('2014-12-15 22:17:36','YYYY-MM-DD HH24:MI:SS'),100,'Price Entered - the price based on the selected/base UoM','ECA02','The price entered is converted to the actual price based on the UoM conversion','Y','Price',TO_TIMESTAMP('2014-12-15 22:17:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:38 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74919,0,52820,50074,50036,'MLO_Qty','MLO.Qty',TO_TIMESTAMP('2014-12-15 22:17:37','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','Quantity',TO_TIMESTAMP('2014-12-15 22:17:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:40 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74928,0,52821,50074,50036,'MLO_QtyEntered','MLO.QtyEntered',TO_TIMESTAMP('2014-12-15 22:17:38','YYYY-MM-DD HH24:MI:SS'),100,'The Quantity Entered is based on the selected UoM','ECA02','The Quantity Entered is converted to base product UoM quantity','Y','Quantity',TO_TIMESTAMP('2014-12-15 22:17:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:41 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74910,0,52822,50074,50036,'MLO_Updated','MLO.Updated',TO_TIMESTAMP('2014-12-15 22:17:40','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_TIMESTAMP('2014-12-15 22:17:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:42 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74912,0,52823,50074,50036,'MLO_UpdatedBy','MLO.UpdatedBy',TO_TIMESTAMP('2014-12-15 22:17:41','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_TIMESTAMP('2014-12-15 22:17:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:17:43 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74920,0,52824,50074,50036,'MLO_Weight','MLO.Weight',TO_TIMESTAMP('2014-12-15 22:17:42','YYYY-MM-DD HH24:MI:SS'),100,'Weight of a product','ECA02','The Weight indicates the weight  of the product in the Weight UOM of the Client','Y','Weight',TO_TIMESTAMP('2014-12-15 22:17:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 10:18:45 PM VET
-- FTA
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value,WhereClause) VALUES ('3',50044,0,0,53713,50036,TO_TIMESTAMP('2014-12-15 22:18:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','Generate Movement of Load Order','N',TO_TIMESTAMP('2014-12-15 22:18:42','YYYY-MM-DD HH24:MI:SS'),100,'FTA_LoadOrderGenerateMovement','GI.DocStatus = ''CO'' AND GI.M_InOutline_ID IS NULL AND GI.OperationType = ''DFP'' AND EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID = GI.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y''	)')
;

-- Dec 15, 2014 10:18:45 PM VET
-- FTA
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50044 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- Dec 15, 2014 11:20:21 PM VET
-- FTA
UPDATE AD_Browse SET WhereClause='MLO.DocStatus = ''CO'' AND MLO.M_MovementLine_ID IS NULL AND MLO.OperationType = ''MOM'' AND EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID = MLO.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y''	)',Updated=TO_TIMESTAMP('2014-12-15 23:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50044
;

-- Dec 15, 2014 11:20:29 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53994,50044,0,102,0,19,52793,TO_TIMESTAMP('2014-12-15 23:20:27','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',10,TO_TIMESTAMP('2014-12-15 23:20:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:29 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53994 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:29 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53995,50044,0,113,0,19,52794,TO_TIMESTAMP('2014-12-15 23:20:29','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',11,TO_TIMESTAMP('2014-12-15 23:20:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:29 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53995 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:30 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53996,50044,0,187,0,19,52795,TO_TIMESTAMP('2014-12-15 23:20:29','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',12,TO_TIMESTAMP('2014-12-15 23:20:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:30 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53996 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:31 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53997,50044,0,196,0,19,52796,TO_TIMESTAMP('2014-12-15 23:20:30','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','Document Type',13,TO_TIMESTAMP('2014-12-15 23:20:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:31 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53997 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:32 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53998,50044,0,1008,0,19,52797,TO_TIMESTAMP('2014-12-15 23:20:31','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','N','N','N','N','N','N','Invoice',14,TO_TIMESTAMP('2014-12-15 23:20:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:32 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53998 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:33 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53999,50044,0,1076,0,19,52798,TO_TIMESTAMP('2014-12-15 23:20:32','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Detail Line','ECA02','The Invoice Line uniquely identifies a single line of an Invoice.','Y','N','N','N','N','N','N','Invoice Line',15,TO_TIMESTAMP('2014-12-15 23:20:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:33 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53999 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:34 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54000,50044,0,2386,0,29,52799,TO_TIMESTAMP('2014-12-15 23:20:33','YYYY-MM-DD HH24:MI:SS'),100,'Confirmation of a received quantity','ECA02','Confirmation of a received quantity','Y','N','N','N','N','N','N','Confirmed Quantity',16,TO_TIMESTAMP('2014-12-15 23:20:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:34 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54000 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:35 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54001,50044,0,56608,0,22,52800,TO_TIMESTAMP('2014-12-15 23:20:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Confirmed Weight',17,TO_TIMESTAMP('2014-12-15 23:20:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:35 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54001 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:36 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54002,50044,0,558,0,19,52801,TO_TIMESTAMP('2014-12-15 23:20:35','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','Order',18,TO_TIMESTAMP('2014-12-15 23:20:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:36 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54002 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:37 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54003,50044,0,561,0,19,52802,TO_TIMESTAMP('2014-12-15 23:20:36','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line','ECA02','The Sales Order Line is a unique identifier for a line in an order.','Y','N','N','N','N','N','N','Sales Order Line',19,TO_TIMESTAMP('2014-12-15 23:20:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:37 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54003 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:38 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54004,50044,0,245,0,16,52803,TO_TIMESTAMP('2014-12-15 23:20:37','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',20,TO_TIMESTAMP('2014-12-15 23:20:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:38 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54004 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:39 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54005,50044,0,246,0,19,110,52804,TO_TIMESTAMP('2014-12-15 23:20:38','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',21,TO_TIMESTAMP('2014-12-15 23:20:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:39 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54005 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:40 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54006,50044,0,215,0,19,52805,TO_TIMESTAMP('2014-12-15 23:20:39','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','ECA02','The UOM defines a unique non monetary Unit of Measure','Y','N','N','N','N','N','N','UOM',22,TO_TIMESTAMP('2014-12-15 23:20:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:40 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54006 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:41 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54007,50044,0,265,0,16,52806,TO_TIMESTAMP('2014-12-15 23:20:40','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','N','N','N','N','N','N','Document Date',23,TO_TIMESTAMP('2014-12-15 23:20:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:41 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54007 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:42 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54008,50044,0,289,0,10,131,52807,TO_TIMESTAMP('2014-12-15 23:20:41','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',24,TO_TIMESTAMP('2014-12-15 23:20:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:42 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54008 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:43 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54009,50044,0,290,0,10,52808,TO_TIMESTAMP('2014-12-15 23:20:42','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','Document No',25,TO_TIMESTAMP('2014-12-15 23:20:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:43 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54009 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:44 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54010,50044,0,56599,0,19,52809,TO_TIMESTAMP('2014-12-15 23:20:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Load Order',26,TO_TIMESTAMP('2014-12-15 23:20:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:44 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54010 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:46 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54011,50044,0,56609,0,19,52810,TO_TIMESTAMP('2014-12-15 23:20:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Load Order Line',27,TO_TIMESTAMP('2014-12-15 23:20:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:46 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54011 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:47 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54012,50044,0,348,0,20,52811,TO_TIMESTAMP('2014-12-15 23:20:46','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',28,TO_TIMESTAMP('2014-12-15 23:20:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:47 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54012 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:49 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54013,50044,0,441,0,12,52812,TO_TIMESTAMP('2014-12-15 23:20:47','YYYY-MM-DD HH24:MI:SS'),100,'Line Extended Amount (Quantity * Actual Price) without Freight and Charges','ECA02','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.','Y','N','N','N','N','N','N','Line Amount',29,TO_TIMESTAMP('2014-12-15 23:20:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:49 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54013 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:50 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54014,50044,0,1030,0,19,52813,TO_TIMESTAMP('2014-12-15 23:20:49','YYYY-MM-DD HH24:MI:SS'),100,'Movement of Inventory','ECA02','The Inventory Movement uniquely identifies a group of movement lines.','Y','N','N','N','N','N','N','Inventory Move',30,TO_TIMESTAMP('2014-12-15 23:20:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:50 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54014 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:51 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54015,50044,0,1031,0,19,52814,TO_TIMESTAMP('2014-12-15 23:20:50','YYYY-MM-DD HH24:MI:SS'),100,'Inventory Move document Line','ECA02','The Movement Line indicates the inventory movement document line (if applicable) for this transaction','Y','N','N','N','N','N','N','Move Line',31,TO_TIMESTAMP('2014-12-15 23:20:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:51 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54015 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:53 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54016,50044,0,1038,0,29,52815,TO_TIMESTAMP('2014-12-15 23:20:51','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.','ECA02','The Movement Quantity indicates the quantity of a product that has been moved.','Y','N','N','N','N','N','N','Movement Quantity',32,TO_TIMESTAMP('2014-12-15 23:20:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:53 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54016 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:54 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54017,50044,0,454,0,19,52816,TO_TIMESTAMP('2014-12-15 23:20:53','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','Product',33,TO_TIMESTAMP('2014-12-15 23:20:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:54 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54017 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:55 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54018,50044,0,459,0,19,52817,TO_TIMESTAMP('2014-12-15 23:20:54','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','N','N','N','N','N','N','Warehouse',34,TO_TIMESTAMP('2014-12-15 23:20:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:55 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54018 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:57 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54019,50044,0,519,0,22,52818,TO_TIMESTAMP('2014-12-15 23:20:55','YYYY-MM-DD HH24:MI:SS'),100,'Actual Price ','ECA02','The Actual or Unit Price indicates the Price for a product in source currency.','Y','N','N','N','N','N','N','Unit Price',35,TO_TIMESTAMP('2014-12-15 23:20:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:57 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54019 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:20:58 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54020,50044,0,2588,0,22,52819,TO_TIMESTAMP('2014-12-15 23:20:57','YYYY-MM-DD HH24:MI:SS'),100,'Price Entered - the price based on the selected/base UoM','ECA02','The price entered is converted to the actual price based on the UoM conversion','Y','N','N','N','N','N','N','Price',36,TO_TIMESTAMP('2014-12-15 23:20:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:20:58 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54020 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:21:00 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54021,50044,0,526,0,29,52820,TO_TIMESTAMP('2014-12-15 23:20:58','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','N','N','N','N','N','N','Quantity',37,TO_TIMESTAMP('2014-12-15 23:20:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:21:00 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54021 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:21:01 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54022,50044,0,2589,0,29,52821,TO_TIMESTAMP('2014-12-15 23:21:00','YYYY-MM-DD HH24:MI:SS'),100,'The Quantity Entered is based on the selected UoM','ECA02','The Quantity Entered is converted to base product UoM quantity','Y','N','N','N','N','N','N','Quantity',38,TO_TIMESTAMP('2014-12-15 23:21:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:21:01 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54022 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:21:03 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54023,50044,0,607,0,16,52822,TO_TIMESTAMP('2014-12-15 23:21:01','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','Updated',39,TO_TIMESTAMP('2014-12-15 23:21:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:21:03 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54023 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:21:04 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54024,50044,0,608,0,19,110,52823,TO_TIMESTAMP('2014-12-15 23:21:03','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','Updated By',40,TO_TIMESTAMP('2014-12-15 23:21:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:21:04 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54024 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:21:06 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54025,50044,0,629,0,22,52824,TO_TIMESTAMP('2014-12-15 23:21:04','YYYY-MM-DD HH24:MI:SS'),100,'Weight of a product','ECA02','The Weight indicates the weight  of the product in the Weight UOM of the Client','Y','N','N','N','N','N','N','Weight',41,TO_TIMESTAMP('2014-12-15 23:21:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:21:06 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54025 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:22:23 PM VET
-- FTA
UPDATE AD_Browse_Trl SET Name='Generar Movimiento desde Orden de Carga',Description='Generar Entrega desde Orden de Carga',Updated=TO_TIMESTAMP('2014-12-15 23:22:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50044 AND AD_Language='es_VE'
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53994
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53995
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53997
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53999
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53998
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54003
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54006
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54000
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54001
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54005
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54004
;

-- Dec 15, 2014 11:23:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54008
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54009
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54012
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54013
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54015
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54014
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54018
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54016
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54019
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54020
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54022
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54024
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54023
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54025
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54011
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53996
;

-- Dec 15, 2014 11:23:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-12-15 23:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54010
;

-- Dec 15, 2014 11:23:37 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-12-15 23:23:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54007
;

-- Dec 15, 2014 11:23:37 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-12-15 23:23:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54002
;

-- Dec 15, 2014 11:23:37 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-12-15 23:23:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54017
;

-- Dec 15, 2014 11:23:37 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-12-15 23:23:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54021
;

-- Dec 15, 2014 11:24:29 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74938,56607,0,10,53597,53899,'OperationType',TO_TIMESTAMP('2014-12-15 23:24:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','N','N','N','N','N','N','N','N','N','Operation Type',TO_TIMESTAMP('2014-12-15 23:24:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 11:24:29 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74938 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 11:24:41 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,74938,0,52825,50074,50036,'MLO_OperationType','MLO.OperationType',TO_TIMESTAMP('2014-12-15 23:24:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Operation Type',TO_TIMESTAMP('2014-12-15 23:24:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:24:48 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54026,50044,0,56607,0,10,53597,52825,TO_TIMESTAMP('2014-12-15 23:24:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Operation Type',10,TO_TIMESTAMP('2014-12-15 23:24:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:24:48 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54026 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:24:59 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-12-15 23:24:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54026
;

-- Dec 15, 2014 11:24:59 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-12-15 23:24:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54002
;

-- Dec 15, 2014 11:24:59 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-12-15 23:24:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54017
;

-- Dec 15, 2014 11:24:59 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-12-15 23:24:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54021
;

-- Dec 15, 2014 11:26:29 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74939,56129,0,19,53899,'FTA_EntryTicket_ID',TO_TIMESTAMP('2014-12-15 23:26:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Entry Ticket',TO_TIMESTAMP('2014-12-15 23:26:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 11:26:29 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74939 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 11:26:43 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,74939,0,52826,50074,50036,'MLO_FTA_EntryTicket_ID','MLO.FTA_EntryTicket_ID',TO_TIMESTAMP('2014-12-15 23:26:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Entry Ticket',TO_TIMESTAMP('2014-12-15 23:26:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:26:48 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54027,50044,0,56129,0,19,52826,TO_TIMESTAMP('2014-12-15 23:26:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Entry Ticket',10,TO_TIMESTAMP('2014-12-15 23:26:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:26:48 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54027 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:27:08 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-12-15 23:27:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54027
;

-- Dec 15, 2014 11:27:36 PM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Reference_ID=30, AD_Reference_Value_ID=53537, IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-12-15 23:27:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54027
;

-- Dec 15, 2014 11:27:45 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:27:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54027
;

-- Dec 15, 2014 11:27:45 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-12-15 23:27:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53995
;

-- Dec 15, 2014 11:27:57 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-12-15 23:27:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53995
;

-- Dec 15, 2014 11:28:16 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsKey='Y',Updated=TO_TIMESTAMP('2014-12-15 23:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54011
;

-- Dec 15, 2014 11:28:35 PM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Reference_ID=30, AD_Reference_Value_ID=138, IsIdentifier='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-12-15 23:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53996
;

-- Dec 15, 2014 11:28:50 PM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Reference_ID=30, AD_Reference_Value_ID=53596, IsIdentifier='Y', IsOrderBy='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-12-15 23:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54010
;

-- Dec 15, 2014 11:29:02 PM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Reference_ID=15, IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-12-15 23:29:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54007
;

-- Dec 15, 2014 11:29:20 PM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Reference_ID=17, IsIdentifier='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-12-15 23:29:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54026
;

-- Dec 15, 2014 11:30:05 PM VET
-- FTA
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=54002
;

-- Dec 15, 2014 11:30:05 PM VET
-- FTA
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=54002
;

-- Dec 15, 2014 11:30:23 PM VET
-- FTA
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52801
;

-- Dec 15, 2014 11:30:32 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74934
;

-- Dec 15, 2014 11:30:32 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=74934
;

-- Dec 15, 2014 11:30:39 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74940,53311,0,19,53899,'DD_Order_ID',TO_TIMESTAMP('2014-12-15 23:30:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Distribution Order',TO_TIMESTAMP('2014-12-15 23:30:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 15, 2014 11:30:39 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74940 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 15, 2014 11:30:51 PM VET
-- FTA
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,74940,0,52827,50074,50036,'MLO_DD_Order_ID','MLO.DD_Order_ID',TO_TIMESTAMP('2014-12-15 23:30:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Distribution Order',TO_TIMESTAMP('2014-12-15 23:30:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:30:56 PM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54028,50044,0,53311,0,19,52827,TO_TIMESTAMP('2014-12-15 23:30:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Distribution Order',10,TO_TIMESTAMP('2014-12-15 23:30:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:30:56 PM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54028 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 15, 2014 11:31:01 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:31:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53995
;

-- Dec 15, 2014 11:31:01 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-12-15 23:31:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54017
;

-- Dec 15, 2014 11:31:01 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-12-15 23:31:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54021
;

-- Dec 15, 2014 11:31:01 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-12-15 23:31:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54028
;

-- Dec 15, 2014 11:31:13 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-12-15 23:31:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54028
;

-- Dec 15, 2014 11:32:08 PM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Reference_ID=30, AD_Reference_Value_ID=162, IsIdentifier='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-12-15 23:32:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54017
;

-- Dec 15, 2014 11:32:23 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-12-15 23:32:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54021
;

-- Dec 15, 2014 11:33:38 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-12-15 23:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54027
;

-- Dec 15, 2014 11:33:38 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-12-15 23:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53995
;

-- Dec 15, 2014 11:33:38 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-12-15 23:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54011
;

-- Dec 15, 2014 11:33:38 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-12-15 23:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53996
;

-- Dec 15, 2014 11:33:38 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-12-15 23:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54010
;

-- Dec 15, 2014 11:33:38 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-12-15 23:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54007
;

-- Dec 15, 2014 11:33:38 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-12-15 23:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54026
;

-- Dec 15, 2014 11:33:38 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-12-15 23:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54017
;

-- Dec 15, 2014 11:33:38 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-12-15 23:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54021
;

-- Dec 15, 2014 11:33:46 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N',Updated=TO_TIMESTAMP('2014-12-15 23:33:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54027
;

-- Dec 15, 2014 11:35:22 PM VET
-- FTA
INSERT INTO AD_Menu ("action",AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',50044,0,53898,0,TO_TIMESTAMP('2014-12-15 23:35:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Generate Movement of Load Order',TO_TIMESTAMP('2014-12-15 23:35:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:35:22 PM VET
-- FTA
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53898 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Dec 15, 2014 11:35:22 PM VET
-- FTA
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-12-15 23:35:22','YYYY-MM-DD HH24:MI:SS'),100,'Y',53898,0,999,TO_TIMESTAMP('2014-12-15 23:35:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:35:30 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=4,Updated=TO_TIMESTAMP('2014-12-15 23:35:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53898
;

-- Dec 15, 2014 11:35:30 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=5,Updated=TO_TIMESTAMP('2014-12-15 23:35:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53686
;

-- Dec 15, 2014 11:35:30 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=6,Updated=TO_TIMESTAMP('2014-12-15 23:35:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53685
;

-- Dec 15, 2014 11:35:47 PM VET
-- FTA
UPDATE AD_Browse_Trl SET Name='Generar Movimiento desde Orden de Carga',Updated=TO_TIMESTAMP('2014-12-15 23:35:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50044 AND AD_Language='es_VE'
;

-- Dec 15, 2014 11:35:51 PM VET
-- FTA
UPDATE AD_Browse_Trl SET Description='Generar Movimiento desde Orden de Carga',Updated=TO_TIMESTAMP('2014-12-15 23:35:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50044 AND AD_Language='es_VE'
;

-- Dec 15, 2014 11:35:53 PM VET
-- FTA
UPDATE AD_Browse_Trl SET Description='Generar Movimiento desde Orden de Carga',Updated=TO_TIMESTAMP('2014-12-15 23:35:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50044 AND AD_Language='es_VE'
;

-- Dec 15, 2014 11:35:57 PM VET
-- FTA
UPDATE AD_Menu_Trl SET Name='Generar Movimiento desde Orden de Carga',Updated=TO_TIMESTAMP('2014-12-15 23:35:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53898 AND AD_Language='es_VE'
;

-- Dec 15, 2014 11:35:59 PM VET
-- FTA
UPDATE AD_Menu_Trl SET Name='Generar Movimiento desde Orden de Carga',Updated=TO_TIMESTAMP('2014-12-15 23:35:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53898 AND AD_Language='es_VE'
;

-- Dec 15, 2014 11:37:04 PM VET
-- FTA
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53723,'org.spin.process.GenerateMovementLoadOrder','N',TO_TIMESTAMP('2014-12-15 23:37:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Generate Movement of Load Order','Y',0,0,TO_TIMESTAMP('2014-12-15 23:37:03','YYYY-MM-DD HH24:MI:SS'),100,'FTA_LoadOrderGenerateMovement')
;

-- Dec 15, 2014 11:37:04 PM VET
-- FTA
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53723 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Dec 15, 2014 11:37:04 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53723,0,TO_TIMESTAMP('2014-12-15 23:37:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-12-15 23:37:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:37:04 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53723,102,TO_TIMESTAMP('2014-12-15 23:37:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-12-15 23:37:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:37:05 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53723,103,TO_TIMESTAMP('2014-12-15 23:37:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-12-15 23:37:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:37:05 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53723,50001,TO_TIMESTAMP('2014-12-15 23:37:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-12-15 23:37:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:37:05 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53723,50002,TO_TIMESTAMP('2014-12-15 23:37:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-12-15 23:37:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:37:19 PM VET
-- FTA
UPDATE AD_Process_Trl SET Name='Generar Movimiento desde Orden de Carga',Updated=TO_TIMESTAMP('2014-12-15 23:37:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53723 AND AD_Language='es_VE'
;

-- Dec 15, 2014 11:37:49 PM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53723,55069,18,170,201,'C_DocTypeTarget_ID',TO_TIMESTAMP('2014-12-15 23:37:47','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02',22,'You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','Y','N','N','Target Document Type',10,TO_TIMESTAMP('2014-12-15 23:37:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:37:49 PM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55069 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Dec 15, 2014 11:38:28 PM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1037,0,53723,55070,15,'MovementDate',TO_TIMESTAMP('2014-12-15 23:38:25','YYYY-MM-DD HH24:MI:SS'),100,'Date a product was moved in or out of inventory','ECA02',7,'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.','Y','Y','N','N','Movement Date',20,TO_TIMESTAMP('2014-12-15 23:38:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:38:28 PM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55070 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Dec 15, 2014 11:39:08 PM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,287,0,53723,55071,17,135,219,'DocAction',TO_TIMESTAMP('2014-12-15 23:39:06','YYYY-MM-DD HH24:MI:SS'),100,'CO','The targeted status of the document','ECA02',2,'You find the current status in the Document Status field. The options are listed in a popup','Y','Y','Y','N','Document Action',30,TO_TIMESTAMP('2014-12-15 23:39:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 11:39:08 PM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55071 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Dec 15, 2014 11:39:25 PM VET
-- FTA
UPDATE AD_Browse SET AD_Process_ID=53723,Updated=TO_TIMESTAMP('2014-12-15 23:39:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50044
;

-- Dec 15, 2014 11:41:10 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N',Updated=TO_TIMESTAMP('2014-12-15 23:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53995
;

-- Dec 15, 2014 11:47:31 PM VET
-- FTA
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-12-15 23:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74911
;

-- Dec 15, 2014 11:49:55 PM VET
-- FTA
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-12-15 23:49:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74912
;

-- Dec 15, 2014 11:50:11 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53995
;

-- Dec 15, 2014 11:50:11 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54027
;

-- Dec 15, 2014 11:50:11 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-12-15 23:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54011
;

-- Dec 15, 2014 11:50:11 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-12-15 23:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53996
;

-- Dec 15, 2014 11:50:11 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-12-15 23:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54010
;

-- Dec 15, 2014 11:50:11 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-12-15 23:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54007
;

-- Dec 15, 2014 11:50:12 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-12-15 23:50:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54026
;

-- Dec 15, 2014 11:50:12 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-12-15 23:50:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54028
;

-- Dec 15, 2014 11:50:12 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-12-15 23:50:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54017
;

-- Dec 15, 2014 11:50:12 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-12-15 23:50:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54021
;

-- Dec 15, 2014 11:50:12 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-12-15 23:50:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53998
;

-- Dec 15, 2014 11:50:12 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-12-15 23:50:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53999
;

-- Dec 15, 2014 11:50:22 PM VET
-- FTA
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53999
;

-- Dec 15, 2014 11:50:22 PM VET
-- FTA
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53999
;

-- Dec 15, 2014 11:50:24 PM VET
-- FTA
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53998
;

-- Dec 15, 2014 11:50:24 PM VET
-- FTA
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53998
;

-- Dec 15, 2014 11:50:41 PM VET
-- FTA
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52797
;

-- Dec 15, 2014 11:50:42 PM VET
-- FTA
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52798
;

-- Dec 15, 2014 11:50:49 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74927
;

-- Dec 15, 2014 11:50:49 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=74927
;

-- Dec 15, 2014 11:50:53 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74925
;

-- Dec 15, 2014 11:50:53 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=74925
;

-- Dec 15, 2014 11:51:55 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-12-15 23:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54005
;

-- Dec 15, 2014 11:51:55 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-12-15 23:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54023
;

-- Dec 15, 2014 11:52:05 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:52:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54023
;

-- Dec 15, 2014 11:52:06 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-12-15 23:52:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54024
;

-- Dec 15, 2014 11:52:14 PM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-12-15 23:52:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54024
;

-- Dec 15, 2014 11:52:21 PM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-12-15 23:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54005
;

-- Dec 15, 2014 11:52:25 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54005
;

-- Dec 15, 2014 11:52:25 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-12-15 23:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54024
;

-- Dec 15, 2014 11:53:24 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-12-15 23:53:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54003
;

-- Dec 15, 2014 11:53:36 PM VET
-- FTA
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=54003
;

-- Dec 15, 2014 11:53:36 PM VET
-- FTA
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=54003
;

-- Dec 15, 2014 11:53:53 PM VET
-- FTA
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52802
;

-- Dec 15, 2014 11:54:07 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74923
;

-- Dec 15, 2014 11:54:07 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=74923
;

-- Dec 15, 2014 11:54:48 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-12-15 23:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54019
;

-- Dec 15, 2014 11:54:55 PM VET
-- FTA
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=54019
;

-- Dec 15, 2014 11:54:55 PM VET
-- FTA
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=54019
;

-- Dec 15, 2014 11:55:10 PM VET
-- FTA
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52818
;

-- Dec 15, 2014 11:55:15 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74930
;

-- Dec 15, 2014 11:55:15 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=74930
;

-- Dec 15, 2014 11:56:00 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-12-15 23:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54020
;

-- Dec 15, 2014 11:56:11 PM VET
-- FTA
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=54020
;

-- Dec 15, 2014 11:56:11 PM VET
-- FTA
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=54020
;


-- Dec 15, 2014 11:56:15 PM VET
-- FTA
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52819
;

-- Dec 15, 2014 11:56:20 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74929
;

-- Dec 15, 2014 11:56:20 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=74929
;

