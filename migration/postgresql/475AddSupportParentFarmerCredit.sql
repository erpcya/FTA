-- May 25, 2014 1:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57177,0,22,'PreviousApprovedAmt',TO_TIMESTAMP('2014-05-25 01:24:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Previous Approved Amt','Previous Approved Amt',TO_TIMESTAMP('2014-05-25 01:24:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 1:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57177 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- May 25, 2014 1:24:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Monto Previo Aprobado',PrintName='Monto Previo Aprobado',Updated=TO_TIMESTAMP('2014-05-25 01:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57177 AND AD_Language='es_MX'
;

-- May 25, 2014 1:24:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Monto Previo Aprobado',PrintName='Monto Previo Aprobado',Updated=TO_TIMESTAMP('2014-05-25 01:24:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57177 AND AD_Language='es_VE'
;

-- May 25, 2014 1:25:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72997,57177,0,22,53544,'PreviousApprovedAmt',TO_TIMESTAMP('2014-05-25 01:24:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Previous Approved Amt',0,TO_TIMESTAMP('2014-05-25 01:24:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- May 25, 2014 1:25:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72997 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- May 25, 2014 1:27:22 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET PrintName='Approved Quantity',Updated=TO_TIMESTAMP('2014-05-25 01:27:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56535
;

-- May 25, 2014 1:27:22 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56535
;

-- May 25, 2014 1:27:22 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Approved Quantity', Name='Approved Quantity' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56535)
;

-- May 25, 2014 1:28:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57178,0,22,'PreviousApprovedQty',TO_TIMESTAMP('2014-05-25 01:28:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','PreviousApprovedQty','PreviousApprovedQty',TO_TIMESTAMP('2014-05-25 01:28:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 1:28:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57178 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- May 25, 2014 1:28:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Previous Approved Quantity', PrintName='Previous Approved Quantity',Updated=TO_TIMESTAMP('2014-05-25 01:28:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57178
;

-- May 25, 2014 1:28:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57178
;

-- May 25, 2014 1:28:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='PreviousApprovedQty', Name='Previous Approved Quantity', Description=NULL, Help=NULL WHERE AD_Element_ID=57178
;

-- May 25, 2014 1:28:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='PreviousApprovedQty', Name='Previous Approved Quantity', Description=NULL, Help=NULL, AD_Element_ID=57178 WHERE UPPER(ColumnName)='PREVIOUSAPPROVEDQTY' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- May 25, 2014 1:28:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='PreviousApprovedQty', Name='Previous Approved Quantity', Description=NULL, Help=NULL WHERE AD_Element_ID=57178 AND IsCentrallyMaintained='Y'
;

-- May 25, 2014 1:28:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Previous Approved Quantity', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57178) AND IsCentrallyMaintained='Y'
;

-- May 25, 2014 1:28:56 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Previous Approved Quantity', Name='Previous Approved Quantity' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57178)
;

-- May 25, 2014 1:29:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Cantidad Previa Aprobada',PrintName='Cantidad Previa Aprobada',Updated=TO_TIMESTAMP('2014-05-25 01:29:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57178 AND AD_Language='es_MX'
;

-- May 25, 2014 1:29:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Cantidad Previa Aprobada',PrintName='Cantidad Previa Aprobada',Updated=TO_TIMESTAMP('2014-05-25 01:29:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57178 AND AD_Language='es_VE'
;

-- May 25, 2014 1:29:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72998,57178,0,22,53544,'PreviousApprovedQty',TO_TIMESTAMP('2014-05-25 01:29:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Previous Approved Quantity',0,TO_TIMESTAMP('2014-05-25 01:29:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- May 25, 2014 1:29:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72998 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- May 25, 2014 1:30:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72997,73498,0,53721,TO_TIMESTAMP('2014-05-25 01:30:49','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Previous Approved Amt',TO_TIMESTAMP('2014-05-25 01:30:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 1:30:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73498 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- May 25, 2014 1:30:53 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72998,73499,0,53721,TO_TIMESTAMP('2014-05-25 01:30:51','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Previous Approved Quantity',TO_TIMESTAMP('2014-05-25 01:30:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 1:30:53 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73499 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- May 25, 2014 1:31:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2014-05-25 01:31:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73498
;

-- May 25, 2014 1:31:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2014-05-25 01:31:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73499
;

-- May 25, 2014 1:31:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_TIMESTAMP('2014-05-25 01:31:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70041
;

-- May 25, 2014 1:31:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2014-05-25 01:31:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70040
;

-- May 25, 2014 1:31:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2014-05-25 01:31:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68131
;

-- May 25, 2014 1:31:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_TIMESTAMP('2014-05-25 01:31:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68132
;

-- May 25, 2014 1:31:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_TIMESTAMP('2014-05-25 01:31:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68128
;

-- May 25, 2014 1:31:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_TIMESTAMP('2014-05-25 01:31:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68448
;

-- May 25, 2014 1:31:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_TIMESTAMP('2014-05-25 01:31:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73432
;

-- May 25, 2014 1:31:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_TIMESTAMP('2014-05-25 01:31:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70043
;

-- May 25, 2014 1:31:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_TIMESTAMP('2014-05-25 01:31:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- May 25, 2014 1:31:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_TIMESTAMP('2014-05-25 01:31:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68340
;

-- May 25, 2014 1:31:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@PreviousApprovedAmt@!0',Updated=TO_TIMESTAMP('2014-05-25 01:31:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73498
;

-- May 25, 2014 1:31:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@PreviousApprovedQty@!0',Updated=TO_TIMESTAMP('2014-05-25 01:31:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73499
;

-- May 25, 2014 1:32:13 AM VET
-- Farming Technical Assistance
ALTER TABLE FTA_FarmerCredit ADD COLUMN PreviousApprovedAmt NUMERIC DEFAULT NULL 
;

-- May 25, 2014 1:32:20 AM VET
-- Farming Technical Assistance
ALTER TABLE FTA_FarmerCredit ADD COLUMN PreviousApprovedQty NUMERIC DEFAULT NULL 
;

-- May 25, 2014 1:33:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2014-05-25 01:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72998
;

-- May 25, 2014 1:33:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2014-05-25 01:33:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72997
;

-- May 25, 2014 1:33:44 AM VET
-- Farming Technical Assistance
INSERT INTO t_alter_column values('fta_farmercredit','PreviousApprovedAmt','NUMERIC',null,'0')
;

-- May 25, 2014 1:33:50 AM VET
-- Farming Technical Assistance
INSERT INTO t_alter_column values('fta_farmercredit','PreviousApprovedQty','NUMERIC',null,'0')
;

-- May 25, 2014 1:35:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-05-25 01:35:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73498
;

-- May 25, 2014 1:35:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2014-05-25 01:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73499
;

