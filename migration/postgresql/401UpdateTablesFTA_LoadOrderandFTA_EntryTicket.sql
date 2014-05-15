-- Mar 7, 2014 2:09:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72196,454,0,19,53559,'M_Product_ID',TO_TIMESTAMP('2014-03-07 14:09:51','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product',0,TO_TIMESTAMP('2014-03-07 14:09:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 7, 2014 2:09:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72196 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 7, 2014 2:10:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72196,72772,0,53729,TO_TIMESTAMP('2014-03-07 14:10:12','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',22,'ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',TO_TIMESTAMP('2014-03-07 14:10:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 7, 2014 2:10:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72772 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 7, 2014 2:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-03-07 14:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72772
;

-- Mar 7, 2014 2:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-03-07 14:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68288
;

-- Mar 7, 2014 2:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-03-07 14:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68285
;

-- Mar 7, 2014 2:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-03-07 14:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68295
;

-- Mar 7, 2014 2:10:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-03-07 14:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68646
;

-- Mar 7, 2014 2:10:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2014-03-07 14:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70194
;

-- Mar 7, 2014 2:10:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2014-03-07 14:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70211
;

-- Mar 7, 2014 2:11:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@ = ''RMR''',Updated=TO_TIMESTAMP('2014-03-07 14:11:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72772
;

-- Mar 7, 2014 2:15:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72197,187,0,30,53668,'C_BPartner_ID',TO_TIMESTAMP('2014-03-07 14:15:56','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_TIMESTAMP('2014-03-07 14:15:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 7, 2014 2:15:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72197 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 7, 2014 2:16:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72197,72773,0,53802,TO_TIMESTAMP('2014-03-07 14:16:16','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',22,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_TIMESTAMP('2014-03-07 14:16:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 7, 2014 2:16:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72773 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 7, 2014 2:16:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-03-07 14:16:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72773
;

-- Mar 7, 2014 2:16:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-03-07 14:16:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70335
;

-- Mar 7, 2014 2:16:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-03-07 14:16:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70333
;

-- Mar 7, 2014 2:16:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-03-07 14:16:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70323
;

-- Mar 7, 2014 2:16:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-03-07 14:16:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70339
;

-- Mar 7, 2014 2:16:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-03-07 14:16:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70324
;

-- Mar 7, 2014 2:16:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-03-07 14:16:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70338
;

-- Mar 7, 2014 2:16:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-03-07 14:16:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70321
;

-- Mar 7, 2014 2:16:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-03-07 14:16:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70325
;

-- Mar 7, 2014 2:16:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-03-07 14:16:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70336
;

-- Mar 7, 2014 2:16:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-03-07 14:16:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70327
;

-- Mar 7, 2014 2:16:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-03-07 14:16:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70330
;

-- Mar 7, 2014 2:16:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-03-07 14:16:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71905
;

-- Mar 7, 2014 2:17:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-03-07 14:17:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72773
;

-- Mar 7, 2014 2:17:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-03-07 14:17:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70332
;

-- Mar 7, 2014 2:38:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-03-07 14:38:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72772
;

-- Mar 7, 2014 3:31:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='N',Updated=TO_TIMESTAMP('2014-03-07 15:31:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66901
;

-- Mar 7, 2014 3:31:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72198,540,0,10,53560,'ReferenceNo','(FTA_QualityAnalysis.FTA_EntryTicket_ID)',TO_TIMESTAMP('2014-03-07 15:31:34','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site','ECA02',40,'The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Reference No',0,TO_TIMESTAMP('2014-03-07 15:31:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 7, 2014 3:31:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72198 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 7, 2014 3:31:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71112,72774,0,53730,TO_TIMESTAMP('2014-03-07 15:31:50','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Chute',TO_TIMESTAMP('2014-03-07 15:31:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 7, 2014 3:31:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72774 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 7, 2014 3:31:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72198,72775,0,53730,TO_TIMESTAMP('2014-03-07 15:31:52','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site',40,'ECA02','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','Y','Y','N','N','N','N','N','Reference No',TO_TIMESTAMP('2014-03-07 15:31:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 7, 2014 3:31:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72775 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 7, 2014 3:32:03 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=72774
;

-- Mar 7, 2014 3:32:03 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=72774
;

-- Mar 7, 2014 3:32:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-03-07 15:32:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72775
;

-- Mar 7, 2014 3:32:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-03-07 15:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71464
;

-- Mar 7, 2014 3:32:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-03-07 15:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68309
;

-- Mar 7, 2014 3:32:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-03-07 15:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68311
;

-- Mar 7, 2014 3:32:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-03-07 15:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68310
;

-- Mar 7, 2014 3:32:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-03-07 15:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68304
;

-- Mar 7, 2014 3:32:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-03-07 15:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68301
;

-- Mar 7, 2014 3:32:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-03-07 15:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68308
;

-- Mar 7, 2014 3:32:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-03-07 15:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68347
;

-- Mar 7, 2014 3:32:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-03-07 15:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70192
;

-- Mar 7, 2014 3:32:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-03-07 15:32:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70212
;

-- Mar 7, 2014 3:32:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET Name='Ticket de Entrada',Description='Ticket de Entrada',Help=NULL,Updated=TO_TIMESTAMP('2014-03-07 15:32:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72775 AND AD_Language='es_MX'
;

-- Mar 7, 2014 3:32:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET Name='Ticket de Entrada',Description='Ticket de Entrada',Help=NULL,Updated=TO_TIMESTAMP('2014-03-07 15:32:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72775 AND AD_Language='es_VE'
;

-- Mar 7, 2014 3:33:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72198,72776,0,53742,TO_TIMESTAMP('2014-03-07 15:33:00','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site',40,'ECA02','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','Y','Y','N','N','N','N','N','Reference No',TO_TIMESTAMP('2014-03-07 15:33:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 7, 2014 3:33:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72776 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 7, 2014 3:33:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-03-07 15:33:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72776
;

-- Mar 7, 2014 3:33:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-03-07 15:33:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71466
;

-- Mar 7, 2014 3:33:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-03-07 15:33:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68737
;

-- Mar 7, 2014 3:33:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-03-07 15:33:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68736
;

-- Mar 7, 2014 3:33:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-03-07 15:33:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68740
;

-- Mar 7, 2014 3:33:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-03-07 15:33:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68738
;

-- Mar 7, 2014 3:33:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-03-07 15:33:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72094
;

-- Mar 7, 2014 3:33:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-03-07 15:33:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68742
;

-- Mar 7, 2014 3:33:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-03-07 15:33:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68743
;

-- Mar 7, 2014 3:33:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-03-07 15:33:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68744
;

-- Mar 7, 2014 3:33:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-03-07 15:33:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68745
;

-- Mar 7, 2014 3:33:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-03-07 15:33:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70213
;

-- Mar 7, 2014 3:33:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-03-07 15:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70214
;

-- Mar 7, 2014 3:33:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET Name='Ticket de Entrada',Description='Ticket de Entrada',Help=NULL,Updated=TO_TIMESTAMP('2014-03-07 15:33:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72776 AND AD_Language='es_MX'
;

-- Mar 7, 2014 3:33:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET Name='Ticket de Entrada',Description='Ticket de Entrada',Help=NULL,Updated=TO_TIMESTAMP('2014-03-07 15:33:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72776 AND AD_Language='es_VE'
;

-- Mar 7, 2014 3:34:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-03-07 15:34:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72775
;

-- Mar 7, 2014 3:35:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2014-03-07 15:35:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72776
;

-- Mar 7, 2014 3:38:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_TIMESTAMP('2014-03-07 15:38:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72198
;

