-- Aug 29, 2013 8:30:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2013-08-29 08:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66676
;

-- Aug 29, 2013 8:31:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2013-08-29 08:31:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67103
;

-- Aug 29, 2013 8:33:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='@SQL=SELECT NVL(MAX(SeqNo),0)+10 AS DefaultValue FROM FTA_CreditDefinitionLine WHERE FTA_CreditDefinition_ID=@FTA_CreditDefinition_ID@',Updated=TO_TIMESTAMP('2013-08-29 08:33:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67100
;

-- Aug 29, 2013 8:37:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='@SQL=SELECT NVL(MAX(Line),0)+10 AS DefaultValue FROM FTA_CreditDefinitionLine WHERE FTA_CreditDefinition_ID=@FTA_CreditDefinition_ID@',Updated=TO_TIMESTAMP('2013-08-29 08:37:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67100
;

-- Aug 29, 2013 11:02:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmingStage.Category_ID IN (SELECT f.Category_ID FROM FTA_Farming f WHERE f.FTA_Farming_ID = @FTA_Farming_ID@)',Updated=TO_TIMESTAMP('2013-08-29 11:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52184
;

