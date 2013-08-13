-- Aug 13, 2013 2:00:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET SeqNo=20,Updated=TO_DATE('2013-08-13 14:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53728
;

-- Aug 13, 2013 2:01:06 PM VET
-- SFAndroid Contribution
UPDATE AD_Table_Trl SET Name='Finca',Updated=TO_DATE('2013-08-13 14:01:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53506 AND AD_Language='es_MX'
;

-- Aug 13, 2013 2:01:46 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Finca',PrintName='Finca',Description='Finca del Agricultor o Productor',Updated=TO_DATE('2013-08-13 14:01:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55966 AND AD_Language='es_MX'
;

-- Aug 13, 2013 2:02:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Name='Finca',Description='Finca del Agricultor o Productor',Updated=TO_DATE('2013-08-13 14:02:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53260 AND AD_Language='es_MX'
;

-- Aug 13, 2013 2:11:56 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Element_ID=287, ColumnName='DocAction', Description='The targeted status of the document', Help='You find the current status in the Document Status field. The options are listed in a popup', Name='Document Action',Updated=TO_DATE('2013-08-13 14:11:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66317
;

-- Aug 13, 2013 2:11:56 PM VET
-- SFAndroid Contribution
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=66317
;

-- Aug 13, 2013 2:11:56 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET Name='Document Action', Description='The targeted status of the document', Help='You find the current status in the Document Status field. The options are listed in a popup' WHERE AD_Column_ID=66317 AND IsCentrallyMaintained='Y'
;

-- Aug 13, 2013 2:12:06 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_Value_ID=135,Updated=TO_DATE('2013-08-13 14:12:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66317
;

-- Aug 13, 2013 2:12:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66696,289,0,17,131,53507,'DocStatus',TO_DATE('2013-08-13 14:12:43','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA01',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Status',0,TO_DATE('2013-08-13 14:12:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 13, 2013 2:12:50 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66696 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 13, 2013 2:12:56 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET FieldLength=2,Updated=TO_DATE('2013-08-13 14:12:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66317
;

-- Aug 13, 2013 2:13:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66697,1047,0,20,53514,'Processed',TO_DATE('2013-08-13 14:13:37','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA01',1,'The Processed checkbox indicates that a document has been processed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Processed',0,TO_DATE('2013-08-13 14:13:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 13, 2013 2:13:39 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66697 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 13, 2013 2:14:40 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66698,1047,0,20,53515,'Processed',TO_DATE('2013-08-13 14:14:38','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA01',1,'The Processed checkbox indicates that a document has been processed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Processed',0,TO_DATE('2013-08-13 14:14:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 13, 2013 2:14:40 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66698 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 13, 2013 2:15:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66696,68231,0,53670,TO_DATE('2013-08-13 14:15:03','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',2,'ECA01','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','Y','N','N','N','N','N','Document Status',TO_DATE('2013-08-13 14:15:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 2:15:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68231 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 13, 2013 2:15:15 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66697,68232,0,53671,TO_DATE('2013-08-13 14:15:11','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA01','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_DATE('2013-08-13 14:15:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 2:15:15 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68232 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 13, 2013 2:15:26 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66698,68233,0,53672,TO_DATE('2013-08-13 14:15:25','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA01','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_DATE('2013-08-13 14:15:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 2:15:26 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68233 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 13, 2013 2:15:44 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68231
;

-- Aug 13, 2013 2:15:44 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67768
;

-- Aug 13, 2013 2:15:44 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67766
;

-- Aug 13, 2013 2:15:44 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67767
;

-- Aug 13, 2013 2:16:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET AD_FieldGroup_ID=114,Updated=TO_DATE('2013-08-13 14:16:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68231
;

-- Aug 13, 2013 2:16:10 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_DATE('2013-08-13 14:16:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67768
;

-- Aug 13, 2013 2:16:20 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-13 14:16:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67768
;

-- Aug 13, 2013 2:16:52 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@DocStatus@=''CO''', IsSameLine='N',Updated=TO_DATE('2013-08-13 14:16:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67766
;

-- Aug 13, 2013 2:17:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-13 14:17:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67766
;

-- Aug 13, 2013 2:17:12 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67767
;

-- Aug 13, 2013 2:17:12 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67766
;

-- Aug 13, 2013 2:47:18 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET DefaultValue='CO',Updated=TO_DATE('2013-08-13 14:47:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66317
;

-- Aug 13, 2013 2:47:31 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET DefaultValue='DR',Updated=TO_DATE('2013-08-13 14:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66696
;

-- Aug 13, 2013 2:49:34 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-08-13 14:49:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68231
;

