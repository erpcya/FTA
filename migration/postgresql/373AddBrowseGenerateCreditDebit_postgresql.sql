-- 8/02/2014 01:25:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53749,'N',TO_TIMESTAMP('2014-02-08 13:25:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','N','N','N','Y',0,'Credit Definition Categories Lines By Credit','L','FTA_RV_CDL_CategoriesByCredit',TO_TIMESTAMP('2014-02-08 13:25:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:25:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53749 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 8/02/2014 01:25:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71549,102,0,19,53749,129,'AD_Client_ID',TO_TIMESTAMP('2014-02-08 13:25:39','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','Y','N','N','N','Y','Client',TO_TIMESTAMP('2014-02-08 13:25:39','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 8/02/2014 01:25:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71549 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:25:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71550,113,0,19,53749,104,'AD_Org_ID',TO_TIMESTAMP('2014-02-08 13:25:41','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','Y','N','N','N','Y','Organization',TO_TIMESTAMP('2014-02-08 13:25:41','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 8/02/2014 01:25:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71550 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:25:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71551,348,0,20,53749,'IsActive',TO_TIMESTAMP('2014-02-08 13:25:43','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2014-02-08 13:25:43','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 8/02/2014 01:25:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71551 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:25:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71552,245,0,16,53749,'Created',TO_TIMESTAMP('2014-02-08 13:25:45','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created',TO_TIMESTAMP('2014-02-08 13:25:45','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 8/02/2014 01:25:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71552 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:25:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71553,607,0,16,53749,'Updated',TO_TIMESTAMP('2014-02-08 13:25:46','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated',TO_TIMESTAMP('2014-02-08 13:25:46','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 8/02/2014 01:25:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71553 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:25:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71554,246,0,19,110,53749,'CreatedBy',TO_TIMESTAMP('2014-02-08 13:25:49','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created By',TO_TIMESTAMP('2014-02-08 13:25:49','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 8/02/2014 01:25:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71554 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:25:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71555,608,0,19,110,53749,'UpdatedBy',TO_TIMESTAMP('2014-02-08 13:25:50','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated By',TO_TIMESTAMP('2014-02-08 13:25:50','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 8/02/2014 01:25:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71555 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:25:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53891,TO_TIMESTAMP('2014-02-08 13:25:52','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_RV_CDL_CategoriesByCredit',1,'Y','N','Y','Y','FTA_RV_CDL_CategoriesByCredit','N',1000000,TO_TIMESTAMP('2014-02-08 13:25:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:26:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71556,187,0,19,53749,'C_BPartner_ID',TO_TIMESTAMP('2014-02-08 13:26:05','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','N','N','N','Business Partner ',TO_TIMESTAMP('2014-02-08 13:26:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 8/02/2014 01:26:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71556 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:26:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71557,56084,0,19,53749,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2014-02-08 13:26:07','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit/Loan',TO_TIMESTAMP('2014-02-08 13:26:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 8/02/2014 01:26:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71557 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:26:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71558,56108,0,19,53749,'FTA_CreditDefinition_ID',TO_TIMESTAMP('2014-02-08 13:26:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit Definition',TO_TIMESTAMP('2014-02-08 13:26:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 8/02/2014 01:26:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71558 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:26:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71559,56109,0,19,53749,'FTA_CreditDefinitionLine_ID',TO_TIMESTAMP('2014-02-08 13:26:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit Definition Line',TO_TIMESTAMP('2014-02-08 13:26:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 8/02/2014 01:26:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71559 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:26:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71560,56546,0,19,53749,'FTA_CDL_Category_ID',TO_TIMESTAMP('2014-02-08 13:26:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit Definition Line Category',TO_TIMESTAMP('2014-02-08 13:26:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 8/02/2014 01:26:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71560 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:26:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71561,160,0,12,53749,'Amt',TO_TIMESTAMP('2014-02-08 13:26:15','YYYY-MM-DD HH24:MI:SS'),100,'Amount','ECA02',131089,'Amount','Y','N','N','N','N','N','N','N','N','N','Amount',TO_TIMESTAMP('2014-02-08 13:26:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 8/02/2014 01:26:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71561 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:26:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71562,56571,0,20,53749,'IsExceedCreditLimit',TO_TIMESTAMP('2014-02-08 13:26:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','N','N','N','N','N','N','N','N','N','Exceed Credit Limit',TO_TIMESTAMP('2014-02-08 13:26:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 8/02/2014 01:26:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71562 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:26:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71563,56535,0,29,53749,'ApprovedQty',TO_TIMESTAMP('2014-02-08 13:26:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Approved Quantity',TO_TIMESTAMP('2014-02-08 13:26:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 8/02/2014 01:26:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71563 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:26:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71564,56534,0,12,53749,'ApprovedAmt',TO_TIMESTAMP('2014-02-08 13:26:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Approved Amount',TO_TIMESTAMP('2014-02-08 13:26:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 8/02/2014 01:26:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71564 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:26:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71565,2677,0,12,53749,'AllocatedAmt',TO_TIMESTAMP('2014-02-08 13:26:22','YYYY-MM-DD HH24:MI:SS'),100,'Amount allocated to this document','ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Allocated Amount',TO_TIMESTAMP('2014-02-08 13:26:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 8/02/2014 01:26:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71565 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 8/02/2014 01:28:08 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71555
;

-- 8/02/2014 01:28:08 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71555
;

-- 8/02/2014 01:28:13 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71553
;

-- 8/02/2014 01:28:13 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71553
;

-- 8/02/2014 01:28:18 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71552
;

-- 8/02/2014 01:28:18 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71552
;

-- 8/02/2014 01:28:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71554
;

-- 8/02/2014 01:28:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71554
;

-- 8/02/2014 01:28:27 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=71551
;

-- 8/02/2014 01:28:28 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71551
;

-- 8/02/2014 01:29:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50025,TO_TIMESTAMP('2014-02-08 13:29:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Definition Lines Categories By Credit',TO_TIMESTAMP('2014-02-08 13:29:36','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_CDL_CategoriesByCredit')
;

-- 8/02/2014 01:29:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50025 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- 8/02/2014 01:30:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,53749,50062,50025,TO_TIMESTAMP('2014-02-08 13:30:16','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'CBC',TO_TIMESTAMP('2014-02-08 13:30:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,71549,0,52377,50062,50025,'CBC_AD_Client_ID','CBC.AD_Client_ID',TO_TIMESTAMP('2014-02-08 13:30:22','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_TIMESTAMP('2014-02-08 13:30:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,71550,0,52378,50062,50025,'CBC_AD_Org_ID','CBC.AD_Org_ID',TO_TIMESTAMP('2014-02-08 13:30:23','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_TIMESTAMP('2014-02-08 13:30:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,71565,0,52379,50062,50025,'CBC_AllocatedAmt','CBC.AllocatedAmt',TO_TIMESTAMP('2014-02-08 13:30:24','YYYY-MM-DD HH24:MI:SS'),100,'Amount allocated to this document','ECA02','Y','Allocated Amount',TO_TIMESTAMP('2014-02-08 13:30:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,71561,0,52380,50062,50025,'CBC_Amt','CBC.Amt',TO_TIMESTAMP('2014-02-08 13:30:26','YYYY-MM-DD HH24:MI:SS'),100,'Amount','ECA02','Amount','Y','Amount',TO_TIMESTAMP('2014-02-08 13:30:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,71564,0,52381,50062,50025,'CBC_ApprovedAmt','CBC.ApprovedAmt',TO_TIMESTAMP('2014-02-08 13:30:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Approved Amount',TO_TIMESTAMP('2014-02-08 13:30:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,71563,0,52382,50062,50025,'CBC_ApprovedQty','CBC.ApprovedQty',TO_TIMESTAMP('2014-02-08 13:30:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Approved Quantity',TO_TIMESTAMP('2014-02-08 13:30:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,71556,0,52383,50062,50025,'CBC_C_BPartner_ID','CBC.C_BPartner_ID',TO_TIMESTAMP('2014-02-08 13:30:29','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Business Partner ',TO_TIMESTAMP('2014-02-08 13:30:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,71560,0,52384,50062,50025,'CBC_FTA_CDL_Category_ID','CBC.FTA_CDL_Category_ID',TO_TIMESTAMP('2014-02-08 13:30:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Definition Line Category',TO_TIMESTAMP('2014-02-08 13:30:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,71558,0,52385,50062,50025,'CBC_FTA_CreditDefinition_ID','CBC.FTA_CreditDefinition_ID',TO_TIMESTAMP('2014-02-08 13:30:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Definition',TO_TIMESTAMP('2014-02-08 13:30:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,71559,0,52386,50062,50025,'CBC_FTA_CreditDefinitionLine_I','CBC.FTA_CreditDefinitionLine_ID',TO_TIMESTAMP('2014-02-08 13:30:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Definition Line',TO_TIMESTAMP('2014-02-08 13:30:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,71557,0,52387,50062,50025,'CBC_FTA_FarmerCredit_ID','CBC.FTA_FarmerCredit_ID',TO_TIMESTAMP('2014-02-08 13:30:33','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','Credit/Loan',TO_TIMESTAMP('2014-02-08 13:30:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 01:30:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,71562,0,52388,50062,50025,'CBC_IsExceedCreditLimit','CBC.IsExceedCreditLimit',TO_TIMESTAMP('2014-02-08 13:30:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Exceed Credit Limit',TO_TIMESTAMP('2014-02-08 13:30:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:40:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53572,'org.spin.process.GenerateCRDRBrowse','N',TO_TIMESTAMP('2014-02-08 14:40:13','YYYY-MM-DD HH24:MI:SS'),100,'Generate a Credit or Debit Document','ECA02','You can Generate a AR Credit Memo and AR Invoice','Y','N','N','N','N','Credit/Debit Generate','Y',0,0,TO_TIMESTAMP('2014-02-08 14:40:13','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CreditDebit Generete Browse')
;

-- 8/02/2014 02:40:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53572 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 8/02/2014 02:41:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Name='Credit/Debit Generate  By CDL Category',Updated=TO_TIMESTAMP('2014-02-08 14:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53572
;

-- 8/02/2014 02:41:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53572
;

-- 8/02/2014 02:42:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Abono/Cargo Por Partida de Financiamiento',Description='Genera un Documento de Abono o Cargo y Asigna el Documento a la Partida Correspondiente',Help='Genera un Documento de Abono o Cargo y Asigna el Documento a la Partida Correspondiente',Updated=TO_TIMESTAMP('2014-02-08 14:42:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53572 AND AD_Language='es_VE'
;

-- 8/02/2014 02:42:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Abono/Cargo Por Partida de Financiamiento',Updated=TO_TIMESTAMP('2014-02-08 14:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53572 AND AD_Language='es_VE'
;

-- 8/02/2014 02:42:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Description='Genera un Documento de Abono o Cargo y Asigna el Documento a la Partida Correspondiente',Help='Genera un Documento de Abono o Cargo y Asigna el Documento a la Partida Correspondiente',Updated=TO_TIMESTAMP('2014-02-08 14:42:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53572 AND AD_Language='es_VE'
;

-- 8/02/2014 02:43:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value) VALUES ('3',50031,0,0,53572,50025,TO_TIMESTAMP('2014-02-08 14:43:13','YYYY-MM-DD HH24:MI:SS'),100,'Generate a Credit or Debit Document','ECA02','You can Generate a AR Credit Memo and AR Invoice','Y','N','Generate a Credit or Debit Document','N',TO_TIMESTAMP('2014-02-08 14:43:13','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Generate Debit/Credit')
;

-- 8/02/2014 02:43:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50031 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- 8/02/2014 02:43:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53531,50031,0,102,0,19,52377,TO_TIMESTAMP('2014-02-08 14:43:17','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',10,TO_TIMESTAMP('2014-02-08 14:43:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53531 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53532,50031,0,113,0,19,52378,TO_TIMESTAMP('2014-02-08 14:43:19','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',11,TO_TIMESTAMP('2014-02-08 14:43:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53532 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53533,50031,0,2677,0,12,52379,TO_TIMESTAMP('2014-02-08 14:43:20','YYYY-MM-DD HH24:MI:SS'),100,'Amount allocated to this document','ECA02','Y','N','N','N','N','N','N','Allocated Amount',12,TO_TIMESTAMP('2014-02-08 14:43:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53533 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53534,50031,0,160,0,12,52380,TO_TIMESTAMP('2014-02-08 14:43:22','YYYY-MM-DD HH24:MI:SS'),100,'Amount','ECA02','Amount','Y','N','N','N','N','N','N','Amount',13,TO_TIMESTAMP('2014-02-08 14:43:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53534 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53535,50031,0,56534,0,12,52381,TO_TIMESTAMP('2014-02-08 14:43:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Approved Amount',14,TO_TIMESTAMP('2014-02-08 14:43:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53535 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53536,50031,0,56535,0,29,52382,TO_TIMESTAMP('2014-02-08 14:43:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Approved Quantity',15,TO_TIMESTAMP('2014-02-08 14:43:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53536 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53537,50031,0,187,0,19,52383,TO_TIMESTAMP('2014-02-08 14:43:27','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',16,TO_TIMESTAMP('2014-02-08 14:43:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53537 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53538,50031,0,56546,0,19,52384,TO_TIMESTAMP('2014-02-08 14:43:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Credit Definition Line Category',17,TO_TIMESTAMP('2014-02-08 14:43:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53538 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53539,50031,0,56108,0,19,52385,TO_TIMESTAMP('2014-02-08 14:43:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Credit Definition',18,TO_TIMESTAMP('2014-02-08 14:43:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53539 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53540,50031,0,56109,0,19,52386,TO_TIMESTAMP('2014-02-08 14:43:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Credit Definition Line',19,TO_TIMESTAMP('2014-02-08 14:43:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53540 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53541,50031,0,56084,0,19,52387,TO_TIMESTAMP('2014-02-08 14:43:33','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','N','N','N','N','N','N','Credit/Loan',20,TO_TIMESTAMP('2014-02-08 14:43:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53541 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:43:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53542,50031,0,56571,0,20,52388,TO_TIMESTAMP('2014-02-08 14:43:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Exceed Credit Limit',21,TO_TIMESTAMP('2014-02-08 14:43:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:43:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53542 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 8/02/2014 02:44:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-08 14:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53531
;

-- 8/02/2014 02:44:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-08 14:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53532
;

-- 8/02/2014 02:44:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-08 14:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53537
;

-- 8/02/2014 02:44:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-08 14:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53541
;

-- 8/02/2014 02:44:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-02-08 14:44:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53542
;

-- 8/02/2014 02:44:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-02-08 14:44:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53540
;

-- 8/02/2014 02:44:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-02-08 14:44:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53539
;

-- 8/02/2014 02:44:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-02-08 14:44:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53538
;

-- 8/02/2014 02:44:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-02-08 14:44:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53536
;

-- 8/02/2014 02:44:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-02-08 14:44:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53535
;

-- 8/02/2014 02:44:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-02-08 14:44:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53533
;

-- 8/02/2014 02:44:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-02-08 14:44:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53534
;

-- 8/02/2014 02:45:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-02-08 14:45:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53542
;

-- 8/02/2014 02:45:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-02-08 14:45:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53534
;

-- 8/02/2014 02:45:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-02-08 14:45:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53537
;

-- 8/02/2014 02:45:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-02-08 14:45:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53541
;

-- 8/02/2014 02:45:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-02-08 14:45:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53537
;

-- 8/02/2014 02:45:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-02-08 14:45:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53541
;

-- 8/02/2014 02:46:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2014-02-08 14:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53534
;

-- 8/02/2014 02:47:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsKey='Y',Updated=TO_TIMESTAMP('2014-02-08 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53539
;

-- 8/02/2014 02:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-02-08 14:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53539
;

-- 8/02/2014 02:50:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET AD_Val_Rule_ID=52207,Updated=TO_TIMESTAMP('2014-02-08 14:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53541
;

-- 8/02/2014 02:50:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2014-02-08 14:50:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53541
;

-- 8/02/2014 02:51:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET Description='Generate a Credit or Debit Document By Credit Definition Category', Name='Generate a Credit or Debit Document By Credit Definition Category',Updated=TO_TIMESTAMP('2014-02-08 14:51:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50031
;

-- 8/02/2014 02:51:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Trl SET IsTranslated='N' WHERE AD_Browse_ID=50031
;

-- 8/02/2014 02:52:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Trl SET Name='Generar Abono/Cargo Por Partida',Description='Generar Abono/Cargo Por Partida',Help='Generar Abono/Cargo Por Partida',Updated=TO_TIMESTAMP('2014-02-08 14:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50031 AND AD_Language='es_VE'
;

-- 8/02/2014 02:52:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Trl SET Name='Generar Abono/Cargo Por Partida',Description='Generar Abono/Cargo Por Partida',Help='Generar Abono/Cargo Por Partida',Updated=TO_TIMESTAMP('2014-02-08 14:52:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50031 AND AD_Language='es_VE'
;

-- 8/02/2014 02:55:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',50031,0,53762,0,TO_TIMESTAMP('2014-02-08 14:54:59','YYYY-MM-DD HH24:MI:SS'),100,'Generate a Credit or Debit Document By Credit Definition Category','ECA02','Y','Y','N','N','N','Generate a Credit or Debit Document',TO_TIMESTAMP('2014-02-08 14:54:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:55:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53762 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 8/02/2014 02:55:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-02-08 14:55:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',53762,0,999,TO_TIMESTAMP('2014-02-08 14:55:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/02/2014 02:55:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Generar Abono/Cargo Por Partida',Description='Generar Abono/Cargo Por Partida',Updated=TO_TIMESTAMP('2014-02-08 14:55:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53762 AND AD_Language='es_VE'
;

-- 8/02/2014 02:55:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Generar Abono/Cargo Por Partida',Description='Generar Abono/Cargo Por Partida',Updated=TO_TIMESTAMP('2014-02-08 14:55:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53762 AND AD_Language='es_VE'
;

-- 8/02/2014 02:56:26 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=8,Updated=TO_TIMESTAMP('2014-02-08 14:56:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53740
;

-- 8/02/2014 02:56:26 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=9,Updated=TO_TIMESTAMP('2014-02-08 14:56:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53693
;

-- 8/02/2014 02:56:26 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=10,Updated=TO_TIMESTAMP('2014-02-08 14:56:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53692
;

-- 8/02/2014 02:56:26 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=11,Updated=TO_TIMESTAMP('2014-02-08 14:56:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53657
;

-- 8/02/2014 02:56:27 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=12,Updated=TO_TIMESTAMP('2014-02-08 14:56:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53762
;

-- 8/02/2014 02:59:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-02-08 14:59:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53537
;

-- 8/02/2014 02:59:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-02-08 14:59:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53541
;

-- 8/02/2014 02:59:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET AD_Reference_ID=30, IsDisplayed='N',Updated=TO_TIMESTAMP('2014-02-08 14:59:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53537
;

-- 8/02/2014 02:59:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N',Updated=TO_TIMESTAMP('2014-02-08 14:59:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53541
;

