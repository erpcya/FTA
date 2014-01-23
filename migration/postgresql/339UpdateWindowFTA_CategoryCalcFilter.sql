-- Jan 14, 2014 9:21:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53886,53740,53249,TO_TIMESTAMP('2014-01-14 09:21:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','N','N','N','Category Calc Filter','N',50,0,TO_TIMESTAMP('2014-01-14 09:21:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:09 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53886 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Jan 14, 2014 9:21:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71163,72113,0,53886,TO_TIMESTAMP('2014-01-14 09:21:28','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N','Y','Y','Y','N','N','N','N','N','Client',10,TO_TIMESTAMP('2014-01-14 09:21:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72113 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:21:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71164,72114,0,53886,TO_TIMESTAMP('2014-01-14 09:21:30','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_TIMESTAMP('2014-01-14 09:21:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72114 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:21:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71174,72115,0,53886,TO_TIMESTAMP('2014-01-14 09:21:31','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique',60,'ECA02','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','N','Y','Y','Y','N','N','N','N','N','Search Key',30,TO_TIMESTAMP('2014-01-14 09:21:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72115 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:21:35 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71176,72116,0,53886,TO_TIMESTAMP('2014-01-14 09:21:33','YYYY-MM-DD HH24:MI:SS'),100,'Numeric Value',22,'ECA02','N','Y','Y','Y','N','N','N','N','N','Value',40,TO_TIMESTAMP('2014-01-14 09:21:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:35 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72116 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:21:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71177,72117,0,53886,TO_TIMESTAMP('2014-01-14 09:21:35','YYYY-MM-DD HH24:MI:SS'),100,'Numeric Value',22,'ECA02','N','Y','Y','Y','N','N','N','N','N','Value',50,TO_TIMESTAMP('2014-01-14 09:21:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72117 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71175,72118,0,53886,TO_TIMESTAMP('2014-01-14 09:21:36','YYYY-MM-DD HH24:MI:SS'),100,'Value To',60,'ECA02','N','Y','Y','Y','N','N','N','N','N','Value To',60,TO_TIMESTAMP('2014-01-14 09:21:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72118 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:21:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71165,72119,0,53886,TO_TIMESTAMP('2014-01-14 09:21:37','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N','Y','Y','Y','N','N','N','N','N','Active',70,TO_TIMESTAMP('2014-01-14 09:21:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72119 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:21:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71171,72120,0,53886,TO_TIMESTAMP('2014-01-14 09:21:44','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute',22,'ECA02','Product Attribute like Color, Size','N','Y','Y','Y','N','N','N','N','N','Attribute',80,TO_TIMESTAMP('2014-01-14 09:21:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72120 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:21:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71173,72121,0,53886,TO_TIMESTAMP('2014-01-14 09:21:46','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Value',22,'ECA02','Individual value of a product attribute (e.g. green, large, ..)','N','Y','Y','Y','N','N','N','N','N','Attribute Value',90,TO_TIMESTAMP('2014-01-14 09:21:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72121 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:21:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71172,72122,0,53886,TO_TIMESTAMP('2014-01-14 09:21:48','YYYY-MM-DD HH24:MI:SS'),100,'Type of Attribute Value',1,'ECA02','The Attribute Value type determines the data/validation type','N','Y','Y','Y','N','N','N','N','N','Attribute Value Type',100,TO_TIMESTAMP('2014-01-14 09:21:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72122 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:21:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71178,72123,0,53886,TO_TIMESTAMP('2014-01-14 09:21:49','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','N','Y','Y','Y','N','N','N','N','N','Category Calc',110,TO_TIMESTAMP('2014-01-14 09:21:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:21:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72123 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:22:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Filtro de Cálculo',Updated=TO_TIMESTAMP('2014-01-14 09:22:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53886 AND AD_Language='es_MX'
;

-- Jan 14, 2014 9:22:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Filtro de Cálculo',Updated=TO_TIMESTAMP('2014-01-14 09:22:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53886 AND AD_Language='es_VE'
;

-- Jan 14, 2014 9:22:56 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Menu_Trl WHERE AD_Menu_ID=53744
;

-- Jan 14, 2014 9:22:56 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Menu WHERE AD_Menu_ID=53744
;

-- Jan 14, 2014 9:22:57 AM VET
-- Farming Technical Assistance
DELETE FROM AD_TreeNodeMM WHERE AD_Tree_ID=10 AND Node_ID=53744
;

-- Jan 14, 2014 9:23:02 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Tab_Trl WHERE AD_Tab_ID=53885
;

-- Jan 14, 2014 9:23:02 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Tab WHERE AD_Tab_ID=53885
;

-- Jan 14, 2014 9:23:07 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Window_Trl WHERE AD_Window_ID=53339
;

-- Jan 14, 2014 9:23:07 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Window WHERE AD_Window_ID=53339
;

-- Jan 14, 2014 9:23:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-01-14 09:23:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72118
;

-- Jan 14, 2014 9:23:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-01-14 09:23:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72116
;

-- Jan 14, 2014 9:23:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-01-14 09:23:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72117
;

-- Jan 14, 2014 9:24:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-01-14 09:24:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72123
;

-- Jan 14, 2014 9:24:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-01-14 09:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72119
;

-- Jan 14, 2014 9:24:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-01-14 09:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72115
;

-- Jan 14, 2014 9:24:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-01-14 09:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72118
;

-- Jan 14, 2014 9:24:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-01-14 09:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72116
;

-- Jan 14, 2014 9:24:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-01-14 09:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72117
;

-- Jan 14, 2014 9:24:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-01-14 09:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72120
;

-- Jan 14, 2014 9:24:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-01-14 09:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72121
;

-- Jan 14, 2014 9:24:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-01-14 09:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72122
;

-- Jan 14, 2014 9:24:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-01-14 09:24:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72122
;

-- Jan 14, 2014 9:24:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-01-14 09:24:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72119
;

-- Jan 14, 2014 9:24:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-14 09:24:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72122
;

-- Jan 14, 2014 9:24:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-14 09:24:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72118
;

-- Jan 14, 2014 9:24:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-14 09:24:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72117
;

-- Jan 14, 2014 9:27:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = S',Updated=TO_TIMESTAMP('2014-01-14 09:27:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72115
;

-- Jan 14, 2014 9:27:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = S',Updated=TO_TIMESTAMP('2014-01-14 09:27:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72118
;

-- Jan 14, 2014 9:27:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = N',Updated=TO_TIMESTAMP('2014-01-14 09:27:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72116
;

-- Jan 14, 2014 9:27:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = N',Updated=TO_TIMESTAMP('2014-01-14 09:27:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72117
;

-- Jan 14, 2014 9:27:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = L',Updated=TO_TIMESTAMP('2014-01-14 09:27:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72120
;

-- Jan 14, 2014 9:27:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = L',Updated=TO_TIMESTAMP('2014-01-14 09:27:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72121
;

-- Jan 14, 2014 9:28:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET AD_Column_ID=71178, TabLevel=1,Updated=TO_TIMESTAMP('2014-01-14 09:28:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53886
;

-- Jan 14, 2014 9:29:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET SeqNo=60,Updated=TO_TIMESTAMP('2014-01-14 09:29:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53694
;

-- Jan 14, 2014 9:29:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2014-01-14 09:29:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72115
;

-- Jan 14, 2014 9:30:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2014-01-14 09:30:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72118
;

-- Jan 14, 2014 9:30:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET TabLevel=2,Updated=TO_TIMESTAMP('2014-01-14 09:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53886
;

-- Jan 14, 2014 9:31:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-14 09:31:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72121
;

-- Jan 14, 2014 9:34:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56990,0,19,'M_AttributeValue2_ID',TO_TIMESTAMP('2014-01-14 09:34:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Attribute Value To','Attribute Value To',TO_TIMESTAMP('2014-01-14 09:34:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:34:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56990 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jan 14, 2014 9:35:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Valor de Atributo',PrintName='Valor de Atributo',Updated=TO_TIMESTAMP('2014-01-14 09:35:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56990 AND AD_Language='es_MX'
;

-- Jan 14, 2014 9:35:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Valor de Atributo Hasta',PrintName='Valor de Atributo Hasta',Updated=TO_TIMESTAMP('2014-01-14 09:35:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56990 AND AD_Language='es_MX'
;

-- Jan 14, 2014 9:35:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Valor de Atributo Hasta',PrintName='Valor de Atributo Hasta',Updated=TO_TIMESTAMP('2014-01-14 09:35:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56990 AND AD_Language='es_VE'
;

-- Jan 14, 2014 9:35:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71276,56990,0,19,53740,'M_AttributeValue2_ID',TO_TIMESTAMP('2014-01-14 09:35:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Attribute Value To',0,TO_TIMESTAMP('2014-01-14 09:35:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 14, 2014 9:35:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71276 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 14, 2014 9:35:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71276,72124,0,53886,TO_TIMESTAMP('2014-01-14 09:35:50','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Attribute Value To',TO_TIMESTAMP('2014-01-14 09:35:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:35:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72124 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 14, 2014 9:36:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-01-14 09:36:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72120
;

-- Jan 14, 2014 9:36:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-01-14 09:36:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72119
;

-- Jan 14, 2014 9:36:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-01-14 09:36:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72115
;

-- Jan 14, 2014 9:36:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-01-14 09:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72118
;

-- Jan 14, 2014 9:36:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-01-14 09:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72116
;

-- Jan 14, 2014 9:36:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-01-14 09:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72117
;

-- Jan 14, 2014 9:36:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-01-14 09:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72124
;

-- Jan 14, 2014 9:36:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-01-14 09:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72121
;

-- Jan 14, 2014 9:36:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-01-14 09:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72120
;

-- Jan 14, 2014 9:36:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AttributeValueType@ = L',Updated=TO_TIMESTAMP('2014-01-14 09:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72124
;

-- Jan 14, 2014 9:36:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-01-14 09:36:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72121
;

-- Jan 14, 2014 9:36:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-01-14 09:36:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72124
;

-- Jan 14, 2014 9:39:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET Name='M_AttributeValue',Updated=TO_TIMESTAMP('2014-01-14 09:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 14, 2014 9:39:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53643
;

-- Jan 14, 2014 9:39:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53643,Updated=TO_TIMESTAMP('2014-01-14 09:39:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71276
;

-- Jan 14, 2014 9:42:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-14 09:42:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72119
;

-- Jan 14, 2014 9:42:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-01-14 09:42:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72121
;

-- Jan 14, 2014 9:42:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2014-01-14 09:42:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72124
;

-- Jan 14, 2014 9:44:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsFieldOnly='N', IsSameLine='Y',Updated=TO_TIMESTAMP('2014-01-14 09:44:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72124
;

-- Jan 14, 2014 9:46:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Description='Numeric Value To', Name='Value To', PrintName='Value To',Updated=TO_TIMESTAMP('2014-01-14 09:46:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56988
;

-- Jan 14, 2014 9:46:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56988
;

-- Jan 14, 2014 9:46:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='ValueNumber2', Name='Value To', Description='Numeric Value To', Help=NULL WHERE AD_Element_ID=56988
;

-- Jan 14, 2014 9:46:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='ValueNumber2', Name='Value To', Description='Numeric Value To', Help=NULL, AD_Element_ID=56988 WHERE UPPER(ColumnName)='VALUENUMBER2' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 14, 2014 9:46:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='ValueNumber2', Name='Value To', Description='Numeric Value To', Help=NULL WHERE AD_Element_ID=56988 AND IsCentrallyMaintained='Y'
;

-- Jan 14, 2014 9:46:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Value To', Description='Numeric Value To', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56988) AND IsCentrallyMaintained='Y'
;

-- Jan 14, 2014 9:46:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Value To', Name='Value To' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56988)
;

-- Jan 14, 2014 9:46:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Valor A',PrintName='Valor A',Updated=TO_TIMESTAMP('2014-01-14 09:46:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56988 AND AD_Language='es_VE'
;

-- Jan 14, 2014 9:46:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Valor A',PrintName='Valor A',Updated=TO_TIMESTAMP('2014-01-14 09:46:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56988 AND AD_Language='es_MX'
;

-- Jan 14, 2014 9:50:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2014-01-14 09:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67069
;

-- Jan 14, 2014 9:56:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53647,TO_TIMESTAMP('2014-01-14 09:56:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','M_Attribute',TO_TIMESTAMP('2014-01-14 09:56:41','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Jan 14, 2014 9:56:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53647 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Jan 14, 2014 9:57:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,8513,8512,0,53647,562,TO_TIMESTAMP('2014-01-14 09:57:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2014-01-14 09:57:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:59:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52292,'M_Attribute.AttributeValueType = @AttributeValueType@ AND M_Attribute.IsActive = ''Y''',TO_TIMESTAMP('2014-01-14 09:59:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Attribute','S',TO_TIMESTAMP('2014-01-14 09:59:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 14, 2014 9:59:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='M_Attribute of Attribute Value Type Active',Updated=TO_TIMESTAMP('2014-01-14 09:59:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52292
;

-- Jan 14, 2014 9:59:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53647, AD_Val_Rule_ID=52292, IsUpdateable='N',Updated=TO_TIMESTAMP('2014-01-14 09:59:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71171
;

-- Jan 14, 2014 10:01:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='M_Attribute.AttributeValueType = ''@AttributeValueType@'' AND M_Attribute.IsActive = ''Y''',Updated=TO_TIMESTAMP('2014-01-14 10:01:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52292
;

-- Jan 14, 2014 10:38:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS(
SELECT a.M_Attribute_ID
FROM M_Attribute a
LEFT JOIN FTA_CategoryCalcFilter cf ON (cf.M_Attribute_ID = a.M_Attribute_ID)
LEFT JOIN FTA_CategoryCalc c ON (c.FTA_CategoryCalc_ID = cf.FTA_CategoryCalc_ID )
LEFT JOIN M_Product p ON (c.M_Product_ID = p.M_Product_ID)
LEFT JOIN M_AttributeSet ats ON (ats.M_AttributeSet_ID = p.M_AttributeSet_ID)
LEFT JOIN M_AttributeUse au ON (au.M_Attribute_ID = a.M_Attribute_ID)
)', Name='M_Attribute',Updated=TO_TIMESTAMP('2014-01-14 10:38:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52292
;

-- Jan 14, 2014 10:53:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS(
SELECT 1 FROM M_Product p
INNER JOIN M_AttributeSet ats ON (ats.M_AttributeSet_ID = p.M_AttributeSet_ID)
INNER JOIN M_AttributeUse atu ON (atu.M_AttributeSet_ID = ats.M_AttributeSet_ID)
INNER JOIN M_Attribute a ON (a.M_Attribute_ID = atu.M_Attribute_ID)
WHERE p.M_Product_ID = @M_Product_ID@
)',Updated=TO_TIMESTAMP('2014-01-14 10:53:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52292
;

-- Jan 14, 2014 10:56:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='M_Attribute_ID IN (
SELECT M_Attribute_ID FROM M_Product p
INNER JOIN M_AttributeSet ats ON (ats.M_AttributeSet_ID = p.M_AttributeSet_ID)
INNER JOIN M_AttributeUse atu ON (atu.M_AttributeSet_ID = ats.M_AttributeSet_ID)
INNER JOIN M_Attribute a ON (a.M_Attribute_ID = atu.M_Attribute_ID)
WHERE p.M_Product_ID = @M_Product_ID@
)',Updated=TO_TIMESTAMP('2014-01-14 10:56:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52292
;

-- Jan 14, 2014 10:59:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='M_Attribute.M_Attribute_ID IN (
SELECT M_Attribute_ID FROM M_Product p
INNER JOIN M_AttributeSet ats ON (ats.M_AttributeSet_ID = p.M_AttributeSet_ID)
INNER JOIN M_AttributeUse atu ON (atu.M_AttributeSet_ID = ats.M_AttributeSet_ID)
INNER JOIN M_Attribute a ON (a.M_Attribute_ID = atu.M_Attribute_ID)
WHERE p.M_Product_ID = @M_Product_ID@
)',Updated=TO_TIMESTAMP('2014-01-14 10:59:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52292
;

-- Jan 14, 2014 11:02:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CategoryCalcFilter.M_Attribute_ID IN (
SELECT M_Attribute_ID FROM M_Product p
INNER JOIN M_AttributeSet ats ON (ats.M_AttributeSet_ID = p.M_AttributeSet_ID)
INNER JOIN M_AttributeUse atu ON (atu.M_AttributeSet_ID = ats.M_AttributeSet_ID)
INNER JOIN M_Attribute a ON (a.M_Attribute_ID = atu.M_Attribute_ID)
WHERE p.M_Product_ID = @M_Product_ID@
)',Updated=TO_TIMESTAMP('2014-01-14 11:02:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52292
;

-- Jan 14, 2014 11:02:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CategoryCalcFilter.M_Attribute_ID IN (
SELECT a.M_Attribute_ID FROM M_Product p
INNER JOIN M_AttributeSet ats ON (ats.M_AttributeSet_ID = p.M_AttributeSet_ID)
INNER JOIN M_AttributeUse atu ON (atu.M_AttributeSet_ID = ats.M_AttributeSet_ID)
INNER JOIN M_Attribute a ON (a.M_Attribute_ID = atu.M_Attribute_ID)
WHERE p.M_Product_ID = @M_Product_ID@
)',Updated=TO_TIMESTAMP('2014-01-14 11:02:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52292
;

-- Jan 14, 2014 11:03:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='M_Attribute_ID IN (
SELECT a.M_Attribute_ID FROM M_Product p
INNER JOIN M_AttributeSet ats ON (ats.M_AttributeSet_ID = p.M_AttributeSet_ID)
INNER JOIN M_AttributeUse atu ON (atu.M_AttributeSet_ID = ats.M_AttributeSet_ID)
INNER JOIN M_Attribute a ON (a.M_Attribute_ID = atu.M_Attribute_ID)
WHERE p.M_Product_ID = @M_Product_ID@
)',Updated=TO_TIMESTAMP('2014-01-14 11:03:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52292
;

-- Jan 14, 2014 11:15:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-01-14 11:15:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72119
;

-- Jan 14, 2014 11:15:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-01-14 11:15:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72122
;

