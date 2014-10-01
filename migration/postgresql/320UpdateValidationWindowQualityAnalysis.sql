-- Dec 12, 2013 9:14:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@OperationType@=''RMR'' | @OperationType@=''PBR'' | @OperationType@=''DBM'' | @FTA_RecordWeight_ID@=0 | @FTA_EntryTicket_ID@=0 & @OperationType@!=''RMP''',Updated=TO_TIMESTAMP('2013-12-12 09:14:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66902
;

-- Dec 12, 2013 9:15:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@OperationType@=''RMR'' | @OperationType@=''PBR'' | @OperationType@=''DBM'' | @FTA_RecordWeight_ID@=0 | @FTA_EntryTicket_ID@=0 | @OperationType@!=''RMP''',Updated=TO_TIMESTAMP('2013-12-12 09:15:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66902
;

-- Dec 12, 2013 9:15:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@OperationType@=''RMR'' | @OperationType@=''PBR'' | @OperationType@=''DBM'' | @FTA_RecordWeight_ID@=0 | @FTA_EntryTicket_ID@=0 & @OperationType@!''RMP''',Updated=TO_TIMESTAMP('2013-12-12 09:15:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66902
;

-- Dec 12, 2013 9:50:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='@OperationType@!''RMP''  OR (@OperationType@!''RMP'' AND EXISTS (SELECT 1 FROM M_Product  WHERE C_Order_ID = C_OrderLine.C_Order_ID AND  C_Order.IsSotrx= ''N''))',Updated=TO_TIMESTAMP('2013-12-12 09:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52275
;

-- Dec 12, 2013 9:53:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='@OperationType@!''RMP''  OR (@OperationType@!''RMP'' AND EXISTS (SELECT 1 FROM M_Product  WHERE FTA_QualityAnalysis.C_Order_ID = C_OrderLine.C_Order_ID AND  C_Order.IsSotrx= ''N''))',Updated=TO_TIMESTAMP('2013-12-12 09:53:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52275
;

-- Dec 12, 2013 10:00:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='@OperationType@!''RMP''  OR (@OperationType@!''RMP'' AND EXISTS (
SELECT 1 FROM FTA_EntryTicket et
INNER JOIN C_Order o ON (et.C_Order_ID = o.C_Order_ID)
INNER JOIN C_OrderLine ol ON (ol.C_Order_ID = o.C_Order_ID)
WHERE ol.M_Product_ID = FTA_QualityAnalysis.M_Product_ID
)',Updated=TO_TIMESTAMP('2013-12-12 10:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52275
;

-- Dec 12, 2013 10:13:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='@OperationType@!''RMP''  OR (@OperationType@!''RMP'' AND EXISTS(SELECT 1 FROM FTA_EntryTicket et 
INNER JOIN C_Order o ON(o.C_Order_ID = et.C_Order_ID)
INNER JOIN C_OrderLine ol ON(ol.C_Order_ID = o.C_Order_ID)
WHERE (ol.M_Product_ID = M_Product.M_Product_ID
AND et.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@
AND ''@OperationType@'' = ''RMP'')
OR ''@OperationType@'' <> ''RMP'')',Updated=TO_TIMESTAMP('2013-12-12 10:13:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52275
;

-- Dec 12, 2013 10:15:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS(SELECT 1 FROM FTA_EntryTicket et 
INNER JOIN C_Order o ON(o.C_Order_ID = et.C_Order_ID)
INNER JOIN C_OrderLine ol ON(ol.C_Order_ID = o.C_Order_ID)
WHERE (ol.M_Product_ID = M_Product.M_Product_ID
AND et.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@
AND ''@OperationType@'' = ''RMP'')
OR ''@OperationType@'' <> ''RMP'')',Updated=TO_TIMESTAMP('2013-12-12 10:15:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52275
;

-- Dec 12, 2013 10:16:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='''@OperationType@'' <> ''RMP'' 
OR EXISTS(SELECT 1 FROM FTA_EntryTicket et 
INNER JOIN C_Order o ON(o.C_Order_ID = et.C_Order_ID)
INNER JOIN C_OrderLine ol ON(ol.C_Order_ID = o.C_Order_ID)
WHERE ol.M_Product_ID = M_Product.M_Product_ID
AND et.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@
AND ''@OperationType@'' = ''RMP'')',Updated=TO_TIMESTAMP('2013-12-12 10:16:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52275
;

-- Dec 12, 2013 10:47:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-12-12 10:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70644
;

-- Dec 12, 2013 10:48:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-12-12 10:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66902
;

-- Dec 12, 2013 10:57:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2013-12-12 10:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66902
;

