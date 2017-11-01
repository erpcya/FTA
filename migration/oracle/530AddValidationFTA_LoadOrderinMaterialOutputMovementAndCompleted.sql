-- Dec 19, 2014 11:58:33 AM VET
-- FTA
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52416,'FTA_LoadOrder.OperationType = ''MOM'' AND FTA_LoadOrder.DocStatus IN (''CO'')',TO_DATE('2014-12-19 11:58:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_LoadOrder in Material Output Movement and completed','S',TO_DATE('2014-12-19 11:58:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 19, 2014 11:58:45 AM VET
-- FTA
UPDATE AD_Browse_Field SET AD_Val_Rule_ID=52416,Updated=TO_DATE('2014-12-19 11:58:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54010
;

