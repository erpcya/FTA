-- 13/11/2013 10:24:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET VFormat='LLL',Updated=TO_TIMESTAMP('2013-11-13 10:24:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53597
;

-- 13/11/2013 10:26:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Product Fuel Receipt', Value='PFR',Updated=TO_TIMESTAMP('2013-11-13 10:26:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54150
;

-- 13/11/2013 10:26:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54150
;

-- 13/11/2013 10:26:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Material Input Movement', Value='MIM',Updated=TO_TIMESTAMP('2013-11-13 10:26:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54152
;

-- 13/11/2013 10:26:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54152
;

-- 13/11/2013 10:28:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53597,54154,TO_TIMESTAMP('2013-11-13 10:28:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Delivery Raw Material',TO_TIMESTAMP('2013-11-13 10:28:10','YYYY-MM-DD HH24:MI:SS'),100,'DRM')
;

-- 13/11/2013 10:28:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54154 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 13/11/2013 10:32:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53597,54155,TO_TIMESTAMP('2013-11-13 10:32:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Material Output Movement',TO_TIMESTAMP('2013-11-13 10:32:17','YYYY-MM-DD HH24:MI:SS'),100,'MOM')
;

-- 13/11/2013 10:32:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54155 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 13/11/2013 10:32:45 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53597,54156,TO_TIMESTAMP('2013-11-13 10:32:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Other Record Weight',TO_TIMESTAMP('2013-11-13 10:32:44','YYYY-MM-DD HH24:MI:SS'),100,'ORW')
;

-- 13/11/2013 10:32:45 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54156 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 13/11/2013 10:33:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Otras Pesadas',Updated=TO_TIMESTAMP('2013-11-13 10:33:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54156 AND AD_Language='es_MX'
;

-- 13/11/2013 10:33:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Otras Pesadas',Updated=TO_TIMESTAMP('2013-11-13 10:33:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54156 AND AD_Language='es_VE'
;

-- 13/11/2013 10:33:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Despacho de Materia Prima',Updated=TO_TIMESTAMP('2013-11-13 10:33:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54154 AND AD_Language='es_MX'
;

-- 13/11/2013 10:33:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Despacho de Materia Prima',Updated=TO_TIMESTAMP('2013-11-13 10:33:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54154 AND AD_Language='es_VE'
;

-- 13/11/2013 10:34:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Movimiento de Salida',Updated=TO_TIMESTAMP('2013-11-13 10:34:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54155 AND AD_Language='es_MX'
;

-- 13/11/2013 10:34:22 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Movimiento de Salida',Updated=TO_TIMESTAMP('2013-11-13 10:34:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54155 AND AD_Language='es_VE'
;

-- 13/11/2013 10:44:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-11-13 10:44:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69898
;

