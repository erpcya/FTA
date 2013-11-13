-- Nov 12, 2013 10:03:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Form (AccessLevel,AD_Client_ID,AD_Form_ID,AD_Org_ID,Classname,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,Name,Updated,UpdatedBy) VALUES ('3',0,53040,0,'org.spin.form.VLoadOrder',TO_TIMESTAMP('2013-11-12 10:03:00','YYYY-MM-DD HH24:MI:SS'),100,'Load Order for Sales and Distribution','ECA02','Y','N','Load Order',TO_TIMESTAMP('2013-11-12 10:03:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2013 10:03:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Form_Trl (AD_Language,AD_Form_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Form_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Form t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Form_ID=53040 AND NOT EXISTS (SELECT * FROM AD_Form_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Form_ID=t.AD_Form_ID)
;

-- Nov 12, 2013 10:03:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Form_Trl SET Name='Orden de Carga',Description='Orden de Carga para Despacho y Movimiento de Inventario',Updated=TO_TIMESTAMP('2013-11-12 10:03:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=53040 AND AD_Language='es_MX'
;

-- Nov 12, 2013 10:03:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Form_Trl SET Name='Orden de Carga',Updated=TO_TIMESTAMP('2013-11-12 10:03:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=53040 AND AD_Language='es_VE'
;

-- Nov 12, 2013 10:04:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Form_Trl SET Description='Orden de Carga para Despacho y Movimiento de Inventario',Updated=TO_TIMESTAMP('2013-11-12 10:04:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=53040 AND AD_Language='es_VE'
;

-- Nov 12, 2013 10:09:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53684,0,TO_TIMESTAMP('2013-11-12 10:09:13','YYYY-MM-DD HH24:MI:SS'),100,'Material Load Management','ECA02','Y','Y','N','N','Y','Material Load Management',TO_TIMESTAMP('2013-11-12 10:09:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2013 10:09:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53684 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Nov 12, 2013 10:09:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-11-12 10:09:14','YYYY-MM-DD HH24:MI:SS'),100,'Y',53684,0,999,TO_TIMESTAMP('2013-11-12 10:09:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2013 10:09:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Gestión de Carga de Material',Description='Gestión de Carga de Material',Updated=TO_TIMESTAMP('2013-11-12 10:09:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53684 AND AD_Language='es_MX'
;

-- Nov 12, 2013 10:09:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Gestión de Carga de Material',Description='Gestión de Carga de Material',Updated=TO_TIMESTAMP('2013-11-12 10:09:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53684 AND AD_Language='es_VE'
;

-- Nov 12, 2013 10:10:13 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0,Updated=TO_TIMESTAMP('2013-11-12 10:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53684
;

-- Nov 12, 2013 10:10:13 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1,Updated=TO_TIMESTAMP('2013-11-12 10:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53654
;

-- Nov 12, 2013 10:10:13 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_TIMESTAMP('2013-11-12 10:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Nov 12, 2013 10:10:14 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_TIMESTAMP('2013-11-12 10:10:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Nov 12, 2013 10:10:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Form_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('X',0,53040,53685,0,TO_TIMESTAMP('2013-11-12 10:10:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Load Order',TO_TIMESTAMP('2013-11-12 10:10:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2013 10:10:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53685 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Nov 12, 2013 10:10:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-11-12 10:10:39','YYYY-MM-DD HH24:MI:SS'),100,'Y',53685,0,999,TO_TIMESTAMP('2013-11-12 10:10:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2013 10:10:44 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=0,Updated=TO_TIMESTAMP('2013-11-12 10:10:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53685
;

-- Nov 12, 2013 10:11:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Form SET Name='Generate Load Order',Updated=TO_TIMESTAMP('2013-11-12 10:11:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=53040
;

-- Nov 12, 2013 10:11:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Form_Trl SET IsTranslated='N' WHERE AD_Form_ID=53040
;

-- Nov 12, 2013 10:11:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Form_Trl SET Name='Generar Orden de Carga',Updated=TO_TIMESTAMP('2013-11-12 10:11:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=53040 AND AD_Language='es_MX'
;

-- Nov 12, 2013 10:11:19 AM VET
-- Farming Technical Assistance
UPDATE AD_Form_Trl SET Name='Generar Orden de Carga',Updated=TO_TIMESTAMP('2013-11-12 10:11:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=53040 AND AD_Language='es_VE'
;

-- Nov 12, 2013 10:11:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Name='Generate Load Order',Updated=TO_TIMESTAMP('2013-11-12 10:11:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53685
;

-- Nov 12, 2013 10:11:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53685
;

