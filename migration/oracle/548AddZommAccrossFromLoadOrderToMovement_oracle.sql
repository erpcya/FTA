-- Feb 4, 2015 3:45:33 PM VET
-- FTA
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53771,TO_DATE('2015-02-04 15:45:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_LoadOrder -> M_Movement',TO_DATE('2015-02-04 15:45:31','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Feb 4, 2015 3:45:33 PM VET
-- FTA
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53771 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Feb 4, 2015 3:46:27 PM VET
-- FTA
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,3577,3569,0,53771,323,TO_DATE('2015-02-04 15:46:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2015-02-04 15:46:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 4, 2015 3:47:09 PM VET
-- FTA
UPDATE AD_Ref_Table SET WhereClause=' exists  (select 1 from FTA_LoadOrder lo inner join  FTA_LoadOrderLine lol on  (lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID ) inner join  M_MovementLine iol on  (lol.M_MovementLine_ID = iol.M_MovementLine_ID ) 	where lo.FTA_LoadOrder_ID= @FTA_LoadOrder_ID@ and  M_Movement.M_Movement_ID = iol.M_Movement_ID)',Updated=TO_DATE('2015-02-04 15:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53771
;

-- Feb 4, 2015 3:47:32 PM VET
-- FTA
UPDATE AD_Ref_Table SET AD_Window_ID=170,Updated=TO_DATE('2015-02-04 15:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53771
;

-- Feb 4, 2015 4:20:14 PM VET
-- FTA
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53772,TO_DATE('2015-02-04 16:20:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','M_Movement -> FTA_LoadOrder',TO_DATE('2015-02-04 16:20:08','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Feb 4, 2015 4:20:14 PM VET
-- FTA
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53772 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Feb 4, 2015 4:22:49 PM VET
-- FTA
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,69847,69841,0,53772,53667,53295,TO_DATE('2015-02-04 16:22:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2015-02-04 16:22:49','YYYY-MM-DD HH24:MI:SS'),100,'exists ( select 1 from M_MovementLine iol inner join  FTA_LoadOrderLine lol on  (iol.M_MovementLine_ID = lol.M_MovementLine_ID) where  iol.M_Movement_ID = @M_Movement_ID@ and FTA_LoadOrder.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID )
')
;

-- Feb 4, 2015 4:24:09 PM VET
-- FTA
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54555,TO_DATE('2015-02-04 16:24:08','YYYY-MM-DD HH24:MI:SS'),100,'Load Order/Movement','ECA02','Y','Load Order/Movement',TO_DATE('2015-02-04 16:24:08','YYYY-MM-DD HH24:MI:SS'),100,'LoadOrder/Movement')
;

-- Feb 4, 2015 4:24:09 PM VET
-- FTA
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54555 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Feb 4, 2015 4:24:24 PM VET
-- FTA
UPDATE AD_Ref_List_Trl SET Name='Movimientos de Inventario',Description='Movimientos de Inventario',Updated=TO_DATE('2015-02-04 16:24:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54555 AND AD_Language='es_MX'
;

-- Feb 4, 2015 4:24:52 PM VET
-- FTA
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54556,TO_DATE('2015-02-04 16:24:52','YYYY-MM-DD HH24:MI:SS'),100,'Movement/Load Order','ECA02','Y','Movement/Load Order',TO_DATE('2015-02-04 16:24:52','YYYY-MM-DD HH24:MI:SS'),100,'Movement/LoadOrder')
;

-- Feb 4, 2015 4:24:52 PM VET
-- FTA
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54556 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Feb 4, 2015 4:25:07 PM VET
-- FTA
UPDATE AD_Ref_List_Trl SET Name='Orden de Carga',Description='Orden de Carga',Updated=TO_DATE('2015-02-04 16:25:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54556 AND AD_Language='es_MX'
;

-- Feb 4, 2015 4:25:24 PM VET
-- FTA
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,53771,53772,50027,TO_DATE('2015-02-04 16:25:22','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','FTA_LoadOrder -> M_Movement','LoadOrder/Movement','Movement/LoadOrder','I',TO_DATE('2015-02-04 16:25:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 4, 2015 4:31:54 PM VET
-- FTA
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,53772,53771,50028,TO_DATE('2015-02-04 16:31:53','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','M_Movement -> FTA_LoadOrder','Movement/LoadOrder','LoadOrder/Movement','I',TO_DATE('2015-02-04 16:31:53','YYYY-MM-DD HH24:MI:SS'),100)
;

