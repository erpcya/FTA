-- Oct 30, 2014 9:49:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54508,TO_TIMESTAMP('2014-10-30 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,'Load Order/Invoice','ECA02','Y','Load Order/Invoice',TO_TIMESTAMP('2014-10-30 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,'LoadOrder/Invoice')
;

-- Oct 30, 2014 9:49:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54508 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 30, 2014 9:50:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Orden De Carga/Factura',Description='Orden De Carga/Factura',Updated=TO_TIMESTAMP('2014-10-30 09:50:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54508 AND AD_Language='es_VE'
;

-- Oct 30, 2014 9:50:53 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53756,TO_TIMESTAMP('2014-10-30 09:50:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_LoadOrder -> C_Invoice',TO_TIMESTAMP('2014-10-30 09:50:47','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Oct 30, 2014 9:50:53 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53756 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Oct 30, 2014 9:51:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,3492,3484,0,53756,318,TO_TIMESTAMP('2014-10-30 09:51:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2014-10-30 09:51:47','YYYY-MM-DD HH24:MI:SS'),100,' EXISTS (
    SELECT 1
    FROM FTA_LoadOrder lo
    INNER JOIN FTA_LoadOrderLine lol ON (lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID )
    INNER JOIN C_InvoiceLine il ON (lol.C_InvoiceLine_ID = il.C_InvoiceLine_ID )
    WHERE 
        lo.FTA_LoadOrder_ID=@FTA_LoadOrder_ID@
        AND C_Invoice.C_Invoice_ID = il.C_Invoice_ID   
)')
;

-- Oct 30, 2014 9:52:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=167,Updated=TO_TIMESTAMP('2014-10-30 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53756
;

-- Oct 30, 2014 9:52:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,53756,53594,50023,TO_TIMESTAMP('2014-10-30 09:52:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','FTA_LoadOrder <-> C_Invoice','LoadOrder/Invoice','Allocation/Liquidation','I',TO_TIMESTAMP('2014-10-30 09:52:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2014 9:52:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54509,TO_TIMESTAMP('2014-10-30 09:52:55','YYYY-MM-DD HH24:MI:SS'),100,'Invoice/Load Order','ECA02','Y','Invoice/Load Order',TO_TIMESTAMP('2014-10-30 09:52:55','YYYY-MM-DD HH24:MI:SS'),100,'Invoice/LoadOrder')
;

-- Oct 30, 2014 9:52:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54509 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 30, 2014 9:53:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Factura/Orden de Carga',Description='Factura/Orden de Carga',Updated=TO_TIMESTAMP('2014-10-30 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54509 AND AD_Language='es_VE'
;

-- Oct 30, 2014 9:53:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53757,TO_TIMESTAMP('2014-10-30 09:53:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','C_Invoice -> FTA_LoadOrder ',TO_TIMESTAMP('2014-10-30 09:53:37','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Oct 30, 2014 9:53:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53757 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Oct 30, 2014 9:54:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,69847,69841,0,53757,53667,TO_TIMESTAMP('2014-10-30 09:54:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2014-10-30 09:54:20','YYYY-MM-DD HH24:MI:SS'),100,'EXISTS (
    SELECT 1 
    FROM C_InvoiceLine il
    INNER JOIN FTA_LoadOrderLine lol ON (il.C_InvoiceLine_ID = lol.C_InvoiceLine_ID)
    WHERE 
        il.C_Invoice_ID = @C_Invoice_ID@
        AND FTA_LoadOrder.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID
)')
;

-- Oct 30, 2014 9:54:27 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Target_ID=53757, Role_Target='Invoice/LoadOrder',Updated=TO_TIMESTAMP('2014-10-30 09:54:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50023
;

-- Oct 30, 2014 9:56:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='exists (select 1 from FTA_LoadOrder lo inner join FTA_LoadOrderLine lol on (lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID )
    inner join C_InvoiceLine il on (lol.C_InvoiceLine_ID = il.C_InvoiceLine_ID )
    where lo.FTA_LoadOrder_ID=@FTA_LoadOrder_ID@ and C_Invoice.C_Invoice_ID = il.C_Invoice_ID   
)',Updated=TO_TIMESTAMP('2014-10-30 09:56:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53756
;

-- Oct 30, 2014 9:57:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='exists (select 1 from C_InvoiceLine il inner join FTA_LoadOrderLine lol ON (il.C_InvoiceLine_ID = lol.C_InvoiceLine_ID) where il.C_Invoice_ID = @C_Invoice_ID@ and FTA_LoadOrder.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID)',Updated=TO_TIMESTAMP('2014-10-30 09:57:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53757
;

-- Oct 30, 2014 9:59:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,53757,53756,50024,TO_TIMESTAMP('2014-10-30 09:59:50','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','C_Invoice -> FTA_LoadOrder','Invoice/LoadOrder','LoadOrder/Invoice','I',TO_TIMESTAMP('2014-10-30 09:59:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2014 10:17:07 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET Name='FTA_LoadOrder -> C_Invoice',Updated=TO_TIMESTAMP('2014-10-30 10:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50023
;

-- Oct 30, 2014 10:17:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54510,TO_TIMESTAMP('2014-10-30 10:17:54','YYYY-MM-DD HH24:MI:SS'),100,'Load Order/Shipment','ECA02','Y','Load Order/Shipment',TO_TIMESTAMP('2014-10-30 10:17:54','YYYY-MM-DD HH24:MI:SS'),100,'LoadOrder/Shipment')
;

-- Oct 30, 2014 10:17:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54510 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 30, 2014 10:18:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Load Order/Shipment Receipt',Description='Load Order/Shipment Receipt',Updated=TO_TIMESTAMP('2014-10-30 10:18:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54510 AND AD_Language='es_VE'
;

-- Oct 30, 2014 10:18:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Description='Load Order/Shipment Receipt', Name='Load Order/Shipment Receipt', Value='LoadOrder/ShipmentReceipt',Updated=TO_TIMESTAMP('2014-10-30 10:18:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54510
;

-- Oct 30, 2014 10:18:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54510
;

-- Oct 30, 2014 10:19:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Orden de Carga/Entrega-Recibo',Description='Orden de Carga/Entrega-Recibo',Updated=TO_TIMESTAMP('2014-10-30 10:19:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54510 AND AD_Language='es_VE'
;

-- Oct 30, 2014 10:19:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54511,TO_TIMESTAMP('2014-10-30 10:19:32','YYYY-MM-DD HH24:MI:SS'),100,'Shipment Receipt/Load Order','ECA02','Y','Shipment Receipt/Load Order',TO_TIMESTAMP('2014-10-30 10:19:32','YYYY-MM-DD HH24:MI:SS'),100,'ShipmentReceipt/LoadOrder')
;

-- Oct 30, 2014 10:19:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54511 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 30, 2014 10:19:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Entrega-Recibo/Orden de Carga',Description='Entrega-Recibo/Orden de Carga',Updated=TO_TIMESTAMP('2014-10-30 10:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54511 AND AD_Language='es_VE'
;

-- Oct 30, 2014 10:20:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53758,TO_TIMESTAMP('2014-10-30 10:20:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_LoadOrder -> M_InOut',TO_TIMESTAMP('2014-10-30 10:20:30','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Oct 30, 2014 10:20:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53758 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Oct 30, 2014 10:21:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,3791,3521,0,53758,319,TO_TIMESTAMP('2014-10-30 10:21:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2014-10-30 10:21:34','YYYY-MM-DD HH24:MI:SS'),100,'exists  (select 1 from FTA_LoadOrder lo inner join  FTA_LoadOrderLine lol on  (lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID ) inner join  M_InOutLine iol on  (lol.M_InOutLine_ID = iol.M_InOutLine_ID ) where           lo.FTA_LoadOrder_ID=@FTA_LoadOrder_ID@ and  M_InOut.M_InOut_ID = iol.M_InOut_ID)')
;

-- Oct 30, 2014 10:21:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,53758,53757,50025,TO_TIMESTAMP('2014-10-30 10:21:41','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','FTA_LoadOrder -> M_InOut','LoadOrder/ShipmentReceipt','Invoice/LoadOrder','I',TO_TIMESTAMP('2014-10-30 10:21:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2014 10:22:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53759,TO_TIMESTAMP('2014-10-30 10:22:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','M_InOut -> FTA_LoadOrder',TO_TIMESTAMP('2014-10-30 10:22:29','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Oct 30, 2014 10:22:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53759 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Oct 30, 2014 10:23:23 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,69847,69841,0,53759,53667,TO_TIMESTAMP('2014-10-30 10:23:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2014-10-30 10:23:22','YYYY-MM-DD HH24:MI:SS'),100,'exists  ( select 1 from M_INOutLine iol inner join  FTA_LoadOrderLine lol on  (iol.M_InOutLine_ID = lol.M_InOutLine_ID) where  iol.M_INOut_ID = @M_INOut_ID@ and  FTA_LoadOrder.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID )')
;

-- Oct 30, 2014 10:23:45 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Target_ID=53759, Role_Target='ShipmentReceipt/LoadOrder',Updated=TO_TIMESTAMP('2014-10-30 10:23:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50025
;

-- Oct 30, 2014 10:24:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,53759,53758,50026,TO_TIMESTAMP('2014-10-30 10:24:20','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','M_InOut -> FTA_LoadOrder','ShipmentReceipt/LoadOrder','LoadOrder/ShipmentReceipt','I',TO_TIMESTAMP('2014-10-30 10:24:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2014 10:25:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='exists ( select 1 from M_INOutLine iol inner join  FTA_LoadOrderLine lol on  (iol.M_InOutLine_ID = lol.M_InOutLine_ID) where  iol.M_InOut_ID = @M_InOut_ID@ and  FTA_LoadOrder.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID )',Updated=TO_TIMESTAMP('2014-10-30 10:25:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53759
;

-- Oct 30, 2014 10:25:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=53295,Updated=TO_TIMESTAMP('2014-10-30 10:25:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53759
;

-- Oct 30, 2014 10:26:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=169,Updated=TO_TIMESTAMP('2014-10-30 10:26:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53758
;

-- Oct 30, 2014 10:26:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=53295,Updated=TO_TIMESTAMP('2014-10-30 10:26:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53757
;

