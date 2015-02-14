-- Feb 12, 2015 8:56:04 PM VET
-- FTA
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52427,'EXISTS (SELECT 1 FROM FTA_WeightScale_Role wsr WHERE wsr.FTA_WeightScale_ID = FTA_WeightScale.FTA_WeightScale_ID AND wsr.AD_Role_ID =  @#AD_Role_ID@)',TO_TIMESTAMP('2015-02-12 20:55:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_WeightScale in Role','S',TO_TIMESTAMP('2015-02-12 20:55:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 12, 2015 8:56:22 PM VET
-- FTA
UPDATE AD_Column SET AD_Val_Rule_ID=52427,Updated=TO_TIMESTAMP('2015-02-12 20:56:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75730
;

-- Feb 12, 2015 8:56:38 PM VET
-- FTA
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2015-02-12 20:56:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75517
;

