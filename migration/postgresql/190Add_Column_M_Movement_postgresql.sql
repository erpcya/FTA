-- Oct 23, 2013 10:42:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53577,TO_TIMESTAMP('2013-10-23 10:42:56','YYYY-MM-DD HH24:MI:SS'),100,'Document Base Type Cr or Dr','ECA02','Y','N','FTA_FarmerCredit DocBaseType',TO_TIMESTAMP('2013-10-23 10:42:56','YYYY-MM-DD HH24:MI:SS'),100,'L','LLL')
;

-- Oct 23, 2013 10:42:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53577 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Oct 23, 2013 10:43:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53577,54129,TO_TIMESTAMP('2013-10-23 10:43:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','AR Debit',TO_TIMESTAMP('2013-10-23 10:43:18','YYYY-MM-DD HH24:MI:SS'),100,'ARI')
;

-- Oct 23, 2013 10:43:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54129 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 23, 2013 10:43:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Cargo',Updated=TO_TIMESTAMP('2013-10-23 10:43:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54129 AND AD_Language='es_MX'
;

-- Oct 23, 2013 10:43:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53577,54130,TO_TIMESTAMP('2013-10-23 10:43:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','AR Credit',TO_TIMESTAMP('2013-10-23 10:43:36','YYYY-MM-DD HH24:MI:SS'),100,'ARC')
;

-- Oct 23, 2013 10:43:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54130 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 23, 2013 10:43:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Abono',Updated=TO_TIMESTAMP('2013-10-23 10:43:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54130 AND AD_Language='es_MX'
;

-- Oct 23, 2013 10:43:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_Value_ID=53577,Updated=TO_TIMESTAMP('2013-10-23 10:43:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54169
;

-- Oct 23, 2013 10:47:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='@#Date@ ',Updated=TO_TIMESTAMP('2013-10-23 10:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54172
;

-- Oct 23, 2013 10:47:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='@#Date@',Updated=TO_TIMESTAMP('2013-10-23 10:47:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54172
;

-- Oct 23, 2013 11:23:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69216,56441,0,18,323,52220,'FTA_Driver_ID',TO_TIMESTAMP('2013-10-23 11:23:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','Y','N','N','Y','Driver',0,TO_TIMESTAMP('2013-10-23 11:23:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 23, 2013 11:23:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69216 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 23, 2013 11:23:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69217,56440,0,18,323,52221,'FTA_Vehicle_ID',TO_TIMESTAMP('2013-10-23 11:23:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','Y','N','N','Y','Vehicle',0,TO_TIMESTAMP('2013-10-23 11:23:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 23, 2013 11:23:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69217 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 23, 2013 11:24:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,69216,70079,0,259,TO_TIMESTAMP('2013-10-23 11:24:38','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','Y','Y','Y','N','N','N','N','N','Driver',330,0,TO_TIMESTAMP('2013-10-23 11:24:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2013 11:24:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70079 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 23, 2013 11:24:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,69217,70080,0,259,TO_TIMESTAMP('2013-10-23 11:24:54','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','Y','Y','Y','N','N','N','N','N','Vehicle',340,0,TO_TIMESTAMP('2013-10-23 11:24:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2013 11:24:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70080 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 23, 2013 11:25:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=54055
;

-- Oct 23, 2013 11:25:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=70079
;

-- Oct 23, 2013 11:25:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=70080
;

-- Oct 23, 2013 11:25:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=54051
;

-- Oct 23, 2013 11:25:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=54052
;

-- Oct 23, 2013 11:25:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=54053
;

-- Oct 23, 2013 11:25:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=54054
;

-- Oct 23, 2013 11:25:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=7791
;

-- Oct 23, 2013 11:25:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=7788
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=7792
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=7793
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=7790
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=7789
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=10530
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=10529
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=9223
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=9222
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=9224
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=9221
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=2727
;

-- Oct 23, 2013 11:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=5144
;

-- Oct 23, 2013 11:25:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-23 11:25:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70080
;

-- Oct 23, 2013 11:33:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CallOutEntryTicket.shipper',Updated=TO_TIMESTAMP('2013-10-23 11:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=53970
;

