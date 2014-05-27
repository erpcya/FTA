-- Jan 17, 2014 10:38:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53742,'N',TO_TIMESTAMP('2014-01-17 10:38:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'CDL Report','L','FTA_CDL_Report',TO_TIMESTAMP('2014-01-17 10:38:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:38:35 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53742 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Jan 17, 2014 10:38:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71285,102,0,19,53742,129,'AD_Client_ID',TO_TIMESTAMP('2014-01-17 10:38:35','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','Y','N','N','N','Y','Client',TO_TIMESTAMP('2014-01-17 10:38:35','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:38:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71285 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:38:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71286,113,0,19,53742,104,'AD_Org_ID',TO_TIMESTAMP('2014-01-17 10:38:39','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','Y','N','N','N','Y','Organization',TO_TIMESTAMP('2014-01-17 10:38:39','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:38:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71286 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:38:48 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71287,348,0,20,53742,'IsActive',TO_TIMESTAMP('2014-01-17 10:38:43','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2014-01-17 10:38:43','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:38:48 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71287 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:38:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71288,245,0,16,53742,'Created',TO_TIMESTAMP('2014-01-17 10:38:48','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created',TO_TIMESTAMP('2014-01-17 10:38:48','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:38:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71288 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:38:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71289,607,0,16,53742,'Updated',TO_TIMESTAMP('2014-01-17 10:38:54','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated',TO_TIMESTAMP('2014-01-17 10:38:54','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:38:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71289 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:39:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71290,246,0,19,110,53742,'CreatedBy',TO_TIMESTAMP('2014-01-17 10:38:57','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created By',TO_TIMESTAMP('2014-01-17 10:38:57','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:39:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71290 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:39:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71291,608,0,19,110,53742,'UpdatedBy',TO_TIMESTAMP('2014-01-17 10:39:01','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated By',TO_TIMESTAMP('2014-01-17 10:39:01','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:39:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71291 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:39:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56994,0,'FTA_CDL_Report_ID',TO_TIMESTAMP('2014-01-17 10:39:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','CDL Report ID','CDL Report ID',TO_TIMESTAMP('2014-01-17 10:39:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:39:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56994 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jan 17, 2014 10:39:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71292,56994,0,13,53742,'FTA_CDL_Report_ID',TO_TIMESTAMP('2014-01-17 10:39:12','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02',22,'Y','Y','N','N','N','Y','Y','N','N','N','N','CDL Report ID',TO_TIMESTAMP('2014-01-17 10:39:12','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:39:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71292 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:39:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53884,TO_TIMESTAMP('2014-01-17 10:39:20','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_CDL_Report',1,'Y','N','Y','Y','FTA_CDL_Report','N',1000000,TO_TIMESTAMP('2014-01-17 10:39:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:40:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71293,469,0,10,53742,'Name',TO_TIMESTAMP('2014-01-17 10:39:52','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','N','N','N','Y','N','N','N','Y','N','N','Y','Name',1,TO_TIMESTAMP('2014-01-17 10:39:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 17, 2014 10:40:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71293 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:40:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71294,275,0,10,53742,'Description',TO_TIMESTAMP('2014-01-17 10:40:17','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','Y','N','N','N','N','N','N','N','Y','N','N','Y','Description',0,TO_TIMESTAMP('2014-01-17 10:40:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 17, 2014 10:40:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71294 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:41:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53743,'N',TO_TIMESTAMP('2014-01-17 10:41:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'CDL Report Line','L','FTA_CDL_ReportLine',TO_TIMESTAMP('2014-01-17 10:41:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:41:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53743 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Jan 17, 2014 10:41:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71295,102,0,19,53743,129,'AD_Client_ID',TO_TIMESTAMP('2014-01-17 10:41:37','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','Y','N','N','N','Y','Client',TO_TIMESTAMP('2014-01-17 10:41:37','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:41:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71295 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:41:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71296,113,0,19,53743,104,'AD_Org_ID',TO_TIMESTAMP('2014-01-17 10:41:42','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','Y','N','N','N','Y','Organization',TO_TIMESTAMP('2014-01-17 10:41:42','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:41:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71296 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:41:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71297,348,0,20,53743,'IsActive',TO_TIMESTAMP('2014-01-17 10:41:51','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2014-01-17 10:41:51','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:41:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71297 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:41:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71298,245,0,16,53743,'Created',TO_TIMESTAMP('2014-01-17 10:41:54','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created',TO_TIMESTAMP('2014-01-17 10:41:54','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:42:00 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71298 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:42:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71299,607,0,16,53743,'Updated',TO_TIMESTAMP('2014-01-17 10:42:01','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated',TO_TIMESTAMP('2014-01-17 10:42:01','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:42:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71299 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:42:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71300,246,0,19,110,53743,'CreatedBy',TO_TIMESTAMP('2014-01-17 10:42:10','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created By',TO_TIMESTAMP('2014-01-17 10:42:10','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:42:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71300 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:42:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71301,608,0,19,110,53743,'UpdatedBy',TO_TIMESTAMP('2014-01-17 10:42:15','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated By',TO_TIMESTAMP('2014-01-17 10:42:15','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:42:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71301 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:42:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56995,0,'FTA_CDL_ReportLine_ID',TO_TIMESTAMP('2014-01-17 10:42:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','CDL Report Line ID','CDL Report Line ID',TO_TIMESTAMP('2014-01-17 10:42:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:42:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56995 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jan 17, 2014 10:42:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71302,56995,0,13,53743,'FTA_CDL_ReportLine_ID',TO_TIMESTAMP('2014-01-17 10:42:24','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02',22,'Y','Y','N','N','N','Y','Y','N','N','N','N','CDL Report Line ID',TO_TIMESTAMP('2014-01-17 10:42:24','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jan 17, 2014 10:42:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71302 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:42:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53885,TO_TIMESTAMP('2014-01-17 10:42:28','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_CDL_ReportLine',1,'Y','N','Y','Y','FTA_CDL_ReportLine','N',1000000,TO_TIMESTAMP('2014-01-17 10:42:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:44:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71303,56994,0,19,53743,'FTA_CDL_Report_ID',TO_TIMESTAMP('2014-01-17 10:44:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','CDL Report ID',0,TO_TIMESTAMP('2014-01-17 10:44:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 17, 2014 10:44:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71303 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:45:35 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71304,56546,0,18,53582,53743,'FTA_CDL_Category_ID',TO_TIMESTAMP('2014-01-17 10:45:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Credit Definition Line Category',0,TO_TIMESTAMP('2014-01-17 10:45:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 17, 2014 10:45:35 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71304 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:47:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71305,469,0,10,53743,'Name',TO_TIMESTAMP('2014-01-17 10:47:00','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','N','N','N','Y','N','N','N','Y','N','N','Y','Name',1,TO_TIMESTAMP('2014-01-17 10:47:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 17, 2014 10:47:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71305 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 10:47:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53340,TO_TIMESTAMP('2014-01-17 10:47:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','CDL Report','N',TO_TIMESTAMP('2014-01-17 10:47:29','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Jan 17, 2014 10:47:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53340 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Jan 17, 2014 10:47:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53887,53742,53340,TO_TIMESTAMP('2014-01-17 10:47:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','Y','N','N','CDL Report','N',10,0,TO_TIMESTAMP('2014-01-17 10:47:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:47:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53887 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Jan 17, 2014 10:48:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71287,72132,0,53887,TO_TIMESTAMP('2014-01-17 10:48:05','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2014-01-17 10:48:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:48:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72132 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:48:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71292,72133,0,53887,TO_TIMESTAMP('2014-01-17 10:48:08','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','CDL Report ID',TO_TIMESTAMP('2014-01-17 10:48:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:48:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72133 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:48:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71285,72134,0,53887,TO_TIMESTAMP('2014-01-17 10:48:10','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2014-01-17 10:48:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:48:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72134 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71294,72135,0,53887,TO_TIMESTAMP('2014-01-17 10:48:13','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_TIMESTAMP('2014-01-17 10:48:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72135 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:48:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71293,72136,0,53887,TO_TIMESTAMP('2014-01-17 10:48:15','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2014-01-17 10:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:48:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72136 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:48:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71286,72137,0,53887,TO_TIMESTAMP('2014-01-17 10:48:17','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2014-01-17 10:48:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:48:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72137 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:48:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,71303,0,53888,53743,53340,TO_TIMESTAMP('2014-01-17 10:48:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','Y','N','N','CDL Report Line','N',20,1,TO_TIMESTAMP('2014-01-17 10:48:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:48:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53888 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Jan 17, 2014 10:49:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71297,72138,0,53888,TO_TIMESTAMP('2014-01-17 10:48:59','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2014-01-17 10:48:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:49:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72138 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:49:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71303,72139,0,53888,TO_TIMESTAMP('2014-01-17 10:49:02','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','CDL Report ID',TO_TIMESTAMP('2014-01-17 10:49:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:49:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72139 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:49:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71302,72140,0,53888,TO_TIMESTAMP('2014-01-17 10:49:05','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','CDL Report Line ID',TO_TIMESTAMP('2014-01-17 10:49:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:49:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72140 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:49:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71295,72141,0,53888,TO_TIMESTAMP('2014-01-17 10:49:07','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2014-01-17 10:49:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:49:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72141 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:49:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71304,72142,0,53888,TO_TIMESTAMP('2014-01-17 10:49:10','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Credit Definition Line Category',TO_TIMESTAMP('2014-01-17 10:49:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:49:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72142 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:49:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71305,72143,0,53888,TO_TIMESTAMP('2014-01-17 10:49:12','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2014-01-17 10:49:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:49:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72143 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:49:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71296,72144,0,53888,TO_TIMESTAMP('2014-01-17 10:49:14','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2014-01-17 10:49:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:49:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72144 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 17, 2014 10:49:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-01-17 10:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72134
;

-- Jan 17, 2014 10:49:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-01-17 10:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72137
;

-- Jan 17, 2014 10:49:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-01-17 10:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72136
;

-- Jan 17, 2014 10:49:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-01-17 10:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72135
;

-- Jan 17, 2014 10:49:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-01-17 10:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72132
;

-- Jan 17, 2014 10:50:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-01-17 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72141
;

-- Jan 17, 2014 10:50:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-01-17 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72144
;

-- Jan 17, 2014 10:50:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-01-17 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72139
;

-- Jan 17, 2014 10:50:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-01-17 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72142
;

-- Jan 17, 2014 10:50:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-01-17 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72143
;

-- Jan 17, 2014 10:50:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-01-17 10:50:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72138
;

-- Jan 17, 2014 10:50:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-17 10:50:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72137
;

-- Jan 17, 2014 10:50:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-17 10:50:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72144
;

-- Jan 17, 2014 10:50:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-17 10:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72142
;

-- Jan 17, 2014 10:51:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53751,0,53340,TO_TIMESTAMP('2014-01-17 10:51:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','CDL Report',TO_TIMESTAMP('2014-01-17 10:51:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:51:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53751 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jan 17, 2014 10:51:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-01-17 10:51:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',53751,0,999,TO_TIMESTAMP('2014-01-17 10:51:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 17, 2014 10:51:16 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=0,Updated=TO_TIMESTAMP('2014-01-17 10:51:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53751
;

-- Jan 17, 2014 10:51:16 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=1,Updated=TO_TIMESTAMP('2014-01-17 10:51:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53592
;

-- Jan 17, 2014 10:51:18 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=0,Updated=TO_TIMESTAMP('2014-01-17 10:51:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53751
;

-- Jan 17, 2014 10:51:19 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=1,Updated=TO_TIMESTAMP('2014-01-17 10:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53681
;

-- Jan 17, 2014 10:51:19 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=2,Updated=TO_TIMESTAMP('2014-01-17 10:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53667
;

-- Jan 17, 2014 10:51:19 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=3,Updated=TO_TIMESTAMP('2014-01-17 10:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53589
;

-- Jan 17, 2014 10:52:20 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=3,Updated=TO_TIMESTAMP('2014-01-17 10:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53751
;

-- Jan 17, 2014 10:52:20 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=4,Updated=TO_TIMESTAMP('2014-01-17 10:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53589
;

-- Jan 17, 2014 10:52:20 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=5,Updated=TO_TIMESTAMP('2014-01-17 10:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53660
;

-- Jan 17, 2014 10:52:21 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=6,Updated=TO_TIMESTAMP('2014-01-17 10:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53669
;

-- Jan 17, 2014 10:52:21 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=7,Updated=TO_TIMESTAMP('2014-01-17 10:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53636
;

-- Jan 17, 2014 10:52:21 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=8,Updated=TO_TIMESTAMP('2014-01-17 10:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53652
;

-- Jan 17, 2014 10:52:21 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=9,Updated=TO_TIMESTAMP('2014-01-17 10:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53658
;

-- Jan 17, 2014 10:52:21 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=10,Updated=TO_TIMESTAMP('2014-01-17 10:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53740
;

-- Jan 17, 2014 10:52:21 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=11,Updated=TO_TIMESTAMP('2014-01-17 10:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53693
;

-- Jan 17, 2014 10:52:22 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=12,Updated=TO_TIMESTAMP('2014-01-17 10:52:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53692
;

-- Jan 17, 2014 10:52:22 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=13,Updated=TO_TIMESTAMP('2014-01-17 10:52:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53657
;

-- Jan 17, 2014 10:52:22 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=14,Updated=TO_TIMESTAMP('2014-01-17 10:52:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53664
;

-- Jan 17, 2014 10:52:22 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=15,Updated=TO_TIMESTAMP('2014-01-17 10:52:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53675
;

-- Jan 17, 2014 10:53:24 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53667, SeqNo=3,Updated=TO_TIMESTAMP('2014-01-17 10:53:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53751
;

-- Jan 17, 2014 10:53:24 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53667, SeqNo=4,Updated=TO_TIMESTAMP('2014-01-17 10:53:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53666
;

-- Jan 17, 2014 10:59:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 10:59:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53742 AND AD_Language='es_MX'
;

-- Jan 17, 2014 10:59:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 10:59:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53742 AND AD_Language='es_VE'
;

-- Jan 17, 2014 10:59:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Reportes de Partidas',PrintName='Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 10:59:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56994 AND AD_Language='es_MX'
;

-- Jan 17, 2014 10:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Reportes de Partidas',PrintName='Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 10:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56994 AND AD_Language='es_VE'
;

-- Jan 17, 2014 11:00:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Detalle Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 11:00:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53743 AND AD_Language='es_MX'
;

-- Jan 17, 2014 11:00:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Detalle Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 11:00:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53743 AND AD_Language='es_VE'
;

-- Jan 17, 2014 11:00:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Detalle Reportes de Partidas',PrintName='Detalle Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 11:00:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56995 AND AD_Language='es_MX'
;

-- Jan 17, 2014 11:00:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Detalle Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 11:00:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56995 AND AD_Language='es_VE'
;

-- Jan 17, 2014 11:00:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET PrintName='Detalle Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 11:00:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56995 AND AD_Language='es_VE'
;

-- Jan 17, 2014 11:00:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='CDL Report Line', PrintName='CDL Report Line',Updated=TO_TIMESTAMP('2014-01-17 11:00:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56995
;

-- Jan 17, 2014 11:00:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56995
;

-- Jan 17, 2014 11:00:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_CDL_ReportLine_ID', Name='CDL Report Line', Description=NULL, Help=NULL WHERE AD_Element_ID=56995
;

-- Jan 17, 2014 11:00:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_CDL_ReportLine_ID', Name='CDL Report Line', Description=NULL, Help=NULL, AD_Element_ID=56995 WHERE UPPER(ColumnName)='FTA_CDL_REPORTLINE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 17, 2014 11:00:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_CDL_ReportLine_ID', Name='CDL Report Line', Description=NULL, Help=NULL WHERE AD_Element_ID=56995 AND IsCentrallyMaintained='Y'
;

-- Jan 17, 2014 11:00:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='CDL Report Line', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56995) AND IsCentrallyMaintained='Y'
;

-- Jan 17, 2014 11:00:32 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='CDL Report Line', Name='CDL Report Line' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56995)
;

-- Jan 17, 2014 11:00:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='CDL Report', PrintName='CDL Report',Updated=TO_TIMESTAMP('2014-01-17 11:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56994
;

-- Jan 17, 2014 11:00:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56994
;

-- Jan 17, 2014 11:00:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_CDL_Report_ID', Name='CDL Report', Description=NULL, Help=NULL WHERE AD_Element_ID=56994
;

-- Jan 17, 2014 11:00:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_CDL_Report_ID', Name='CDL Report', Description=NULL, Help=NULL, AD_Element_ID=56994 WHERE UPPER(ColumnName)='FTA_CDL_REPORT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 17, 2014 11:00:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_CDL_Report_ID', Name='CDL Report', Description=NULL, Help=NULL WHERE AD_Element_ID=56994 AND IsCentrallyMaintained='Y'
;

-- Jan 17, 2014 11:00:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='CDL Report', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56994) AND IsCentrallyMaintained='Y'
;

-- Jan 17, 2014 11:00:52 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='CDL Report', Name='CDL Report' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56994)
;

-- Jan 17, 2014 11:01:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Table SET AD_Window_ID=53340,Updated=TO_TIMESTAMP('2014-01-17 11:01:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53742
;

-- Jan 17, 2014 11:01:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Table SET AD_Window_ID=53340,Updated=TO_TIMESTAMP('2014-01-17 11:01:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53743
;

-- Jan 17, 2014 11:01:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Window_Trl SET Name='Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 11:01:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53340 AND AD_Language='es_MX'
;

-- Jan 17, 2014 11:01:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Window_Trl SET Name='Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 11:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53340 AND AD_Language='es_VE'
;

-- Jan 17, 2014 11:01:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 11:01:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53887 AND AD_Language='es_MX'
;

-- Jan 17, 2014 11:01:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Reportes de Partidas',Updated=TO_TIMESTAMP('2014-01-17 11:01:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53887 AND AD_Language='es_VE'
;

-- Jan 17, 2014 11:03:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Detalles',Updated=TO_TIMESTAMP('2014-01-17 11:03:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53888 AND AD_Language='es_MX'
;

-- Jan 17, 2014 11:03:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Detalles',Updated=TO_TIMESTAMP('2014-01-17 11:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53888 AND AD_Language='es_VE'
;

-- Jan 17, 2014 11:10:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-01-17 11:10:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71293
;

-- Jan 17, 2014 11:17:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71306,1830,0,19,53636,'C_City_ID',TO_TIMESTAMP('2014-01-17 11:17:28','YYYY-MM-DD HH24:MI:SS'),100,'City','ECA02',10,'City in a country','Y','N','N','N','N','N','N','N','N','N','City',TO_TIMESTAMP('2014-01-17 11:17:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 17, 2014 11:17:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71306 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 11:17:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71307,225,0,10,53636,'City',TO_TIMESTAMP('2014-01-17 11:17:33','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a City','ECA02',60,'The City identifies a unique City for this Country or Region.','Y','N','N','N','N','N','N','N','N','N','City',TO_TIMESTAMP('2014-01-17 11:17:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 17, 2014 11:17:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71307 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

