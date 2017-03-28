-- Oct 29, 2013 12:05:19 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=69089
;

-- Oct 29, 2013 12:05:19 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=69089
;

-- Oct 29, 2013 2:00:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsEncrypted='N', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-29 14:00:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70206
;

-- Oct 29, 2013 2:04:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-10-29 14:04:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70206
;

-- Oct 29, 2013 2:36:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-10-29 14:36:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69903
;

-- Oct 29, 2013 2:36:53 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=69903
;

-- Oct 29, 2013 2:36:53 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=69903
;

-- Oct 29, 2013 2:38:00 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=68760
;

-- Oct 29, 2013 2:38:00 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=68760
;

-- Oct 29, 2013 2:46:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56571,0,20,'IsCreditApprovedExc',TO_TIMESTAMP('2013-10-29 14:46:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Is Credit Approved Exceeded','Is Credit Approved Exceeded',TO_TIMESTAMP('2013-10-29 14:46:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 29, 2013 2:46:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56571 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 29, 2013 2:48:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Límite de Crédito Excedido',PrintName='Límite de Crédito Excedido',Updated=TO_TIMESTAMP('2013-10-29 14:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56571 AND AD_Language='es_VE'
;

-- Oct 29, 2013 2:48:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='IsCreditLimitExceeded', Name='Credit Limit Exceeded', PrintName='Credit Limit Exceeded',Updated=TO_TIMESTAMP('2013-10-29 14:48:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56571
;

-- Oct 29, 2013 2:48:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56571
;

-- Oct 29, 2013 2:48:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='IsCreditLimitExceeded', Name='Credit Limit Exceeded', Description=NULL, Help=NULL WHERE AD_Element_ID=56571
;

-- Oct 29, 2013 2:48:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='IsCreditLimitExceeded', Name='Credit Limit Exceeded', Description=NULL, Help=NULL, AD_Element_ID=56571 WHERE UPPER(ColumnName)='ISCREDITLIMITEXCEEDED' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 29, 2013 2:48:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='IsCreditLimitExceeded', Name='Credit Limit Exceeded', Description=NULL, Help=NULL WHERE AD_Element_ID=56571 AND IsCentrallyMaintained='Y'
;

-- Oct 29, 2013 2:48:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Credit Limit Exceeded', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56571) AND IsCentrallyMaintained='Y'
;

-- Oct 29, 2013 2:48:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Credit Limit Exceeded', Name='Credit Limit Exceeded' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56571)
;

-- Oct 29, 2013 2:48:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Límite de Crédito Excedido',PrintName='Límite de Crédito Excedido',Updated=TO_TIMESTAMP('2013-10-29 14:48:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56571 AND AD_Language='es_VE'
;

-- Oct 29, 2013 2:49:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69518,56571,0,20,318,'IsCreditLimitExceeded',TO_TIMESTAMP('2013-10-29 14:49:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Credit Limit Exceeded',0,TO_TIMESTAMP('2013-10-29 14:49:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 29, 2013 2:49:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69518 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 29, 2013 2:50:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,69518,70216,0,263,TO_TIMESTAMP('2013-10-29 14:50:13','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','Y','N','Credit Limit Exceeded',0,440,0,TO_TIMESTAMP('2013-10-29 14:50:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 29, 2013 2:50:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70216 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 29, 2013 2:50:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2013-10-29 14:50:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70216
;

-- Oct 29, 2013 2:50:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2013-10-29 14:50:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2775
;

-- Oct 29, 2013 2:50:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2013-10-29 14:50:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2764
;

-- Oct 29, 2013 2:50:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2013-10-29 14:50:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2768
;

-- Oct 29, 2013 2:50:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2013-10-29 14:50:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6935
;

-- Oct 29, 2013 2:50:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_TIMESTAMP('2013-10-29 14:50:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7794
;

-- Oct 29, 2013 2:50:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2013-10-29 14:50:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7795
;

-- Oct 29, 2013 2:50:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2013-10-29 14:50:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2786
;

-- Oct 29, 2013 2:50:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_TIMESTAMP('2013-10-29 14:50:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2780
;

-- Oct 29, 2013 2:50:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_TIMESTAMP('2013-10-29 14:50:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2778
;

-- Oct 29, 2013 2:50:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_TIMESTAMP('2013-10-29 14:50:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2771
;

-- Oct 29, 2013 2:50:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_TIMESTAMP('2013-10-29 14:50:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8657
;

-- Oct 29, 2013 2:50:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_TIMESTAMP('2013-10-29 14:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10485
;

-- Oct 29, 2013 2:50:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_TIMESTAMP('2013-10-29 14:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6564
;

-- Oct 29, 2013 2:50:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_TIMESTAMP('2013-10-29 14:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2777
;

-- Oct 29, 2013 2:50:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_TIMESTAMP('2013-10-29 14:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3663
;

-- Oct 29, 2013 2:50:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_TIMESTAMP('2013-10-29 14:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3899
;

-- Oct 29, 2013 2:50:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_TIMESTAMP('2013-10-29 14:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13700
;

-- Oct 29, 2013 2:50:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_TIMESTAMP('2013-10-29 14:50:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53257
;

-- Oct 29, 2013 2:50:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_TIMESTAMP('2013-10-29 14:50:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69662
;

-- Oct 29, 2013 2:50:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450,Updated=TO_TIMESTAMP('2013-10-29 14:50:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53258
;

-- Oct 29, 2013 2:50:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-29 14:50:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70216
;

