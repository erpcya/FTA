-- Jul 15, 2013 9:03:53 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66320,67770,0,53665,TO_TIMESTAMP('2013-07-15 21:03:52','YYYY-MM-DD HH24:MI:SS'),100,'Element is valid',0,'ECA02','The element passed the validation check','Y','Y','Y','N','N','N','N','N','Valid',100,0,TO_TIMESTAMP('2013-07-15 21:03:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 15, 2013 9:03:53 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67770 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jul 15, 2013 9:04:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-15 21:04:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67190
;

-- Jul 15, 2013 9:05:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-15 21:05:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67770
;

-- Jul 15, 2013 9:05:54 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-07-15 21:05:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67190
;

-- Jul 15, 2013 9:26:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab (AD_Client_ID,AD_ColumnSortOrder_ID,AD_ColumnSortYesNo_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,65917,65908,0,53694,53512,53249,TO_TIMESTAMP('2013-07-15 21:26:42','YYYY-MM-DD HH24:MI:SS'),100,'U','N','N','Y','N','N','Y','N','N','Y','N','Sequence','N',30,1,TO_TIMESTAMP('2013-07-15 21:26:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 15, 2013 9:26:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53694 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Jul 15, 2013 9:33:19 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Name='Secuencia',Updated=TO_TIMESTAMP('2013-07-15 21:33:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53694 AND AD_Language='es_MX'
;

-- Jul 15, 2013 9:33:37 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-07-15 21:33:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53694
;

-- Jul 15, 2013 9:35:15 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab (AD_Client_ID,AD_ColumnSortOrder_ID,AD_ColumnSortYesNo_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,65935,65922,0,53695,53513,53241,TO_TIMESTAMP('2013-07-15 21:35:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','N','Y','N','Sequence','N',20,0,TO_TIMESTAMP('2013-07-15 21:35:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 15, 2013 9:35:15 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53695 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Jul 15, 2013 9:36:45 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Name='Secuencia',Updated=TO_TIMESTAMP('2013-07-15 21:36:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53695 AND AD_Language='es_MX'
;

-- Jul 15, 2013 9:38:08 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_TIMESTAMP('2013-07-15 21:38:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65915
;

-- Jul 15, 2013 9:38:13 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_TIMESTAMP('2013-07-15 21:38:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65916
;

-- Jul 15, 2013 9:41:18 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66351,469,0,10,53513,'Name',TO_TIMESTAMP('2013-07-15 21:41:17','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','N','N','N','Y','N','Y','N','N','N','N','Y','Name',0,TO_TIMESTAMP('2013-07-15 21:41:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 15, 2013 9:41:18 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66351 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

