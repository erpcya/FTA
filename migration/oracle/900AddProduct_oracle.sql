-- 10/09/2013 10:39:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_DATE('2013-09-10 10:39:40','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000000,'Insumos',0,TO_DATE('2013-09-10 10:39:40','YYYY-MM-DD HH24:MI:SS'),100,'Insumos')
;

-- 10/09/2013 10:39:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000000)
;

-- 10/09/2013 10:40:03 AM VET
-- Farming Technical Assistance
INSERT INTO C_TaxCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsDefault,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-10 10:40:03','YYYY-MM-DD HH24:MI:SS'),100,1000000,'Y','N','IVA',TO_DATE('2013-09-10 10:40:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:40:03 AM VET
-- Farming Technical Assistance
INSERT INTO C_TaxCategory_Trl (AD_Language,C_TaxCategory_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_TaxCategory_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_TaxCategory t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_TaxCategory_ID=1000000 AND NOT EXISTS (SELECT * FROM C_TaxCategory_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_TaxCategory_ID=t.C_TaxCategory_ID)
;

-- 10/09/2013 10:40:18 AM VET
-- Farming Technical Assistance
INSERT INTO C_TaxCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsDefault,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-10 10:40:18','YYYY-MM-DD HH24:MI:SS'),100,1000001,'Y','N','EXENTO',TO_DATE('2013-09-10 10:40:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:40:18 AM VET
-- Farming Technical Assistance
INSERT INTO C_TaxCategory_Trl (AD_Language,C_TaxCategory_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_TaxCategory_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_TaxCategory t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_TaxCategory_ID=1000001 AND NOT EXISTS (SELECT * FROM C_TaxCategory_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_TaxCategory_ID=t.C_TaxCategory_ID)
;

-- 10/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
UPDATE C_UOM SET Name='kilogramo',Updated=TO_DATE('2013-09-10 10:41:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_UOM_ID=50001
;

-- 10/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
UPDATE C_UOM_Trl SET Description=NULL,Name='kilogramo',UOMSymbol='Kg',IsTranslated='Y' WHERE C_UOM_ID=50001
;

-- 10/09/2013 10:41:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_DATE('2013-09-10 10:41:16','YYYY-MM-DD HH24:MI:SS'),100,1000000,50001,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000000,1000000,'Arroz','N','I',0,0,0,0,TO_DATE('2013-09-10 10:41:16','YYYY-MM-DD HH24:MI:SS'),100,'10000001',0,0)
;

-- 10/09/2013 10:41:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000000 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 10/09/2013 10:41:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000000 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000000)
;

-- 10/09/2013 10:41:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1000000, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000000)
;

