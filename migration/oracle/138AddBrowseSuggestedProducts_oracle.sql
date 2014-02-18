-- 10-oct-2013 10:17:17 VET
-- SFAndroid Contribution
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53617,'N',TO_DATE('2013-10-10 10:17:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','N','N','N','Y',0,'View Suggested Products','L','FTA_RV_SuggestedProducts',TO_DATE('2013-10-10 10:17:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 10:17:17 VET
-- SFAndroid Contribution
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53617 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 10-oct-2013 10:17:19 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68647,102,0,19,53617,129,'AD_Client_ID',TO_DATE('2013-10-10 10:17:17','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','Y','N','N','N','Y','Client',TO_DATE('2013-10-10 10:17:17','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 10-oct-2013 10:17:19 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68647 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:17:21 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68648,113,0,19,53617,104,'AD_Org_ID',TO_DATE('2013-10-10 10:17:19','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','Y','N','N','N','Y','Organization',TO_DATE('2013-10-10 10:17:19','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 10-oct-2013 10:17:21 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68648 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:17:22 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68649,348,0,20,53617,'IsActive',TO_DATE('2013-10-10 10:17:21','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2013-10-10 10:17:21','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 10-oct-2013 10:17:22 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68649 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:17:24 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68650,245,0,16,53617,'Created',TO_DATE('2013-10-10 10:17:22','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created',TO_DATE('2013-10-10 10:17:22','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 10-oct-2013 10:17:24 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68650 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:17:26 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68651,607,0,16,53617,'Updated',TO_DATE('2013-10-10 10:17:24','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated',TO_DATE('2013-10-10 10:17:24','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 10-oct-2013 10:17:26 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68651 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:17:28 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68652,246,0,19,110,53617,'CreatedBy',TO_DATE('2013-10-10 10:17:26','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created By',TO_DATE('2013-10-10 10:17:26','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 10-oct-2013 10:17:28 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68652 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:17:29 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68653,608,0,19,110,53617,'UpdatedBy',TO_DATE('2013-10-10 10:17:28','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated By',TO_DATE('2013-10-10 10:17:28','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 10-oct-2013 10:17:29 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68653 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:17:31 VET
-- SFAndroid Contribution
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53762,TO_DATE('2013-10-10 10:17:29','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_RV_SuggestedProducts',1,'Y','N','Y','Y','FTA_RV_SuggestedProducts','N',1000000,TO_DATE('2013-10-10 10:17:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 10:18:05 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68654,56142,0,19,53617,'Category_ID',TO_DATE('2013-10-10 10:18:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Category',TO_DATE('2013-10-10 10:18:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:05 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68654 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:07 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68655,2659,0,10,53617,'ProductName',TO_DATE('2013-10-10 10:18:05','YYYY-MM-DD HH24:MI:SS'),100,'Name of the Product','ECA02',255,'Y','N','N','N','N','N','N','Y','N','N','Product Name',TO_DATE('2013-10-10 10:18:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:07 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68655 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:08 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68656,574,0,16,53617,'StartDate',TO_DATE('2013-10-10 10:18:07','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)','ECA02',29,'The Start Date indicates the first or starting date','Y','N','N','N','N','N','N','N','N','N','Start Date',TO_DATE('2013-10-10 10:18:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:08 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68656 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:10 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68657,55970,0,19,53617,'PlantingCycle_ID',TO_DATE('2013-10-10 10:18:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Planting Cycle',TO_DATE('2013-10-10 10:18:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:10 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68657 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:12 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68658,56034,0,20,53617,'FinancingType',TO_DATE('2013-10-10 10:18:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','N','N','N','N','N','N','N','N','N','Financing Type',TO_DATE('2013-10-10 10:18:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:12 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68658 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:14 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68659,3020,0,20,53617,'Status',TO_DATE('2013-10-10 10:18:12','YYYY-MM-DD HH24:MI:SS'),100,'Status of the currently running check','ECA02',1,'Status of the currently running check','Y','N','N','N','N','N','N','N','N','N','Status',TO_DATE('2013-10-10 10:18:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:14 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68659 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:16 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68660,454,0,19,53617,'M_Product_ID',TO_DATE('2013-10-10 10:18:14','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',10,'Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','N','N','N','Product',TO_DATE('2013-10-10 10:18:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:16 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68660 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:18 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68661,55981,0,19,53617,'FTA_FarmingStage_ID',TO_DATE('2013-10-10 10:18:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Farming Stage',TO_DATE('2013-10-10 10:18:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:18 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68661 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:20 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68662,55980,0,19,53617,'FTA_ObservationType_ID',TO_DATE('2013-10-10 10:18:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Observation Type',TO_DATE('2013-10-10 10:18:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:20 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68662 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:22 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68663,566,0,11,53617,'SeqNo',TO_DATE('2013-10-10 10:18:20','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first','ECA02',10,'The Sequence indicates the order of records','Y','N','N','N','N','N','N','N','N','N','Sequence',TO_DATE('2013-10-10 10:18:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:22 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68663 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:23 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68664,55986,0,29,53617,'QtyDosage',TO_DATE('2013-10-10 10:18:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Qty Dosage',TO_DATE('2013-10-10 10:18:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:23 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68664 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:25 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68665,55985,0,19,53617,'Dosage_Uom_ID',TO_DATE('2013-10-10 10:18:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Dosage Uom',TO_DATE('2013-10-10 10:18:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:25 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68665 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:18:27 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68666,453,0,19,163,53617,'M_Product_Category_ID',TO_DATE('2013-10-10 10:18:25','YYYY-MM-DD HH24:MI:SS'),100,'Category of a Product','ECA02',10,'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Y','N','N','N','N','N','N','N','N','N','Product Category',TO_DATE('2013-10-10 10:18:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 10:18:27 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68666 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 10:19:38 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=114,Updated=TO_DATE('2013-10-10 10:19:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68665
;

-- 10-oct-2013 12:11:00 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=53515,Updated=TO_DATE('2013-10-10 12:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68658
;

-- 10-oct-2013 12:12:03 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53523,Updated=TO_DATE('2013-10-10 12:12:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68657
;

-- 10-oct-2013 12:13:07 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=162,Updated=TO_DATE('2013-10-10 12:13:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68654
;

-- 10-oct-2013 12:14:18 VET
-- SFAndroid Contribution
UPDATE AD_Table SET AD_Window_ID=53241,Updated=TO_DATE('2013-10-10 12:14:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53617
;

-- 10-oct-2013 12:15:12 VET
-- SFAndroid Contribution
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50018,TO_DATE('2013-10-10 12:15:11','YYYY-MM-DD HH24:MI:SS'),100,'Suggested Products','ECA02','Suggested Products','Y','Suggested Products',TO_DATE('2013-10-10 12:15:11','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_SuggestedProducts')
;

-- 10-oct-2013 12:15:12 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50018 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- 10-oct-2013 12:15:32 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,53513,50055,50018,TO_DATE('2013-10-10 12:15:30','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'SP',TO_DATE('2013-10-10 12:15:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:36 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,65918,0,52105,50055,50018,'SP_AD_Client_ID','SP.AD_Client_ID',TO_DATE('2013-10-10 12:15:35','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_DATE('2013-10-10 12:15:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:38 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,65919,0,52106,50055,50018,'SP_AD_Org_ID','SP.AD_Org_ID',TO_DATE('2013-10-10 12:15:36','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_DATE('2013-10-10 12:15:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:39 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,65932,0,52107,50055,50018,'SP_Category_ID','SP.Category_ID',TO_DATE('2013-10-10 12:15:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Category',TO_DATE('2013-10-10 12:15:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:40 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66939,0,52108,50055,50018,'SP_Comments','SP.Comments',TO_DATE('2013-10-10 12:15:39','YYYY-MM-DD HH24:MI:SS'),100,'Comments or additional information','ECA02','The Comments field allows for free form entry of additional information.','Y','Comments',TO_DATE('2013-10-10 12:15:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:42 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,65920,0,52109,50055,50018,'SP_Created','SP.Created',TO_DATE('2013-10-10 12:15:40','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_DATE('2013-10-10 12:15:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:44 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,65921,0,52110,50055,50018,'SP_CreatedBy','SP.CreatedBy',TO_DATE('2013-10-10 12:15:42','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_DATE('2013-10-10 12:15:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:46 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,65933,0,52111,50055,50018,'SP_DayFrom','SP.DayFrom',TO_DATE('2013-10-10 12:15:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Day From',TO_DATE('2013-10-10 12:15:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:48 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,65934,0,52112,50055,50018,'SP_DayTo','SP.DayTo',TO_DATE('2013-10-10 12:15:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Day To',TO_DATE('2013-10-10 12:15:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:50 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,65929,0,52113,50055,50018,'SP_Dosage_Uom_ID','SP.Dosage_Uom_ID',TO_DATE('2013-10-10 12:15:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Dosage Uom',TO_DATE('2013-10-10 12:15:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:52 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,65931,0,52114,50055,50018,'SP_FTA_FarmingStage_ID','SP.FTA_FarmingStage_ID',TO_DATE('2013-10-10 12:15:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farming Stage',TO_DATE('2013-10-10 12:15:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:53 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,65926,0,52115,50055,50018,'SP_FTA_ObservationType_ID','SP.FTA_ObservationType_ID',TO_DATE('2013-10-10 12:15:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Observation Type',TO_DATE('2013-10-10 12:15:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:54 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,65923,0,52116,50055,50018,'SP_FTA_SuggestedProduct_ID','SP.FTA_SuggestedProduct_ID',TO_DATE('2013-10-10 12:15:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Suggested Product',TO_DATE('2013-10-10 12:15:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:55 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,65922,0,52117,50055,50018,'SP_IsActive','SP.IsActive',TO_DATE('2013-10-10 12:15:54','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_DATE('2013-10-10 12:15:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:15:56 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,65927,0,52118,50055,50018,'SP_M_Product_Category_ID','SP.M_Product_Category_ID',TO_DATE('2013-10-10 12:15:55','YYYY-MM-DD HH24:MI:SS'),100,'Category of a Product','ECA02','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Y','Product Category',TO_DATE('2013-10-10 12:15:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:16:03 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,65928,0,52119,50055,50018,'SP_M_Product_ID','SP.M_Product_ID',TO_DATE('2013-10-10 12:15:56','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Product',TO_DATE('2013-10-10 12:15:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:16:05 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66938,0,52120,50055,50018,'SP_Name','SP.Name',TO_DATE('2013-10-10 12:16:03','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Name',TO_DATE('2013-10-10 12:16:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:16:06 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,65930,0,52121,50055,50018,'SP_QtyDosage','SP.QtyDosage',TO_DATE('2013-10-10 12:16:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Qty Dosage',TO_DATE('2013-10-10 12:16:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:16:08 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,65935,0,52122,50055,50018,'SP_SeqNo','SP.SeqNo',TO_DATE('2013-10-10 12:16:06','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first','ECA02','The Sequence indicates the order of records','Y','Sequence',TO_DATE('2013-10-10 12:16:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:16:09 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,65924,0,52123,50055,50018,'SP_Updated','SP.Updated',TO_DATE('2013-10-10 12:16:08','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_DATE('2013-10-10 12:16:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:16:10 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,65925,0,52124,50055,50018,'SP_UpdatedBy','SP.UpdatedBy',TO_DATE('2013-10-10 12:16:09','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_DATE('2013-10-10 12:16:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:16:40 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52105
;

-- 10-oct-2013 12:16:44 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52106
;

-- 10-oct-2013 12:16:46 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52107
;

-- 10-oct-2013 12:16:48 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52108
;

-- 10-oct-2013 12:16:50 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52109
;

-- 10-oct-2013 12:16:51 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52110
;

-- 10-oct-2013 12:16:52 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52111
;

-- 10-oct-2013 12:16:53 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52112
;

-- 10-oct-2013 12:16:55 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52113
;

-- 10-oct-2013 12:16:56 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52114
;

-- 10-oct-2013 12:16:58 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52115
;

-- 10-oct-2013 12:16:59 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52116
;

-- 10-oct-2013 12:17:01 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52117
;

-- 10-oct-2013 12:17:02 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52118
;

-- 10-oct-2013 12:17:03 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52119
;

-- 10-oct-2013 12:17:05 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52120
;

-- 10-oct-2013 12:17:06 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52121
;

-- 10-oct-2013 12:17:07 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52122
;

-- 10-oct-2013 12:17:09 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52123
;

-- 10-oct-2013 12:17:10 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52124
;

-- 10-oct-2013 12:17:23 VET
-- SFAndroid Contribution
UPDATE AD_View_Definition SET AD_Table_ID=53617,Updated=TO_DATE('2013-10-10 12:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_Definition_ID=50055
;

-- 10-oct-2013 12:17:29 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68647,0,52125,50055,50018,'SP_AD_Client_ID','SP.AD_Client_ID',TO_DATE('2013-10-10 12:17:26','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_DATE('2013-10-10 12:17:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:32 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68648,0,52126,50055,50018,'SP_AD_Org_ID','SP.AD_Org_ID',TO_DATE('2013-10-10 12:17:29','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_DATE('2013-10-10 12:17:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:34 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68654,0,52127,50055,50018,'SP_Category_ID','SP.Category_ID',TO_DATE('2013-10-10 12:17:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Category',TO_DATE('2013-10-10 12:17:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:37 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68650,0,52128,50055,50018,'SP_Created','SP.Created',TO_DATE('2013-10-10 12:17:34','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_DATE('2013-10-10 12:17:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:39 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68652,0,52129,50055,50018,'SP_CreatedBy','SP.CreatedBy',TO_DATE('2013-10-10 12:17:37','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_DATE('2013-10-10 12:17:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:42 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68665,0,52130,50055,50018,'SP_Dosage_Uom_ID','SP.Dosage_Uom_ID',TO_DATE('2013-10-10 12:17:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Dosage Uom',TO_DATE('2013-10-10 12:17:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:45 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68658,0,52131,50055,50018,'SP_FinancingType','SP.FinancingType',TO_DATE('2013-10-10 12:17:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Financing Type',TO_DATE('2013-10-10 12:17:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:48 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68661,0,52132,50055,50018,'SP_FTA_FarmingStage_ID','SP.FTA_FarmingStage_ID',TO_DATE('2013-10-10 12:17:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farming Stage',TO_DATE('2013-10-10 12:17:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:51 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68662,0,52133,50055,50018,'SP_FTA_ObservationType_ID','SP.FTA_ObservationType_ID',TO_DATE('2013-10-10 12:17:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Observation Type',TO_DATE('2013-10-10 12:17:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:53 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68649,0,52134,50055,50018,'SP_IsActive','SP.IsActive',TO_DATE('2013-10-10 12:17:51','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_DATE('2013-10-10 12:17:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:56 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68666,0,52135,50055,50018,'SP_M_Product_Category_ID','SP.M_Product_Category_ID',TO_DATE('2013-10-10 12:17:53','YYYY-MM-DD HH24:MI:SS'),100,'Category of a Product','ECA02','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Y','Product Category',TO_DATE('2013-10-10 12:17:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:17:59 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68660,0,52136,50055,50018,'SP_M_Product_ID','SP.M_Product_ID',TO_DATE('2013-10-10 12:17:56','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Product',TO_DATE('2013-10-10 12:17:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:18:02 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68657,0,52137,50055,50018,'SP_PlantingCycle_ID','SP.PlantingCycle_ID',TO_DATE('2013-10-10 12:17:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Planting Cycle',TO_DATE('2013-10-10 12:17:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:18:04 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68655,0,52138,50055,50018,'SP_ProductName','SP.ProductName',TO_DATE('2013-10-10 12:18:02','YYYY-MM-DD HH24:MI:SS'),100,'Name of the Product','ECA02','Y','Product Name',TO_DATE('2013-10-10 12:18:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:18:05 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68664,0,52139,50055,50018,'SP_QtyDosage','SP.QtyDosage',TO_DATE('2013-10-10 12:18:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Qty Dosage',TO_DATE('2013-10-10 12:18:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:18:08 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68663,0,52140,50055,50018,'SP_SeqNo','SP.SeqNo',TO_DATE('2013-10-10 12:18:05','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first','ECA02','The Sequence indicates the order of records','Y','Sequence',TO_DATE('2013-10-10 12:18:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:18:10 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68656,0,52141,50055,50018,'SP_StartDate','SP.StartDate',TO_DATE('2013-10-10 12:18:08','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)','ECA02','The Start Date indicates the first or starting date','Y','Start Date',TO_DATE('2013-10-10 12:18:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:18:12 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68659,0,52142,50055,50018,'SP_Status','SP.Status',TO_DATE('2013-10-10 12:18:10','YYYY-MM-DD HH24:MI:SS'),100,'Status of the currently running check','ECA02','Status of the currently running check','Y','Status',TO_DATE('2013-10-10 12:18:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:18:14 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68651,0,52143,50055,50018,'SP_Updated','SP.Updated',TO_DATE('2013-10-10 12:18:12','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_DATE('2013-10-10 12:18:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:18:15 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68653,0,52144,50055,50018,'SP_UpdatedBy','SP.UpdatedBy',TO_DATE('2013-10-10 12:18:14','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_DATE('2013-10-10 12:18:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:20:49 VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53485,'N',TO_DATE('2013-10-10 12:20:46','YYYY-MM-DD HH24:MI:SS'),100,'Suggested Products','ECA02','Suggested Products','Y','N','N','N','N','Suggested Products','Y',2,2,TO_DATE('2013-10-10 12:20:46','YYYY-MM-DD HH24:MI:SS'),100,'FTA_SuggestedProducts Browse')
;

-- 10-oct-2013 12:20:49 VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53485 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 10-oct-2013 12:21:03 VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Productos Sugeridos',Description='Productos Sugeridos',Help='Productos Sugeridos',Updated=TO_DATE('2013-10-10 12:21:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53485 AND AD_Language='es_MX'
;

-- 10-oct-2013 12:22:56 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value,WhereClause) VALUES ('3',50023,0,0,53485,50018,TO_DATE('2013-10-10 12:22:55','YYYY-MM-DD HH24:MI:SS'),100,'Suggested Products','ECA02','Suggested Products','Y','N','Suggested Products','N',TO_DATE('2013-10-10 12:22:55','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Suggested Products','FTA_TechnicalFormLine_ID=@FTA_TechnicalFormLine_ID@')
;

-- 10-oct-2013 12:22:56 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50023 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- 10-oct-2013 12:23:09 VET
-- SFAndroid Contribution
UPDATE AD_Process SET AD_Browse_ID=50023,Updated=TO_DATE('2013-10-10 12:23:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53485
;

-- 10-oct-2013 12:23:34 VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68673,55987,0,19,53617,'FTA_TechnicalFormLine_ID',TO_DATE('2013-10-10 12:23:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Technical Form Line',TO_DATE('2013-10-10 12:23:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10-oct-2013 12:23:34 VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68673 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10-oct-2013 12:23:40 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52125
;

-- 10-oct-2013 12:23:41 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52126
;

-- 10-oct-2013 12:23:41 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52127
;

-- 10-oct-2013 12:23:42 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52128
;

-- 10-oct-2013 12:23:42 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52129
;

-- 10-oct-2013 12:23:43 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52130
;

-- 10-oct-2013 12:23:43 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52131
;

-- 10-oct-2013 12:23:44 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52132
;

-- 10-oct-2013 12:23:44 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52133
;

-- 10-oct-2013 12:23:45 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52134
;

-- 10-oct-2013 12:23:45 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52135
;

-- 10-oct-2013 12:23:45 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52136
;

-- 10-oct-2013 12:23:46 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52137
;

-- 10-oct-2013 12:23:47 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52138
;

-- 10-oct-2013 12:23:47 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52139
;

-- 10-oct-2013 12:23:48 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52140
;

-- 10-oct-2013 12:23:48 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52141
;

-- 10-oct-2013 12:23:49 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52142
;

-- 10-oct-2013 12:23:49 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52143
;

-- 10-oct-2013 12:23:50 VET
-- SFAndroid Contribution
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52144
;

-- 10-oct-2013 12:23:55 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68647,0,52145,50055,50018,'SP_AD_Client_ID','SP.AD_Client_ID',TO_DATE('2013-10-10 12:23:50','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_DATE('2013-10-10 12:23:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:23:56 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68648,0,52146,50055,50018,'SP_AD_Org_ID','SP.AD_Org_ID',TO_DATE('2013-10-10 12:23:55','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_DATE('2013-10-10 12:23:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:23:58 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68654,0,52147,50055,50018,'SP_Category_ID','SP.Category_ID',TO_DATE('2013-10-10 12:23:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Category',TO_DATE('2013-10-10 12:23:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:23:59 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68650,0,52148,50055,50018,'SP_Created','SP.Created',TO_DATE('2013-10-10 12:23:58','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_DATE('2013-10-10 12:23:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:00 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68652,0,52149,50055,50018,'SP_CreatedBy','SP.CreatedBy',TO_DATE('2013-10-10 12:23:59','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_DATE('2013-10-10 12:23:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:01 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68665,0,52150,50055,50018,'SP_Dosage_Uom_ID','SP.Dosage_Uom_ID',TO_DATE('2013-10-10 12:24:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Dosage Uom',TO_DATE('2013-10-10 12:24:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:02 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68658,0,52151,50055,50018,'SP_FinancingType','SP.FinancingType',TO_DATE('2013-10-10 12:24:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Financing Type',TO_DATE('2013-10-10 12:24:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:05 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68661,0,52152,50055,50018,'SP_FTA_FarmingStage_ID','SP.FTA_FarmingStage_ID',TO_DATE('2013-10-10 12:24:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farming Stage',TO_DATE('2013-10-10 12:24:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:06 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68662,0,52153,50055,50018,'SP_FTA_ObservationType_ID','SP.FTA_ObservationType_ID',TO_DATE('2013-10-10 12:24:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Observation Type',TO_DATE('2013-10-10 12:24:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:08 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68673,0,52154,50055,50018,'SP_FTA_TechnicalFormLine_ID','SP.FTA_TechnicalFormLine_ID',TO_DATE('2013-10-10 12:24:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Technical Form Line',TO_DATE('2013-10-10 12:24:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:10 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68649,0,52155,50055,50018,'SP_IsActive','SP.IsActive',TO_DATE('2013-10-10 12:24:08','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_DATE('2013-10-10 12:24:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:11 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68666,0,52156,50055,50018,'SP_M_Product_Category_ID','SP.M_Product_Category_ID',TO_DATE('2013-10-10 12:24:10','YYYY-MM-DD HH24:MI:SS'),100,'Category of a Product','ECA02','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Y','Product Category',TO_DATE('2013-10-10 12:24:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:12 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68660,0,52157,50055,50018,'SP_M_Product_ID','SP.M_Product_ID',TO_DATE('2013-10-10 12:24:11','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Product',TO_DATE('2013-10-10 12:24:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:14 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68657,0,52158,50055,50018,'SP_PlantingCycle_ID','SP.PlantingCycle_ID',TO_DATE('2013-10-10 12:24:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Planting Cycle',TO_DATE('2013-10-10 12:24:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:15 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68655,0,52159,50055,50018,'SP_ProductName','SP.ProductName',TO_DATE('2013-10-10 12:24:14','YYYY-MM-DD HH24:MI:SS'),100,'Name of the Product','ECA02','Y','Product Name',TO_DATE('2013-10-10 12:24:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:18 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68664,0,52160,50055,50018,'SP_QtyDosage','SP.QtyDosage',TO_DATE('2013-10-10 12:24:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Qty Dosage',TO_DATE('2013-10-10 12:24:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:20 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68663,0,52161,50055,50018,'SP_SeqNo','SP.SeqNo',TO_DATE('2013-10-10 12:24:18','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first','ECA02','The Sequence indicates the order of records','Y','Sequence',TO_DATE('2013-10-10 12:24:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:23 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68656,0,52162,50055,50018,'SP_StartDate','SP.StartDate',TO_DATE('2013-10-10 12:24:21','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)','ECA02','The Start Date indicates the first or starting date','Y','Start Date',TO_DATE('2013-10-10 12:24:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:26 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68659,0,52163,50055,50018,'SP_Status','SP.Status',TO_DATE('2013-10-10 12:24:23','YYYY-MM-DD HH24:MI:SS'),100,'Status of the currently running check','ECA02','Status of the currently running check','Y','Status',TO_DATE('2013-10-10 12:24:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:28 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68651,0,52164,50055,50018,'SP_Updated','SP.Updated',TO_DATE('2013-10-10 12:24:26','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_DATE('2013-10-10 12:24:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:24:31 VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,68653,0,52165,50055,50018,'SP_UpdatedBy','SP.UpdatedBy',TO_DATE('2013-10-10 12:24:28','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_DATE('2013-10-10 12:24:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:06 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53312,50023,0,102,0,19,52145,TO_DATE('2013-10-10 12:25:04','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',10,TO_DATE('2013-10-10 12:25:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:06 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53312 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:10 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53313,50023,0,113,0,19,52146,TO_DATE('2013-10-10 12:25:06','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',11,TO_DATE('2013-10-10 12:25:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:10 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53313 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:12 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53314,50023,0,56142,0,30,162,52147,TO_DATE('2013-10-10 12:25:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Category',12,TO_DATE('2013-10-10 12:25:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:12 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53314 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:13 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53315,50023,0,245,0,16,52148,TO_DATE('2013-10-10 12:25:12','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',13,TO_DATE('2013-10-10 12:25:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:13 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53315 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:15 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53316,50023,0,246,0,19,110,52149,TO_DATE('2013-10-10 12:25:13','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',14,TO_DATE('2013-10-10 12:25:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:15 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53316 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:16 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53317,50023,0,55985,0,18,114,52150,TO_DATE('2013-10-10 12:25:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Dosage Uom',15,TO_DATE('2013-10-10 12:25:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:17 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53317 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:18 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53318,50023,0,56034,0,17,53515,52151,TO_DATE('2013-10-10 12:25:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Financing Type',16,TO_DATE('2013-10-10 12:25:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:18 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53318 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:20 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53319,50023,0,55981,0,19,52152,TO_DATE('2013-10-10 12:25:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Farming Stage',17,TO_DATE('2013-10-10 12:25:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:20 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53319 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:27 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53320,50023,0,55980,0,19,52153,TO_DATE('2013-10-10 12:25:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Observation Type',18,TO_DATE('2013-10-10 12:25:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:27 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53320 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:29 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53321,50023,0,55987,0,19,52154,TO_DATE('2013-10-10 12:25:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Technical Form Line',19,TO_DATE('2013-10-10 12:25:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:29 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53321 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:31 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53322,50023,0,348,0,20,52155,TO_DATE('2013-10-10 12:25:29','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',20,TO_DATE('2013-10-10 12:25:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:31 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53322 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:33 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53323,50023,0,453,0,19,163,52156,TO_DATE('2013-10-10 12:25:31','YYYY-MM-DD HH24:MI:SS'),100,'Category of a Product','ECA02','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Y','N','N','N','N','N','N','Product Category',21,TO_DATE('2013-10-10 12:25:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:33 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53323 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:34 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53324,50023,0,454,0,19,52157,TO_DATE('2013-10-10 12:25:33','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','Product',22,TO_DATE('2013-10-10 12:25:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:34 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53324 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:36 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53325,50023,0,55970,0,18,53523,52158,TO_DATE('2013-10-10 12:25:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Planting Cycle',23,TO_DATE('2013-10-10 12:25:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:36 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53325 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:38 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53326,50023,0,2659,0,10,52159,TO_DATE('2013-10-10 12:25:36','YYYY-MM-DD HH24:MI:SS'),100,'Name of the Product','ECA02','Y','N','N','N','N','N','N','Product Name',24,TO_DATE('2013-10-10 12:25:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:38 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53326 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:40 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53327,50023,0,55986,0,29,52160,TO_DATE('2013-10-10 12:25:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Qty Dosage',25,TO_DATE('2013-10-10 12:25:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:40 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53327 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:42 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53328,50023,0,566,0,11,52161,TO_DATE('2013-10-10 12:25:40','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first','ECA02','The Sequence indicates the order of records','Y','N','N','N','N','N','N','Sequence',26,TO_DATE('2013-10-10 12:25:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:42 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53328 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:44 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53329,50023,0,574,0,16,52162,TO_DATE('2013-10-10 12:25:42','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)','ECA02','The Start Date indicates the first or starting date','Y','N','N','N','N','N','N','Start Date',27,TO_DATE('2013-10-10 12:25:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:44 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53329 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:46 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53330,50023,0,3020,0,20,52163,TO_DATE('2013-10-10 12:25:44','YYYY-MM-DD HH24:MI:SS'),100,'Status of the currently running check','ECA02','Status of the currently running check','Y','N','N','N','N','N','N','Status',28,TO_DATE('2013-10-10 12:25:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:46 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53330 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:48 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53331,50023,0,607,0,16,52164,TO_DATE('2013-10-10 12:25:46','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','Updated',29,TO_DATE('2013-10-10 12:25:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:48 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53331 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:25:50 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53332,50023,0,608,0,19,110,52165,TO_DATE('2013-10-10 12:25:48','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','Updated By',30,TO_DATE('2013-10-10 12:25:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:25:50 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53332 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:28:15 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53312
;

-- 10-oct-2013 12:28:15 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53313
;

-- 10-oct-2013 12:28:15 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53314
;

-- 10-oct-2013 12:28:15 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53315
;

-- 10-oct-2013 12:28:15 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53316
;

-- 10-oct-2013 12:28:16 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53317
;

-- 10-oct-2013 12:28:16 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53321
;

-- 10-oct-2013 12:28:16 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53322
;

-- 10-oct-2013 12:28:16 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53325
;

-- 10-oct-2013 12:28:16 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53328
;

-- 10-oct-2013 12:28:16 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53330
;

-- 10-oct-2013 12:28:16 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53331
;

-- 10-oct-2013 12:28:16 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-10 12:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53332
;

-- 10-oct-2013 12:28:16 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_DATE('2013-10-10 12:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53324
;

-- 10-oct-2013 12:28:17 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2013-10-10 12:28:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53326
;

-- 10-oct-2013 12:28:17 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2013-10-10 12:28:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53329
;

-- 10-oct-2013 12:28:17 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2013-10-10 12:28:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53318
;

-- 10-oct-2013 12:28:17 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2013-10-10 12:28:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53319
;

-- 10-oct-2013 12:28:17 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-10-10 12:28:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53320
;

-- 10-oct-2013 12:28:17 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-10-10 12:28:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53323
;

-- 10-oct-2013 12:28:17 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-10-10 12:28:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53327
;

-- 10-oct-2013 12:28:23 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_DATE('2013-10-10 12:28:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53328
;

-- 10-oct-2013 12:29:02 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsKey='Y', IsQueryCriteria='Y',Updated=TO_DATE('2013-10-10 12:29:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53324
;

-- 10-oct-2013 12:29:43 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-10-10 12:29:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53319
;

-- 10-oct-2013 12:29:47 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-10-10 12:29:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53320
;

-- 10-oct-2013 12:29:51 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-10-10 12:29:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53323
;

-- 10-oct-2013 12:31:43 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsOrderBy,IsQueryCriteria,IsRange,IsReadOnly,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (53333,50023,0,454,0,19,52157,TO_DATE('2013-10-10 12:31:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','N','N','N','Y','N','Y','Product',0,0,TO_DATE('2013-10-10 12:31:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10-oct-2013 12:31:43 VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53333 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 10-oct-2013 12:32:19 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field_Trl SET Name='Producto',Description='Producto; servicio o artículo.',Help='Identifica un artículo que puede ser comprado o vendido es esta organización.',Updated=TO_DATE('2013-10-10 12:32:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53333 AND AD_Language='es_MX'
;

-- 10-oct-2013 12:32:30 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-10-10 12:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53333
;

-- 10-oct-2013 12:32:30 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-10-10 12:32:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53327
;

-- 10-oct-2013 12:32:51 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='N',Updated=TO_DATE('2013-10-10 12:32:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53324
;

-- 10-oct-2013 12:35:11 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Process_ID=53485,Updated=TO_DATE('2013-10-10 12:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67115
;

-- 10-oct-2013 12:35:36 VET
-- SFAndroid Contribution
UPDATE AD_Process SET Description='Suggested Products Generate', Help='Suggested Products Generate', Name='Suggested Products Generate',Updated=TO_DATE('2013-10-10 12:35:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53485
;

-- 10-oct-2013 12:35:36 VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53485
;

-- 10-oct-2013 12:37:42 VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Generar Productos Sugeridos',Description='Generar Productos Sugeridos',Help='Generar Productos Sugeridos',Updated=TO_DATE('2013-10-10 12:37:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53485 AND AD_Language='es_MX'
;

-- 10-oct-2013 12:38:40 VET
-- SFAndroid Contribution
UPDATE AD_Process SET Value='FTA_TechnicalFormLine Suggested Browse',Updated=TO_DATE('2013-10-10 12:38:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53485
;

-- 10-oct-2013 12:39:12 VET
-- SFAndroid Contribution
UPDATE AD_Process SET Description='Generate Suggested Product', Help='Generate Suggested Product', Name='Generate Suggested Product',Updated=TO_DATE('2013-10-10 12:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53485
;

-- 10-oct-2013 12:39:12 VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53485
;

-- 10-oct-2013 12:39:37 VET
-- SFAndroid Contribution
UPDATE AD_Process SET Value='FTA_TechnicalFormLine Suggested_Process',Updated=TO_DATE('2013-10-10 12:39:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53480
;

-- 10-oct-2013 12:40:20 VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Generar Productos Sugeridos Proceso',Description='Genera un Listado de Productos Sugeridos Proceso',Help='Se Pueden Seleccionar Varios Productos y Cantidades Proceso',Updated=TO_DATE('2013-10-10 12:40:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53480 AND AD_Language='es_MX'
;

-- 10-oct-2013 12:40:47 VET
-- SFAndroid Contribution
UPDATE AD_Browse SET AD_Process_ID=53480,Updated=TO_DATE('2013-10-10 12:40:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50023
;

-- 10-oct-2013 13:48:57 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Reference_ID=15,Updated=TO_DATE('2013-10-10 13:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53329
;

-- 10-oct-2013 13:51:03 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_DATE('2013-10-10 13:51:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53327
;

