-- Sep 5, 2013 2:50:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53268,TO_TIMESTAMP('2013-09-05 14:50:44','YYYY-MM-DD HH24:MI:SS'),100,'Chute Quality Analysis','ECA02','Y','N','N','Y','Chute Quality Analysis','N',TO_TIMESTAMP('2013-09-05 14:50:44','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Sep 5, 2013 2:50:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53268 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Sep 5, 2013 2:51:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Window_Trl SET Name='Análisis de Calidad (Tolva)',Description='Análisis de Calidad (Tolva)',Updated=TO_TIMESTAMP('2013-09-05 14:51:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53268 AND AD_Language='es_VE'
;

-- Sep 5, 2013 2:53:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy,WhereClause) VALUES (0,0,53742,53560,53268,TO_TIMESTAMP('2013-09-05 14:53:02','YYYY-MM-DD HH24:MI:SS'),100,'Chute Quality Analysis','ECA02','N','N','Y','N','N','Y','N','Y','N','N','Chute Quality Analysis','N',10,0,TO_TIMESTAMP('2013-09-05 14:53:02','YYYY-MM-DD HH24:MI:SS'),100,'AnalysisType=''CA''')
;

-- Sep 5, 2013 2:53:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53742 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Sep 5, 2013 2:53:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Análisis de Calidad (Tolva)',Description='Análisis de Calidad (Tolva)',Updated=TO_TIMESTAMP('2013-09-05 14:53:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53742 AND AD_Language='es_VE'
;

