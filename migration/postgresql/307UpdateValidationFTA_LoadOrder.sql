-- Nov 19, 2013 3:33:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52250,Updated=TO_TIMESTAMP('2013-11-19 15:33:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69898
;

-- Nov 19, 2013 3:34:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Delivery Bulk Material',Updated=TO_TIMESTAMP('2013-11-19 15:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54153
;

-- Nov 19, 2013 3:34:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54153
;

-- Nov 19, 2013 3:34:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Despacho Producto a Granel',Updated=TO_TIMESTAMP('2013-11-19 15:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54153 AND AD_Language='es_VE'
;

-- Nov 19, 2013 3:39:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Delivery Finished Product', Value='DFP',Updated=TO_TIMESTAMP('2013-11-19 15:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54154
;

-- Nov 19, 2013 3:39:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54154
;

-- Nov 19, 2013 3:39:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Despacho Producto Terminado',Updated=TO_TIMESTAMP('2013-11-19 15:39:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54154 AND AD_Language='es_MX'
;

-- Nov 19, 2013 3:39:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Despacho Producto Terminado',Updated=TO_TIMESTAMP('2013-11-19 15:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54154 AND AD_Language='es_VE'
;

-- Nov 19, 2013 3:43:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='AD_Ref_List.Value IN (''DFP'',''DBM'',''MOM'')', Name='FTA_OperationType In DFP,DBM and MOM',Updated=TO_TIMESTAMP('2013-11-19 15:43:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52250
;

-- Nov 19, 2013 3:45:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2013-11-19 15:45:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69898
;

