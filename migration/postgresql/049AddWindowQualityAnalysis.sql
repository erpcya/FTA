-- Aug 23, 2013 11:27:06 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53263,TO_TIMESTAMP('2013-08-23 11:26:59','YYYY-MM-DD HH24:MI:SS'),100,'Quality Analysis','ECA02','Y','N','N','Y','Quality Analysis','N',TO_TIMESTAMP('2013-08-23 11:26:59','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Aug 23, 2013 11:27:06 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53263 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Aug 23, 2013 11:27:34 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53730,53560,53263,TO_TIMESTAMP('2013-08-23 11:27:34','YYYY-MM-DD HH24:MI:SS'),100,'Quality Analysis','ECA02','N','N','Y','N','N','Y','N','Y','N','N','Quality Analysis','N',10,0,TO_TIMESTAMP('2013-08-23 11:27:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:27:34 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53730 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Aug 23, 2013 11:28:06 AM VET
-- SFAndroid Contribution
UPDATE AD_Table_Trl SET Name='Análisis de Calidad',Updated=TO_TIMESTAMP('2013-08-23 11:28:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53560 AND AD_Language='es_MX'
;

-- Aug 23, 2013 11:28:23 AM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Name='Análisis de Calidad',Description='Análisis de Calidad',Updated=TO_TIMESTAMP('2013-08-23 11:28:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53263 AND AD_Language='es_MX'
;

-- Aug 23, 2013 11:28:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Name='Análisis de Calidad',Description='Análisis de Calidad',Updated=TO_TIMESTAMP('2013-08-23 11:28:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53730 AND AD_Language='es_MX'
;

-- Aug 23, 2013 11:29:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66895,68297,0,53730,TO_TIMESTAMP('2013-08-23 11:28:53','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2013-08-23 11:28:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:22 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68297 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:23 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66905,68298,0,53730,TO_TIMESTAMP('2013-08-23 11:29:22','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Chute Quality Analysis ID',TO_TIMESTAMP('2013-08-23 11:29:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:23 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68298 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:25 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66885,68299,0,53730,TO_TIMESTAMP('2013-08-23 11:29:23','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2013-08-23 11:29:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:25 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68299 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:27 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66890,68300,0,53730,TO_TIMESTAMP('2013-08-23 11:29:25','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_TIMESTAMP('2013-08-23 11:29:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:27 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68300 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:31 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66891,68301,0,53730,TO_TIMESTAMP('2013-08-23 11:29:27','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document',2,'ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','Y','Y','N','N','N','N','N','Document Action',TO_TIMESTAMP('2013-08-23 11:29:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:31 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68301 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66889,68302,0,53730,TO_TIMESTAMP('2013-08-23 11:29:31','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',TO_TIMESTAMP('2013-08-23 11:29:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68302 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66893,68303,0,53730,TO_TIMESTAMP('2013-08-23 11:29:33','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',60,'ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Document No',TO_TIMESTAMP('2013-08-23 11:29:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68303 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66892,68304,0,53730,TO_TIMESTAMP('2013-08-23 11:29:35','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',2,'ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','Y','N','N','N','N','N','Document Status',TO_TIMESTAMP('2013-08-23 11:29:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68304 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:38 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66901,68305,0,53730,TO_TIMESTAMP('2013-08-23 11:29:36','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Entry Ticket',TO_TIMESTAMP('2013-08-23 11:29:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:38 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68305 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:40 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66897,68306,0,53730,TO_TIMESTAMP('2013-08-23 11:29:38','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2013-08-23 11:29:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:40 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68306 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:43 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66886,68307,0,53730,TO_TIMESTAMP('2013-08-23 11:29:40','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2013-08-23 11:29:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:43 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68307 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:45 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66898,68308,0,53730,TO_TIMESTAMP('2013-08-23 11:29:43','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA02','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_TIMESTAMP('2013-08-23 11:29:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:45 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68308 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:48 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66902,68309,0,53730,TO_TIMESTAMP('2013-08-23 11:29:45','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',10,'ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',TO_TIMESTAMP('2013-08-23 11:29:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:48 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68309 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:49 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66904,68310,0,53730,TO_TIMESTAMP('2013-08-23 11:29:48','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Product Status',TO_TIMESTAMP('2013-08-23 11:29:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:49 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68310 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:51 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66903,68311,0,53730,TO_TIMESTAMP('2013-08-23 11:29:49','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Quality Analysis',TO_TIMESTAMP('2013-08-23 11:29:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:51 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68311 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66894,68312,0,53730,TO_TIMESTAMP('2013-08-23 11:29:51','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Quality Analysis',TO_TIMESTAMP('2013-08-23 11:29:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68312 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:29:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66896,68313,0,53730,TO_TIMESTAMP('2013-08-23 11:29:54','YYYY-MM-DD HH24:MI:SS'),100,'Element is valid',1,'ECA02','The element passed the validation check','Y','Y','Y','N','N','N','N','N','Valid',TO_TIMESTAMP('2013-08-23 11:29:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:29:56 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68313 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=68299
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=68307
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=68305
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68306
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68300
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68297
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68298
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68309
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68310
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68311
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68301
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68302
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68303
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68304
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68313
;

-- Aug 23, 2013 11:31:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68308
;

-- Aug 23, 2013 11:33:05 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53598,0,53263,TO_TIMESTAMP('2013-08-23 11:32:58','YYYY-MM-DD HH24:MI:SS'),100,'Quality Analysis','ECA02','Y','Y','N','N','N','Quality Analysis',TO_TIMESTAMP('2013-08-23 11:32:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 23, 2013 11:33:05 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53598 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 23, 2013 11:33:05 AM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53598, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53598)
;

-- Aug 23, 2013 11:33:29 AM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Análisis de Calidad',Description='Análisis de Calidad',Updated=TO_TIMESTAMP('2013-08-23 11:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53598 AND AD_Language='es_MX'
;

-- Aug 23, 2013 11:33:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53598
;

-- Aug 23, 2013 11:33:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Aug 23, 2013 11:33:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53580
;

-- Aug 23, 2013 11:33:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53565
;

-- Aug 23, 2013 11:33:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53561
;

-- Aug 23, 2013 11:33:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53592
;

-- Aug 23, 2013 11:33:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53570
;

-- Aug 23, 2013 11:33:32 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53571
;

-- Aug 23, 2013 11:34:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68303
;

-- Aug 23, 2013 11:34:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68302
;

-- Aug 23, 2013 11:34:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68306
;

-- Aug 23, 2013 11:34:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68300
;

-- Aug 23, 2013 11:34:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68297
;

-- Aug 23, 2013 11:34:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68298
;

-- Aug 23, 2013 11:34:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68311
;

-- Aug 23, 2013 11:34:52 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68301
;

-- Aug 23, 2013 11:34:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-23 11:34:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68307
;

-- Aug 23, 2013 11:35:04 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-23 11:35:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68302
;

-- Aug 23, 2013 11:35:09 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-23 11:35:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68310
;

-- Aug 23, 2013 11:35:14 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-23 11:35:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68298
;

-- Aug 23, 2013 11:35:37 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68304
;

-- Aug 23, 2013 11:35:37 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68301
;

-- Aug 23, 2013 11:35:51 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2013-08-23 11:35:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68304
;

-- Aug 23, 2013 11:36:17 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-08-23 11:36:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68303
;

-- Aug 23, 2013 11:36:47 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-23 11:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68301
;

-- Aug 23, 2013 11:36:51 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-23 11:36:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68308
;

-- Aug 23, 2013 11:37:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2013-08-23 11:37:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68304
;

-- Aug 23, 2013 11:37:41 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsFieldOnly='N', IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-23 11:37:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68304
;

