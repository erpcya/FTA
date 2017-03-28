-- Sep 10, 2013 9:50:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-09-10 09:50:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- Sep 10, 2013 9:53:45 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52205,'FTA_CreditDefinition.DocStatus = ''CO''',TO_TIMESTAMP('2013-09-10 09:53:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_CreditDefinition Completed','S',TO_TIMESTAMP('2013-09-10 09:53:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 10, 2013 9:53:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52205,Updated=TO_TIMESTAMP('2013-09-10 09:53:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- Sep 10, 2013 9:54:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-09-10 09:54:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Sep 10, 2013 9:54:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-09-10 09:54:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Sep 10, 2013 9:55:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@FTA_CreditDefinition_ID@!0',Updated=TO_TIMESTAMP('2013-09-10 09:55:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- Sep 10, 2013 9:59:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='FTA_CreditDefinition_ID!0',Updated=TO_TIMESTAMP('2013-09-10 09:59:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- Sep 10, 2013 10:00:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@FTA_CreditDefinition_ID@!0',Updated=TO_TIMESTAMP('2013-09-10 10:00:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- Sep 10, 2013 10:00:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2013-09-10 10:00:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- Sep 10, 2013 10:02:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='@#Date@',Updated=TO_TIMESTAMP('2013-09-10 10:02:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66558
;

-- Sep 10, 2013 10:54:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56331,0,'C_DocTypeOrder_ID',TO_TIMESTAMP('2013-09-10 10:54:17','YYYY-MM-DD HH24:MI:SS'),100,'Document type used for orders generated from this sales document','ECA02','The Document Type for order indicates the document type that will be used when an invoice is generated from this sales document.  This field will display only when the base document type is Farmer Credit.','Y','Document Type for Order','Doc Type Order',TO_TIMESTAMP('2013-09-10 10:54:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 10, 2013 10:54:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56331 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 10, 2013 10:54:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento para la Orden',PrintName='Tipo de Documento para la Orden',Updated=TO_TIMESTAMP('2013-09-10 10:54:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56331 AND AD_Language='es_VE'
;

-- Sep 10, 2013 10:55:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Description='Tipo del documento usado para Ordenes generadas desde este documento de Crédito',Updated=TO_TIMESTAMP('2013-09-10 10:55:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56331 AND AD_Language='es_VE'
;

-- Sep 10, 2013 10:56:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Help='El Tipo de documento para orden indica el tipo de documento que será usado cuando una orden se genera desde este documento de crédito. Este campo se desplegará solamente cuando el tipo de documento base sea Crédito a Productor',Updated=TO_TIMESTAMP('2013-09-10 10:56:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56331 AND AD_Language='es_VE'
;

-- Sep 10, 2013 10:57:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67664,56331,0,18,217,206,'C_DocTypeOrder_ID',TO_TIMESTAMP('2013-09-10 10:57:31','YYYY-MM-DD HH24:MI:SS'),100,'Document type used for orders generated from this sales document','ECA02',10,'The Document Type for order indicates the document type that will be used when an invoice is generated from this sales document.  This field will display only when the base document type is Farmer Credit.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Type for Order',0,TO_TIMESTAMP('2013-09-10 10:57:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 10, 2013 10:57:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67664 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 10, 2013 10:58:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67664,69291,0,167,TO_TIMESTAMP('2013-09-10 10:58:18','YYYY-MM-DD HH24:MI:SS'),100,'Document type used for orders generated from this sales document',0,'ECA02','The Document Type for order indicates the document type that will be used when an invoice is generated from this sales document.  This field will display only when the base document type is Farmer Credit.','Y','Y','Y','N','N','N','N','N','Document Type for Order',320,0,TO_TIMESTAMP('2013-09-10 10:58:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 10, 2013 10:58:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69291 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 10, 2013 10:59:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''FFC''',Updated=TO_TIMESTAMP('2013-09-10 10:59:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69291
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=69291
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=807
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=808
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=54233
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=54230
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=54232
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=10345
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=10346
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=10481
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=10480
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=58859
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=10371
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=10528
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=10340
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=6567
;

-- Sep 10, 2013 11:02:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=3125
;

-- Sep 10, 2013 11:02:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-10 11:02:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69291
;

-- Sep 10, 2013 11:04:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=290,Updated=TO_TIMESTAMP('2013-09-10 11:04:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67664
;

-- Sep 10, 2013 11:08:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=170,Updated=TO_TIMESTAMP('2013-09-10 11:08:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67664
;

-- Sep 10, 2013 11:09:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=133,Updated=TO_TIMESTAMP('2013-09-10 11:09:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67664
;

-- Sep 10, 2013 11:49:30 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68122
;

-- Sep 10, 2013 11:49:30 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68122
;

-- Sep 10, 2013 11:49:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-09-10 11:49:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68120
;

-- Sep 10, 2013 11:49:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-09-10 11:49:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Sep 10, 2013 11:50:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67666,56084,0,19,259,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2013-09-10 11:50:40','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts','ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Farmer Credit/Debt',0,TO_TIMESTAMP('2013-09-10 11:50:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 10, 2013 11:50:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67666 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 10, 2013 11:52:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,67666,69293,0,294,TO_TIMESTAMP('2013-09-10 11:52:15','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Debts',0,'@FTA_FarmerCredit_ID@!0','ECA02','Y','Y','Y','N','N','N','N','N','Farmer Credit/Debt',680,0,TO_TIMESTAMP('2013-09-10 11:52:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 10, 2013 11:52:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69293 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 10, 2013 11:57:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=69293
;

-- Sep 10, 2013 11:57:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=7039
;

-- Sep 10, 2013 11:57:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=7824
;

-- Sep 10, 2013 11:57:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=7823
;

-- Sep 10, 2013 11:57:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3425
;

-- Sep 10, 2013 11:57:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=3427
;

-- Sep 10, 2013 11:57:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=3449
;

-- Sep 10, 2013 11:57:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=3450
;

-- Sep 10, 2013 11:57:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=6506
;

-- Sep 10, 2013 11:57:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=3426
;

-- Sep 10, 2013 11:57:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=3671
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=69293
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=3435
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=3436
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=3419
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=6505
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3458
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=6507
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=3452
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=6504
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3451
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=10123
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=55413
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=55414
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=55415
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3444
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3447
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3464
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=3443
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=3448
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=3420
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=3441
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=8652
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=3438
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=3467
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=3456
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=3454
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=3466
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=3439
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=3459
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=3457
;

-- Sep 10, 2013 11:59:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=3446
;

-- Sep 10, 2013 11:59:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-10 11:59:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69293
;

-- Sep 10, 2013 11:59:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_FarmerCredit_ID@!0', IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-09-10 11:59:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69293
;

