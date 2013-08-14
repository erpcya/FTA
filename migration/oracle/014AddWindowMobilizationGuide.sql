-- Jun 28, 2013 4:52:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53240,TO_DATE('2013-06-28 16:52:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','Mobilization Guide','N',TO_DATE('2013-06-28 16:52:38','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Jun 28, 2013 4:52:42 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53240 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Jun 28, 2013 4:53:09 PM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Name='Guia de Movilizacion',Updated=TO_DATE('2013-06-28 16:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53240 AND AD_Language='es_MX'
;

-- Jun 28, 2013 4:53:29 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53673,53510,53240,TO_DATE('2013-06-28 16:53:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','Y','N','N','Mobilization Guide','N',10,0,TO_DATE('2013-06-28 16:53:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:29 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53673 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Jun 28, 2013 4:53:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Name='Guia de Movilizacion',Updated=TO_DATE('2013-06-28 16:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53673 AND AD_Language='es_MX'
;

-- Jun 28, 2013 4:53:49 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65880,67332,0,53673,TO_DATE('2013-06-28 16:53:49','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2013-06-28 16:53:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:49 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67332 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65890,67333,0,53673,TO_DATE('2013-06-28 16:53:49','YYYY-MM-DD HH24:MI:SS'),100,'Asset used internally or by customers',10,'ECA02','An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.','Y','Y','Y','N','N','N','N','N','Asset',TO_DATE('2013-06-28 16:53:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67333 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65875,67334,0,53673,TO_DATE('2013-06-28 16:53:50','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2013-06-28 16:53:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67334 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:51 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65879,67335,0,53673,TO_DATE('2013-06-28 16:53:50','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2013-06-28 16:53:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:51 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67335 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:51 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65886,67336,0,53673,TO_DATE('2013-06-28 16:53:51','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',TO_DATE('2013-06-28 16:53:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:51 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67336 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:51 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65887,67337,0,53673,TO_DATE('2013-06-28 16:53:51','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',30,'ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Document No',TO_DATE('2013-06-28 16:53:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:51 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67337 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:52 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65888,67338,0,53673,TO_DATE('2013-06-28 16:53:52','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Farming',TO_DATE('2013-06-28 16:53:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:52 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67338 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:52 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65882,67339,0,53673,TO_DATE('2013-06-28 16:53:52','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Mobilization Guide',TO_DATE('2013-06-28 16:53:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:52 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67339 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:53 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65881,67340,0,53673,TO_DATE('2013-06-28 16:53:52','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_DATE('2013-06-28 16:53:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:53 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67340 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:53 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65876,67341,0,53673,TO_DATE('2013-06-28 16:53:53','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2013-06-28 16:53:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:53 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67341 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:54 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65891,67342,0,53673,TO_DATE('2013-06-28 16:53:53','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA02','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_DATE('2013-06-28 16:53:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:54 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67342 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:53:54 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65889,67343,0,53673,TO_DATE('2013-06-28 16:53:54','YYYY-MM-DD HH24:MI:SS'),100,'Method or manner of product delivery',10,'ECA02','The Shipper indicates the method of delivering product','Y','Y','Y','N','N','N','N','N','Shipper',TO_DATE('2013-06-28 16:53:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 28, 2013 4:53:54 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67343 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=67334
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=67341
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=67338
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=67343
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67333
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67337
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67336
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67340
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67335
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67332
;

-- Jun 28, 2013 4:54:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67342
;

-- Jun 28, 2013 4:54:38 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-06-28 16:54:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67341
;

-- Jun 28, 2013 4:54:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-06-28 16:54:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67343
;

-- Jun 28, 2013 4:55:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67332
;

-- Jun 28, 2013 4:55:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67337
;

-- Jun 28, 2013 4:55:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67336
;

-- Jun 28, 2013 4:55:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67340
;

-- Jun 28, 2013 4:55:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67335
;

-- Jun 28, 2013 4:55:15 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-06-28 16:55:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67332
;

-- Jun 28, 2013 4:55:19 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-06-28 16:55:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67336
;

