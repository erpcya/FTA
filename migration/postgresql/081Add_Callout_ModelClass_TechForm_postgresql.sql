-- Aug 30, 2013 2:55:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET DisplayLogic='@IsCredit@=''Y''', IsInsertRecord='N', IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-30 14:55:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53739
;

-- Aug 30, 2013 4:05:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-30 16:05:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68232
;

-- Aug 30, 2013 4:19:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67115,524,0,28,53514,'Processing',TO_TIMESTAMP('2013-08-30 16:19:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Now',0,TO_TIMESTAMP('2013-08-30 16:19:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 30, 2013 4:19:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67115 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 30, 2013 4:20:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67115,68534,0,53671,TO_TIMESTAMP('2013-08-30 16:20:35','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Process Now',TO_TIMESTAMP('2013-08-30 16:20:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 4:20:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68534 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 4:21:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-30 16:21:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68534
;

-- Aug 30, 2013 4:23:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-30 16:23:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65945
;

-- Aug 30, 2013 4:23:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-30 16:23:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65946
;

-- Aug 30, 2013 4:23:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-30 16:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65947
;

-- Aug 30, 2013 4:23:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2013-08-30 16:23:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65947
;

-- Aug 30, 2013 4:23:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2013-08-30 16:23:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65946
;

-- Aug 30, 2013 4:23:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2013-08-30 16:23:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65945
;

-- Aug 30, 2013 4:24:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@Processing@=''Y''',Updated=TO_TIMESTAMP('2013-08-30 16:24:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65945
;

-- Aug 30, 2013 4:24:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@Processing@=''Y''',Updated=TO_TIMESTAMP('2013-08-30 16:24:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65946
;

-- Aug 30, 2013 4:24:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@Processing@=''Y''',Updated=TO_TIMESTAMP('2013-08-30 16:24:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65947
;

-- Aug 30, 2013 4:24:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@Processing@=''Y''',Updated=TO_TIMESTAMP('2013-08-30 16:24:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65948
;

-- Aug 30, 2013 4:25:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-30 16:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65960
;

-- Aug 30, 2013 4:25:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-30 16:25:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67327
;

-- Aug 30, 2013 4:26:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-08-30 16:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67769
;

-- Aug 30, 2013 4:28:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_TIMESTAMP('2013-08-30 16:28:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65849
;

-- Aug 30, 2013 4:29:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_TIMESTAMP('2013-08-30 16:29:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65872
;

-- Aug 30, 2013 4:29:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_TIMESTAMP('2013-08-30 16:29:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65863
;

-- Aug 30, 2013 4:32:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_TIMESTAMP('2013-08-30 16:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65863
;

-- Aug 30, 2013 4:37:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@IsProcessed@=''N''',Updated=TO_TIMESTAMP('2013-08-30 16:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66321
;

-- Aug 30, 2013 4:37:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2013-08-30 16:37:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66321
;

-- Aug 30, 2013 4:51:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutTechnicalForm.qty',Updated=TO_TIMESTAMP('2013-08-30 16:51:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65963
;

-- Aug 30, 2013 4:51:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutTechnicalForm.uom',Updated=TO_TIMESTAMP('2013-08-30 16:51:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66349
;

-- Aug 30, 2013 4:53:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2013-08-30 16:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66349
;

-- Aug 30, 2013 4:54:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutTechnicalForm.uom',Updated=TO_TIMESTAMP('2013-08-30 16:54:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65965
;

