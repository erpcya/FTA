-- Aug 5, 2013 1:43:26 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-08-05 01:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66322
;

-- Aug 5, 2013 1:44:44 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-05 01:44:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68031
;

-- Aug 5, 2013 1:44:49 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-05 01:44:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68027
;

-- Aug 5, 2013 1:45:03 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-05 01:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68043
;

-- Aug 5, 2013 1:45:29 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-05 01:45:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67960
;

-- Aug 5, 2013 1:45:57 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@#GuideSource@!0',Updated=TO_TIMESTAMP('2013-08-05 01:45:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67967
;

-- Aug 5, 2013 1:47:12 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2013-08-05 01:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67752
;

-- Aug 5, 2013 1:48:02 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53257,TO_TIMESTAMP('2013-08-05 01:48:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','Vehicle Type','N',TO_TIMESTAMP('2013-08-05 01:48:01','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Aug 5, 2013 1:48:02 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53257 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Aug 5, 2013 1:48:37 AM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Name='Tipo de Vehículo',Description='Tipo de Vehículo, Capacidad de Carga y otros....',Updated=TO_TIMESTAMP('2013-08-05 01:48:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53257 AND AD_Language='es_VE'
;

-- Aug 5, 2013 1:49:07 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53715,53543,53257,TO_TIMESTAMP('2013-08-05 01:49:06','YYYY-MM-DD HH24:MI:SS'),100,'Vehicle Type','ECA02','N','N','Y','N','N','Y','N','Y','N','N','Vehicle Type','N',10,0,TO_TIMESTAMP('2013-08-05 01:49:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:49:07 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53715 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Aug 5, 2013 1:49:17 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Name='Tipo de Vehículo',Updated=TO_TIMESTAMP('2013-08-05 01:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53715 AND AD_Language='es_VE'
;

-- Aug 5, 2013 1:49:26 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Description='Tipo de Vehículo, Capacidad de Carga y otros....',Updated=TO_TIMESTAMP('2013-08-05 01:49:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53715 AND AD_Language='es_VE'
;

-- Aug 5, 2013 1:49:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66524,68047,0,53715,TO_TIMESTAMP('2013-08-05 01:49:32','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2013-08-05 01:49:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:49:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68047 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:49:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66519,68048,0,53715,TO_TIMESTAMP('2013-08-05 01:49:32','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2013-08-05 01:49:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:49:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68048 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:49:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66523,68049,0,53715,TO_TIMESTAMP('2013-08-05 01:49:33','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_TIMESTAMP('2013-08-05 01:49:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:49:33 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68049 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:49:34 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66530,68050,0,53715,TO_TIMESTAMP('2013-08-05 01:49:33','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Load Capacity',TO_TIMESTAMP('2013-08-05 01:49:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:49:34 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68050 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:49:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66526,68051,0,53715,TO_TIMESTAMP('2013-08-05 01:49:34','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2013-08-05 01:49:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:49:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68051 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:49:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66520,68052,0,53715,TO_TIMESTAMP('2013-08-05 01:49:35','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2013-08-05 01:49:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:49:35 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68052 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:49:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66529,68053,0,53715,TO_TIMESTAMP('2013-08-05 01:49:35','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique',60,'ECA02','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Search Key',TO_TIMESTAMP('2013-08-05 01:49:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:49:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68053 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:49:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66525,68054,0,53715,TO_TIMESTAMP('2013-08-05 01:49:36','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Vehicle Type',TO_TIMESTAMP('2013-08-05 01:49:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:49:36 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68054 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 5, 2013 1:50:24 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=68048
;

-- Aug 5, 2013 1:50:24 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=68052
;

-- Aug 5, 2013 1:50:24 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=68053
;

-- Aug 5, 2013 1:50:24 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68047
;

-- Aug 5, 2013 1:50:24 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68051
;

-- Aug 5, 2013 1:50:24 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68050
;

-- Aug 5, 2013 1:50:24 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68049
;

-- Aug 5, 2013 1:50:31 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-05 01:50:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68052
;

-- Aug 5, 2013 1:50:38 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-08-05 01:50:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68053
;

-- Aug 5, 2013 1:50:43 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-05 01:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68047
;

-- Aug 5, 2013 1:50:49 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-08-05 01:50:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68051
;

-- Aug 5, 2013 1:50:53 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-05 01:50:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68050
;

-- Aug 5, 2013 1:51:09 AM VET
-- SFAndroid Contribution
UPDATE AD_Table SET AD_Window_ID=53257,Updated=TO_TIMESTAMP('2013-08-05 01:51:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53543
;

-- Aug 5, 2013 1:52:11 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53580,0,53257,TO_TIMESTAMP('2013-08-05 01:52:11','YYYY-MM-DD HH24:MI:SS'),100,'Vehicle Type','ECA02','Y','Y','N','N','N','Vehicle Type',TO_TIMESTAMP('2013-08-05 01:52:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2013 1:52:11 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53580 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 5, 2013 1:52:11 AM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53580, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53580)
;

-- Aug 5, 2013 1:52:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53580
;

-- Aug 5, 2013 1:52:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53565
;

-- Aug 5, 2013 1:52:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53561
;

-- Aug 5, 2013 1:52:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53570
;

-- Aug 5, 2013 1:52:16 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53571
;

-- Aug 5, 2013 1:52:20 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53580
;

-- Aug 5, 2013 1:52:20 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53561
;

-- Aug 5, 2013 1:52:20 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53565
;

-- Aug 5, 2013 1:52:20 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53561
;

-- Aug 5, 2013 1:52:20 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53570
;

-- Aug 5, 2013 1:52:20 AM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53571
;

-- Aug 5, 2013 1:53:50 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=67206
;

-- Aug 5, 2013 1:53:50 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67203
;

-- Aug 5, 2013 1:53:50 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67199
;

-- Aug 5, 2013 1:53:50 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67198
;

-- Aug 5, 2013 1:54:05 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLength=10, IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-05 01:54:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67206
;

-- Aug 5, 2013 1:56:48 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@FinancingType@=''S''',Updated=TO_TIMESTAMP('2013-08-05 01:56:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67283
;

-- Aug 5, 2013 1:57:34 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@#GuideSource@=0',Updated=TO_TIMESTAMP('2013-08-05 01:57:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67967
;

-- Aug 5, 2013 1:58:28 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2013-08-05 01:58:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67967
;

-- Aug 5, 2013 1:59:50 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-05 01:59:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67763
;

-- Aug 5, 2013 2:00:13 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2013-08-05 02:00:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66523
;

