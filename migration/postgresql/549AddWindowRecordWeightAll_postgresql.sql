-- Feb 5, 2015 9:05:48 AM VET
-- FTA
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53404,TO_TIMESTAMP('2015-02-05 09:05:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','Record Weight (Not Filter)','N',TO_TIMESTAMP('2015-02-05 09:05:44','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Feb 5, 2015 9:05:49 AM VET
-- FTA
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53404 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Feb 5, 2015 9:05:49 AM VET
-- FTA
INSERT INTO AD_Window_Access (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,0,53404,TO_TIMESTAMP('2015-02-05 09:05:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2015-02-05 09:05:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 5, 2015 9:05:49 AM VET
-- FTA
INSERT INTO AD_Window_Access (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,102,53404,TO_TIMESTAMP('2015-02-05 09:05:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2015-02-05 09:05:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 5, 2015 9:05:49 AM VET
-- FTA
INSERT INTO AD_Window_Access (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,103,53404,TO_TIMESTAMP('2015-02-05 09:05:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2015-02-05 09:05:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 5, 2015 9:05:49 AM VET
-- FTA
INSERT INTO AD_Window_Access (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,50001,53404,TO_TIMESTAMP('2015-02-05 09:05:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2015-02-05 09:05:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 5, 2015 9:05:50 AM VET
-- FTA
INSERT INTO AD_Window_Access (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,50002,53404,TO_TIMESTAMP('2015-02-05 09:05:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2015-02-05 09:05:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 5, 2015 9:09:51 AM VET
-- FTA
UPDATE AD_Window_Trl SET Name='Registro del Peso (Sin Filtro)',Updated=TO_TIMESTAMP('2015-02-05 09:09:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53404 AND AD_Language='es_MX'
;

-- Feb 5, 2015 9:10:17 AM VET
-- FTA
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53940,0,53404,TO_TIMESTAMP('2015-02-05 09:10:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Record Weight (Not Filter)',TO_TIMESTAMP('2015-02-05 09:10:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 5, 2015 9:10:17 AM VET
-- FTA
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53940 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Feb 5, 2015 9:10:17 AM VET
-- FTA
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2015-02-05 09:10:17','YYYY-MM-DD HH24:MI:SS'),100,'Y',53940,0,999,TO_TIMESTAMP('2015-02-05 09:10:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 5, 2015 9:10:22 AM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53602, SeqNo=2,Updated=TO_TIMESTAMP('2015-02-05 09:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53940
;

-- Feb 5, 2015 9:10:22 AM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53602, SeqNo=3,Updated=TO_TIMESTAMP('2015-02-05 09:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53833
;

-- Feb 5, 2015 9:10:23 AM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53602, SeqNo=4,Updated=TO_TIMESTAMP('2015-02-05 09:10:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53746
;

-- Feb 5, 2015 9:14:16 AM VET
-- FTA
UPDATE AD_Tab_Trl SET Name='Registro del Peso',Updated=TO_TIMESTAMP('2015-02-05 09:14:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=54053 AND AD_Language='es_MX'
;

-- Feb 5, 2015 9:14:22 AM VET
-- FTA
UPDATE AD_Tab_Trl SET Name='Registro del Peso',Updated=TO_TIMESTAMP('2015-02-05 09:14:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=54054 AND AD_Language='es_MX'
;

-- Feb 5, 2015 9:14:48 AM VET
-- FTA
UPDATE AD_Tab_Trl SET Name='Registro del Peso Detalle',Updated=TO_TIMESTAMP('2015-02-05 09:14:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=54054 AND AD_Language='es_MX'
;

-- Feb 5, 2015 9:16:18 AM VET
-- FTA
UPDATE AD_Tab SET WhereClause=NULL,Updated=TO_TIMESTAMP('2015-02-05 09:16:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=54053
;

-- Feb 5, 2015 9:18:39 AM VET
-- FTA
UPDATE AD_Ref_Table SET AD_Window_ID=53404,Updated=TO_TIMESTAMP('2015-02-05 09:18:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53632
;

-- Feb 5, 2015 9:39:35 AM VET
-- FTA
UPDATE AD_Window SET Name='Record Weight (All)',Updated=TO_TIMESTAMP('2015-02-05 09:39:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53404
;

-- Feb 5, 2015 9:39:35 AM VET
-- FTA
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=53404
;

-- Feb 5, 2015 9:39:35 AM VET
-- FTA
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Record Weight (All)',Updated=TO_TIMESTAMP('2015-02-05 09:39:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53940
;

-- Feb 5, 2015 9:39:35 AM VET
-- FTA
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53940
;

-- Feb 5, 2015 9:39:41 AM VET
-- FTA
UPDATE AD_Window_Trl SET Name='Registro del Peso (Todos)',Updated=TO_TIMESTAMP('2015-02-05 09:39:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53404 AND AD_Language='es_MX'
;

