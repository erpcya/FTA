-- Mar 21, 2014 6:00:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57097,0,29,'QtyFarming',TO_TIMESTAMP('2014-03-21 18:00:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Qty Farming','Qty Farming',TO_TIMESTAMP('2014-03-21 18:00:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 21, 2014 6:00:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57097 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 21, 2014 6:03:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Farming Quantity', PrintName='Farming Quantity',Updated=TO_TIMESTAMP('2014-03-21 18:03:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57097
;

-- Mar 21, 2014 6:03:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57097
;

-- Mar 21, 2014 6:03:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='QtyFarming', Name='Farming Quantity', Description=NULL, Help=NULL WHERE AD_Element_ID=57097
;

-- Mar 21, 2014 6:03:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='QtyFarming', Name='Farming Quantity', Description=NULL, Help=NULL, AD_Element_ID=57097 WHERE UPPER(ColumnName)='QTYFARMING' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Mar 21, 2014 6:03:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='QtyFarming', Name='Farming Quantity', Description=NULL, Help=NULL WHERE AD_Element_ID=57097 AND IsCentrallyMaintained='Y'
;

-- Mar 21, 2014 6:03:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Farming Quantity', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57097) AND IsCentrallyMaintained='Y'
;

-- Mar 21, 2014 6:03:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Farming Quantity', Name='Farming Quantity' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57097)
;

-- Mar 21, 2014 6:03:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Cantidad de Cultivo',PrintName='Cantidad de Cultivo',Updated=TO_TIMESTAMP('2014-03-21 18:03:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57097 AND AD_Language='es_MX'
;

-- Mar 21, 2014 6:03:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Cantidad de Cultivo',PrintName='Cantidad de Cultivo',Updated=TO_TIMESTAMP('2014-03-21 18:03:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57097 AND AD_Language='es_VE'
;

-- Mar 21, 2014 6:03:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72524,57097,0,29,53544,'QtyFarming',TO_TIMESTAMP('2014-03-21 18:03:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Farming Quantity',0,TO_TIMESTAMP('2014-03-21 18:03:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 21, 2014 6:03:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72524 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 21, 2014 6:04:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57098,0,12,'AmtFarming',TO_TIMESTAMP('2014-03-21 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Farming Amt','Farming Amt',TO_TIMESTAMP('2014-03-21 18:04:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 21, 2014 6:04:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57098 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 21, 2014 6:05:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Monto de Cultivo',PrintName='Monto de Cultivo',Updated=TO_TIMESTAMP('2014-03-21 18:05:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57098 AND AD_Language='es_MX'
;

-- Mar 21, 2014 6:05:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Monto de Cultivo',PrintName='Monto de Cultivo',Updated=TO_TIMESTAMP('2014-03-21 18:05:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57098 AND AD_Language='es_VE'
;

-- Mar 21, 2014 6:05:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Farming Amount', PrintName='Farming Amount',Updated=TO_TIMESTAMP('2014-03-21 18:05:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57098
;

-- Mar 21, 2014 6:05:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57098
;

-- Mar 21, 2014 6:05:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='AmtFarming', Name='Farming Amount', Description=NULL, Help=NULL WHERE AD_Element_ID=57098
;

-- Mar 21, 2014 6:05:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='AmtFarming', Name='Farming Amount', Description=NULL, Help=NULL, AD_Element_ID=57098 WHERE UPPER(ColumnName)='AMTFARMING' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Mar 21, 2014 6:05:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='AmtFarming', Name='Farming Amount', Description=NULL, Help=NULL WHERE AD_Element_ID=57098 AND IsCentrallyMaintained='Y'
;

-- Mar 21, 2014 6:05:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Farming Amount', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57098) AND IsCentrallyMaintained='Y'
;

-- Mar 21, 2014 6:05:32 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Farming Amount', Name='Farming Amount' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57098)
;

-- Mar 21, 2014 6:05:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72525,57098,0,12,53544,'AmtFarming',TO_TIMESTAMP('2014-03-21 18:05:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Farming Amount',0,TO_TIMESTAMP('2014-03-21 18:05:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 21, 2014 6:05:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72525 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 21, 2014 6:05:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72525,72971,0,53721,TO_TIMESTAMP('2014-03-21 18:05:54','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Farming Amount',TO_TIMESTAMP('2014-03-21 18:05:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 21, 2014 6:05:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72971 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 21, 2014 6:05:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72524,72972,0,53721,TO_TIMESTAMP('2014-03-21 18:05:56','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Farming Quantity',TO_TIMESTAMP('2014-03-21 18:05:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 21, 2014 6:05:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72972 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 21, 2014 6:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-03-21 18:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72971
;

-- Mar 21, 2014 6:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-03-21 18:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72972
;

-- Mar 21, 2014 6:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-03-21 18:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70041
;

-- Mar 21, 2014 6:06:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2014-03-21 18:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70040
;

-- Mar 21, 2014 6:06:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2014-03-21 18:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68131
;

-- Mar 21, 2014 6:06:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2014-03-21 18:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68132
;

-- Mar 21, 2014 6:06:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2014-03-21 18:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68128
;

-- Mar 21, 2014 6:06:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2014-03-21 18:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68448
;

-- Mar 21, 2014 6:06:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2014-03-21 18:06:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70043
;

-- Mar 21, 2014 6:06:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_TIMESTAMP('2014-03-21 18:06:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Mar 21, 2014 6:06:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2014-03-21 18:06:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68340
;

-- Mar 21, 2014 6:06:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2014-03-21 18:06:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72972
;

-- Mar 21, 2014 6:06:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@!''L''', IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-03-21 18:06:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72971
;

-- Mar 21, 2014 6:06:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@!''L''',Updated=TO_TIMESTAMP('2014-03-21 18:06:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72972
;

-- Mar 21, 2014 6:07:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-03-21 18:07:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72972
;

-- Mar 21, 2014 6:07:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-03-21 18:07:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72971
;

-- Mar 21, 2014 6:07:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-03-21 18:07:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72972
;

-- Mar 21, 2014 6:07:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-03-21 18:07:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72971
;

-- Mar 21, 2014 3:05:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Farming.IsValid = ''Y'' AND FTA_Farming.Status IN(''A'',''M'') 
/*Framing Category Equals Credit Definition Category */
AND FTA_Farming.Category_ID In (Select CD.Category_ID From FTA_CreditDefinition CD Where FTA_CreditDefinition_ID=@FTA_CreditDefinition_ID@)
/*Business Partner Credit Equals to Farm*/
And Exists(Select 1 From FTA_FarmDivision fd 
Inner Join FTA_Farm f On f.FTA_Farm_ID=fd.FTA_Farm_ID Where f.C_BPartner_ID=@C_BPartner_ID@ And FTA_Farming.FTA_FarmDivision_ID=fd.FTA_FarmDivision_ID)
/*Not In Another Credi Or in Current Credit*/
And (FTA_Farming.FTA_FarmerCredit_ID Is Null Or FTA_Farming.FTA_FarmerCredit_ID=@FTA_FarmerCredit_ID@)',Updated=TO_TIMESTAMP('2014-03-21 15:05:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52206
;

