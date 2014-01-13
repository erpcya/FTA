-- Nov 18, 2013 9:05:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=53597,Updated=TO_TIMESTAMP('2013-11-18 09:05:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69870
;

-- Nov 18, 2013 9:07:10 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=53595
;

-- Nov 18, 2013 9:07:10 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference WHERE AD_Reference_ID=53595
;

-- Nov 18, 2013 9:16:58 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52250,'AD_Ref_List.Value IN (''DRM'',''DFP'',''MOM'')',TO_TIMESTAMP('2013-11-18 09:16:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_OperationType','S',TO_TIMESTAMP('2013-11-18 09:16:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 18, 2013 9:17:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='FTA_OperationType In DRM,DFP and MOM',Updated=TO_TIMESTAMP('2013-11-18 09:17:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52250
;

-- Nov 18, 2013 9:17:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52250,Updated=TO_TIMESTAMP('2013-11-18 09:17:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69870
;

-- Nov 18, 2013 9:42:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''FBE'' | @DocBaseType@=''FQA'' | @DocBaseType@=''FPR'' | @DocBaseType@=''FCA'' | @DocBaseType@=''FCD'' | @DocBaseType@=''FFC'' | @DocBaseType@=''FET'' | @DocBaseType@=''FTF'' | @DocBaseType@=''FRW'' | @DocBaseType@=''FRL'' | @DocBaseType@=''FFR'' | @DocBaseType@=''FFA'' | @DocBaseType@=''FFE'' | @DocBaseType@=''FMG'' | @DocBaseType@=''FMG'' | @DocBaseType@=''FFL'' | @DocBaseType@=''SOO'' | @DocBaseType@=''DOO''  ', EntityType='ECA02',Updated=TO_TIMESTAMP('2013-11-18 09:42:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70340
;

-- Nov 18, 2013 9:55:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Orden de carga',Updated=TO_TIMESTAMP('2013-11-18 09:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54157 AND AD_Language='es_MX'
;

-- Nov 18, 2013 9:56:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Orden de carga',Updated=TO_TIMESTAMP('2013-11-18 09:56:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54157 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:03:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Despacho Producto a Granel',Updated=TO_TIMESTAMP('2013-11-18 10:03:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54153 AND AD_Language='es_MX'
;

-- Nov 18, 2013 10:03:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Delivery Bull Material', Value='DBM',Updated=TO_TIMESTAMP('2013-11-18 10:03:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54153
;

-- Nov 18, 2013 10:03:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54153
;

-- Nov 18, 2013 10:04:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='AD_Ref_List.Value IN (''DRM'',''DBM'',''MOM'')', Name='FTA_OperationType In DRM,DBM and MOM',Updated=TO_TIMESTAMP('2013-11-18 10:04:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52250
;

-- Nov 18, 2013 10:05:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Product Bulk Receipt', Value='PBR',Updated=TO_TIMESTAMP('2013-11-18 10:05:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54150
;

-- Nov 18, 2013 10:05:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54150
;

-- Nov 18, 2013 10:05:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Recepción de Producto a Granel',Updated=TO_TIMESTAMP('2013-11-18 10:05:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54150 AND AD_Language='es_MX'
;

-- Nov 18, 2013 10:05:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Recepción de Producto a Granel',Updated=TO_TIMESTAMP('2013-11-18 10:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54150 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:34:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Capacidad de Carga',PrintName='Capacidad de Carga',Updated=TO_TIMESTAMP('2013-11-18 10:34:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56075 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:35:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_UserQuery (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_User_ID,AD_UserQuery_ID,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,203,276,100,50003,TO_TIMESTAMP('2013-11-18 10:35:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','** Last Query **',TO_TIMESTAMP('2013-11-18 10:35:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 18, 2013 10:35:35 AM VET
-- Farming Technical Assistance
UPDATE AD_UserQuery SET UpdatedBy=100,Updated=TO_TIMESTAMP('2013-11-18 10:35:35','YYYY-MM-DD HH24:MI:SS') WHERE AD_UserQuery_ID=50003
;

-- Nov 18, 2013 10:36:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Dirección',PrintName='Dirección',Updated=TO_TIMESTAMP('2013-11-18 10:36:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56482 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:36:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='No. Doc. Afectado',PrintName='No. Doc. Afectado',Updated=TO_TIMESTAMP('2013-11-18 10:36:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56098 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:36:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Afecta Libro',PrintName='Afecta Libro',Updated=TO_TIMESTAMP('2013-11-18 10:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56127 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:36:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Alícuota',PrintName='Alícuota',Updated=TO_TIMESTAMP('2013-11-18 10:36:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56060 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:37:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='No Asignación',PrintName='No Asignación',Updated=TO_TIMESTAMP('2013-11-18 10:37:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56151 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:37:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='No Asignación',PrintName='No Asignación',Updated=TO_TIMESTAMP('2013-11-18 10:37:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56151 AND AD_Language='es_MX'
;

-- Nov 18, 2013 10:37:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Análisis',PrintName='Tipo de Análisis',Updated=TO_TIMESTAMP('2013-11-18 10:37:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56251 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:37:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Description='Tipo de Análisis, ejem: Tolva, Primario....',Updated=TO_TIMESTAMP('2013-11-18 10:37:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56251 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:38:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Monto Aprobado',PrintName='Monto Aprobado',Updated=TO_TIMESTAMP('2013-11-18 10:38:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56534 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:38:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Description='Monto Aprobado en Acta',Updated=TO_TIMESTAMP('2013-11-18 10:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56534 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:38:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Cantidad Aprobada',PrintName='Cantidad Aprobada',Updated=TO_TIMESTAMP('2013-11-18 10:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56535 AND AD_Language='es_VE'
;

-- Nov 18, 2013 10:39:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Description='Cantidad Aprobada en Acta',Updated=TO_TIMESTAMP('2013-11-18 10:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56535 AND AD_Language='es_VE'
;

