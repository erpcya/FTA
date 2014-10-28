-- Mar 27, 2014 5:00:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57108,0,20,'IsManagesPaymentProgram',TO_TIMESTAMP('2014-03-27 17:00:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Manages Payment Program','Manages Payment Program',TO_TIMESTAMP('2014-03-27 17:00:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 27, 2014 5:00:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57108 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 27, 2014 5:00:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Maneja Programa de Pago',PrintName='Maneja Programa de Pago',Updated=TO_TIMESTAMP('2014-03-27 17:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57108 AND AD_Language='es_MX'
;

-- Mar 27, 2014 5:00:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Maneja Programa de Pago',PrintName='Maneja Programa de Pago',Updated=TO_TIMESTAMP('2014-03-27 17:00:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57108 AND AD_Language='es_VE'
;

-- Mar 27, 2014 5:01:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72587,57108,0,20,53544,'IsManagesPaymentProgram',TO_TIMESTAMP('2014-03-27 17:00:51','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Manages Payment Program',0,TO_TIMESTAMP('2014-03-27 17:00:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 27, 2014 5:01:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72587 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 27, 2014 5:01:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72587,73262,0,53721,TO_TIMESTAMP('2014-03-27 17:01:22','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Manages Payment Program',TO_TIMESTAMP('2014-03-27 17:01:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 27, 2014 5:01:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73262 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 27, 2014 5:01:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-03-27 17:01:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73262
;

-- Mar 27, 2014 5:02:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y''',Updated=TO_TIMESTAMP('2014-03-27 17:02:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73236
;

-- Mar 27, 2014 5:02:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y''',Updated=TO_TIMESTAMP('2014-03-27 17:02:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73238
;

-- Mar 27, 2014 5:02:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-03-27 17:02:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73236
;

-- Mar 27, 2014 5:02:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-03-27 17:02:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73236
;

-- Mar 27, 2014 5:02:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-03-27 17:02:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72560
;

-- Mar 27, 2014 5:02:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-03-27 17:02:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72560
;

-- Mar 27, 2014 5:03:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET DisplayLogic='@IsManagesPaymentProgram@=''Y''',Updated=TO_TIMESTAMP('2014-03-27 17:03:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53941
;

-- Mar 27, 2014 5:05:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-03-27 17:05:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72928
;

-- Mar 27, 2014 5:05:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-03-27 17:05:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73238
;

-- Mar 27, 2014 5:17:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocStatus@!''DR''',Updated=TO_TIMESTAMP('2014-03-27 17:17:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72587
;

-- Mar 27, 2014 5:24:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocStatus@! ''CO'' | @DocStatus@! ''CL''',Updated=TO_TIMESTAMP('2014-03-27 17:24:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68220
;

-- Mar 27, 2014 5:27:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocStatus@= ''CO'' | @DocStatus@= ''CL''',Updated=TO_TIMESTAMP('2014-03-27 17:27:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68220
;

-- Mar 27, 2014 5:37:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-03-27 17:37:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72555
;

-- Mar 27, 2014 5:39:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-27 17:39:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72542
;

-- Mar 27, 2014 5:39:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-27 17:39:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72543
;

-- Mar 27, 2014 5:40:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-27 17:40:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72551
;

-- Mar 27, 2014 5:41:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-03-27 17:41:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73232
;

-- Mar 27, 2014 5:48:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET IsInsertRecord='N',Updated=TO_TIMESTAMP('2014-03-27 17:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53773
;

-- Mar 27, 2014 5:49:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_TIMESTAMP('2014-03-27 17:49:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53773
;

-- Mar 27, 2014 5:50:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET IsInsertRecord='N',Updated=TO_TIMESTAMP('2014-03-27 17:50:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53783
;

