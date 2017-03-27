-- Aug 29, 2013 1:58:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54023,TO_TIMESTAMP('2013-08-29 13:58:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farmer Credit',TO_TIMESTAMP('2013-08-29 13:58:04','YYYY-MM-DD HH24:MI:SS'),100,'FFC')
;

-- Aug 29, 2013 1:58:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54023 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 29, 2013 1:59:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Crédito a Productor',Description='Crédito a Productor',Updated=TO_TIMESTAMP('2013-08-29 13:59:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54023 AND AD_Language='es_VE'
;

-- Aug 29, 2013 2:03:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54024,TO_TIMESTAMP('2013-08-29 14:03:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Loan',TO_TIMESTAMP('2013-08-29 14:03:23','YYYY-MM-DD HH24:MI:SS'),100,'FLN')
;

-- Aug 29, 2013 2:03:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54024 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 29, 2013 2:03:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Préstamo',Updated=TO_TIMESTAMP('2013-08-29 14:03:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54024 AND AD_Language='es_VE'
;

-- Aug 29, 2013 2:03:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Credit', Value='FCR',Updated=TO_TIMESTAMP('2013-08-29 14:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54023
;

-- Aug 29, 2013 2:03:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54023
;

-- Aug 29, 2013 2:04:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Crédito',Description='Crédito',Updated=TO_TIMESTAMP('2013-08-29 14:04:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54023 AND AD_Language='es_VE'
;

-- Aug 29, 2013 2:05:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Farmer Credit', Value='FFC',Updated=TO_TIMESTAMP('2013-08-29 14:05:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54023
;

-- Aug 29, 2013 2:05:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54023
;

-- Aug 29, 2013 2:06:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Crédito a Productor',Description='Crédito a Productor',Updated=TO_TIMESTAMP('2013-08-29 14:06:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54023 AND AD_Language='es_VE'
;

-- Aug 29, 2013 2:06:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Farmer Loan', Value='FFL',Updated=TO_TIMESTAMP('2013-08-29 14:06:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54024
;

-- Aug 29, 2013 2:06:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54024
;

-- Aug 29, 2013 2:06:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Préstamo a Productor',Updated=TO_TIMESTAMP('2013-08-29 14:06:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54024 AND AD_Language='es_VE'
;

-- Aug 29, 2013 2:21:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54025,TO_TIMESTAMP('2013-08-29 14:20:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Movilization Guide',TO_TIMESTAMP('2013-08-29 14:20:52','YYYY-MM-DD HH24:MI:SS'),100,'FMG')
;

-- Aug 29, 2013 2:21:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54025 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 29, 2013 2:27:35 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=54025
;

-- Aug 29, 2013 2:27:35 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=54025
;

-- Aug 29, 2013 2:30:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54026,TO_TIMESTAMP('2013-08-29 14:30:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Movilization Guide',TO_TIMESTAMP('2013-08-29 14:30:03','YYYY-MM-DD HH24:MI:SS'),100,'FMG')
;

-- Aug 29, 2013 2:30:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54026 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 29, 2013 2:30:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Guía de Movilización',Description='Guía de Movilización de Producto',Updated=TO_TIMESTAMP('2013-08-29 14:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54026 AND AD_Language='es_VE'
;

-- Aug 29, 2013 2:31:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54027,TO_TIMESTAMP('2013-08-29 14:31:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Entry Ticket',TO_TIMESTAMP('2013-08-29 14:31:29','YYYY-MM-DD HH24:MI:SS'),100,'FET')
;

-- Aug 29, 2013 2:31:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54027 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 29, 2013 2:31:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Ticket de Entrada',Updated=TO_TIMESTAMP('2013-08-29 14:31:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54027 AND AD_Language='es_VE'
;

-- Aug 29, 2013 2:33:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54028,TO_TIMESTAMP('2013-08-29 14:33:20','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Quality Analysis',TO_TIMESTAMP('2013-08-29 14:33:20','YYYY-MM-DD HH24:MI:SS'),100,'FQA')
;

-- Aug 29, 2013 2:33:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54028 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 29, 2013 2:34:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Análisis de Calidad',Updated=TO_TIMESTAMP('2013-08-29 14:34:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54028 AND AD_Language='es_VE'
;

-- Aug 29, 2013 2:36:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-08-29 14:36:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54028
;

-- Aug 29, 2013 2:42:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54029,TO_TIMESTAMP('2013-08-29 14:42:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Raw Record Weight',TO_TIMESTAMP('2013-08-29 14:42:57','YYYY-MM-DD HH24:MI:SS'),100,'FRW')
;

-- Aug 29, 2013 2:42:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54029 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 29, 2013 2:43:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Raw Material Weight',Updated=TO_TIMESTAMP('2013-08-29 14:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54029
;

-- Aug 29, 2013 2:43:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54029
;

-- Aug 29, 2013 2:45:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Pesada de Materia Prima',Description='Pesada de Materia Prima',Updated=TO_TIMESTAMP('2013-08-29 14:45:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54029 AND AD_Language='es_VE'
;

-- Aug 29, 2013 3:25:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54031,TO_TIMESTAMP('2013-08-29 15:25:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Farmer Liquidation',TO_TIMESTAMP('2013-08-29 15:25:31','YYYY-MM-DD HH24:MI:SS'),100,'FFQ')
;

-- Aug 29, 2013 3:25:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54031 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 29, 2013 3:26:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Liquidación de Materia Prima',Updated=TO_TIMESTAMP('2013-08-29 15:26:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54031 AND AD_Language='es_VE'
;

-- Aug 29, 2013 3:26:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Raw Material Liquidation', Value='FRL',Updated=TO_TIMESTAMP('2013-08-29 15:26:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54031
;

-- Aug 29, 2013 3:26:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54031
;

