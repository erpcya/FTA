-- Aug 4, 2013 8:48:38 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67782
;

-- Aug 4, 2013 8:48:38 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67782
;

-- Aug 4, 2013 8:51:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('4',0,0,53543,'N',TO_DATE('2013-08-04 20:51:49','YYYY-MM-DD HH24:MI:SS'),100,'Vehicle Type','ECA02','N','Y','Y','N','Y','N','N','N',0,'Vehicle Type','L','FTA_VehicleType',TO_DATE('2013-08-04 20:51:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 8:51:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53543 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Aug 4, 2013 8:51:51 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53659,TO_DATE('2013-08-04 20:51:50','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_VehicleType',1,'Y','N','Y','Y','FTA_VehicleType','N',1000000,TO_DATE('2013-08-04 20:51:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 8:51:59 PM VET
-- SFAndroid Contribution
UPDATE AD_Table SET AccessLevel='3',Updated=TO_DATE('2013-08-04 20:51:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53543
;

-- Aug 4, 2013 8:52:21 PM VET
-- SFAndroid Contribution
UPDATE AD_Table_Trl SET Name='Tipo de Vehículo',Updated=TO_DATE('2013-08-04 20:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53543 AND AD_Language='es_MX'
;

-- Aug 4, 2013 8:59:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66519,102,0,19,53543,129,'AD_Client_ID',TO_DATE('2013-08-04 20:59:40','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_DATE('2013-08-04 20:59:40','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 4, 2013 8:59:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66519 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 8:59:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66520,113,0,19,53543,104,'AD_Org_ID',TO_DATE('2013-08-04 20:59:41','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_DATE('2013-08-04 20:59:41','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 4, 2013 8:59:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66520 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 8:59:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66521,245,0,16,53543,'Created',TO_DATE('2013-08-04 20:59:42','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_DATE('2013-08-04 20:59:42','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 4, 2013 8:59:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66521 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 8:59:44 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66522,246,0,18,110,53543,105,'CreatedBy',TO_DATE('2013-08-04 20:59:43','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_DATE('2013-08-04 20:59:43','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 4, 2013 8:59:44 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66522 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 8:59:45 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66523,275,0,10,53543,'Description',TO_DATE('2013-08-04 20:59:44','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_DATE('2013-08-04 20:59:44','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 4, 2013 8:59:45 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66523 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 8:59:46 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66524,348,0,20,53543,'IsActive',TO_DATE('2013-08-04 20:59:45','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_DATE('2013-08-04 20:59:45','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 4, 2013 8:59:46 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66524 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 8:59:48 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56074,0,'FTA_VehicleType_ID',TO_DATE('2013-08-04 20:59:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Vehicle Type','Vehicle Type',TO_DATE('2013-08-04 20:59:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 8:59:48 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56074 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 4, 2013 8:59:49 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66525,56074,0,13,53543,'FTA_VehicleType_ID',TO_DATE('2013-08-04 20:59:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',22,'Y','N','N','N','Y','Y','N','N','N','N','N','Vehicle Type',0,TO_DATE('2013-08-04 20:59:46','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 4, 2013 8:59:49 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66525 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 8:59:51 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66526,469,0,10,53543,'Name',TO_DATE('2013-08-04 20:59:49','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','Y','N','N','N','N','Y','Name',1,TO_DATE('2013-08-04 20:59:49','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 4, 2013 8:59:51 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66526 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 8:59:52 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66527,607,0,16,53543,'Updated',TO_DATE('2013-08-04 20:59:51','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_DATE('2013-08-04 20:59:51','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 4, 2013 8:59:52 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66527 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 8:59:53 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66528,608,0,18,110,53543,105,'UpdatedBy',TO_DATE('2013-08-04 20:59:52','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_DATE('2013-08-04 20:59:52','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 4, 2013 8:59:53 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66528 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 9:00:45 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Tipo de Vehículo',PrintName='Tipo de Vehículo',Updated=TO_DATE('2013-08-04 21:00:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56074 AND AD_Language='es_MX'
;

-- Aug 4, 2013 9:02:07 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66529,620,0,10,53543,'Value',TO_DATE('2013-08-04 21:02:06','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','ECA02',60,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Search Key',0,TO_DATE('2013-08-04 21:02:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 9:02:07 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66529 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 9:03:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56075,0,'LoadCapacity',TO_DATE('2013-08-04 21:03:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Load Capacity','Load Capacity',TO_DATE('2013-08-04 21:03:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 9:03:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56075 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 4, 2013 9:03:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Capacidad de Carga',PrintName='Capacidad de Carga',Updated=TO_DATE('2013-08-04 21:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56075 AND AD_Language='es_MX'
;

-- Aug 4, 2013 9:05:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66530,56075,0,22,53543,'LoadCapacity',TO_DATE('2013-08-04 21:04:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Load Capacity',0,TO_DATE('2013-08-04 21:04:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 9:05:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66530 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 9:07:04 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Element_ID=56074, ColumnName='FTA_VehicleType_ID', Description=NULL, Help=NULL, Name='Vehicle Type',Updated=TO_DATE('2013-08-04 21:07:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65889
;

-- Aug 4, 2013 9:07:04 PM VET
-- SFAndroid Contribution
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=65889
;

-- Aug 4, 2013 9:07:04 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET Name='Vehicle Type', Description=NULL, Help=NULL WHERE AD_Column_ID=65889 AND IsCentrallyMaintained='Y'
;

-- Aug 4, 2013 9:07:30 PM VET
-- SFAndroid Contribution
UPDATE AD_Column_Trl SET Name='Tipo de Vehículo',Updated=TO_DATE('2013-08-04 21:07:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65889 AND AD_Language='es_MX'
;

-- Aug 4, 2013 9:07:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-08-04 21:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65889
;

-- Aug 4, 2013 9:08:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-08-04 21:08:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66352
;

-- Aug 4, 2013 9:09:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-08-04 21:09:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65886
;

-- Aug 4, 2013 9:09:24 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-08-04 21:09:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66322
;

-- Aug 4, 2013 9:14:02 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66531,618,0,15,53510,'ValidTo',TO_DATE('2013-08-04 21:13:55','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)','ECA02',7,'The Valid To date indicates the last day of a date range','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Valid to',0,TO_DATE('2013-08-04 21:13:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 9:14:02 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66531 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 9:14:40 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66532,264,0,15,53510,'DateDelivered',TO_DATE('2013-08-04 21:14:38','YYYY-MM-DD HH24:MI:SS'),100,'Date when the product was delivered','ECA02',7,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Date Delivered',0,TO_DATE('2013-08-04 21:14:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 9:14:40 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66532 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 9:15:57 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67757
;

-- Aug 4, 2013 9:15:57 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67757
;

-- Aug 4, 2013 9:16:27 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65890,67959,0,53693,TO_DATE('2013-08-04 21:16:26','YYYY-MM-DD HH24:MI:SS'),100,'Asset used internally or by customers',10,'ECA02','An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.','Y','Y','Y','N','N','N','N','N','Asset',TO_DATE('2013-08-04 21:16:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 9:16:27 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67959 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 9:16:28 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66532,67960,0,53693,TO_DATE('2013-08-04 21:16:27','YYYY-MM-DD HH24:MI:SS'),100,'Date when the product was delivered',7,'ECA02','Y','Y','Y','N','N','N','N','N','Date Delivered',TO_DATE('2013-08-04 21:16:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 9:16:28 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67960 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 9:16:31 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66531,67961,0,53693,TO_DATE('2013-08-04 21:16:28','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)',7,'ECA02','The Valid To date indicates the last day of a date range','Y','Y','Y','N','N','N','N','N','Valid to',TO_DATE('2013-08-04 21:16:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 9:16:31 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67961 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 9:16:43 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67959
;

-- Aug 4, 2013 9:16:43 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67959
;

-- Aug 4, 2013 9:16:55 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=65890
;

-- Aug 4, 2013 9:16:55 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Column WHERE AD_Column_ID=65890
;

-- Aug 4, 2013 9:17:10 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66532,67962,0,53673,TO_DATE('2013-08-04 21:17:04','YYYY-MM-DD HH24:MI:SS'),100,'Date when the product was delivered',7,'ECA02','Y','Y','Y','N','N','N','N','N','Date Delivered',TO_DATE('2013-08-04 21:17:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 9:17:10 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67962 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 9:17:10 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66531,67963,0,53673,TO_DATE('2013-08-04 21:17:10','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)',7,'ECA02','The Valid To date indicates the last day of a date range','Y','Y','Y','N','N','N','N','N','Valid to',TO_DATE('2013-08-04 21:17:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 9:17:10 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67963 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 9:51:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67779
;

-- Aug 4, 2013 9:51:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67778
;

-- Aug 4, 2013 9:51:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67962
;

-- Aug 4, 2013 9:51:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67963
;

-- Aug 4, 2013 9:51:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67783
;

-- Aug 4, 2013 9:51:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67784
;

-- Aug 4, 2013 9:51:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67785
;

-- Aug 4, 2013 9:51:37 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 21:51:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67777
;

-- Aug 4, 2013 9:51:43 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-08-04 21:51:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67780
;

-- Aug 4, 2013 9:52:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67962
;

-- Aug 4, 2013 9:52:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67781
;

-- Aug 4, 2013 9:52:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 21:52:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67962
;

-- Aug 4, 2013 9:52:21 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 21:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67963
;

-- Aug 4, 2013 9:54:04 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 21:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67772
;

-- Aug 4, 2013 9:54:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67760
;

-- Aug 4, 2013 9:54:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67759
;

-- Aug 4, 2013 9:54:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67762
;

-- Aug 4, 2013 9:54:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67758
;

-- Aug 4, 2013 9:54:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67763
;

-- Aug 4, 2013 9:54:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67960
;

-- Aug 4, 2013 9:54:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67961
;

-- Aug 4, 2013 9:54:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-08-04 21:54:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67773
;

-- Aug 4, 2013 9:54:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67960
;

-- Aug 4, 2013 9:54:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67756
;

-- Aug 4, 2013 9:54:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67961
;

-- Aug 4, 2013 9:54:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67762
;

-- Aug 4, 2013 9:54:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67758
;

-- Aug 4, 2013 9:54:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67763
;

-- Aug 4, 2013 9:54:54 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 21:54:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67960
;

-- Aug 4, 2013 9:55:06 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 21:55:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67961
;

-- Aug 4, 2013 9:55:17 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67961
;

-- Aug 4, 2013 9:55:17 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67960
;

-- Aug 4, 2013 9:56:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 21:56:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67763
;

-- Aug 4, 2013 9:56:19 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67963
;

-- Aug 4, 2013 9:56:19 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67962
;

-- Aug 4, 2013 9:56:23 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 21:56:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67785
;

-- Aug 4, 2013 9:59:44 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-08-04 21:59:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67962
;

-- Aug 4, 2013 10:00:11 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-08-04 22:00:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65889
;

-- Aug 4, 2013 10:02:21 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66533,2396,0,20,53510,'IsInternal',TO_DATE('2013-08-04 22:02:17','YYYY-MM-DD HH24:MI:SS'),100,'Internal Organization','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Internal',0,TO_DATE('2013-08-04 22:02:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 10:02:21 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66533 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 10:03:49 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66534,459,0,19,53510,'M_Warehouse_ID',TO_DATE('2013-08-04 22:03:47','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','U',10,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Warehouse',0,TO_DATE('2013-08-04 22:03:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 10:03:49 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66534 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 10:04:30 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66535,187,0,30,53510,'C_BPartner_ID',TO_DATE('2013-08-04 22:04:28','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_DATE('2013-08-04 22:04:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 10:04:30 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66535 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 10:04:37 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2013-08-04 22:04:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66534
;

-- Aug 4, 2013 10:06:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67786
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67774
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67774
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67775
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67775
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67776
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67776
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67777
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67777
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67779
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67779
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67778
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67778
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67780
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67780
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67963
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67963
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67781
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67781
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67962
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67962
;

-- Aug 4, 2013 10:06:58 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67783
;

-- Aug 4, 2013 10:06:59 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67783
;

-- Aug 4, 2013 10:06:59 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67784
;

-- Aug 4, 2013 10:06:59 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67784
;

-- Aug 4, 2013 10:06:59 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67785
;

-- Aug 4, 2013 10:06:59 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67785
;

-- Aug 4, 2013 10:06:59 PM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67786
;

-- Aug 4, 2013 10:06:59 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67786
;

-- Aug 4, 2013 10:07:20 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66535,67964,0,53693,TO_DATE('2013-08-04 22:07:19','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_DATE('2013-08-04 22:07:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:07:20 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67964 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:07:21 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66533,67965,0,53693,TO_DATE('2013-08-04 22:07:20','YYYY-MM-DD HH24:MI:SS'),100,'Internal Organization',1,'ECA02','Y','Y','Y','N','N','N','N','N','Internal',TO_DATE('2013-08-04 22:07:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:07:21 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67965 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:07:22 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66534,67966,0,53693,TO_DATE('2013-08-04 22:07:21','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point',10,'ECA02','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','Y','N','N','N','N','N','Warehouse',TO_DATE('2013-08-04 22:07:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:07:22 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67966 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:11:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67965
;

-- Aug 4, 2013 10:11:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67966
;

-- Aug 4, 2013 10:11:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67964
;

-- Aug 4, 2013 10:11:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67762
;

-- Aug 4, 2013 10:11:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=67758
;

-- Aug 4, 2013 10:11:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=67763
;

-- Aug 4, 2013 10:11:18 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 22:11:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67966
;

-- Aug 4, 2013 10:11:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@IsInternal@=''N''',Updated=TO_DATE('2013-08-04 22:11:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67964
;

-- Aug 4, 2013 10:11:52 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET DefaultValue='Y',Updated=TO_DATE('2013-08-04 22:11:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66533
;

-- Aug 4, 2013 10:12:11 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-08-04 22:12:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66534
;

-- Aug 4, 2013 10:12:19 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2013-08-04 22:12:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67964
;

-- Aug 4, 2013 10:16:58 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56076,0,'GuideSource',TO_DATE('2013-08-04 22:16:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Guide Source','Guide Source',TO_DATE('2013-08-04 22:16:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:16:58 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56076 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 4, 2013 10:17:21 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Guía Orígen',PrintName='Guía Orígen',Updated=TO_DATE('2013-08-04 22:17:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56076 AND AD_Language='es_MX'
;

-- Aug 4, 2013 10:17:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Description='Guía de Movilización Orígen',Updated=TO_DATE('2013-08-04 22:17:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56076 AND AD_Language='es_MX'
;

-- Aug 4, 2013 10:18:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53516,TO_DATE('2013-08-04 22:18:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_MovilizationGuide',TO_DATE('2013-08-04 22:18:40','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Aug 4, 2013 10:18:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53516 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Aug 4, 2013 10:19:16 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,65887,65882,0,53516,53510,TO_DATE('2013-08-04 22:19:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2013-08-04 22:19:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:19:32 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66536,56076,0,18,53516,53510,'GuideSource',TO_DATE('2013-08-04 22:19:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Guide Source',0,TO_DATE('2013-08-04 22:19:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 10:19:32 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66536 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 10:20:25 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66536,67967,0,53693,TO_DATE('2013-08-04 22:20:24','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','Y','Y','Y','N','N','N','N','N','Guide Source',170,0,TO_DATE('2013-08-04 22:20:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:20:25 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67967 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:21:06 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67967
;

-- Aug 4, 2013 10:21:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67773
;

-- Aug 4, 2013 10:21:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67961
;

-- Aug 4, 2013 10:21:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67756
;

-- Aug 4, 2013 10:21:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67960
;

-- Aug 4, 2013 10:21:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67965
;

-- Aug 4, 2013 10:21:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67966
;

-- Aug 4, 2013 10:21:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67964
;

-- Aug 4, 2013 10:21:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=67762
;

-- Aug 4, 2013 10:21:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=67758
;

-- Aug 4, 2013 10:21:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=67763
;

-- Aug 4, 2013 10:21:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@GuideSource@!0',Updated=TO_DATE('2013-08-04 22:21:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67967
;

-- Aug 4, 2013 10:22:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-08-04 22:22:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67967
;

-- Aug 4, 2013 10:23:23 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65875,67968,0,53673,TO_DATE('2013-08-04 22:23:23','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',10,TO_DATE('2013-08-04 22:23:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:23 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67968 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:24 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65876,67969,0,53673,TO_DATE('2013-08-04 22:23:23','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_DATE('2013-08-04 22:23:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:24 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67969 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:24 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65888,67970,0,53673,TO_DATE('2013-08-04 22:23:24','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Farming',30,TO_DATE('2013-08-04 22:23:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:24 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67970 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:25 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66322,67971,0,53673,TO_DATE('2013-08-04 22:23:24','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',10,'ECA02','The Document Type determines document sequence and processing rules','Y','Y','Y','N','N','N','N','Y','Document Type',40,TO_DATE('2013-08-04 22:23:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:25 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67971 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:26 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65886,67972,0,53673,TO_DATE('2013-08-04 22:23:25','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',50,TO_DATE('2013-08-04 22:23:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:26 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67972 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:26 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65887,67973,0,53673,TO_DATE('2013-08-04 22:23:26','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',10,'ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','Y','Document No',60,TO_DATE('2013-08-04 22:23:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:26 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67973 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:28 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66536,67974,0,53673,TO_DATE('2013-08-04 22:23:26','YYYY-MM-DD HH24:MI:SS'),100,0,'@GuideSource@!0','ECA02','Y','Y','Y','N','N','N','Y','N','Guide Source',70,0,TO_DATE('2013-08-04 22:23:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:28 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67974 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:29 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66352,67975,0,53673,TO_DATE('2013-08-04 22:23:28','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Qty to deliver',80,TO_DATE('2013-08-04 22:23:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:29 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67975 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:29 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66531,67976,0,53673,TO_DATE('2013-08-04 22:23:29','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)',7,'ECA02','The Valid To date indicates the last day of a date range','Y','Y','Y','N','N','N','N','Y','Valid to',90,TO_DATE('2013-08-04 22:23:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:29 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67976 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:30 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65889,67977,0,53673,TO_DATE('2013-08-04 22:23:29','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Vehicle Type',100,TO_DATE('2013-08-04 22:23:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:30 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67977 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:31 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66532,67978,0,53673,TO_DATE('2013-08-04 22:23:30','YYYY-MM-DD HH24:MI:SS'),100,'Date when the product was delivered',7,'ECA02','Y','Y','Y','N','N','N','N','Y','Date Delivered',110,TO_DATE('2013-08-04 22:23:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:31 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67978 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:32 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66533,67979,0,53673,TO_DATE('2013-08-04 22:23:31','YYYY-MM-DD HH24:MI:SS'),100,'Internal Organization',1,'ECA02','Y','Y','Y','N','N','N','N','N','Internal',120,TO_DATE('2013-08-04 22:23:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67979 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:34 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66534,67980,0,53673,TO_DATE('2013-08-04 22:23:33','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point',10,'ECA02','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','Y','N','N','N','N','Y','Warehouse',130,TO_DATE('2013-08-04 22:23:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:34 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67980 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsMandatory,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66535,67981,0,53673,TO_DATE('2013-08-04 22:23:34','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'@IsInternal@=''N''','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','Y','N','N','Business Partner ',140,TO_DATE('2013-08-04 22:23:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67981 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65879,67982,0,53673,TO_DATE('2013-08-04 22:23:36','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',150,TO_DATE('2013-08-04 22:23:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67982 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65880,67983,0,53673,TO_DATE('2013-08-04 22:23:36','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','Y','Active',160,TO_DATE('2013-08-04 22:23:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67983 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65891,67984,0,53673,TO_DATE('2013-08-04 22:23:37','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA02','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','Y','Processed',170,TO_DATE('2013-08-04 22:23:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67984 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:23:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65882,67985,0,53673,TO_DATE('2013-08-04 22:23:38','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Mobilization Guide',TO_DATE('2013-08-04 22:23:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:23:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67985 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 10:51:46 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56077,0,'GuideGenerate',TO_DATE('2013-08-04 22:51:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Guide Generate','Guide Generate',TO_DATE('2013-08-04 22:51:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 10:51:46 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56077 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 4, 2013 10:52:25 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Generar Guía',PrintName='Generar Guía',Updated=TO_DATE('2013-08-04 22:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56077 AND AD_Language='es_MX'
;

-- Aug 4, 2013 10:53:24 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66537,56077,0,28,53509,'GuideGenerate',TO_DATE('2013-08-04 22:53:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Guide Generate',0,TO_DATE('2013-08-04 22:53:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 10:53:24 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66537 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 10:55:53 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53425,'org.sfandroid.process.EstimateQty','N',TO_DATE('2013-08-04 22:55:52','YYYY-MM-DD HH24:MI:SS'),100,'Estimate Quantity','ECA02','Y','N','N','N','N','Estimate Quantity','Y',0,0,TO_DATE('2013-08-04 22:55:52','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Farming EstimateQty')
;

-- Aug 4, 2013 10:55:53 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53425 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 4, 2013 10:56:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Process_ID=53425,Updated=TO_DATE('2013-08-04 22:56:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66348
;

-- Aug 4, 2013 10:58:57 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53426,'org.sfandroid.process.GuideGenerate','N',TO_DATE('2013-08-04 22:58:56','YYYY-MM-DD HH24:MI:SS'),100,'Guide Generate','ECA02','Y','N','N','N','N','Guide Generate','Y',0,0,TO_DATE('2013-08-04 22:58:56','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Farming GuideGenerate')
;

-- Aug 4, 2013 10:58:57 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53426 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 4, 2013 10:59:17 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Estimar Cantidad',Description='Estimar Cantidad',Updated=TO_DATE('2013-08-04 22:59:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53425 AND AD_Language='es_MX'
;

-- Aug 4, 2013 10:59:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Generar Guías',Description='Generar Guías',Updated=TO_DATE('2013-08-04 22:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53426 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:00:02 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Process_ID=53426,Updated=TO_DATE('2013-08-04 23:00:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66537
;

-- Aug 4, 2013 11:03:58 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,52017,0,53420,53939,30,171,'Category',TO_DATE('2013-08-04 23:03:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','s',10,TO_DATE('2013-08-04 23:03:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:03:58 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53939 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 4, 2013 11:04:05 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para SET Name='Category',Updated=TO_DATE('2013-08-04 23:04:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53939
;

-- Aug 4, 2013 11:04:05 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=53939
;

-- Aug 4, 2013 11:04:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2013-08-04 23:04:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53939
;

-- Aug 4, 2013 11:12:06 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66537,67986,0,53668,TO_DATE('2013-08-04 23:12:05','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Guide Generate',TO_DATE('2013-08-04 23:12:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:12:06 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67986 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:14:01 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56078,0,'FrontierNorth',TO_DATE('2013-08-04 23:14:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Frontier North','Frontier North',TO_DATE('2013-08-04 23:14:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:14:01 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56078 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 4, 2013 11:14:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Frontera Norte',PrintName='Frontera Norte',Updated=TO_DATE('2013-08-04 23:14:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56078 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:14:37 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Lindero Norte',PrintName='Lindero Norte',Description='Lindero Norte',Updated=TO_DATE('2013-08-04 23:14:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56078 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:15:09 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56079,0,'FrontierSouth',TO_DATE('2013-08-04 23:15:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Frontier South','Frontier South',TO_DATE('2013-08-04 23:15:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:15:09 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56079 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 4, 2013 11:15:20 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Lindero Sur',PrintName='Lindero Sur',Description='Lindero Sur',Updated=TO_DATE('2013-08-04 23:15:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56079 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:15:59 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56080,0,'FrontierEast',TO_DATE('2013-08-04 23:15:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Frontier East','Frontier East',TO_DATE('2013-08-04 23:15:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:15:59 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56080 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 4, 2013 11:16:09 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Lindero Este',PrintName='Lindero Este',Description='Lindero Este',Updated=TO_DATE('2013-08-04 23:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56080 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:16:34 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56081,0,'FrontierWest',TO_DATE('2013-08-04 23:16:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Frontier West','Frontier West',TO_DATE('2013-08-04 23:16:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:16:34 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56081 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 4, 2013 11:16:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Lindero Oeste',PrintName='Lindero Oeste',Description='Lindero Oeste',Updated=TO_DATE('2013-08-04 23:16:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56081 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:17:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66538,56078,0,10,53506,'FrontierNorth',TO_DATE('2013-08-04 23:17:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',255,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Frontier North',0,TO_DATE('2013-08-04 23:17:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 11:17:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66538 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 11:18:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66539,56079,0,10,53506,'FrontierSouth',TO_DATE('2013-08-04 23:17:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',255,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Frontier South',0,TO_DATE('2013-08-04 23:17:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 11:18:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66539 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 11:18:18 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66540,56080,0,10,53506,'FrontierEast',TO_DATE('2013-08-04 23:18:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',255,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Frontier East',0,TO_DATE('2013-08-04 23:18:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 11:18:18 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66540 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 11:18:34 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66541,56081,0,10,53506,'FrontierWest',TO_DATE('2013-08-04 23:18:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',255,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Frontier West',0,TO_DATE('2013-08-04 23:18:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 11:18:34 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66541 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 11:21:34 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66540,67987,0,53665,TO_DATE('2013-08-04 23:21:33','YYYY-MM-DD HH24:MI:SS'),100,255,'ECA02','Y','Y','Y','N','N','N','N','N','Frontier East',TO_DATE('2013-08-04 23:21:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:21:34 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67987 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:21:35 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66538,67988,0,53665,TO_DATE('2013-08-04 23:21:34','YYYY-MM-DD HH24:MI:SS'),100,255,'ECA02','Y','Y','Y','N','N','N','N','N','Frontier North',TO_DATE('2013-08-04 23:21:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:21:35 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67988 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:21:35 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66539,67989,0,53665,TO_DATE('2013-08-04 23:21:35','YYYY-MM-DD HH24:MI:SS'),100,255,'ECA02','Y','Y','Y','N','N','N','N','N','Frontier South',TO_DATE('2013-08-04 23:21:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:21:35 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67989 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:21:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66541,67990,0,53665,TO_DATE('2013-08-04 23:21:35','YYYY-MM-DD HH24:MI:SS'),100,255,'ECA02','Y','Y','Y','N','N','N','N','N','Frontier West',TO_DATE('2013-08-04 23:21:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:21:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67990 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:25:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67988
;

-- Aug 4, 2013 11:25:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67989
;

-- Aug 4, 2013 11:25:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67987
;

-- Aug 4, 2013 11:25:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67990
;

-- Aug 4, 2013 11:25:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67188
;

-- Aug 4, 2013 11:25:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67771
;

-- Aug 4, 2013 11:25:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=67770
;

-- Aug 4, 2013 11:27:06 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56082,0,'FarmType',TO_DATE('2013-08-04 23:27:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farm Type','Farm Type',TO_DATE('2013-08-04 23:27:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:27:06 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56082 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 4, 2013 11:27:17 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Tipo de Finca',PrintName='Tipo de Finca',Description='Tipo de Finca',Updated=TO_DATE('2013-08-04 23:27:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56082 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:27:56 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52173,TO_DATE('2013-08-04 23:27:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_Farm FarmType','S',TO_DATE('2013-08-04 23:27:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:27:59 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Val_Rule WHERE AD_Val_Rule_ID=52173
;

-- Aug 4, 2013 11:28:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53517,TO_DATE('2013-08-04 23:28:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_Farm FarmType',TO_DATE('2013-08-04 23:28:34','YYYY-MM-DD HH24:MI:SS'),100,'L','L')
;

-- Aug 4, 2013 11:28:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53517 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Aug 4, 2013 11:29:28 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53517,53998,TO_DATE('2013-08-04 23:29:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Own',TO_DATE('2013-08-04 23:29:27','YYYY-MM-DD HH24:MI:SS'),100,'O')
;

-- Aug 4, 2013 11:29:28 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53998 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 4, 2013 11:29:33 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List_Trl SET Name='Propia',Updated=TO_DATE('2013-08-04 23:29:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=53998 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:29:45 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53517,53999,TO_DATE('2013-08-04 23:29:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Rented',TO_DATE('2013-08-04 23:29:44','YYYY-MM-DD HH24:MI:SS'),100,'R')
;

-- Aug 4, 2013 11:29:45 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53999 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 4, 2013 11:30:33 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List_Trl SET Name='Arrendada',Updated=TO_DATE('2013-08-04 23:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=53999 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:30:41 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List SET Name='Leased', Value='L',Updated=TO_DATE('2013-08-04 23:30:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=53999
;

-- Aug 4, 2013 11:30:41 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=53999
;

-- Aug 4, 2013 11:31:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66542,56082,0,17,53517,53506,'FarmType',TO_DATE('2013-08-04 23:30:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Farm Type',0,TO_DATE('2013-08-04 23:30:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 11:31:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66542 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 11:31:11 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66542,67991,0,53665,TO_DATE('2013-08-04 23:31:10','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Farm Type',TO_DATE('2013-08-04 23:31:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:31:11 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67991 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:32:32 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67991
;

-- Aug 4, 2013 11:32:32 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67187
;

-- Aug 4, 2013 11:32:32 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=67771
;

-- Aug 4, 2013 11:32:44 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 23:32:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67991
;

-- Aug 4, 2013 11:35:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-08-04 23:35:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67771
;

-- Aug 4, 2013 11:35:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 23:35:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67770
;

-- Aug 4, 2013 11:35:20 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=67771
;

-- Aug 4, 2013 11:35:20 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=67770
;

-- Aug 4, 2013 11:37:59 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53712,114,53237,TO_DATE('2013-08-04 23:37:58','YYYY-MM-DD HH24:MI:SS'),100,'User Contact','ECA02','N','N','Y','N','N','Y','N','Y','N','N','Contact','N',60,0,TO_DATE('2013-08-04 23:37:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:37:59 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53712 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Aug 4, 2013 11:38:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2013-08-04 23:38:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53712
;

-- Aug 4, 2013 11:38:32 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,7793,67992,0,53712,TO_DATE('2013-08-04 23:38:31','YYYY-MM-DD HH24:MI:SS'),100,'User Name (ID) in the Mail System',20,'ECA02','The user name in the mail system is usually the string before the @ of your email address.  Required if the mail server requires authentification to send emails.','Y','Y','N','N','N','N','N','N','EMail User ID',0,TO_DATE('2013-08-04 23:38:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:32 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67992 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,212,67993,0,53712,TO_DATE('2013-08-04 23:38:32','YYYY-MM-DD HH24:MI:SS'),100,'User within the system - Internal or Business Partner Contact',14,'ECA02','The User identifies a unique user in the system. This could be an internal user or a business partner contact','Y','Y','N','N','N','N','N','N','User/Contact',0,TO_DATE('2013-08-04 23:38:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67993 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,12401,67994,0,53712,TO_DATE('2013-08-04 23:38:33','YYYY-MM-DD HH24:MI:SS'),100,'User Name used for authorization via LDAP (directory) services',1,'ECA02','Optional LDAP system user name for the user. If not defined, the normal Name of the user is used. This allows to use the internal (LDAP) user id (e.g. jjanke) and the normal display name (e.g. Jorg Janke).  The LDAP User Name can also be used without LDAP enables (see system window).  This would allow to sign in as jjanke and use the display name of Jorg Janke.','Y','Y','N','N','N','N','N','N','LDAP User Name',0,TO_DATE('2013-08-04 23:38:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67994 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:35 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,5397,67995,0,53712,TO_DATE('2013-08-04 23:38:33','YYYY-MM-DD HH24:MI:SS'),100,'Supervisor for this user/organization - used for escalation and approval',26,'ECA02','The Supervisor indicates who will be used for forwarding and escalating issues for this user - or for approvals.','Y','Y','N','N','N','N','N','N','Supervisor',0,TO_DATE('2013-08-04 23:38:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:35 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67995 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,6314,67996,0,53712,TO_DATE('2013-08-04 23:38:35','YYYY-MM-DD HH24:MI:SS'),100,23,'ECA02','Y','Y','N','N','N','N','N','N','Process Now',0,TO_DATE('2013-08-04 23:38:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67996 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,7794,67997,0,53712,TO_DATE('2013-08-04 23:38:36','YYYY-MM-DD HH24:MI:SS'),100,'Password of your email user id',20,'ECA02','Required if the mail server requires authentification to send emails.','Y','Y','N','N','N','N','N','N','EMail User Password',0,TO_DATE('2013-08-04 23:38:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67997 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8976,67998,0,53712,TO_DATE('2013-08-04 23:38:37','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization',14,'ECA02','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Y','Y','N','N','N','N','N','N','Trx Organization',0,TO_DATE('2013-08-04 23:38:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:37 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67998 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,422,67999,0,53712,TO_DATE('2013-08-04 23:38:37','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',14,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','Y','N','Client',10,TO_DATE('2013-08-04 23:38:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67999 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,423,68000,0,53712,TO_DATE('2013-08-04 23:38:38','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',14,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_DATE('2013-08-04 23:38:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68000 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,5844,68001,0,53712,TO_DATE('2013-08-04 23:38:38','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',26,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','Y','N','Business Partner ',30,TO_DATE('2013-08-04 23:38:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68001 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,213,68002,0,53712,TO_DATE('2013-08-04 23:38:39','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',40,1,TO_DATE('2013-08-04 23:38:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68002 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:40 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,214,68003,0,53712,TO_DATE('2013-08-04 23:38:39','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',60,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',50,TO_DATE('2013-08-04 23:38:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:40 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68003 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:40 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8752,68004,0,53712,TO_DATE('2013-08-04 23:38:40','YYYY-MM-DD HH24:MI:SS'),100,'Comments or additional information',60,'ECA02','The Comments field allows for free form entry of additional information.','Y','Y','Y','N','N','N','N','N','Comments',60,TO_DATE('2013-08-04 23:38:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68004 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,622,68005,0,53712,TO_DATE('2013-08-04 23:38:41','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',70,TO_DATE('2013-08-04 23:38:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68005 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,5396,68006,0,53712,TO_DATE('2013-08-04 23:38:41','YYYY-MM-DD HH24:MI:SS'),100,'Electronic Mail Address',20,'ECA02','The Email Address is the Electronic Mail ID for this User and should be fully qualified (e.g. joe.smith@company.com). The Email Address is used to access the self service application functionality from the web.','Y','Y','Y','N','N','N','N','N','EMail Address',80,TO_DATE('2013-08-04 23:38:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68006 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,417,68007,0,53712,TO_DATE('2013-08-04 23:38:42','YYYY-MM-DD HH24:MI:SS'),100,'Password of any length (case sensitive)',20,'ECA02','The Password for this User.  Passwords are required to identify authorized users.  For Adempiere Users, you can change the password via the Process "Reset Password".','Y','Y','Y','Y','N','N','N','Y','Password',90,TO_DATE('2013-08-04 23:38:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68007 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8743,68008,0,53712,TO_DATE('2013-08-04 23:38:42','YYYY-MM-DD HH24:MI:SS'),100,'Greeting to print on correspondence',14,'ECA02','The Greeting identifies the greeting to print on correspondence.','Y','Y','Y','N','N','N','N','N','Greeting',100,TO_DATE('2013-08-04 23:38:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68008 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8746,68009,0,53712,TO_DATE('2013-08-04 23:38:43','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the (ship to) address for this Business Partner',14,'ECA02','The Partner address indicates the location of a Business Partner','Y','Y','Y','N','N','N','N','Y','Partner Location',110,TO_DATE('2013-08-04 23:38:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68009 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:44 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8751,68010,0,53712,TO_DATE('2013-08-04 23:38:43','YYYY-MM-DD HH24:MI:SS'),100,'Name this entity is referred to as',20,'ECA02','The Title indicates the name that an entity is referred to as.','Y','Y','Y','N','N','N','N','N','Title',120,TO_DATE('2013-08-04 23:38:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:44 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68010 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:45 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8745,68011,0,53712,TO_DATE('2013-08-04 23:38:44','YYYY-MM-DD HH24:MI:SS'),100,'Birthday or Anniversary day',14,'ECA02','Birthday or Anniversary day','Y','Y','Y','N','N','N','N','Y','Birthday',130,TO_DATE('2013-08-04 23:38:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:45 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68011 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:45 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8747,68012,0,53712,TO_DATE('2013-08-04 23:38:45','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a telephone number',20,'ECA02','The Phone field identifies a telephone number','Y','Y','Y','N','N','N','N','N','Phone',140,TO_DATE('2013-08-04 23:38:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:45 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68012 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:46 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8744,68013,0,53712,TO_DATE('2013-08-04 23:38:45','YYYY-MM-DD HH24:MI:SS'),100,'Identifies an alternate telephone number.',20,'ECA02','The 2nd Phone field identifies an alternate telephone number.','Y','Y','Y','N','N','N','N','Y','2nd Phone',150,TO_DATE('2013-08-04 23:38:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:46 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68013 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:46 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8748,68014,0,53712,TO_DATE('2013-08-04 23:38:46','YYYY-MM-DD HH24:MI:SS'),100,'Facsimile number',20,'ECA02','The Fax identifies a facsimile number for this Business Partner or  Location','Y','Y','Y','N','N','N','N','N','Fax',160,TO_DATE('2013-08-04 23:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:46 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68014 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:47 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,13773,68015,0,53712,TO_DATE('2013-08-04 23:38:46','YYYY-MM-DD HH24:MI:SS'),100,'Type of Notifications',14,'ECA02','Emails or Notification sent out for Request Updates, etc.','Y','Y','Y','N','N','N','N','Y','Notification Type',170,TO_DATE('2013-08-04 23:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:47 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68015 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:47 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,14396,68016,0,53712,TO_DATE('2013-08-04 23:38:47','YYYY-MM-DD HH24:MI:SS'),100,'Job Position',1,'ECA02','Y','Y','Y','N','N','N','N','N','Position',180,TO_DATE('2013-08-04 23:38:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:47 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68016 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:48 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,14336,68017,0,53712,TO_DATE('2013-08-04 23:38:47','YYYY-MM-DD HH24:MI:SS'),100,'The user/contact has full access to Business Partner information and resources',1,'ECA02','If selected, the user has full access to the Business Partner (BP) information (Business Documents like Orders, Invoices - Requests) or resources (Assets, Downloads). If you deselect it, the user has no access rights unless, you explicitly grant it in tab "BP Access"','Y','Y','Y','N','N','N','N','Y','Full BP Access',190,TO_DATE('2013-08-04 23:38:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:48 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68017 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:48 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,13600,68018,0,53712,TO_DATE('2013-08-04 23:38:48','YYYY-MM-DD HH24:MI:SS'),100,'Date Email was verified',20,'ECA02','Y','Y','Y','N','N','N','Y','N','EMail Verify',200,TO_DATE('2013-08-04 23:38:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:48 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68018 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:49 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,9884,68019,0,53712,TO_DATE('2013-08-04 23:38:48','YYYY-MM-DD HH24:MI:SS'),100,'Verification information of EMail Address',20,'ECA02','The field contains additional information how the EMail Address has been verified','Y','Y','Y','N','N','N','Y','Y','Verification Info',210,TO_DATE('2013-08-04 23:38:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:49 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68019 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8750,68020,0,53712,TO_DATE('2013-08-04 23:38:49','YYYY-MM-DD HH24:MI:SS'),100,'Date this individual was last contacted',14,'ECA02','The Last Contact indicates the date that this Business Partner Contact was last contacted.','Y','Y','Y','N','N','N','Y','N','Last Contact',220,TO_DATE('2013-08-04 23:38:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68020 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:38:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,8749,68021,0,53712,TO_DATE('2013-08-04 23:38:50','YYYY-MM-DD HH24:MI:SS'),100,'Result of last contact',60,'ECA02','The Last Result identifies the result of the last contact made.','Y','Y','Y','N','N','N','Y','N','Last Result',230,TO_DATE('2013-08-04 23:38:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:38:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68021 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:39:06 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Name='Contacto',Description='Contacto del Productor',Updated=TO_DATE('2013-08-04 23:39:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53712 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:40:23 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET AD_Column_ID=5844,Updated=TO_DATE('2013-08-04 23:40:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53712
;

-- Aug 4, 2013 11:40:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET SeqNo=30,Updated=TO_DATE('2013-08-04 23:40:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53665
;

-- Aug 4, 2013 11:40:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET SeqNo=40,Updated=TO_DATE('2013-08-04 23:40:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53666
;

-- Aug 4, 2013 11:40:54 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET SeqNo=5,Updated=TO_DATE('2013-08-04 23:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53693
;

-- Aug 4, 2013 11:40:57 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET SeqNo=50,Updated=TO_DATE('2013-08-04 23:40:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53668
;

-- Aug 4, 2013 11:41:00 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET SeqNo=60,Updated=TO_DATE('2013-08-04 23:41:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53693
;

-- Aug 4, 2013 11:41:02 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET SeqNo=20,Updated=TO_DATE('2013-08-04 23:41:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53712
;

-- Aug 4, 2013 11:45:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56083,0,'EstimatedYield',TO_DATE('2013-08-04 23:45:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Estimated Yield','Estimated Yield',TO_DATE('2013-08-04 23:45:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:45:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56083 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 4, 2013 11:46:05 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Rendimiento Estimado',PrintName='Rendimiento Estimado',Description='Rendimiento Estimado',Updated=TO_DATE('2013-08-04 23:46:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56083 AND AD_Language='es_MX'
;

-- Aug 4, 2013 11:52:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66543,56083,0,29,53509,'EstimatedYield',TO_DATE('2013-08-04 23:52:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Estimated Yield',0,TO_DATE('2013-08-04 23:52:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 4, 2013 11:52:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66543 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 4, 2013 11:54:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66543,68022,0,53668,TO_DATE('2013-08-04 23:54:03','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Estimated Yield',TO_DATE('2013-08-04 23:54:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 4, 2013 11:54:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68022 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 4, 2013 11:56:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=68022
;

-- Aug 4, 2013 11:56:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=67277
;

-- Aug 4, 2013 11:56:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=67752
;

-- Aug 4, 2013 11:56:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=67283
;

-- Aug 4, 2013 11:56:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=67986
;

-- Aug 4, 2013 11:56:24 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-04 23:56:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68022
;

-- Aug 4, 2013 11:56:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-08-04 23:56:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67277
;

-- Aug 4, 2013 11:58:06 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-08-04 23:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67276
;

-- Aug 5, 2013 12:42:07 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Window_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53544,53237,'N',TO_DATE('2013-08-05 00:42:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'Producer Debt','L','FTA_ProducerDebt',TO_DATE('2013-08-05 00:42:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 12:42:07 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53544 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Aug 5, 2013 12:42:08 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53660,TO_DATE('2013-08-05 00:42:08','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_ProducerDebt',1,'Y','N','Y','Y','FTA_ProducerDebt','N',1000000,TO_DATE('2013-08-05 00:42:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 12:42:25 AM VET
-- SFAndroid Contribution
UPDATE AD_Table_Trl SET Name='Deudas del Productor',Updated=TO_DATE('2013-08-05 00:42:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53544 AND AD_Language='es_MX'
;

-- Aug 5, 2013 12:42:37 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66544,102,0,19,53544,129,'AD_Client_ID',TO_DATE('2013-08-05 00:42:37','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_DATE('2013-08-05 00:42:37','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:42:37 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66544 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:42:38 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66545,113,0,19,53544,104,'AD_Org_ID',TO_DATE('2013-08-05 00:42:37','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_DATE('2013-08-05 00:42:37','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:42:38 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66545 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:42:38 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66546,245,0,16,53544,'Created',TO_DATE('2013-08-05 00:42:38','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_DATE('2013-08-05 00:42:38','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:42:38 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66546 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:42:39 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66547,246,0,18,110,53544,105,'CreatedBy',TO_DATE('2013-08-05 00:42:38','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_DATE('2013-08-05 00:42:38','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:42:39 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66547 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:42:40 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66548,275,0,10,53544,'Description',TO_DATE('2013-08-05 00:42:39','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_DATE('2013-08-05 00:42:39','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:42:40 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66548 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:42:40 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66549,348,0,20,53544,'IsActive',TO_DATE('2013-08-05 00:42:40','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_DATE('2013-08-05 00:42:40','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:42:40 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66549 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:42:41 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56084,0,'FTA_ProducerDebt_ID',TO_DATE('2013-08-05 00:42:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Producer Debt','Producer Debt',TO_DATE('2013-08-05 00:42:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 12:42:41 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56084 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 5, 2013 12:42:41 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66550,56084,0,13,53544,'FTA_ProducerDebt_ID',TO_DATE('2013-08-05 00:42:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',22,'Y','N','N','N','Y','Y','N','N','N','N','N','Producer Debt',0,TO_DATE('2013-08-05 00:42:40','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:42:41 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66550 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:42:42 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66551,469,0,10,53544,'Name',TO_DATE('2013-08-05 00:42:41','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','Y','N','N','N','N','Y','Name',1,TO_DATE('2013-08-05 00:42:41','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:42:42 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66551 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:42:42 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66552,607,0,16,53544,'Updated',TO_DATE('2013-08-05 00:42:42','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_DATE('2013-08-05 00:42:42','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:42:42 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66552 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:42:43 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66553,608,0,18,110,53544,105,'UpdatedBy',TO_DATE('2013-08-05 00:42:42','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_DATE('2013-08-05 00:42:42','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:42:43 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66553 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:43:14 AM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66551
;

-- Aug 5, 2013 12:43:14 AM VET
-- SFAndroid Contribution
DELETE FROM AD_Column WHERE AD_Column_ID=66551
;

-- Aug 5, 2013 12:43:21 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2013-08-05 00:43:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66548
;

-- Aug 5, 2013 12:43:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2013-08-05 00:43:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66548
;

-- Aug 5, 2013 12:44:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66554,187,0,30,53544,230,'C_BPartner_ID',TO_DATE('2013-08-05 00:44:31','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_DATE('2013-08-05 00:44:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:44:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66554 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:45:20 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66555,524,0,28,53544,'Processing',TO_DATE('2013-08-05 00:45:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Now',0,TO_DATE('2013-08-05 00:45:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:45:20 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66555 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:45:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66556,1047,0,20,53544,'Processed',TO_DATE('2013-08-05 00:45:53','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02',1,'The Processed checkbox indicates that a document has been processed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Processed',0,TO_DATE('2013-08-05 00:45:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:45:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66556 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:46:21 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66557,2723,0,20,53544,'IsClosed',TO_DATE('2013-08-05 00:46:21','YYYY-MM-DD HH24:MI:SS'),100,'The status is closed','ECA02',1,'This allows to have multiple closed status','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Closed Status',0,TO_DATE('2013-08-05 00:46:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:46:21 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66557 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:48:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53427,'N',TO_DATE('2013-08-05 00:48:35','YYYY-MM-DD HH24:MI:SS'),100,'Close Debt','ECA02','Y','N','N','N','N','Close','Y',0,0,TO_DATE('2013-08-05 00:48:35','YYYY-MM-DD HH24:MI:SS'),100,'FTA_ProducerDebt Close')
;

-- Aug 5, 2013 12:48:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53427 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 5, 2013 12:49:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Cerrar',Description='Cerrar Deuda',Help='Cierra Toda la deuda y no permite generar mas Lineas',Updated=TO_DATE('2013-08-05 00:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53427 AND AD_Language='es_MX'
;

-- Aug 5, 2013 12:49:13 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Process_ID=53427,Updated=TO_DATE('2013-08-05 00:49:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66555
;

-- Aug 5, 2013 12:50:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66558,265,0,15,53544,'DateDoc',TO_DATE('2013-08-05 00:50:23','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Document Date',0,TO_DATE('2013-08-05 00:50:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:50:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66558 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:51:12 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Window_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53545,53237,'N',TO_DATE('2013-08-05 00:51:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'Producer Debt Line','L','FTA_ProducerDebtLine',TO_DATE('2013-08-05 00:51:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 12:51:12 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53545 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Aug 5, 2013 12:51:13 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53661,TO_DATE('2013-08-05 00:51:12','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table FTA_ProducerDebtLine',1,'Y','N','Y','Y','FTA_ProducerDebtLine','N',1000000,TO_DATE('2013-08-05 00:51:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 12:51:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66559,102,0,19,53545,129,'AD_Client_ID',TO_DATE('2013-08-05 00:51:32','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_DATE('2013-08-05 00:51:32','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:51:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66559 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:51:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66560,113,0,19,53545,104,'AD_Org_ID',TO_DATE('2013-08-05 00:51:33','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_DATE('2013-08-05 00:51:33','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:51:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66560 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:51:34 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66561,245,0,16,53545,'Created',TO_DATE('2013-08-05 00:51:33','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_DATE('2013-08-05 00:51:33','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:51:34 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66561 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:51:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66562,246,0,18,110,53545,105,'CreatedBy',TO_DATE('2013-08-05 00:51:34','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_DATE('2013-08-05 00:51:34','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:51:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66562 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:51:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66563,275,0,10,53545,'Description',TO_DATE('2013-08-05 00:51:35','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_DATE('2013-08-05 00:51:35','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:51:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66563 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:51:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66564,348,0,20,53545,'IsActive',TO_DATE('2013-08-05 00:51:35','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_DATE('2013-08-05 00:51:35','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:51:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66564 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:51:37 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56085,0,'FTA_ProducerDebtLine_ID',TO_DATE('2013-08-05 00:51:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Producer Debt Line','Producer Debt Line',TO_DATE('2013-08-05 00:51:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 12:51:37 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56085 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 5, 2013 12:51:37 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66565,56085,0,13,53545,'FTA_ProducerDebtLine_ID',TO_DATE('2013-08-05 00:51:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',22,'Y','N','N','N','Y','Y','N','N','N','N','N','Producer Debt Line',0,TO_DATE('2013-08-05 00:51:36','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:51:37 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66565 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:51:39 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66566,469,0,10,53545,'Name',TO_DATE('2013-08-05 00:51:37','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','Y','N','N','N','N','Y','Name',1,TO_DATE('2013-08-05 00:51:37','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:51:39 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66566 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:51:40 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66567,607,0,16,53545,'Updated',TO_DATE('2013-08-05 00:51:39','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_DATE('2013-08-05 00:51:39','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:51:40 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66567 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:51:41 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66568,608,0,18,110,53545,105,'UpdatedBy',TO_DATE('2013-08-05 00:51:40','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_DATE('2013-08-05 00:51:40','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Aug 5, 2013 12:51:41 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66568 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:52:10 AM VET
-- SFAndroid Contribution
UPDATE AD_Table_Trl SET Name='Lineas de Deuda',Updated=TO_DATE('2013-08-05 00:52:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53545 AND AD_Language='es_MX'
;

-- Aug 5, 2013 12:52:21 AM VET
-- SFAndroid Contribution
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66566
;

-- Aug 5, 2013 12:52:21 AM VET
-- SFAndroid Contribution
DELETE FROM AD_Column WHERE AD_Column_ID=66566
;

-- Aug 5, 2013 12:52:46 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66569,265,0,15,53545,'DateDoc',TO_DATE('2013-08-05 00:52:45','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Document Date',0,TO_DATE('2013-08-05 00:52:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:52:46 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66569 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:53:58 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66570,1047,0,20,53545,'Processed',TO_DATE('2013-08-05 00:53:57','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02',1,'The Processed checkbox indicates that a document has been processed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Processed',0,TO_DATE('2013-08-05 00:53:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:53:58 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66570 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:54:19 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66571,524,0,28,53545,'Processing',TO_DATE('2013-08-05 00:54:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Now',0,TO_DATE('2013-08-05 00:54:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:54:19 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66571 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:55:05 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66572,56084,0,19,53545,'FTA_ProducerDebt_ID',TO_DATE('2013-08-05 00:55:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','Y','Y','N','N','N','N','Producer Debt',0,TO_DATE('2013-08-05 00:55:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:55:05 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66572 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:55:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66573,316,0,12,53545,'GrandTotal',TO_DATE('2013-08-05 00:55:34','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02',10,'The Grand Total displays the total amount including Tax and Freight in document currency','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Grand Total',0,TO_DATE('2013-08-05 00:55:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:55:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66573 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:56:01 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66574,968,0,19,53545,'C_Charge_ID',TO_DATE('2013-08-05 00:56:01','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02',10,'The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Charge',0,TO_DATE('2013-08-05 00:56:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:56:01 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66574 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:56:18 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2013-08-05 00:56:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66574
;

-- Aug 5, 2013 12:57:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56086,0,'CreditMemo',TO_DATE('2013-08-05 00:57:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Memo','Credit Memo',TO_DATE('2013-08-05 00:57:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 12:57:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56086 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 5, 2013 12:58:06 AM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Documento de Crédito',PrintName='Documento de Crédito',Description='Documento de Crédito',Updated=TO_DATE('2013-08-05 00:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56086 AND AD_Language='es_MX'
;

-- Aug 5, 2013 12:58:25 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56087,0,'DebitMemo',TO_DATE('2013-08-05 00:58:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Debit Memo','Debit Memo',TO_DATE('2013-08-05 00:58:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 12:58:25 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56087 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 5, 2013 12:58:58 AM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Documento de Débito',PrintName='Documento de Débito',Description='Documento de Débito',Updated=TO_DATE('2013-08-05 00:58:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56087 AND AD_Language='es_MX'
;

-- Aug 5, 2013 12:59:13 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66575,56086,0,18,336,53545,'CreditMemo',TO_DATE('2013-08-05 00:59:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Credit Memo',0,TO_DATE('2013-08-05 00:59:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:59:13 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66575 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 12:59:31 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66576,56087,0,18,336,53545,'DebitMemo',TO_DATE('2013-08-05 00:59:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Debit Memo',0,TO_DATE('2013-08-05 00:59:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 12:59:31 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66576 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 1:01:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsMandatory='Y', IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2013-08-05 01:01:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66554
;

-- Aug 5, 2013 1:02:49 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66577,847,0,30,192,53544,'Beneficiary',TO_DATE('2013-08-05 01:02:48','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner to whom payment is made','ECA02',10,'The Beneficiary indicates the Business Partner to whom payment will be made.  This field is only displayed if the Paid to Third Party checkbox is selected.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Beneficiary',0,TO_DATE('2013-08-05 01:02:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 5, 2013 1:02:49 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66577 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 5, 2013 1:03:26 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, IsUpdateable='N',Updated=TO_DATE('2013-08-05 01:03:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66554
;

-- Aug 5, 2013 1:04:16 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53713,53544,53237,TO_DATE('2013-08-05 01:04:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','Y','N','N','Producer Debts','N',70,0,TO_DATE('2013-08-05 01:04:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:16 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53713 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Aug 5, 2013 1:04:18 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66549,68023,0,53713,TO_DATE('2013-08-05 01:04:17','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2013-08-05 01:04:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:18 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68023 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:18 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66577,68024,0,53713,TO_DATE('2013-08-05 01:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner to whom payment is made',10,'ECA02','The Beneficiary indicates the Business Partner to whom payment will be made.  This field is only displayed if the Paid to Third Party checkbox is selected.','Y','Y','Y','N','N','N','N','N','Beneficiary',TO_DATE('2013-08-05 01:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:18 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68024 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:19 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66554,68025,0,53713,TO_DATE('2013-08-05 01:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_DATE('2013-08-05 01:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:19 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68025 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:19 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66544,68026,0,53713,TO_DATE('2013-08-05 01:04:19','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2013-08-05 01:04:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:19 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68026 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:20 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66557,68027,0,53713,TO_DATE('2013-08-05 01:04:19','YYYY-MM-DD HH24:MI:SS'),100,'The status is closed',1,'ECA02','This allows to have multiple closed status','Y','Y','Y','N','N','N','N','N','Closed Status',TO_DATE('2013-08-05 01:04:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:20 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68027 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:20 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66548,68028,0,53713,TO_DATE('2013-08-05 01:04:20','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2013-08-05 01:04:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:20 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68028 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:21 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66558,68029,0,53713,TO_DATE('2013-08-05 01:04:20','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',TO_DATE('2013-08-05 01:04:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:21 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68029 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66545,68030,0,53713,TO_DATE('2013-08-05 01:04:21','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2013-08-05 01:04:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68030 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66556,68031,0,53713,TO_DATE('2013-08-05 01:04:22','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA02','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_DATE('2013-08-05 01:04:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68031 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:23 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66555,68032,0,53713,TO_DATE('2013-08-05 01:04:22','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Process Now',TO_DATE('2013-08-05 01:04:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:23 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68032 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:23 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66550,68033,0,53713,TO_DATE('2013-08-05 01:04:23','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Producer Debt',TO_DATE('2013-08-05 01:04:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:04:23 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68033 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:04:43 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET SeqNo=22, TabLevel=1,Updated=TO_DATE('2013-08-05 01:04:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53713
;

-- Aug 5, 2013 1:04:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Name='Deudas del Productor',Updated=TO_DATE('2013-08-05 01:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53713 AND AD_Language='es_MX'
;

-- Aug 5, 2013 1:05:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53714,53545,53237,TO_DATE('2013-08-05 01:05:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','N','N','N','Producer Debts Line','N',22,1,TO_DATE('2013-08-05 01:05:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:05:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53714 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Aug 5, 2013 1:05:41 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Name='Detalle de Deuda',Updated=TO_DATE('2013-08-05 01:05:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53714 AND AD_Language='es_MX'
;

-- Aug 5, 2013 1:05:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET SeqNo=25, TabLevel=2,Updated=TO_DATE('2013-08-05 01:05:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53714
;

-- Aug 5, 2013 1:05:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66564,68034,0,53714,TO_DATE('2013-08-05 01:05:55','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2013-08-05 01:05:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:05:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68034 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:05:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66574,68035,0,53714,TO_DATE('2013-08-05 01:05:56','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges',10,'ECA02','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','Y','Y','N','N','N','N','N','Charge',TO_DATE('2013-08-05 01:05:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:05:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68035 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:05:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66559,68036,0,53714,TO_DATE('2013-08-05 01:05:56','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2013-08-05 01:05:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:05:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68036 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:05:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66575,68037,0,53714,TO_DATE('2013-08-05 01:05:57','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Credit Memo',TO_DATE('2013-08-05 01:05:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:05:57 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68037 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:05:58 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66576,68038,0,53714,TO_DATE('2013-08-05 01:05:57','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Debit Memo',TO_DATE('2013-08-05 01:05:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:05:58 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68038 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:05:58 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66563,68039,0,53714,TO_DATE('2013-08-05 01:05:58','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2013-08-05 01:05:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:05:58 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68039 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:05:59 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66569,68040,0,53714,TO_DATE('2013-08-05 01:05:58','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',TO_DATE('2013-08-05 01:05:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:05:59 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68040 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:06:00 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66573,68041,0,53714,TO_DATE('2013-08-05 01:05:59','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document',10,'ECA02','The Grand Total displays the total amount including Tax and Freight in document currency','Y','Y','Y','N','N','N','N','N','Grand Total',TO_DATE('2013-08-05 01:05:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:06:00 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68041 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:06:00 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66560,68042,0,53714,TO_DATE('2013-08-05 01:06:00','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2013-08-05 01:06:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:06:00 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68042 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:06:01 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66570,68043,0,53714,TO_DATE('2013-08-05 01:06:00','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA02','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_DATE('2013-08-05 01:06:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:06:01 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68043 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:06:01 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66571,68044,0,53714,TO_DATE('2013-08-05 01:06:01','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Process Now',TO_DATE('2013-08-05 01:06:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:06:01 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68044 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:06:02 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66572,68045,0,53714,TO_DATE('2013-08-05 01:06:01','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Producer Debt',TO_DATE('2013-08-05 01:06:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:06:02 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68045 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:06:02 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66565,68046,0,53714,TO_DATE('2013-08-05 01:06:02','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Producer Debt Line',TO_DATE('2013-08-05 01:06:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:06:02 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68046 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:07:18 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53428,'N',TO_DATE('2013-08-05 01:07:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Document Generate','Y',0,0,TO_DATE('2013-08-05 01:07:17','YYYY-MM-DD HH24:MI:SS'),100,'FTA_ProducerDebtLine DocGenerate')
;

-- Aug 5, 2013 1:07:18 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53428 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 5, 2013 1:07:48 AM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Generar Documentos',Description='Genera los Documentos para Cancelar la Deuda',Updated=TO_DATE('2013-08-05 01:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53428 AND AD_Language='es_MX'
;

-- Aug 5, 2013 1:08:53 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,287,0,53428,53940,17,135,'DocAction',TO_DATE('2013-08-05 01:08:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Document Action',10,TO_DATE('2013-08-05 01:08:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:08:53 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53940 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 5, 2013 1:09:51 AM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Classname='org.sfandroid.process.ProducerDebtLineDocGenerate',Updated=TO_DATE('2013-08-05 01:09:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53428
;

-- Aug 5, 2013 1:10:13 AM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Classname='org.sfandroid.process.ProducerDebtClose',Updated=TO_DATE('2013-08-05 01:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53427
;

-- Aug 5, 2013 1:10:46 AM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Description='Document Generate',Updated=TO_DATE('2013-08-05 01:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53428
;

-- Aug 5, 2013 1:10:46 AM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53428
;

-- Aug 5, 2013 1:11:32 AM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Classname='org.sfandroid.process.FarmingGuideGenerate',Updated=TO_DATE('2013-08-05 01:11:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53426
;

-- Aug 5, 2013 1:11:42 AM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Classname='org.sfandroid.process.FarmingEstimateQty',Updated=TO_DATE('2013-08-05 01:11:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53425
;

-- Aug 5, 2013 1:11:58 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Process_ID=53428,Updated=TO_DATE('2013-08-05 01:11:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66571
;

-- Aug 5, 2013 1:12:32 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Description='Deudas que tiene el Productor con Otros',Updated=TO_DATE('2013-08-05 01:12:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53713 AND AD_Language='es_MX'
;

-- Aug 5, 2013 1:12:58 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Description='Detalle de Cada Deuda y Documentos Generados',Updated=TO_DATE('2013-08-05 01:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53714 AND AD_Language='es_MX'
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=68036
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=68042
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=68045
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68034
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68040
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68035
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68041
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68039
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68038
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68037
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68044
;

-- Aug 5, 2013 1:13:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68043
;

-- Aug 5, 2013 1:14:10 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:14:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68042
;

-- Aug 5, 2013 1:14:16 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:14:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68034
;

-- Aug 5, 2013 1:14:22 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:14:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68035
;

-- Aug 5, 2013 1:15:22 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:15:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68037
;

-- Aug 5, 2013 1:15:27 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:15:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68043
;

-- Aug 5, 2013 1:15:38 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2013-08-05 01:15:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68038
;

-- Aug 5, 2013 1:15:56 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_DATE('2013-08-05 01:15:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68044
;

-- Aug 5, 2013 1:17:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=68026
;

-- Aug 5, 2013 1:17:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=68030
;

-- Aug 5, 2013 1:17:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=68025
;

-- Aug 5, 2013 1:17:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68023
;

-- Aug 5, 2013 1:17:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68024
;

-- Aug 5, 2013 1:17:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68029
;

-- Aug 5, 2013 1:17:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68028
;

-- Aug 5, 2013 1:17:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68032
;

-- Aug 5, 2013 1:17:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68031
;

-- Aug 5, 2013 1:17:35 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68027
;

-- Aug 5, 2013 1:17:40 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:17:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68030
;

-- Aug 5, 2013 1:17:45 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:17:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68023
;

-- Aug 5, 2013 1:17:50 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:17:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68029
;

-- Aug 5, 2013 1:18:02 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-08-05 01:18:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68029
;

-- Aug 5, 2013 1:18:06 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:18:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68024
;

-- Aug 5, 2013 1:18:17 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:18:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68027
;

-- Aug 5, 2013 1:18:32 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_DATE('2013-08-05 01:18:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68032
;

-- Aug 5, 2013 1:18:39 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68029
;

-- Aug 5, 2013 1:18:40 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68024
;

-- Aug 5, 2013 1:20:32 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2013-08-05 01:20:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66563
;

-- Aug 5, 2013 1:21:18 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68040
;

-- Aug 5, 2013 1:21:18 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68035
;

-- Aug 5, 2013 1:21:18 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68041
;

-- Aug 5, 2013 1:21:18 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68034
;

-- Aug 5, 2013 1:21:25 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:21:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68040
;

-- Aug 5, 2013 1:21:29 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-08-05 01:21:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68035
;

-- Aug 5, 2013 1:21:33 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-05 01:21:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68041
;

-- Aug 5, 2013 1:21:37 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-08-05 01:21:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68034
;

-- Aug 5, 2013 1:22:31 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET AD_Column_ID=66554,Updated=TO_DATE('2013-08-05 01:22:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53713
;

-- Aug 5, 2013 1:25:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-08-05 01:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68038
;

-- Aug 5, 2013 1:25:56 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-08-05 01:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68037
;

-- Aug 5, 2013 1:27:11 AM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para SET DefaultValue='CO',Updated=TO_DATE('2013-08-05 01:27:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53940
;

