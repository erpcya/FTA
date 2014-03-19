-- Nov 20, 2013 11:01:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52259,'FTA_EntryTicket.DocStatus = ''CO''
AND NOT EXISTS(SELECT 1 FROM FTA_LoadOrder lo WHERE lo.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND lo.DocStatus NOT IN(''VO'', ''RE''))',TO_DATE('2013-11-20 11:01:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_EntryTicket only completed and not yet used in LO','S',TO_DATE('2013-11-20 11:01:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 20, 2013 11:01:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52259,Updated=TO_DATE('2013-11-20 11:01:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69874
;

-- Nov 20, 2013 11:02:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout=' ',Updated=TO_DATE('2013-11-20 11:02:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69904
;

-- Nov 20, 2013 11:02:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout=NULL,Updated=TO_DATE('2013-11-20 11:02:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69904
;

-- Nov 20, 2013 11:41:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutLoadOrder.entryTicket',Updated=TO_DATE('2013-11-20 11:41:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69874
;

-- Nov 20, 2013 12:03:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutLoadOrder.loadCapacity',Updated=TO_DATE('2013-11-20 12:03:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69851
;

-- Nov 20, 2013 2:15:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-11-20 14:15:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69875
;

-- Nov 20, 2013 2:15:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-11-20 14:15:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69876
;

-- Nov 20, 2013 2:16:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-11-20 14:16:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69834
;

-- Nov 20, 2013 2:17:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-11-20 14:17:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69835
;

