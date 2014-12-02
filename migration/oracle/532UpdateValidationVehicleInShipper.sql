-- Dec 1, 2014 7:16:42 PM VET
-- FTA
UPDATE AD_Val_Rule SET Code='FTA_Driver.AD_Client_ID = @AD_Client_ID@ AND FTA_Driver.M_Shipper_ID = @M_Shipper_ID@ OR @M_Shipper_ID@ = 0',Updated=TO_DATE('2014-12-01 19:16:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52220
;

-- Dec 1, 2014 7:41:34 PM VET
-- FTA
UPDATE AD_Val_Rule SET Code='FTA_Vehicle.AD_Client_ID = @AD_Client_ID@ AND FTA_Vehicle.M_Shipper_ID = @M_Shipper_ID@ OR @M_Shipper_ID@ = 0',Updated=TO_DATE('2014-12-01 19:41:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52221
;

-- Dec 1, 2014 7:43:34 PM VET
-- FTA
UPDATE AD_Val_Rule SET Code='FTA_Driver.AD_Client_ID = @AD_Client_ID@ ', Description='AND FTA_Driver.M_Shipper_ID = @M_Shipper_ID@ OR @M_Shipper_ID@ = 0',Updated=TO_DATE('2014-12-01 19:43:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52220
;

-- Dec 1, 2014 7:44:25 PM VET
-- FTA
UPDATE AD_Val_Rule SET Code='FTA_Driver.AD_Client_ID = @AD_Client_ID@ AND (FTA_Driver.M_Shipper_ID = @M_Shipper_ID@ OR @M_Shipper_ID@ = 0)', Description=NULL,Updated=TO_DATE('2014-12-01 19:44:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52220
;

