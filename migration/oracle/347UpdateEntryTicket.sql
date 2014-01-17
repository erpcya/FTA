-- Jan 16, 2014 7:49:23 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=72128
;

-- Jan 16, 2014 7:49:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=72128
;

-- Jan 16, 2014 7:49:33 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=71281
;

-- Jan 16, 2014 7:49:33 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=71281
;

-- Jan 16, 2014 8:01:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''DBM''',Updated=TO_DATE('2014-01-16 20:01:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72125
;

-- Jan 16, 2014 8:02:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-01-16 20:02:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72125
;

-- Jan 16, 2014 8:06:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@=''PBR''',Updated=TO_DATE('2014-01-16 20:06:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72125
;

-- Jan 16, 2014 8:36:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle Análisis de Calidad',Updated=TO_DATE('2014-01-16 20:36:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551 AND AD_Language='es_MX'
;

-- Jan 16, 2014 8:37:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle Análisis de Calidad',Updated=TO_DATE('2014-01-16 20:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551 AND AD_Language='es_VE'
;

-- Jan 16, 2014 8:39:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Registro de Peso con Análisis de Calidad',Updated=TO_DATE('2014-01-16 20:39:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551 AND AD_Language='es_MX'
;

-- Jan 16, 2014 8:40:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Registro de Peso con Análisis de Calidad',Updated=TO_DATE('2014-01-16 20:40:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53551 AND AD_Language='es_VE'
;

