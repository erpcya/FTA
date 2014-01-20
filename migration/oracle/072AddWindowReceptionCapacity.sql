-- Aug 26, 2013 5:18:56 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53267,TO_DATE('2013-08-26 17:18:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','Reception Capacity','N',TO_DATE('2013-08-26 17:18:53','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Aug 26, 2013 5:18:56 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53267 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Aug 26, 2013 5:19:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Name='Capacidad de Recepción',Updated=TO_DATE('2013-08-26 17:19:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53267 AND AD_Language='es_MX'
;

-- Aug 26, 2013 5:19:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53738,53569,53267,TO_DATE('2013-08-26 17:19:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','Y','N','N','Reception Capacity','N',10,0,TO_DATE('2013-08-26 17:19:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 5:19:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53738 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Aug 26, 2013 5:19:58 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67078,68423,0,53738,TO_DATE('2013-08-26 17:19:58','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2013-08-26 17:19:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 5:19:58 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68423 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 26, 2013 5:19:59 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67073,68424,0,53738,TO_DATE('2013-08-26 17:19:58','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2013-08-26 17:19:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 5:19:59 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68424 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 26, 2013 5:20:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67084,68425,0,53738,TO_DATE('2013-08-26 17:19:59','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2013-08-26 17:19:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 5:20:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68425 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 26, 2013 5:20:01 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67074,68426,0,53738,TO_DATE('2013-08-26 17:20:00','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2013-08-26 17:20:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 5:20:01 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68426 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 26, 2013 5:20:01 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67083,68427,0,53738,TO_DATE('2013-08-26 17:20:01','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',14,'ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','Y','Y','N','N','N','N','N','Quantity',TO_DATE('2013-08-26 17:20:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 5:20:01 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68427 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 26, 2013 5:20:02 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67077,68428,0,53738,TO_DATE('2013-08-26 17:20:01','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Reception Capacity',TO_DATE('2013-08-26 17:20:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 5:20:02 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68428 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 26, 2013 5:20:03 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67082,68429,0,53738,TO_DATE('2013-08-26 17:20:02','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)',7,'ECA02','The Valid From date indicates the first day of a date range','Y','Y','Y','N','N','N','N','N','Valid from',TO_DATE('2013-08-26 17:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 5:20:03 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68429 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 26, 2013 5:20:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67081,68430,0,53738,TO_DATE('2013-08-26 17:20:03','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point',10,'ECA02','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','Y','N','N','N','N','N','Warehouse',TO_DATE('2013-08-26 17:20:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 5:20:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68430 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 26, 2013 5:20:19 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Name='Capacidad de Recepción',Updated=TO_DATE('2013-08-26 17:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53738 AND AD_Language='es_MX'
;

-- Aug 26, 2013 5:20:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=68424
;

-- Aug 26, 2013 5:20:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=68426
;

-- Aug 26, 2013 5:20:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=68430
;

-- Aug 26, 2013 5:20:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68423
;

-- Aug 26, 2013 5:20:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68425
;

-- Aug 26, 2013 5:20:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68427
;

-- Aug 26, 2013 5:20:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68429
;

-- Aug 26, 2013 5:20:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-26 17:20:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68426
;

-- Aug 26, 2013 5:20:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-26 17:20:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68430
;

-- Aug 26, 2013 5:20:58 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-08-26 17:20:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68430
;

-- Aug 26, 2013 5:21:04 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-26 17:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68423
;

-- Aug 26, 2013 5:21:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-26 17:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68429
;

-- Aug 26, 2013 5:21:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Table SET AD_Window_ID=53267,Updated=TO_DATE('2013-08-26 17:21:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53569
;

-- Aug 26, 2013 5:21:54 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53606,0,53267,TO_DATE('2013-08-26 17:21:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Reception Capacity',TO_DATE('2013-08-26 17:21:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 5:21:54 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53606 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 26, 2013 5:21:54 PM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53606, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53606)
;

-- Aug 26, 2013 5:21:59 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Capacidad de Recepción',Updated=TO_DATE('2013-08-26 17:21:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53606 AND AD_Language='es_MX'
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53600
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53569
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53606
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53604
;

-- Aug 26, 2013 5:22:10 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53606
;

-- Aug 26, 2013 5:22:12 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53606
;

-- Aug 26, 2013 5:22:12 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Aug 26, 2013 5:22:12 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53603
;

