-- Oct 7, 2013 12:09:32 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68187
;

-- Oct 7, 2013 12:09:32 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68187
;

-- Oct 7, 2013 12:09:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-10-07 12:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68189
;

-- Oct 7, 2013 12:10:00 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=69804
;

-- Oct 7, 2013 12:10:00 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=69804
;

-- Oct 7, 2013 12:10:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-10-07 12:10:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69805
;

-- Oct 7, 2013 12:10:20 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=66348
;

-- Oct 7, 2013 12:10:20 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=66348
;

-- Oct 7, 2013 12:10:28 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Trl WHERE AD_Process_ID=53425
;

-- Oct 7, 2013 12:10:28 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process WHERE AD_Process_ID=53425
;

-- Oct 7, 2013 12:10:39 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=56447
;

-- Oct 7, 2013 12:10:39 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Element WHERE AD_Element_ID=56447
;

-- Oct 7, 2013 12:11:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Conductor',PrintName='Conductor',Description='Conductor de Veículo',Updated=TO_TIMESTAMP('2013-10-07 12:11:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56441 AND AD_Language='es_MX'
;

-- Oct 7, 2013 12:11:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Description='Conductor de Vehículo',Updated=TO_TIMESTAMP('2013-10-07 12:11:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56441 AND AD_Language='es_MX'
;

-- Oct 7, 2013 12:14:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarming.estimatedQty',Updated=TO_TIMESTAMP('2013-10-07 12:14:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66543
;

-- Oct 7, 2013 12:15:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarming.estimatedQty',Updated=TO_TIMESTAMP('2013-10-07 12:15:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65871
;

-- Oct 7, 2013 1:49:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Validar Cultivo',Description='Validar Cultivo',Help='Valida el Area del Cultivo',Updated=TO_TIMESTAMP('2013-10-07 13:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53467 AND AD_Language='es_MX'
;

-- Oct 7, 2013 1:50:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-10-07 13:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68191
;

-- Oct 7, 2013 1:50:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-10-07 13:50:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68192
;

-- Oct 7, 2013 1:50:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-10-07 13:50:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68193
;

-- Oct 7, 2013 1:50:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@C_OrderLine_ID@!0',Updated=TO_TIMESTAMP('2013-10-07 13:50:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69784
;

-- Oct 7, 2013 1:51:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@C_OrderLine_ID@!0',Updated=TO_TIMESTAMP('2013-10-07 13:51:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65871
;

-- Oct 7, 2013 1:51:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET MandatoryLogic='@C_OrderLine_ID@!0',Updated=TO_TIMESTAMP('2013-10-07 13:51:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66543
;

-- Oct 7, 2013 1:51:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@C_OrderLine_ID@!0',Updated=TO_TIMESTAMP('2013-10-07 13:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66609
;

-- Oct 7, 2013 1:52:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET MandatoryLogic=NULL, ReadOnlyLogic='@C_OrderLine_ID@!0',Updated=TO_TIMESTAMP('2013-10-07 13:52:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66543
;

-- Oct 7, 2013 1:54:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-10-07 13:54:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68190
;

-- Oct 7, 2013 1:54:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@C_OrderLine_ID@!0',Updated=TO_TIMESTAMP('2013-10-07 13:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65870
;

-- Oct 7, 2013 2:05:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-10-07 14:05:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68192
;

-- Oct 7, 2013 4:46:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2013-10-07 16:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68316
;

-- Oct 7, 2013 4:47:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Description='Get Weight from Weight Scale', Help='Get Weight from Weight Scale', Name='Get Weight',Updated=TO_TIMESTAMP('2013-10-07 16:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68316
;

-- Oct 7, 2013 4:47:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=68316
;

-- Oct 7, 2013 5:04:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET Name='Obtener Peso',Description='Obtener Peso de Romana',Help='Obtiene el Peso de la Romana',Updated=TO_TIMESTAMP('2013-10-07 17:04:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68316 AND AD_Language='es_MX'
;