-- 10/09/2013 10:41:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_DATE('2013-09-10 10:41:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,TO_DATE('2013-09-10 10:41:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:41:17 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000000,0,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:41:17 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000000,0,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:41:17 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000000,0,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:41:17 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000000,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:41:17 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000000,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:41:17 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000000,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:41:17 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000000,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:41:17 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000000,TO_DATE('2013-09-10 10:41:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:41:27 AM VET
-- Farming Technical Assistance
UPDATE M_Product SET Value='Arroz',Updated=TO_DATE('2013-09-10 10:41:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Product_ID=1000000
;

-- 10/09/2013 10:43:45 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmingStage (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,FTA_FarmingStage_ID,IsActive,Name,Processing,SeqNo,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:43:45','YYYY-MM-DD HH24:MI:SS'),100,0,2.000000000000,1000000,'Y','Germinación a Emergencia','N',0,TO_DATE('2013-09-10 10:43:45','YYYY-MM-DD HH24:MI:SS'),100,'Germinación a Emergencia')
;

-- 10/09/2013 10:45:01 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmingStage (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,FTA_FarmingStage_ID,IsActive,Name,Processing,SeqNo,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:45:01','YYYY-MM-DD HH24:MI:SS'),100,3.000000000000,8.000000000000,1000001,'Y','Plántula','N',10,TO_DATE('2013-09-10 10:45:01','YYYY-MM-DD HH24:MI:SS'),100,'Plántula')
;

-- 10/09/2013 10:49:33 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmingStage (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,FTA_FarmingStage_ID,IsActive,Name,Processing,SeqNo,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:49:32','YYYY-MM-DD HH24:MI:SS'),100,9.000000000000,45.000000000000,1000002,'Y','Macollamiento','N',20,TO_DATE('2013-09-10 10:49:32','YYYY-MM-DD HH24:MI:SS'),100,'Macollamiento')
;

-- 10/09/2013 10:50:17 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmingStage (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,FTA_FarmingStage_ID,IsActive,Name,Processing,SeqNo,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:50:17','YYYY-MM-DD HH24:MI:SS'),100,46.000000000000,53.000000000000,1000003,'Y','Elongación del Tallo','N',30,TO_DATE('2013-09-10 10:50:17','YYYY-MM-DD HH24:MI:SS'),100,'Elongación del Tallo')
;

-- 10/09/2013 10:51:11 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmingStage (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,FTA_FarmingStage_ID,IsActive,Name,Processing,SeqNo,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:51:11','YYYY-MM-DD HH24:MI:SS'),100,54.000000000000,65.000000000000,1000004,'Y','Inicio de Panícula','N',40,TO_DATE('2013-09-10 10:51:11','YYYY-MM-DD HH24:MI:SS'),100,'Inicio de Panícula')
;

-- 10/09/2013 10:51:56 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmingStage (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,FTA_FarmingStage_ID,IsActive,Name,Processing,SeqNo,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:51:56','YYYY-MM-DD HH24:MI:SS'),100,66.000000000000,86.000000000000,1000005,'Y','Desarrollo de Panícula','N',50,TO_DATE('2013-09-10 10:51:56','YYYY-MM-DD HH24:MI:SS'),100,'Desarrollo de Panícula')
;

-- 10/09/2013 10:52:53 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmingStage (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,FTA_FarmingStage_ID,IsActive,Name,Processing,SeqNo,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:52:53','YYYY-MM-DD HH24:MI:SS'),100,87.000000000000,94.000000000000,1000006,'Y','Floración','N',60,TO_DATE('2013-09-10 10:52:53','YYYY-MM-DD HH24:MI:SS'),100,'Floración')
;

-- 10/09/2013 10:53:30 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmingStage (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,FTA_FarmingStage_ID,IsActive,Name,Processing,SeqNo,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:53:30','YYYY-MM-DD HH24:MI:SS'),100,95.000000000000,105.000000000000,1000007,'Y','Grano Lechoso','N',70,TO_DATE('2013-09-10 10:53:30','YYYY-MM-DD HH24:MI:SS'),100,'Grano Lechoso')
;

-- 10/09/2013 10:53:58 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmingStage (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,FTA_FarmingStage_ID,IsActive,Name,Processing,SeqNo,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:53:58','YYYY-MM-DD HH24:MI:SS'),100,106.000000000000,113.000000000000,1000008,'Y','Grano Pastoso','N',80,TO_DATE('2013-09-10 10:53:58','YYYY-MM-DD HH24:MI:SS'),100,'Grano Pastoso')
;

-- 10/09/2013 10:54:36 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmingStage (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,FTA_FarmingStage_ID,IsActive,Name,Processing,SeqNo,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:54:36','YYYY-MM-DD HH24:MI:SS'),100,114.000000000000,125.000000000000,1000009,'Y','Maduración','N',90,TO_DATE('2013-09-10 10:54:36','YYYY-MM-DD HH24:MI:SS'),100,'Maduración')
;

-- 10/09/2013 10:56:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_DATE('2013-09-10 10:56:02','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000001,'Hormona de Crecimiento',0,TO_DATE('2013-09-10 10:56:02','YYYY-MM-DD HH24:MI:SS'),100,'Hormona de Crecimiento')
;

-- 10/09/2013 10:56:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000001, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000001)
;

-- 10/09/2013 10:58:39 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM (AD_Client_ID,AD_Org_ID,CostingPrecision,Created,CreatedBy,C_UOM_ID,IsActive,IsDefault,Name,StdPrecision,UOMSymbol,Updated,UpdatedBy,X12DE355) VALUES (11,0,0,TO_DATE('2013-09-10 10:58:39','YYYY-MM-DD HH24:MI:SS'),100,1000000,'Y','N','Sobre',2,'Sobre',TO_DATE('2013-09-10 10:58:39','YYYY-MM-DD HH24:MI:SS'),100,'Sb')
;

-- 10/09/2013 10:58:39 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM_Trl (AD_Language,C_UOM_ID, Description,Name,UOMSymbol, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_UOM_ID, t.Description,t.Name,t.UOMSymbol, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_UOM t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_UOM_ID=1000000 AND NOT EXISTS (SELECT * FROM C_UOM_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_UOM_ID=t.C_UOM_ID)
;

-- 10/09/2013 10:58:51 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_SuggestedProduct (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,Dosage_Uom_ID,FTA_SuggestedProduct_ID,IsActive,M_Product_Category_ID,Name,QtyDosage,SeqNo,Updated,UpdatedBy) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:58:51','YYYY-MM-DD HH24:MI:SS'),100,3.000000000000,105.000000000000,1000000,1000000,'Y',1000001,'Newgibb',1.000000000000,0,TO_DATE('2013-09-10 10:58:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:59:06 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_SuggestedProduct (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,Dosage_Uom_ID,FTA_SuggestedProduct_ID,IsActive,M_Product_Category_ID,Name,QtyDosage,SeqNo,Updated,UpdatedBy) VALUES (11,50001,1000000,TO_DATE('2013-09-10 10:59:06','YYYY-MM-DD HH24:MI:SS'),100,3.000000000000,105.000000000000,1000000,1000001,'Y',1000001,'Progibb',1.000000000000,0,TO_DATE('2013-09-10 10:59:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 10:59:30 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM (AD_Client_ID,AD_Org_ID,CostingPrecision,Created,CreatedBy,C_UOM_ID,IsActive,IsDefault,Name,StdPrecision,UOMSymbol,Updated,UpdatedBy,X12DE355) VALUES (11,0,0,TO_DATE('2013-09-10 10:59:30','YYYY-MM-DD HH24:MI:SS'),100,1000001,'Y','N','Pastilla',2,'Pastilla',TO_DATE('2013-09-10 10:59:30','YYYY-MM-DD HH24:MI:SS'),100,'Ps')
;

-- 10/09/2013 10:59:30 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM_Trl (AD_Language,C_UOM_ID, Description,Name,UOMSymbol, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_UOM_ID, t.Description,t.Name,t.UOMSymbol, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_UOM t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_UOM_ID=1000001 AND NOT EXISTS (SELECT * FROM C_UOM_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_UOM_ID=t.C_UOM_ID)
;

-- 10/09/2013 10:59:41 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET Dosage_Uom_ID=1000001,Updated=TO_DATE('2013-09-10 10:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000001
;

-- 10/09/2013 11:01:36 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_DATE('2013-09-10 11:01:36','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000002,'Coadyuvante',0,TO_DATE('2013-09-10 11:01:36','YYYY-MM-DD HH24:MI:SS'),100,'Coadyuvante')
;

-- 10/09/2013 11:01:36 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000002, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000002)
;

-- 10/09/2013 11:03:19 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM (AD_Client_ID,AD_Org_ID,CostingPrecision,Created,CreatedBy,C_UOM_ID,IsActive,IsDefault,Name,StdPrecision,UOMSymbol,Updated,UpdatedBy,X12DE355) VALUES (11,0,0,TO_DATE('2013-09-10 11:03:19','YYYY-MM-DD HH24:MI:SS'),100,1000002,'Y','N','CC',2,'CC',TO_DATE('2013-09-10 11:03:19','YYYY-MM-DD HH24:MI:SS'),100,'CC')
;

-- 10/09/2013 11:03:19 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM_Trl (AD_Language,C_UOM_ID, Description,Name,UOMSymbol, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_UOM_ID, t.Description,t.Name,t.UOMSymbol, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_UOM t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_UOM_ID=1000002 AND NOT EXISTS (SELECT * FROM C_UOM_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_UOM_ID=t.C_UOM_ID)
;

-- 10/09/2013 11:03:35 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_SuggestedProduct (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,Dosage_Uom_ID,FTA_SuggestedProduct_ID,IsActive,M_Product_Category_ID,Name,QtyDosage,SeqNo,Updated,UpdatedBy) VALUES (11,50001,1000000,TO_DATE('2013-09-10 11:03:35','YYYY-MM-DD HH24:MI:SS'),100,0,125.000000000000,1000002,1000002,'Y',1000002,'Multiplus',300.000000000000,10,TO_DATE('2013-09-10 11:03:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:04:56 AM VET
-- Farming Technical Assistance
UPDATE C_UOM SET Name='litro',Updated=TO_DATE('2013-09-10 11:04:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_UOM_ID=50003
;

-- 10/09/2013 11:04:56 AM VET
-- Farming Technical Assistance
UPDATE C_UOM_Trl SET Description=NULL,Name='litro',UOMSymbol='L',IsTranslated='Y' WHERE C_UOM_ID=50003
;

-- 10/09/2013 11:05:35 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_SuggestedProduct (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,Dosage_Uom_ID,FTA_SuggestedProduct_ID,IsActive,Name,QtyDosage,SeqNo,Updated,UpdatedBy) VALUES (11,50001,1000000,TO_DATE('2013-09-10 11:05:35','YYYY-MM-DD HH24:MI:SS'),100,0,125.000000000000,50003,1000003,'Y','Carriera',0.300000000000,20,TO_DATE('2013-09-10 11:05:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:05:54 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET Name='Carrier',Updated=TO_DATE('2013-09-10 11:05:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000003
;

-- 10/09/2013 11:06:26 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_DATE('2013-09-10 11:06:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000003,'Rodentidicidas',0,TO_DATE('2013-09-10 11:06:26','YYYY-MM-DD HH24:MI:SS'),100,'Rodentidicidas')
;

-- 10/09/2013 11:06:26 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000003, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000003)
;

-- 10/09/2013 11:07:06 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_SuggestedProduct (AD_Client_ID,AD_Org_ID,Created,CreatedBy,DayFrom,DayTo,FTA_SuggestedProduct_ID,IsActive,Name,QtyDosage,SeqNo,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-10 11:07:06','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000004,'Y','a',0,30,TO_DATE('2013-09-10 11:07:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:07:06 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET SeqNo=30,Updated=TO_DATE('2013-09-10 11:07:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000003
;

-- 10/09/2013 11:07:06 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET SeqNo=20,Updated=TO_DATE('2013-09-10 11:07:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000004
;

-- 10/09/2013 11:08:17 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET Category_ID=1000000, DayTo=125.000000000000, Dosage_Uom_ID=50001, M_Product_Category_ID=1000003, Name='Cebo Eliminador',Updated=TO_DATE('2013-09-10 11:08:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000004
;

-- 10/09/2013 11:10:20 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_SuggestedProduct (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,Dosage_Uom_ID,FTA_SuggestedProduct_ID,IsActive,M_Product_Category_ID,Name,QtyDosage,SeqNo,Updated,UpdatedBy) VALUES (11,50001,1000000,TO_DATE('2013-09-10 11:10:20','YYYY-MM-DD HH24:MI:SS'),100,0,125.000000000000,50001,1000005,'Y',1000003,'Cropot',0,30,TO_DATE('2013-09-10 11:10:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:10:44 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_DATE('2013-09-10 11:10:44','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000004,'Fungicida',0,TO_DATE('2013-09-10 11:10:44','YYYY-MM-DD HH24:MI:SS'),100,'Fungicida')
;

-- 10/09/2013 11:10:44 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000004, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000004)
;

-- 10/09/2013 11:11:46 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_SuggestedProduct (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,Dosage_Uom_ID,FTA_SuggestedProduct_ID,IsActive,M_Product_Category_ID,Name,QtyDosage,SeqNo,Updated,UpdatedBy) VALUES (11,50001,1000000,TO_DATE('2013-09-10 11:11:46','YYYY-MM-DD HH24:MI:SS'),100,9.000000000000,53.000000000000,1000002,1000006,'Y',1000004,'Cropzim',300.000000000000,40,TO_DATE('2013-09-10 11:11:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:12:46 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET M_Product_Category_ID=1000002,Updated=TO_DATE('2013-09-10 11:12:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000003
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,1000000,50003,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000002,1000001,'Carrier','N','I',0,0,0,0,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,'10000002',0,0)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000001 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000001, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000002 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000001)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1000001, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000001)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000001,0,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000001,0,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000001,0,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000001,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000001,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000001,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000001,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:13:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000001,TO_DATE('2013-09-10 11:13:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:14:05 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET M_Product_Category_ID=NULL, M_Product_ID=1000001,Updated=TO_DATE('2013-09-10 11:14:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000003
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000002,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000004,1000002,'Cropzim','N','I',0,0,0,0,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,'Cropzim',0,0)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000002 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000002, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000004 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000002)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1000002, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000002)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000002,0,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000002,0,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000002,0,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000002,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000002,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000002,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000002,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:14:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000002,TO_DATE('2013-09-10 11:14:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:15:00 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET M_Product_Category_ID=NULL, M_Product_ID=1000002,Updated=TO_DATE('2013-09-10 11:15:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000006
;

-- 10/09/2013 11:15:14 AM VET
-- Farming Technical Assistance
UPDATE M_Product SET Value='Carrier',Updated=TO_DATE('2013-09-10 11:15:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Product_ID=1000001
;

-- 10/09/2013 11:16:28 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET M_Product_Category_ID=NULL, Name='Cropot Granel',Updated=TO_DATE('2013-09-10 11:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000005
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,1000000,50001,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000003,1000003,'Cropot Granel','N','I',0,0,0,0,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,'Cropot Granel',0,0)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000003 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000003, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000003 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000003)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1000003, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000003)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000003,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000003,0,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000003,0,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000003,0,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000003,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000003,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000003,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000003,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:17:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000003,TO_DATE('2013-09-10 11:17:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:17:10 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET M_Product_ID=1000003,Updated=TO_DATE('2013-09-10 11:17:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000005
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,1000000,50001,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000003,1000004,'Cebo Eliminador','N','I',0,0,0,0,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,'Cebo Eliminador',0,0)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000004 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000004, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000003 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000004)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1000004, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000004)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000004,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000004,0,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000004,0,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000004,0,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000004,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000004,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000004,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000004,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:18:39 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000004,TO_DATE('2013-09-10 11:18:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:18:45 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET M_Product_Category_ID=NULL, M_Product_ID=1000004,Updated=TO_DATE('2013-09-10 11:18:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000004
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000002,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000002,1000005,'Multiplus','N','I',0,0,0,0,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,'Multiplus',0,0)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000005 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000005, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000002 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000005)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1000005, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000005)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000005,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000005,0,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000005,0,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000005,0,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000005,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000005,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000005,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000005,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:19:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000005,TO_DATE('2013-09-10 11:19:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:19:32 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET M_Product_Category_ID=NULL, M_Product_ID=1000005,Updated=TO_DATE('2013-09-10 11:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000002
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000000,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000001,1000006,'Progibb','N','I',0,0,0,0,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,'Progibb',0,0)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000006 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000006, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000001 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000006)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1000006, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000006)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000006,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000006,0,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000006,0,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000006,0,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000006,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000006,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000006,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000006,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:20:08 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000006,TO_DATE('2013-09-10 11:20:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:20:21 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET M_Product_Category_ID=NULL, M_Product_ID=1000006,Updated=TO_DATE('2013-09-10 11:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000001
;

-- 10/09/2013 11:20:35 AM VET
-- Farming Technical Assistance
UPDATE M_Product SET C_UOM_ID=1000001,Updated=TO_DATE('2013-09-10 11:20:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Product_ID=1000006
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000000,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000001,1000007,'Newgibb','N','I',0,0,0,0,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,'Newgibb',0,0)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000007 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000007, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000001 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000007)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1000007, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000007)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000007,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000007,0,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000007,0,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000007,0,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000007,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000007,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000007,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000007,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:21:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000007,TO_DATE('2013-09-10 11:21:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:21:37 AM VET
-- Farming Technical Assistance
UPDATE FTA_SuggestedProduct SET M_Product_Category_ID=NULL, M_Product_ID=1000007,Updated=TO_DATE('2013-09-10 11:21:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_SuggestedProduct_ID=1000000
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000002,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000004,1000008,'Derosal','N','I',0,0,0,0,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,'Derosal',0,0)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000008 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000008, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000004 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000008)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1000008, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000008)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000008,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000008,0,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000008,0,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000008,0,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000008,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000008,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000008,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000008,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:24:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000008,TO_DATE('2013-09-10 11:24:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:24:41 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_SuggestedProduct (AD_Client_ID,AD_Org_ID,Category_ID,Created,CreatedBy,DayFrom,DayTo,Dosage_Uom_ID,FTA_SuggestedProduct_ID,IsActive,M_Product_ID,Name,QtyDosage,SeqNo,Updated,UpdatedBy) VALUES (11,50001,1000000,TO_DATE('2013-09-10 11:24:41','YYYY-MM-DD HH24:MI:SS'),100,9.000000000000,53.000000000000,1000002,1000007,'Y',1000008,'Derosal',500.000000000000,50,TO_DATE('2013-09-10 11:24:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:55:26 AM VET
-- Farming Technical Assistance
INSERT INTO M_AttributeSet (AD_Client_ID,AD_Org_ID,Created,CreatedBy,GuaranteeDays,IsActive,IsGuaranteeDate,IsGuaranteeDateMandatory,IsInstanceAttribute,IsLot,IsLotMandatory,IsSerNo,IsSerNoMandatory,MandatoryType,M_AttributeSet_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-10 11:55:26','YYYY-MM-DD HH24:MI:SS'),100,0,'Y','N','N','N','N','N','N','N','Y',1000000,'Analisis de Calidad',TO_DATE('2013-09-10 11:55:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 11:55:26 AM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet mas SET IsInstanceAttribute='Y' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='N' AND (IsSerNo='Y' OR IsLot='Y' OR IsGuaranteeDate='Y' OR EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y'))
;

-- 10/09/2013 11:57:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Attribute (AD_Client_ID,AD_Org_ID,AttributeValueType,Created,CreatedBy,IsActive,IsInstanceAttribute,IsMandatory,M_Attribute_ID,Name,Updated,UpdatedBy) VALUES (11,50001,'N',TO_DATE('2013-09-10 11:57:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N',1000000,'humedad',TO_DATE('2013-09-10 11:57:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 12:00:23 PM VET
-- Farming Technical Assistance
INSERT INTO M_Attribute (AD_Client_ID,AD_Org_ID,AttributeValueType,Created,CreatedBy,IsActive,IsInstanceAttribute,IsMandatory,M_Attribute_ID,Name,Updated,UpdatedBy) VALUES (11,50001,'N',TO_DATE('2013-09-10 12:00:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N',1000001,'Transparencia del Grano',TO_DATE('2013-09-10 12:00:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 12:00:32 PM VET
-- Farming Technical Assistance
UPDATE M_Product SET M_AttributeSet_ID=1000000, M_AttributeSetInstance_ID=0,Updated=TO_DATE('2013-09-10 12:00:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Product_ID=1000000
;

-- 10/09/2013 12:01:24 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet SET IsInstanceAttribute='Y', IsSerNo='Y',Updated=TO_DATE('2013-09-10 12:01:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_AttributeSet_ID=1000000
;

-- 10/09/2013 12:02:05 PM VET
-- Farming Technical Assistance
UPDATE FTA_QualityAnalysis SET IsActive='N',Updated=TO_DATE('2013-09-10 12:02:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_QualityAnalysis_ID=1000000
;

-- 10/09/2013 12:03:49 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet SET IsLot='Y', IsSerNo='N',Updated=TO_DATE('2013-09-10 12:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_AttributeSet_ID=1000000
;

-- 10/09/2013 12:05:02 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet SET IsLot='N', MandatoryType='N',Updated=TO_DATE('2013-09-10 12:05:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_AttributeSet_ID=1000000
;

-- 10/09/2013 12:05:02 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet mas SET IsInstanceAttribute='N' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='Y'	AND IsSerNo='N' AND IsLot='N' AND IsGuaranteeDate='N' AND NOT EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y')
;

-- 10/09/2013 12:05:18 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet SET IsInstanceAttribute='Y', IsSerNo='Y',Updated=TO_DATE('2013-09-10 12:05:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_AttributeSet_ID=1000000
;

-- 10/09/2013 12:05:35 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet SET IsSerNo='N',Updated=TO_DATE('2013-09-10 12:05:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_AttributeSet_ID=1000000
;

-- 10/09/2013 12:05:35 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet mas SET IsInstanceAttribute='N' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='Y'	AND IsSerNo='N' AND IsLot='N' AND IsGuaranteeDate='N' AND NOT EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y')
;

-- 10/09/2013 12:05:42 PM VET
-- Farming Technical Assistance
INSERT INTO M_AttributeUse (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_Attribute_ID,M_AttributeSet_ID,SeqNo,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-10 12:05:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000000,10,TO_DATE('2013-09-10 12:05:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 12:05:42 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet mas SET IsInstanceAttribute='Y' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='N' AND (IsSerNo='Y' OR IsLot='Y' OR IsGuaranteeDate='Y' OR EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y'))
;

-- 10/09/2013 12:05:42 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet mas SET IsInstanceAttribute='N' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='Y'	AND IsSerNo='N' AND IsLot='N' AND IsGuaranteeDate='N' AND NOT EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y')
;

-- 10/09/2013 12:06:28 PM VET
-- Farming Technical Assistance
INSERT INTO M_AttributeUse (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_Attribute_ID,M_AttributeSet_ID,SeqNo,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-10 12:06:28','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000000,20,TO_DATE('2013-09-10 12:06:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 12:06:28 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet mas SET IsInstanceAttribute='Y' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='N' AND (IsSerNo='Y' OR IsLot='Y' OR IsGuaranteeDate='Y' OR EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y'))
;

-- 10/09/2013 12:06:28 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet mas SET IsInstanceAttribute='N' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='Y'	AND IsSerNo='N' AND IsLot='N' AND IsGuaranteeDate='N' AND NOT EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y')
;

-- 10/09/2013 12:07:05 PM VET
-- Farming Technical Assistance
INSERT INTO M_Attribute (AD_Client_ID,AD_Org_ID,AttributeValueType,Created,CreatedBy,IsActive,IsInstanceAttribute,IsMandatory,M_Attribute_ID,Name,Updated,UpdatedBy) VALUES (11,50001,'N',TO_DATE('2013-09-10 12:07:05','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N',1000002,'Impureza',TO_DATE('2013-09-10 12:07:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 12:07:31 PM VET
-- Farming Technical Assistance
INSERT INTO M_AttributeUse (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_Attribute_ID,M_AttributeSet_ID,SeqNo,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-10 12:07:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000000,30,TO_DATE('2013-09-10 12:07:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/09/2013 12:07:31 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet mas SET IsInstanceAttribute='Y' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='N' AND (IsSerNo='Y' OR IsLot='Y' OR IsGuaranteeDate='Y' OR EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y'))
;

-- 10/09/2013 12:07:31 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet mas SET IsInstanceAttribute='N' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='Y'	AND IsSerNo='N' AND IsLot='N' AND IsGuaranteeDate='N' AND NOT EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y')
;

-- 10/09/2013 12:07:57 PM VET
-- Farming Technical Assistance
UPDATE FTA_QualityAnalysis SET IsActive='Y',Updated=TO_DATE('2013-09-10 12:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_QualityAnalysis_ID=1000000
;

-- 10/09/2013 12:10:16 PM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet SET IsInstanceAttribute='Y', IsSerNo='Y',Updated=TO_DATE('2013-09-10 12:10:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_AttributeSet_ID=1000000
;

