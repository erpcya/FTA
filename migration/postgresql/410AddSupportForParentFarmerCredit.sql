-- Mar 13, 2014 9:32:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-03-13 09:32:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69884
;

-- Mar 13, 2014 9:32:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-03-13 09:32:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Mar 13, 2014 9:32:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-03-13 09:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69780
;

-- Mar 13, 2014 9:32:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-03-13 09:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68121
;

-- Mar 13, 2014 9:32:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-03-13 09:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68449
;

-- Mar 13, 2014 9:32:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-03-13 09:32:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69884
;

-- Mar 13, 2014 9:34:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@Parent_Farmer@',Updated=TO_TIMESTAMP('2014-03-13 09:34:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Mar 13, 2014 9:34:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@Parent_FarmerCredit_ID@ !0',Updated=TO_TIMESTAMP('2014-03-13 09:34:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Mar 13, 2014 9:36:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@Parent_FarmerCredit_ID@=0',Updated=TO_TIMESTAMP('2014-03-13 09:36:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Mar 13, 2014 9:54:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-03-13 09:54:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54457
;

-- Mar 13, 2014 9:54:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-03-13 09:54:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54458
;

-- Mar 13, 2014 9:54:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-03-13 09:54:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54459
;

-- Mar 13, 2014 10:34:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-03-13 10:34:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Mar 13, 2014 10:34:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@Parent_FarmerCredit_ID@!0',Updated=TO_TIMESTAMP('2014-03-13 10:34:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- Mar 13, 2014 10:36:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72376,56480,0,19,53600,'Parent_FarmerCredit_ID',TO_TIMESTAMP('2014-03-13 10:36:14','YYYY-MM-DD HH24:MI:SS'),100,'Parent Farmer Credit or Loan','ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Parent Credit/Loan',0,TO_TIMESTAMP('2014-03-13 10:36:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 13, 2014 10:36:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72376 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 13, 2014 10:36:48 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72376,72834,0,53774,TO_TIMESTAMP('2014-03-13 10:36:46','YYYY-MM-DD HH24:MI:SS'),100,'Parent Farmer Credit or Loan',10,'ECA02','Y','Y','Y','N','N','N','N','N','Parent Credit/Loan',TO_TIMESTAMP('2014-03-13 10:36:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 10:36:48 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72834 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 13, 2014 10:37:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-03-13 10:37:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72834
;

-- Mar 13, 2014 10:37:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-03-13 10:37:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69685
;

-- Mar 13, 2014 10:37:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-03-13 10:37:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69687
;

-- Mar 13, 2014 10:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-03-13 10:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69680
;

-- Mar 13, 2014 10:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-03-13 10:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69686
;

-- Mar 13, 2014 10:37:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-03-13 10:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69689
;

-- Mar 13, 2014 10:37:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-03-13 10:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69693
;

-- Mar 13, 2014 10:37:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-03-13 10:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69692
;

-- Mar 13, 2014 10:37:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-03-13 10:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69679
;

-- Mar 13, 2014 10:37:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-03-13 10:37:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69690
;

-- Mar 13, 2014 10:37:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-03-13 10:37:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72669
;

-- Mar 13, 2014 11:12:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarmerCredit.parentFarmerCredit_ID',Updated=TO_TIMESTAMP('2014-03-13 11:12:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72376
;

-- Mar 13, 2014 11:31:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2014-03-13 11:31:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72376
;

-- Mar 13, 2014 11:32:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarmerCredit.parentFarmerCredit_ID',Updated=TO_TIMESTAMP('2014-03-13 11:32:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68743
;

-- Mar 13, 2014 11:38:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53571,Updated=TO_TIMESTAMP('2014-03-13 11:38:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72376
;

-- Mar 13, 2014 11:40:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2014-03-13 11:40:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68743
;

-- Mar 13, 2014 11:49:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET MandatoryLogic='@Parent_FarmerCredit_ID@!0',Updated=TO_TIMESTAMP('2014-03-13 11:49:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- Mar 13, 2014 11:50:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory=NULL,Updated=TO_TIMESTAMP('2014-03-13 11:50:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Mar 13, 2014 11:51:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET MandatoryLogic='@Parent_FarmerCredit_ID@=0',Updated=TO_TIMESTAMP('2014-03-13 11:51:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

