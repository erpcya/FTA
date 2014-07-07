-- Mar 22, 2014 2:20:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2014-03-22 14:20:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65876
;

-- Mar 22, 2014 2:20:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-22 14:20:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66535
;

-- Mar 22, 2014 2:20:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-22 14:20:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65886
;

-- Mar 22, 2014 2:21:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-22 14:21:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72071
;

-- Mar 22, 2014 2:21:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-22 14:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71363
;

-- Mar 22, 2014 2:21:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-22 14:21:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71362
;

-- Mar 22, 2014 2:21:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-22 14:21:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65889
;

-- Mar 22, 2014 2:21:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2014-03-22 14:21:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71073
;

-- Mar 22, 2014 2:21:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-22 14:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66352
;

-- Mar 22, 2014 2:21:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-22 14:21:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66531
;

-- Mar 22, 2014 2:22:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND EXISTS(SELECT 1   FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'' AND bfe.DocStatus IN (''CO'',''CL''))',Updated=TO_TIMESTAMP('2014-03-22 14:22:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Mar 22, 2014 2:28:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocStatus@=''CO'' | @DocStatus@=''CL''',Updated=TO_TIMESTAMP('2014-03-22 14:28:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68220
;

-- Mar 22, 2014 2:32:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocStatus@!''CO'' | @DocStatus@!''CL''',Updated=TO_TIMESTAMP('2014-03-22 14:32:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68220
;

-- Mar 22, 2014 2:34:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@DocStatus@ NOT IN ( ''CO'' , ''CL'')',Updated=TO_TIMESTAMP('2014-03-22 14:34:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68220
;

-- Mar 22, 2014 2:40:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2014-03-22 14:40:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65888
;

-- Mar 22, 2014 2:41:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-03-22 14:41:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65888
;

