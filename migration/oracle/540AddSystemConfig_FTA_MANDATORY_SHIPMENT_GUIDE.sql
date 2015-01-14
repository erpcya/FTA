-- Jan 13, 2015 7:45:16 PM VET
-- FTA
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50110,'C',TO_DATE('2015-01-13 19:45:08','YYYY-MM-DD HH24:MI:SS'),100,'Set Shipment Guide Mandatory','ECA02','Y','FTA_MANDATORY_SHIPMENT_GUIDE',TO_DATE('2015-01-13 19:45:08','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- Jan 13, 2015 3:19:32 PM VET
-- FTA
UPDATE AD_Val_Rule SET Code='FTA_LoadOrder.IsDelivered = ''N'' OR FTA_LoadOrder.IsImmediateDelivery = ''Y''',Updated=TO_DATE('2015-01-13 15:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52408
;

