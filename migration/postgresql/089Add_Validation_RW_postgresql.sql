-- Sep 9, 2013 11:51:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67663,1106,0,20,53561,'IsSOTrx',TO_TIMESTAMP('2013-09-09 11:51:07','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02',1,'The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Sales Transaction',0,TO_TIMESTAMP('2013-09-09 11:51:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 9, 2013 11:51:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67663 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 9, 2013 11:54:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67663,69290,0,53731,TO_TIMESTAMP('2013-09-09 11:54:12','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction',1,'ECA02','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Y','Y','N','N','N','N','N','Sales Transaction',TO_TIMESTAMP('2013-09-09 11:54:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 9, 2013 11:54:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69290 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=69290
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68333
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68324
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68337
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68334
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68327
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=68325
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=68329
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68321
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=68318
;

-- Sep 9, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68346
;

-- Sep 9, 2013 11:56:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-09-09 11:56:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69290
;

-- Sep 9, 2013 12:01:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutRecordWeight.docType', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-09-09 12:01:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66922
;

-- Sep 9, 2013 2:37:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-09-09 14:37:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68327
;

-- Sep 9, 2013 2:37:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-09-09 14:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68325
;

-- Sep 9, 2013 2:37:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-09-09 14:37:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68329
;

-- Sep 9, 2013 2:49:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutRecordWeight.weight',Updated=TO_TIMESTAMP('2013-09-09 14:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66928
;

-- Sep 9, 2013 2:49:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutRecordWeight.weight',Updated=TO_TIMESTAMP('2013-09-09 14:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66929
;

-- Sep 9, 2013 3:45:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO''
AND EXISTS(SELECT 1 FROM FTA_QualityAnalysis q 
INNER JOIN FTA_RecordWeight rw ON(rw.FTA_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
LEFT JOIN FTA_QualityAnalysis ca ON(ca.Orig_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
WHERE (ca.DocStatus IN(''VO'', ''RE'') OR ca.DocStatus IS NULL)
AND rw.DocStatus = ''IP''
AND q.Orig_QualityAnalysis_ID IS NULL 
AND rw.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID)',Updated=TO_TIMESTAMP('2013-09-09 15:45:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52202
;

-- Sep 9, 2013 3:52:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2013-09-09 15:52:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66890
;

-- Sep 9, 2013 3:52:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2013-09-09 15:52:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66911
;

-- Sep 9, 2013 5:04:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''SOO'' | @DocBaseType@=''POO'' | @DocBaseType@=''FRW''',Updated=TO_TIMESTAMP('2013-09-09 17:04:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3073
;