-- Sep 5, 2013 2:53:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66885,68729,0,53742,TO_TIMESTAMP('2013-09-05 14:53:32','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',10,TO_TIMESTAMP('2013-09-05 14:53:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68729 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66886,68730,0,53742,TO_TIMESTAMP('2013-09-05 14:53:32','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_TIMESTAMP('2013-09-05 14:53:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68730 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66893,68731,0,53742,TO_TIMESTAMP('2013-09-05 14:53:33','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',10,'ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','Y','N','Document No',30,TO_TIMESTAMP('2013-09-05 14:53:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68731 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66934,68732,0,53742,TO_TIMESTAMP('2013-09-05 14:53:33','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',10,'ECA02','The Document Type determines document sequence and processing rules','Y','Y','Y','N','N','N','N','Y','Document Type',40,TO_TIMESTAMP('2013-09-05 14:53:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68732 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66889,68733,0,53742,TO_TIMESTAMP('2013-09-05 14:53:40','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',50,TO_TIMESTAMP('2013-09-05 14:53:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68733 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,67220,68734,0,53742,TO_TIMESTAMP('2013-09-05 14:53:40','YYYY-MM-DD HH24:MI:SS'),100,2,'ECA02','Y','Y','Y','N','N','N','Y','Y','Analysis Type',60,TO_TIMESTAMP('2013-09-05 14:53:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68734 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66901,68735,0,53742,TO_TIMESTAMP('2013-09-05 14:53:41','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Entry Ticket',70,TO_TIMESTAMP('2013-09-05 14:53:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68735 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsMandatory,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66905,68736,0,53742,TO_TIMESTAMP('2013-09-05 14:53:44','YYYY-MM-DD HH24:MI:SS'),100,10,'@AnalysisType@!''QA'' & @FTA_EntryTicket_ID@!0','ECA02','Y','Y','Y','N','N','N','Y','N','Y','Original Quality Analysis',80,TO_TIMESTAMP('2013-09-05 14:53:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68736 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66902,68737,0,53742,TO_TIMESTAMP('2013-09-05 14:53:45','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',10,'ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','Y','N','Product',90,TO_TIMESTAMP('2013-09-05 14:53:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68737 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66903,68738,0,53742,TO_TIMESTAMP('2013-09-05 14:53:46','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','Y','Quality Analysis',100,TO_TIMESTAMP('2013-09-05 14:53:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68738 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66890,68739,0,53742,TO_TIMESTAMP('2013-09-05 14:53:47','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',110,TO_TIMESTAMP('2013-09-05 14:53:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68739 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66904,68740,0,53742,TO_TIMESTAMP('2013-09-05 14:53:48','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','Y','Y','Product Status',120,TO_TIMESTAMP('2013-09-05 14:53:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68740 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66895,68741,0,53742,TO_TIMESTAMP('2013-09-05 14:53:49','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','Y','Active',130,TO_TIMESTAMP('2013-09-05 14:53:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68741 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66892,101,68742,0,53742,TO_TIMESTAMP('2013-09-05 14:53:51','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',2,'ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','Y','N','N','N','Y','N','Document Status',140,TO_TIMESTAMP('2013-09-05 14:53:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68742 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66891,68743,0,53742,TO_TIMESTAMP('2013-09-05 14:53:52','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document',2,'ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','Y','Y','N','N','N','N','Y','Document Action',150,TO_TIMESTAMP('2013-09-05 14:53:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68743 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66898,68744,0,53742,TO_TIMESTAMP('2013-09-05 14:53:53','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA02','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','Y','N','Processed',160,TO_TIMESTAMP('2013-09-05 14:53:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68744 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66942,68745,0,53742,TO_TIMESTAMP('2013-09-05 14:53:54','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval',1,'ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','Y','N','N','N','Y','Y','Approved',170,TO_TIMESTAMP('2013-09-05 14:53:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68745 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:53:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66894,68746,0,53742,TO_TIMESTAMP('2013-09-05 14:53:55','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Quality Analysis',TO_TIMESTAMP('2013-09-05 14:53:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:53:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68746 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 2:55:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='CA',Updated=TO_TIMESTAMP('2013-09-05 14:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68734
;

-- Sep 5, 2013 2:58:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52200,'C_DocType.DocBaseType = ''FQA''',TO_TIMESTAMP('2013-09-05 14:58:17','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Quality Analysis','ECA02','Y','C_DocType just FQA Quality Analysis','S',TO_TIMESTAMP('2013-09-05 14:58:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:58:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52201,'C_DocType.DocBaseType = ''FQA''',TO_TIMESTAMP('2013-09-05 14:58:49','YYYY-MM-DD HH24:MI:SS'),100,'Document Type Quality Analysis','U','Y','C_DocType just FCA Quality Analysis','S',TO_TIMESTAMP('2013-09-05 14:58:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 2:59:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Reference_ID=19, AD_Val_Rule_ID=52201,Updated=TO_TIMESTAMP('2013-09-05 14:59:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68732
;

-- Sep 5, 2013 2:59:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Table SET PO_Window_ID=53268,Updated=TO_TIMESTAMP('2013-09-05 14:59:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53560
;

-- Sep 5, 2013 3:01:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET WhereClause='AnalysisType = ''QA''',Updated=TO_TIMESTAMP('2013-09-05 15:01:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53730
;

-- Sep 5, 2013 3:01:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DefaultValue='QA',Updated=TO_TIMESTAMP('2013-09-05 15:01:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68728
;

-- Sep 5, 2013 3:02:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Reference_ID=19, AD_Val_Rule_ID=52200,Updated=TO_TIMESTAMP('2013-09-05 15:02:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68338
;

-- Sep 5, 2013 3:03:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53609,0,53268,TO_TIMESTAMP('2013-09-05 15:03:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Chute Quality Analysis',TO_TIMESTAMP('2013-09-05 15:03:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 3:03:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53609 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Sep 5, 2013 3:03:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53609, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53609)
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53600
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53569
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53609
;

-- Sep 5, 2013 3:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53598
;

-- Sep 5, 2013 3:03:39 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53609
;

-- Sep 5, 2013 3:03:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53598
;

-- Sep 5, 2013 3:03:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53601, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53609
;

-- Sep 5, 2013 3:08:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52202,'FTA_EntryTicket.DocStatus = ''CO''
AND EXISTS(SELECT 1 FROM FTA_QualityAnalysis q 
LEFT JOIN FTA_QualityAnalysis ca ON(ca.Orig_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID) 
WHERE q.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID 
AND q.DocStatus NOT IN(''VO'', ''RE'') 
(AND ca.DocStatus NOT IN(''VO'', ''RE'') OR ca.DocStatus IS NULL))',TO_TIMESTAMP('2013-09-05 15:08:27','YYYY-MM-DD HH24:MI:SS'),100,'FTA_EntryTicket only completed and not yet used in Chute Analysis','ECA02','Y','FTA_EntryTicket only completed and not yet used in CA','S',TO_TIMESTAMP('2013-09-05 15:08:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 3:09:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='FTA_EntryTicket only completed for Chute Analysis',Updated=TO_TIMESTAMP('2013-09-05 15:09:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52202
;

-- Sep 5, 2013 3:09:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Reference_ID=30, AD_Reference_Value_ID=53537, AD_Val_Rule_ID=52202,Updated=TO_TIMESTAMP('2013-09-05 15:09:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68735
;

-- Sep 5, 2013 3:13:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO''
AND EXISTS(SELECT 1 FROM FTA_QualityAnalysis q 
LEFT JOIN FTA_QualityAnalysis ca ON(ca.Orig_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID) 
WHERE q.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID 
AND q.DocStatus NOT IN(''VO'', ''RE'') 
AND (ca.DocStatus NOT IN(''VO'', ''RE'') OR ca.DocStatus IS NULL))',Updated=TO_TIMESTAMP('2013-09-05 15:13:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52202
;

-- Sep 5, 2013 3:15:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType = ''FCA''', Description='Document Type Chute Quality Analysis', Name='C_DocType just FCA Chute Quality Analysis',Updated=TO_TIMESTAMP('2013-09-05 15:15:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52201
;

-- Sep 5, 2013 3:16:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DefaultValue='CA', DisplayLogic=NULL,Updated=TO_TIMESTAMP('2013-09-05 15:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68734
;

-- Sep 5, 2013 3:19:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-09-05 15:19:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66905
;

-- Sep 5, 2013 3:40:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO''
AND EXISTS(SELECT 1 FROM FTA_QualityAnalysis q 
INNER JOIN FTA_RecordWeight rw ON(rw.FTA_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
LEFT JOIN FTA_QualityAnalysis ca ON(ca.Orig_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
WHERE (ca.DocStatus IN(''VO'', ''RE'') OR ca.DocStatus IS NULL)
AND rw.DocStatus = ''IP''
AND q.Orig_QualityAnalysis_ID IS NULL)',Updated=TO_TIMESTAMP('2013-09-05 15:40:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52202
;

