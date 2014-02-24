-- Feb 19, 2014 3:00:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72071,56130,0,10,53510,'Ext_Guide',TO_TIMESTAMP('2014-02-19 15:00:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Ext. Guide',0,TO_TIMESTAMP('2014-02-19 15:00:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 19, 2014 3:00:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72071 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 19, 2014 3:00:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET AD_Reference_ID=10, FieldLength=60,Updated=TO_TIMESTAMP('2014-02-19 15:00:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56130
;

-- Feb 19, 2014 3:00:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72071,72626,0,53892,TO_TIMESTAMP('2014-02-19 15:00:42','YYYY-MM-DD HH24:MI:SS'),100,60,'ECA02','Y','Y','Y','N','N','N','N','N','Ext. Guide',TO_TIMESTAMP('2014-02-19 15:00:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 19, 2014 3:00:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72626 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 19, 2014 3:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-02-19 15:01:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72626
;

-- Feb 19, 2014 3:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-02-19 15:01:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72226
;

-- Feb 19, 2014 3:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-02-19 15:01:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72227
;

-- Feb 19, 2014 3:01:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-02-19 15:01:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72228
;

-- Feb 19, 2014 3:01:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-02-19 15:01:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72211
;

-- Feb 19, 2014 4:05:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52322,'(C_Charge.C_Charge_ID IN (
	SELECT c.C_Charge_ID 
	FROM C_Charge c
	JOIN C_ChargeType ct ON (ct.C_ChargeType_ID = c.C_ChargeType_ID)
	JOIN C_ChargeType_Doctype ctd ON (ctd.C_ChargeType_ID = ct.C_ChargeType_ID)
	JOIN  C_DocType dt ON (dt.C_DocType_ID =ctd.C_DocType_ID)
	WHERE  ctd.C_DocType_ID = @C_DocTypeTarget_ID@
	) OR
 (SELECT COUNT(*) FROM C_ChargeType_DocType WHERE AD_Client_ID=@AD_Client_ID@) = 0)
AND
EXISTS (
	SELECT 1 FROM FTA_FarmerCredit fc 
	INNER JOIN FTA_CreditDefinition cd ON (cd.FTA_CreditDefinition_ID= fc.FTA_CreditDefinition_ID)
	INNER JOIN FTA_CreditDefinitionLine cdl ON (cdl.FTA_CreditDefinition_ID=cd.FTA_CreditDefinition_ID)
	WHERE 
	fc.FTA_FarmerCredit_ID = @FTA_FarmerCredit_ID@
 	AND cdl.C_Charge_ID = C_Charge.C_Charge_ID
)',TO_TIMESTAMP('2014-02-19 16:05:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Charge by Doc Type Target and Credit Definition','S',TO_TIMESTAMP('2014-02-19 16:05:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 19, 2014 4:05:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52322,Updated=TO_TIMESTAMP('2014-02-19 16:05:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54171
;

-- Feb 19, 2014 4:11:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarming.estimatedQty',Updated=TO_TIMESTAMP('2014-02-19 16:11:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71566
;

