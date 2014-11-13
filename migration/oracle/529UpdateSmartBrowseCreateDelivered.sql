-- Nov 13, 2014 9:55:46 AM VET
-- FTA
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52407,'FTA_LoadOrder.IsInvoiced = ''N''',TO_DATE('2014-11-13 09:55:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_LoadOrder Invoiced','S',TO_DATE('2014-11-13 09:55:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 13, 2014 9:55:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Val_Rule_ID=52407,Updated=TO_DATE('2014-11-13 09:55:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53981
;

-- Nov 13, 2014 10:05:04 AM VET
-- FTA
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52408,'FTA_LoadOrder.IsDelivered = ''N''',TO_DATE('2014-11-13 10:05:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_LoadOrder Shipment','S',TO_DATE('2014-11-13 10:05:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 13, 2014 10:05:11 AM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Val_Rule_ID=52408,Updated=TO_DATE('2014-11-13 10:05:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53981
;

-- Nov 13, 2014 10:08:34 AM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Val_Rule_ID=52407,Updated=TO_DATE('2014-11-13 10:08:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53915
;

-- Nov 13, 2014 5:24:39 PM VET
-- FTA
UPDATE AD_Browse SET WhereClause='GI.DocStatus = ''CO'' AND GI.M_InOutline_ID IS NULL AND GI.OperationType = ''DFP'' AND EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID = GI.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y''	)',Updated=TO_DATE('2014-11-13 17:24:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50043
;

