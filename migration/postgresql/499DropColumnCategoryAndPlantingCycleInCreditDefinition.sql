-- Sep 29, 2014 4:42:46 PM VET
-- FTA
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=69905
;

-- Sep 29, 2014 4:42:46 PM VET
-- FTA
DELETE FROM AD_Field WHERE AD_Field_ID=69905
;

-- Sep 29, 2014 4:44:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-09-29 16:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69896
;

-- Sep 29, 2014 4:44:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-09-29 16:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69886
;

-- Sep 29, 2014 4:44:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-09-29 16:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69893
;

-- Sep 29, 2014 4:44:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-09-29 16:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69914
;

-- Sep 29, 2014 4:44:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-09-29 16:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69902
;

-- Sep 29, 2014 4:44:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-09-29 16:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69901
;

-- Sep 29, 2014 4:44:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-09-29 16:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69894
;

-- Sep 29, 2014 4:44:46 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-09-29 16:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69895
;

-- Sep 29, 2014 4:44:47 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-09-29 16:44:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69887
;

-- Sep 29, 2014 4:44:47 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-09-29 16:44:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69889
;

-- Sep 29, 2014 4:44:55 PM VET
-- FTA
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=69889
;

-- Sep 29, 2014 4:44:55 PM VET
-- FTA
DELETE FROM AD_Field WHERE AD_Field_ID=69889
;

-- Sep 29, 2014 4:46:19 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=68758
;

-- Sep 29, 2014 4:46:19 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=68758
;

-- Sep 29, 2014 4:46:27 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=68761
;

-- Sep 29, 2014 4:46:27 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=68761
;

-- Sep 29, 2014 4:48:43 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=69087
;

-- Sep 29, 2014 4:48:43 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=69087
;

-- Sep 29, 2014 4:48:56 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=69090
;

-- Sep 29, 2014 4:48:56 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=69090
;

-- Sep 29, 2014 5:01:19 PM VET
-- FTA
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68440
;

-- Sep 29, 2014 5:01:20 PM VET
-- FTA
DELETE FROM AD_Field WHERE AD_Field_ID=68440
;

-- Sep 29, 2014 5:01:24 PM VET
-- FTA
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68230
;

-- Sep 29, 2014 5:01:24 PM VET
-- FTA
DELETE FROM AD_Field WHERE AD_Field_ID=68230
;

-- Sep 29, 2014 5:01:36 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=67101
;

-- Sep 29, 2014 5:01:36 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=67101
;

-- Sep 29, 2014 5:01:49 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=66695
;

-- Sep 29, 2014 5:01:49 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=66695
;


DROP VIEW FTA_RV_CreditDefinitionBalance;

DROP VIEW FTA_RV_CreditDefinition;

ALTER TABLE FTA_CreditDefinition DROP COLUMN Category_ID;

DROP VIEW FTA_RV_BillOfExchange;

ALTER TABLE FTA_CreditDefinition DROP COLUMN PlantingCycle_ID;