-- Oct 24, 2013 3:00:22 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@DocStatus@ != ''CO''',Updated=TO_DATE('2013-10-24 15:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69694
;

-- Oct 24, 2013 3:02:11 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@DocStatus@ = ''DR'' | @DocStatus@ = ''IP'' ',Updated=TO_DATE('2013-10-24 15:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69694
;

-- Oct 24, 2013 3:10:20 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69349,348,0,20,53612,'IsActive',TO_DATE('2013-10-24 15:10:19','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','N','N','N','Active',TO_DATE('2013-10-24 15:10:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 24, 2013 3:10:20 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69349 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 24, 2013 3:10:21 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69350,56535,0,29,53612,'ApprovedQty',TO_DATE('2013-10-24 15:10:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Approved Quantity',TO_DATE('2013-10-24 15:10:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 24, 2013 3:10:21 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69350 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 24, 2013 3:10:22 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69351,56534,0,12,53612,'ApprovedAmt',TO_DATE('2013-10-24 15:10:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Approved Amount',TO_DATE('2013-10-24 15:10:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 24, 2013 3:10:22 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69351 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 24, 2013 3:10:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,69351,0,52236,50054,50017,'ACA_ApprovedAmt','ACA.ApprovedAmt',TO_DATE('2013-10-24 15:10:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Approved Amount',TO_DATE('2013-10-24 15:10:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 3:10:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,69350,0,52237,50054,50017,'ACA_ApprovedQty','ACA.ApprovedQty',TO_DATE('2013-10-24 15:10:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Approved Quantity',TO_DATE('2013-10-24 15:10:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 3:10:40 PM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,69349,0,52238,50054,50017,'ACA_IsActive','ACA.IsActive',TO_DATE('2013-10-24 15:10:39','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_DATE('2013-10-24 15:10:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 3:10:56 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53387,50022,0,56534,0,12,52236,TO_DATE('2013-10-24 15:10:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Approved Amount',10,TO_DATE('2013-10-24 15:10:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 3:10:56 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53387 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 24, 2013 3:10:57 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53388,50022,0,56535,0,29,52237,TO_DATE('2013-10-24 15:10:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Approved Quantity',11,TO_DATE('2013-10-24 15:10:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 3:10:57 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53388 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 24, 2013 3:10:58 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53389,50022,0,348,0,20,52238,TO_DATE('2013-10-24 15:10:57','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',12,TO_DATE('2013-10-24 15:10:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 3:10:58 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53389 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 24, 2013 3:12:10 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-24 15:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53389
;

-- Oct 24, 2013 3:12:10 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-10-24 15:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53305
;

-- Oct 24, 2013 3:12:10 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-10-24 15:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53388
;

-- Oct 24, 2013 3:12:10 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-10-24 15:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53387
;

-- Oct 24, 2013 3:14:29 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_DATE('2013-10-24 15:14:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53387
;

-- Oct 24, 2013 3:14:41 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsReadOnly='N',Updated=TO_DATE('2013-10-24 15:14:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53388
;

-- Oct 24, 2013 3:15:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='N',Updated=TO_DATE('2013-10-24 15:15:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53303
;

-- Oct 24, 2013 3:18:10 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='N',Updated=TO_DATE('2013-10-24 15:18:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53288
;

-- Oct 24, 2013 3:18:17 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsQueryCriteria='N',Updated=TO_DATE('2013-10-24 15:18:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53295
;

-- Oct 24, 2013 3:18:30 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsOrderBy,IsQueryCriteria,IsRange,IsReadOnly,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (53390,50022,0,265,0,15,52088,TO_DATE('2013-10-24 15:18:29','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','N','N','N','Y','Y','Y','Document Date',40,10,TO_DATE('2013-10-24 15:18:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 3:18:30 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53390 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 24, 2013 3:20:17 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsMandatory='N', IsQueryCriteria='N',Updated=TO_DATE('2013-10-24 15:20:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53291
;

-- Oct 24, 2013 3:20:57 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Val_Rule_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsOrderBy,IsQueryCriteria,IsRange,IsReadOnly,Name,SeqNo,Updated,UpdatedBy) VALUES (53391,50022,0,196,0,19,52187,52084,TO_DATE('2013-10-24 15:20:55','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','Y','N','N','N','Y','N','Y','N','Y','Document Type',30,TO_DATE('2013-10-24 15:20:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 3:20:57 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53391 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 24, 2013 3:21:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET SeqNo=3,Updated=TO_DATE('2013-10-24 15:21:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53390
;

-- Oct 24, 2013 3:21:51 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET SeqNo=2,Updated=TO_DATE('2013-10-24 15:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53391
;

-- Oct 24, 2013 3:21:55 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET SeqNo=3,Updated=TO_DATE('2013-10-24 15:21:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53305
;

-- Oct 24, 2013 3:21:58 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET SeqNo=1,Updated=TO_DATE('2013-10-24 15:21:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53391
;

-- Oct 24, 2013 3:22:32 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsOrderBy,IsQueryCriteria,IsRange,IsReadOnly,Name,SeqNo,Updated,UpdatedBy) VALUES (53392,50022,0,56084,0,19,52096,TO_DATE('2013-10-24 15:22:31','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02','Y','Y','N','N','N','N','N','Y','N','Y','Credit/Loan',10,TO_DATE('2013-10-24 15:22:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 3:22:32 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53392 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 24, 2013 3:23:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET SeqNo=2,Updated=TO_DATE('2013-10-24 15:23:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53392
;

-- Oct 24, 2013 3:23:21 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET SeqNo=4,Updated=TO_DATE('2013-10-24 15:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53305
;

-- Oct 24, 2013 3:32:14 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52239,'FTA_Farmer.C_DocType_ID=@C_DocType_ID@',TO_DATE('2013-10-24 15:32:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_Farmer Credit C_DocType_ID Equals To Context','S',TO_DATE('2013-10-24 15:32:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 3:32:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Val_Rule SET Name='FTA_FarmerCredit C_DocType_ID Equals To Context',Updated=TO_DATE('2013-10-24 15:32:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52239
;

-- Oct 24, 2013 3:33:09 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Val_Rule_ID=52239,Updated=TO_DATE('2013-10-24 15:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53392
;

-- Oct 24, 2013 3:42:17 PM VET
-- SFAndroid Contribution
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_DocType_ID=@C_DocType_ID@ AND FTA_FarmerCredit.DocStatus In (''CO'',''CL'')',Updated=TO_DATE('2013-10-24 15:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52239
;

-- Oct 24, 2013 3:47:26 PM VET
-- SFAndroid Contribution
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_DocType_ID=@C_DocType_ID@ AND FTA_FarmerCredit.DocStatus Not In (''CO'',''CL'')',Updated=TO_DATE('2013-10-24 15:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52239
;

