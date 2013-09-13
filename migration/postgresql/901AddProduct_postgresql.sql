-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,1000000,50001,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000000,1000010,'Maíz','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,'Maíz',0,0)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000010 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000010, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000000 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000010)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000010, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000010)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000010,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000010,0,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000010,0,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000010,0,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000010,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000010,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000010,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000010,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 08:32:24 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000010,TO_TIMESTAMP('2013-09-11 08:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 08:50:48 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000000,TO_TIMESTAMP('2013-09-11 08:50:48','YYYY-MM-DD HH24:MI:SS'),100,'FMG',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Guía de Movilización','Guía de Movilización',TO_TIMESTAMP('2013-09-11 08:50:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 08:52:17 AM VET
-- Farming Technical Assistance
--INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000001,TO_TIMESTAMP('2013-09-11 08:52:17','YYYY-MM-DD HH24:MI:SS'),100,'FMG',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Guía de Movilización','Guía de Movilización',TO_TIMESTAMP('2013-09-11 08:52:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:33:11 AM VET
-- Farming Technical Assistance
--INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000002,TO_TIMESTAMP('2013-09-11 09:33:11','YYYY-MM-DD HH24:MI:SS'),100,'FMG',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Guía de Movilización','Guía de Movilización',TO_TIMESTAMP('2013-09-11 09:33:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:33:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000002 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 11/09/2013 09:33:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000002 AND rol.IsManual='N')
;

-- 11/09/2013 09:34:45 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_VehicleType (AD_Client_ID,AD_Org_ID,Created,CreatedBy,FTA_VehicleType_ID,IsActive,LoadCapacity,Name,Updated,UpdatedBy,Value) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 09:34:45','YYYY-MM-DD HH24:MI:SS'),100,1000000,'Y',20000.000000000000,'Toronto',TO_TIMESTAMP('2013-09-11 09:34:45','YYYY-MM-DD HH24:MI:SS'),100,'Toronto')
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
INSERT INTO C_BPartner (AcqusitionCost,ActualLifeTimeValue,AD_Client_ID,AD_Language,AD_Org_ID,C_BPartner_ID,C_BP_Group_ID,C_Dunning_ID,C_PaymentTerm_ID,Created,CreatedBy,DocumentCopies,FlatDiscount,IsActive,IsCustomer,IsDiscountPrinted,IsEmployee,IsOneTime,IsPOTaxExempt,IsProspect,IsSalesRep,IsSummary,IsTaxExempt,IsVendor,M_PriceList_ID,Name,NumberEmployees,PotentialLifeTimeValue,SalesRep_ID,SalesVolume,SendEMail,ShareOfCustomer,ShelfLifeMinPct,SO_CreditLimit,SOCreditStatus,SO_CreditUsed,TotalOpenBalance,Updated,UpdatedBy,Value) VALUES (0,0,11,'es_MX',50001,1000000,103,100,105,TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','N','N','N','N','N','N','N','N',101,'Azuaje Carbajal Maritza Del',0,0,100,0,'N',0,0,0,'X',0,0,TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),100,'11848543')
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeBP (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000000, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='BP' AND NOT EXISTS (SELECT * FROM AD_TreeNodeBP e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000000)
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
INSERT INTO C_BP_Customer_Acct (C_BPartner_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,C_Prepayment_Acct,C_Receivable_Acct,C_Receivable_Services_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.C_Prepayment_Acct,p.C_Receivable_Acct,p.C_Receivable_Services_Acct FROM C_BP_Group_Acct p WHERE p.AD_Client_ID=11 AND p.C_BP_Group_ID=103 AND NOT EXISTS (SELECT * FROM C_BP_Customer_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BPartner_ID=1000000)
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
INSERT INTO C_BP_Vendor_Acct (C_BPartner_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,V_Liability_Acct,V_Liability_Services_Acct,V_Prepayment_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.V_Liability_Acct,p.V_Liability_Services_Acct,p.V_Prepayment_Acct FROM C_BP_Group_Acct p WHERE p.AD_Client_ID=11 AND p.C_BP_Group_ID=103 AND NOT EXISTS (SELECT * FROM C_BP_Vendor_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BPartner_ID=1000000)
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
INSERT INTO C_BP_Employee_Acct (C_BPartner_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,E_Expense_Acct,E_Prepayment_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.E_Expense_Acct,p.E_Prepayment_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_BP_Employee_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BPartner_ID=1000000)
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,291,100,1000000,101,131,TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000000
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,291,100,1000000,244,1000000,100,131,TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,291,100,1000000,244,1000000,100,TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000000
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000000
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OS',Updated=TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000000
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OS',Updated=TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000000
;

-- 11/09/2013 09:39:27 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OS',Updated=TO_TIMESTAMP('2013-09-11 09:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000000
;

-- 11/09/2013 09:40:41 AM VET
-- Farming Technical Assistance
INSERT INTO C_Location (AD_Client_ID,Address1,Address2,Address3,Address4,AD_Org_ID,C_Country_ID,City,C_Location_ID,Created,CreatedBy,IsActive,Postal,Postal_Add,RegionName,Updated,UpdatedBy) VALUES (11,NULL,NULL,NULL,NULL,0,339,'acarigua',1000000,TO_TIMESTAMP('2013-09-11 09:39:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',NULL,NULL,'OR',TO_TIMESTAMP('2013-09-11 09:39:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:40:49 AM VET
-- Farming Technical Assistance
INSERT INTO C_BPartner_Location (AD_Client_ID,AD_Org_ID,C_BPartner_ID,C_BPartner_Location_ID,C_Location_ID,Created,CreatedBy,IsActive,IsBillTo,IsPayFrom,IsRemitTo,IsShipTo,Name,Updated,UpdatedBy) VALUES (11,50001,1000000,1000000,1000000,TO_TIMESTAMP('2013-09-11 09:40:49','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','Y','Y','Y','Acarigua',TO_TIMESTAMP('2013-09-11 09:40:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:41:22 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_Farm (AD_Client_ID,AD_Org_ID,Area,C_BPartner_ID,C_BPartner_Location_ID,Created,CreatedBy,FarmType,FTA_Farm_ID,IsActive,IsValid,Name,Processing,Updated,UpdatedBy) VALUES (11,50001,30000.000000000000,1000000,1000000,TO_TIMESTAMP('2013-09-11 09:41:22','YYYY-MM-DD HH24:MI:SS'),100,'L',1000000,'Y','N','La Doña','N',TO_TIMESTAMP('2013-09-11 09:41:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:42:40 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmDivision (AD_Client_ID,AD_Org_ID,Area,Created,CreatedBy,FTA_FarmDivision_ID,FTA_Farm_ID,IsActive,Name,Updated,UpdatedBy) VALUES (11,50001,30000.000000000000,TO_TIMESTAMP('2013-09-11 09:42:40','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000000,'Y','Maíz',TO_TIMESTAMP('2013-09-11 09:42:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:43:30 AM VET
-- Farming Technical Assistance
INSERT INTO M_Lot (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_Lot_ID,M_Product_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 09:43:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000010,'Maíz 2013',TO_TIMESTAMP('2013-09-11 09:43:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:43:54 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_Farming (AD_Client_ID,AD_Org_ID,Area,Category_ID,Created,CreatedBy,EstimatedQty,EstimatedYield,FinancingType,FTA_FarmDivision_ID,FTA_Farming_ID,GuideGenerate,IsActive,Name,PlantingCycle_ID,Processing,Qty,StartDate,Status,Updated,UpdatedBy) VALUES (11,50001,30000.000000000000,1000010,TO_TIMESTAMP('2013-09-11 09:43:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,'A',1000000,1000000,'N','Y','Maíz Amarillo',1000000,'N',0,TO_TIMESTAMP('2013-09-09','YYYY-MM-DD'),'A',TO_TIMESTAMP('2013-09-11 09:43:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:44:07 AM VET
-- Farming Technical Assistance
UPDATE FTA_Farming SET EstimatedQty=500.000000000000,Updated=TO_TIMESTAMP('2013-09-11 09:44:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_Farming_ID=1000000
;

-- 11/09/2013 09:45:08 AM VET
-- Farming Technical Assistance
--INSERT INTO FTA_MobilizationGuide (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DateDoc,DocAction,DocStatus,DocumentNo,FTA_Farming_ID,FTA_MobilizationGuide_ID,FTA_VehicleType_ID,IsActive,M_Warehouse_ID,Processed,QtyToDeliver,Updated,UpdatedBy) VALUES (11,50001,1000002,TO_TIMESTAMP('2013-09-11 09:45:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-09-09','YYYY-MM-DD'),'CO','DR','1000000',1000000,1000000,1000000,'Y',50002,'N',200.000000000000,TO_TIMESTAMP('2013-09-11 09:45:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:45:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,TextMsg,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000001,101,50030,TO_TIMESTAMP('2013-09-11 09:45:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,'-: Cantidad a Entregar=200.000000000000',TO_TIMESTAMP('2013-09-11 09:45:11','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:45:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:45:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000001
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000001,50144,1000001,101,50030,TO_TIMESTAMP('2013-09-11 09:45:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:45:11','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000001,50144,1000001,101,TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000001
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000001
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000001
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=57, EventType='PX', TextMsg=NULL, WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000001
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000001
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000002,50143,1000001,101,50030,TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000002,50143,1000001,101,TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000002
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000002
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE FTA_MobilizationGuide SET DocStatus='IN',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_MobilizationGuide_ID=1000000
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-: Cantidad a Entregar=200.000000000000
 - @PeriodClosed@
 - java.lang.Exception: @PeriodClosed@ (0): org.compiere.wf.MWFActivity.performWork(MWFActivity.java:930)
 (1): org.compiere.wf.MWFActivity.run(MWFActivity.java:785)
 (2): org.compiere.wf.MWFProcess.startNext(MWFProcess.java:370)
 (3): org.compiere.wf.MWFProcess.checkActivities(MWFProcess.java:280)
 (4): org.compiere.wf.MWFActivity.setWFState(MWFActivity.java:274)
 (5): org.compiere.wf.MWFActivity.run(MWFActivity.java:802)
 (6): org.compiere.wf.MWFProcess.startWork(MWFProcess.java:502)
 (7): org.compiere.wf.MWorkflow.start(MWorkflow.java:696)
 (8): org.compiere.wf.MWorkflow.startWait(MWorkflow.java:726)
 (9): org.adempiere.util.ProcessUtil.startWorkFlow(ProcessUtil.java:301)
 (10): org.compiere.apps.ProcessCtl.startWorkflow(ProcessCtl.java:574)
 (11): org.compiere.apps.ProcessCtl.run(ProcessCtl.java:369)
', WFState='CT',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000002
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=232, EventType='PX', TextMsg='-: Cantidad a Entregar=200.000000000000
 - @PeriodClosed@
 - java.lang.Exception: @PeriodClosed@ (0): org.compiere.wf.MWFActivity.performWork(MWFActivity.java:930)
 (1): org.compiere.wf.MWFActivity.run(MWFActivity.java:785)
 (2): org.compiere.wf.MWFProcess.startNext(MWFProcess.java:370)
 (3): org.compiere.wf.MWFProcess.checkActivities(MWFProcess.java:280)
 (4): org.compiere.wf.MWFActivity.setWFState(MWFActivity.java:274)
 (5): org.compiere.wf.MWFActivity.run(MWFActivity.java:802)
 (6): org.compiere.wf.MWFProcess.startWork(MWFProcess.java:502)
 (7): org.compiere.wf.MWorkflow.start(MWorkflow.java:696)
 (8): org.compiere.wf.MWorkflow.startWait(MWorkflow.java:726)
 (9): org.adempiere.util.ProcessUtil.startWorkFlow(ProcessUtil.java:301)
 (10): org.compiere.apps.ProcessCtl.startWorkflow(ProcessCtl.java:574)
 (11): org.compiere.apps.ProcessCtl.run(ProcessCtl.java:369)
', WFState='CT',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000002
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000002
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET Processed='Y', TextMsg='-: Cantidad a Entregar=200.000000000000
 - @PeriodClosed@', WFState='CT',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000001
;

-- 11/09/2013 09:45:12 AM VET
-- Farming Technical Assistance
UPDATE FTA_MobilizationGuide SET DocStatus='IN',Updated=TO_TIMESTAMP('2013-09-11 09:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_MobilizationGuide_ID=1000000
;

-- 11/09/2013 09:46:03 AM VET
-- Farming Technical Assistance
INSERT INTO C_Year (AD_Client_ID,AD_Org_ID,C_Calendar_ID,Created,CreatedBy,C_Year_ID,FiscalYear,IsActive,Processing,Updated,UpdatedBy) VALUES (11,0,102,TO_TIMESTAMP('2013-09-11 09:46:03','YYYY-MM-DD HH24:MI:SS'),100,1000000,'2013','Y','N',TO_TIMESTAMP('2013-09-11 09:46:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-01-31','YYYY-MM-DD'),'Y','Jan-13',1,'S','N',TO_TIMESTAMP('2013-01-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000000,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000001,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000002,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000003,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000004,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000005,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000006,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000007,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000008,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000009,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000010,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000011,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000012,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000013,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000014,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000015,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000016,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000017,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000018,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000019,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000020,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000021,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:06 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000022,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000023,1000000,TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000024,1000000,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000025,1000000,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000026,1000000,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000027,1000000,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000028,1000000,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000029,1000000,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-02-28','YYYY-MM-DD'),'Y','Feb-13',2,'S','N',TO_TIMESTAMP('2013-02-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000030,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000031,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000032,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000033,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000034,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000035,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000036,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000037,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000038,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000039,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000040,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000041,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000042,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000043,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000044,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000045,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000046,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000047,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000048,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000049,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000050,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000051,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000052,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000053,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000054,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000055,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000056,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000057,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000058,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000059,1000001,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000002,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-03-31','YYYY-MM-DD'),'Y','Mar-13',3,'S','N',TO_TIMESTAMP('2013-03-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:07 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000060,1000002,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000061,1000002,TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000062,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000063,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000064,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000065,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000066,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000067,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000068,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000069,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000070,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000071,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000072,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000073,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000074,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000075,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000076,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000077,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000078,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000079,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000080,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000081,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000082,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000083,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000084,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000085,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000086,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000087,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000088,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000089,1000002,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-04-30','YYYY-MM-DD'),'Y','Apr-13',4,'S','N',TO_TIMESTAMP('2013-04-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000090,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000091,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000092,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000093,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000094,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000095,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000096,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000097,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000098,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000099,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:08 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000100,1000003,TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000101,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000102,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000103,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000104,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000105,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000106,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000107,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000108,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000109,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000110,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000111,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000112,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000113,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000114,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000115,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000116,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000117,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000118,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000119,1000003,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-05-31','YYYY-MM-DD'),'Y','May-13',5,'S','N',TO_TIMESTAMP('2013-05-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000120,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000121,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000122,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000123,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000124,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000125,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000126,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000127,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000128,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000129,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000130,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000131,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000132,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000133,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000134,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000135,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000136,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000137,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000138,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000139,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000140,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000141,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000142,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000143,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000144,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:09 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000145,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000146,1000004,TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000147,1000004,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000148,1000004,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000149,1000004,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-06-30','YYYY-MM-DD'),'Y','Jun-13',6,'S','N',TO_TIMESTAMP('2013-06-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000150,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000151,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000152,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000153,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000154,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000155,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000156,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000157,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000158,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000159,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000160,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000161,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000162,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000163,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000164,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000165,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000166,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000167,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000168,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000169,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000170,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000171,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000172,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000173,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000174,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000175,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000176,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000177,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000178,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000179,1000005,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-07-31','YYYY-MM-DD'),'Y','Jul-13',7,'S','N',TO_TIMESTAMP('2013-07-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000180,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000181,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000182,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000183,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000184,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000185,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000186,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000187,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:10 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000188,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000189,1000006,TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000190,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000191,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000192,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000193,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000194,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000195,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000196,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000197,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000198,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000199,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000200,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000201,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000202,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000203,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000204,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000205,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000206,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000207,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000208,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000209,1000006,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-08-31','YYYY-MM-DD'),'Y','Aug-13',8,'S','N',TO_TIMESTAMP('2013-08-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000210,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000211,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000212,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000213,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000214,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000215,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000216,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000217,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000218,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000219,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000220,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000221,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000222,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000223,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000224,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000225,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000226,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000227,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000228,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000229,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:11 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000230,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000231,1000007,TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000232,1000007,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000233,1000007,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000234,1000007,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000235,1000007,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000236,1000007,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000237,1000007,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000238,1000007,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000239,1000007,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-09-30','YYYY-MM-DD'),'Y','Sep-13',9,'S','N',TO_TIMESTAMP('2013-09-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000240,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000241,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000242,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000243,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000244,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000245,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000246,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000247,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000248,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000249,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000250,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000251,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000252,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000253,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000254,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000255,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000256,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000257,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000258,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000259,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000260,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000261,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000262,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000263,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000264,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000265,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000266,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000267,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000268,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000269,1000008,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000009,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-10-31','YYYY-MM-DD'),'Y','Oct-13',10,'S','N',TO_TIMESTAMP('2013-10-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000270,1000009,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000271,1000009,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:12 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000272,1000009,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000273,1000009,TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000274,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000275,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000276,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000277,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000278,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000279,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000280,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000281,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000282,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000283,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000284,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000285,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000286,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000287,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000288,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000289,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000290,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000291,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000292,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000293,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000294,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000295,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000296,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000297,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000298,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000299,1000009,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-11-30','YYYY-MM-DD'),'Y','Nov-13',11,'S','N',TO_TIMESTAMP('2013-11-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000300,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000301,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000302,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000303,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000304,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000305,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000306,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000307,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000308,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000309,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000310,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000311,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000312,1000010,TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000313,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000314,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000315,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000316,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000317,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000318,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000319,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000320,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000321,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000322,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000323,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000324,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000325,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000326,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000327,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000328,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000329,1000010,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_Period (AD_Client_ID,AD_Org_ID,C_Period_ID,Created,CreatedBy,C_Year_ID,EndDate,IsActive,Name,PeriodNo,PeriodType,Processing,StartDate,Updated,UpdatedBy) VALUES (11,0,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,1000000,TO_TIMESTAMP('2013-12-31','YYYY-MM-DD'),'Y','Dec-13',12,'S','N',TO_TIMESTAMP('2013-12-01','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000330,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MMR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000331,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MMS','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000332,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'PJI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000333,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'CMA','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000334,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MXI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000335,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MMP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000336,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'GLD','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000337,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'CMC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000338,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MXP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000339,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MMM','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000340,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'MMI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000341,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'ARF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000342,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'CMB','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000343,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'API','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000344,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'APC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000345,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'GLJ','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000346,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'ARI','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000347,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'ARC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000348,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'ARR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000349,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'APP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000350,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'POR','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000351,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'SOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:14 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000352,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'POO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:15 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000353,1000011,TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100,'HRP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:15 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000354,1000011,TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100,'MOP','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:15 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000355,1000011,TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100,'MOF','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:15 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000356,1000011,TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100,'MQO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:15 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000357,1000011,TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100,'DOO','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:15 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000358,1000011,TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100,'MCC','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:46:15 AM VET
-- Farming Technical Assistance
INSERT INTO C_PeriodControl (AD_Client_ID,AD_Org_ID,C_PeriodControl_ID,C_Period_ID,Created,CreatedBy,DocBaseType,IsActive,PeriodAction,PeriodStatus,Processing,Updated,UpdatedBy) VALUES (11,0,1000359,1000011,TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100,'FMG','Y','N','N','N',TO_TIMESTAMP('2013-09-11 09:46:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:47:00 AM VET
-- Farming Technical Assistance
UPDATE C_PeriodControl SET PeriodStatus='O', PeriodAction='N', Updated=CURRENT_TIMESTAMP,UpdatedBy=100 WHERE C_Period_ID=1000008 AND PeriodStatus<>'P' AND PeriodStatus<>'O'
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,TextMsg,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000002,101,50030,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,'-: Cantidad a Entregar=200.000000000000',TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000002
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000003,50144,1000002,101,50030,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000003,50144,1000002,101,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000003
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000003
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000003
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=409, EventType='PX', TextMsg=NULL, WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000003
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000003
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000004,50143,1000002,101,50030,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000004,50143,1000002,101,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000004
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000004
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE C_AcctSchema SET C_Period_ID=1000008,Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_AcctSchema_ID=101
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE FTA_MobilizationGuide SET DocStatus='IP',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_MobilizationGuide_ID=1000000
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-: Cantidad a Entregar=200.000000000000', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000004
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=535, EventType='PX', TextMsg='-: Cantidad a Entregar=200.000000000000', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000004
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000004
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000005,50142,1000002,101,50030,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53510,100,1000005,50142,1000002,101,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000005
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000005
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE FTA_MobilizationGuide SET DocAction='CL', DocStatus='CO', Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_MobilizationGuide_ID=1000000
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-: Cantidad a Entregar=200.000000000000', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000005
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=622, EventType='PX', TextMsg='-: Cantidad a Entregar=200.000000000000', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000005
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000005
;

-- 11/09/2013 09:47:15 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET Processed='Y', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000002
;

-- 11/09/2013 09:50:37 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000003,TO_TIMESTAMP('2013-09-11 09:50:36','YYYY-MM-DD HH24:MI:SS'),100,'FET',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Ticket de Entrada','Ticket de Entrada',TO_TIMESTAMP('2013-09-11 09:50:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:50:37 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000003 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 11/09/2013 09:50:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000003 AND rol.IsManual='N')
;

-- 11/09/2013 09:51:40 AM VET
-- Farming Technical Assistance
--INSERT INTO FTA_EntryTicket (AD_Client_ID,AD_Org_ID,C_BPartner_ID,C_DocType_ID,Created,CreatedBy,DateDoc,DocAction,DocStatus,DocumentNo,Ext_Guide,FTA_EntryTicket_ID,FTA_MobilizationGuide_ID,IsActive,IsApproved,Processed,Updated,UpdatedBy) VALUES (11,50001,1000000,1000003,TO_TIMESTAMP('2013-09-11 09:51:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-09-11','YYYY-MM-DD'),'CO','DR','1000000','V050913118003012110121101202403',1000000,1000000,'Y','N','N',TO_TIMESTAMP('2013-09-11 09:51:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,TextMsg,Updated,UpdatedBy,WFState) VALUES (11,50001,53559,100,1000003,101,50031,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,'-',TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000003
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53559,100,1000006,50148,1000003,101,50031,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53559,100,1000006,50148,1000003,101,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000006
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000006
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000006
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=435, EventType='PX', TextMsg=NULL, WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000006
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000006
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53559,100,1000007,50147,1000003,101,50031,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53559,100,1000007,50147,1000003,101,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000007
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000007
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE FTA_EntryTicket SET DocStatus='IP',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_EntryTicket_ID=1000000
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000007
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=578, EventType='PX', TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000007
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000007
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53559,100,1000008,50146,1000003,101,50031,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53559,100,1000008,50146,1000003,101,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000008
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000008
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE FTA_EntryTicket SET DocAction='CL', DocStatus='CO', IsApproved='Y', Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_EntryTicket_ID=1000000
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000008
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=666, EventType='PX', TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000008
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000008
;

-- 11/09/2013 09:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET Processed='Y', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000003
;

-- 11/09/2013 09:53:47 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000004,TO_TIMESTAMP('2013-09-11 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,'FQA',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Análisis da Calidad','Análisis da Calidad',TO_TIMESTAMP('2013-09-11 09:53:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:53:47 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000004 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 11/09/2013 09:53:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000004 AND rol.IsManual='N')
;

-- 11/09/2013 09:54:39 AM VET
-- Farming Technical Assistance
DELETE FROM M_AttributeUse WHERE M_Attribute_ID=1000001 AND M_AttributeSet_ID=1000000
;

-- 11/09/2013 09:54:39 AM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet SET IsInstanceAttribute='Y' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='N' AND (IsSerNo='Y' OR IsLot='Y' OR IsGuaranteeDate='Y' OR EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=M_AttributeSet.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y'))
;

-- 11/09/2013 09:54:39 AM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet SET IsInstanceAttribute='N' WHERE M_AttributeSet_ID=1000000 AND IsInstanceAttribute='Y' AND IsSerNo='N' AND IsLot='N' AND IsGuaranteeDate='N' AND NOT EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=M_AttributeSet.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y')
;

-- 11/09/2013 09:55:00 AM VET
-- Farming Technical Assistance
UPDATE M_Attribute SET IsInstanceAttribute='Y',Updated=TO_TIMESTAMP('2013-09-11 09:55:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Attribute_ID=1000002
;

-- 11/09/2013 09:55:00 AM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet SET IsInstanceAttribute='Y' WHERE IsInstanceAttribute='N' AND EXISTS (SELECT * FROM M_AttributeUse mau WHERE M_AttributeSet.M_AttributeSet_ID=mau.M_AttributeSet_ID AND mau.M_Attribute_ID=1000002)
;

-- 11/09/2013 09:55:14 AM VET
-- Farming Technical Assistance
UPDATE M_Attribute SET IsInstanceAttribute='Y',Updated=TO_TIMESTAMP('2013-09-11 09:55:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Attribute_ID=1000000
;

-- 11/09/2013 09:55:14 AM VET
-- Farming Technical Assistance
UPDATE M_AttributeSet SET IsInstanceAttribute='Y' WHERE IsInstanceAttribute='N' AND EXISTS (SELECT * FROM M_AttributeUse mau WHERE M_AttributeSet.M_AttributeSet_ID=mau.M_AttributeSet_ID AND mau.M_Attribute_ID=1000000)
;

-- 11/09/2013 09:55:25 AM VET
-- Farming Technical Assistance
UPDATE M_Product SET M_AttributeSet_ID=1000000, M_AttributeSetInstance_ID=0,Updated=TO_TIMESTAMP('2013-09-11 09:55:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Product_ID=1000010
;

-- 11/09/2013 09:56:44 AM VET
-- Farming Technical Assistance
INSERT INTO M_AttributeSetInstance (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_AttributeSet_ID,M_AttributeSetInstance_ID,SerNo,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 09:55:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000000,NULL,TO_TIMESTAMP('2013-09-11 09:55:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:56:44 AM VET
-- Farming Technical Assistance
--UPDATE M_AttributeSetInstance SET Description = ? WHERE M_AttributeSetInstance_ID = ?
;

-- 11/09/2013 09:56:44 AM VET
-- Farming Technical Assistance
INSERT INTO M_AttributeInstance (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_Attribute_ID,M_AttributeSetInstance_ID,Updated,UpdatedBy,Value,ValueNumber) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 09:56:44','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000000,TO_TIMESTAMP('2013-09-11 09:56:44','YYYY-MM-DD HH24:MI:SS'),100,'21.1',21.100000000000)
;

-- 11/09/2013 09:56:44 AM VET
-- Farming Technical Assistance
INSERT INTO M_AttributeInstance (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_Attribute_ID,M_AttributeSetInstance_ID,Updated,UpdatedBy,Value,ValueNumber) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 09:56:44','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000000,TO_TIMESTAMP('2013-09-11 09:56:44','YYYY-MM-DD HH24:MI:SS'),100,'2.1',2.100000000000)
;

-- 11/09/2013 09:56:44 AM VET
-- Farming Technical Assistance
UPDATE M_AttributeSetInstance SET Description='21.1_2.1',Updated=TO_TIMESTAMP('2013-09-11 09:56:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_AttributeSetInstance_ID=1000000
;

-- 11/09/2013 09:56:50 AM VET
-- Farming Technical Assistance
--INSERT INTO FTA_QualityAnalysis (AD_Client_ID,AD_Org_ID,AnalysisType,C_DocType_ID,Created,CreatedBy,DateDoc,DocAction,DocStatus,DocumentNo,FTA_EntryTicket_ID,FTA_QualityAnalysis_ID,IsActive,IsApproved,M_Product_ID,Processed,ProductStatus,QualityAnalysis_ID,Updated,UpdatedBy) VALUES (11,50001,'QA',1000004,TO_TIMESTAMP('2013-09-11 09:56:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-09-11','YYYY-MM-DD'),'CO','DR','1000000',1000000,1000000,'Y','N',1000010,'N','A',1000000,TO_TIMESTAMP('2013-09-11 09:56:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,TextMsg,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000004,101,50032,TO_TIMESTAMP('2013-09-11 09:56:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,'-',TO_TIMESTAMP('2013-09-11 09:56:53','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000004
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000009,50152,1000004,101,50032,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000009,50152,1000004,101,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000009
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000009
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000009
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=76, EventType='PX', TextMsg=NULL, WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000009
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000009
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000010,50151,1000004,101,50032,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000010,50151,1000004,101,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000010
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000010
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE FTA_QualityAnalysis SET DocStatus='IP',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_QualityAnalysis_ID=1000000
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000010
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=170, EventType='PX', TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000010
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000010
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000011,50150,1000004,101,50032,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000011,50150,1000004,101,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000011
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000011
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE FTA_QualityAnalysis SET DocAction='CL', DocStatus='CO', IsApproved='Y', Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_QualityAnalysis_ID=1000000
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000011
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=254, EventType='PX', TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000011
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000011
;

-- 11/09/2013 09:56:54 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET Processed='Y', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000004
;

-- 11/09/2013 09:57:54 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000005,TO_TIMESTAMP('2013-09-11 09:57:53','YYYY-MM-DD HH24:MI:SS'),100,'FRW',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Registro de Peso','Registro de Peso',TO_TIMESTAMP('2013-09-11 09:57:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 09:57:54 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000005 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 11/09/2013 09:57:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000005 AND rol.IsManual='N')
;

-- 11/09/2013 09:58:25 AM VET
-- Farming Technical Assistance
--INSERT INTO FTA_RecordWeight (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,CreateFrom,C_UOM_ID,DateDoc,DocAction,DocStatus,DocumentNo,FTA_EntryTicket_ID,FTA_QualityAnalysis_ID,FTA_RecordWeight_ID,GrossWeight,InDate,IsActive,IsApproved,IsSOTrx,NetWeight,OutDate,Processed,TareWeight,Updated,UpdatedBy,WeightStatus) VALUES (11,50001,1000005,TO_TIMESTAMP('2013-09-11 09:58:25','YYYY-MM-DD HH24:MI:SS'),100,'N',100,TO_TIMESTAMP('2013-09-11','YYYY-MM-DD'),'CO','DR','1000000',1000000,1000000,1000000,0,TO_TIMESTAMP('2013-09-11 09:57:10','YYYY-MM-DD HH24:MI:SS'),'Y','N','N',0,TO_TIMESTAMP('2013-09-11 09:57:10','YYYY-MM-DD HH24:MI:SS'),'N',0,TO_TIMESTAMP('2013-09-11 09:58:25','YYYY-MM-DD HH24:MI:SS'),100,'G')
;

-- 11/09/2013 09:59:12 AM VET
-- Farming Technical Assistance
--UPDATE FTA_RecordWeight SET GrossWeight=61.740000000000, InDate=TO_TIMESTAMP('2013-09-11 09:59:09','YYYY-MM-DD HH24:MI:SS'), NetWeight=61.740000000000, WeightStatus='T',Updated=TO_TIMESTAMP('2013-09-11 09:59:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_RecordWeight_ID=1000000
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,TextMsg,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000005,101,50033,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,'-',TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000005
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000012,50156,1000005,101,50033,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000012,50156,1000005,101,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000012
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000012
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000012
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=306, EventType='PX', TextMsg=NULL, WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000012
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000012
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000013,50155,1000005,101,50033,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000013,50155,1000005,101,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000013
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000013
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
--UPDATE FTA_RecordWeight SET DocStatus='IP',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_RecordWeight_ID=1000000
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000013
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=397, EventType='PX', TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000013
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000013
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000014,50154,1000005,101,50033,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000014,50154,1000005,101,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000014
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000014
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000014
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=478, EventType='PX', TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000014
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000014
;

-- 11/09/2013 09:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET Processed='Y', TextMsg='-
 - @TareWeight@ = @0@', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 09:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000005
;

-- 11/09/2013 10:00:58 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000006,TO_TIMESTAMP('2013-09-11 10:00:58','YYYY-MM-DD HH24:MI:SS'),100,'FCA',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Análisis de Calidad de Tolva','Análisis de Calidad de Tolva',TO_TIMESTAMP('2013-09-11 10:00:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:00:58 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000006 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 11/09/2013 10:00:58 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000006 AND rol.IsManual='N')
;

-- 11/09/2013 10:02:21 AM VET
-- Farming Technical Assistance
INSERT INTO M_AttributeSetInstance (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_AttributeSet_ID,M_AttributeSetInstance_ID,SerNo,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:01:44','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000001,NULL,TO_TIMESTAMP('2013-09-11 10:01:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:02:21 AM VET
-- Farming Technical Assistance
--UPDATE M_AttributeSetInstance SET Description = ? WHERE M_AttributeSetInstance_ID = ?
;

-- 11/09/2013 10:02:21 AM VET
-- Farming Technical Assistance
INSERT INTO M_AttributeInstance (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_Attribute_ID,M_AttributeSetInstance_ID,Updated,UpdatedBy,Value,ValueNumber) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:02:21','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000001,TO_TIMESTAMP('2013-09-11 10:02:21','YYYY-MM-DD HH24:MI:SS'),100,'21.1',21.100000000000)
;

-- 11/09/2013 10:02:21 AM VET
-- Farming Technical Assistance
INSERT INTO M_AttributeInstance (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_Attribute_ID,M_AttributeSetInstance_ID,Updated,UpdatedBy,Value,ValueNumber) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:02:21','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000001,TO_TIMESTAMP('2013-09-11 10:02:21','YYYY-MM-DD HH24:MI:SS'),100,'2.1',2.100000000000)
;

-- 11/09/2013 10:02:21 AM VET
-- Farming Technical Assistance
UPDATE M_AttributeSetInstance SET Description='21.1_2.1',Updated=TO_TIMESTAMP('2013-09-11 10:02:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_AttributeSetInstance_ID=1000001
;

-- 11/09/2013 10:02:23 AM VET
-- Farming Technical Assistance
--INSERT INTO FTA_QualityAnalysis (AD_Client_ID,AD_Org_ID,AnalysisType,C_DocType_ID,Created,CreatedBy,DateDoc,DocAction,DocStatus,DocumentNo,FTA_EntryTicket_ID,FTA_QualityAnalysis_ID,IsActive,IsApproved,M_Product_ID,Orig_QualityAnalysis_ID,Processed,ProductStatus,QualityAnalysis_ID,Updated,UpdatedBy) VALUES (11,50001,'CA',1000006,TO_TIMESTAMP('2013-09-11 10:02:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-09-11','YYYY-MM-DD'),'CO','DR','1000001',1000000,1000001,'Y','N',1000010,1000000,'N','A',1000001,TO_TIMESTAMP('2013-09-11 10:02:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,TextMsg,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000006,101,50032,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000001,'-',TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000006
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000015,50152,1000006,101,50032,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000001,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000015,50152,1000006,101,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000001,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000015
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000015
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000015
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=483, EventType='PX', TextMsg=NULL, WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000015
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000015
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000016,50151,1000006,101,50032,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000001,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000016,50151,1000006,101,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000001,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000016
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000016
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE FTA_QualityAnalysis SET DocStatus='IP',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_QualityAnalysis_ID=1000001
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000016
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=562, EventType='PX', TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000016
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000016
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000017,50150,1000006,101,50032,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000001,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53560,100,1000017,50150,1000006,101,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000001,TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000017
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000017
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE FTA_QualityAnalysis SET DocAction='CL', DocStatus='CO', IsApproved='Y', Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_QualityAnalysis_ID=1000001
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000017
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=608, EventType='PX', TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000017
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000017
;

-- 11/09/2013 10:02:25 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET Processed='Y', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000006
;

-- 11/09/2013 10:03:08 AM VET
-- Farming Technical Assistance
--UPDATE FTA_RecordWeight SET NetWeight=43.600000000000, OutDate=TO_TIMESTAMP('2013-09-11 10:03:03','YYYY-MM-DD HH24:MI:SS'), TareWeight=18.140000000000, WeightStatus='C',Updated=TO_TIMESTAMP('2013-09-11 10:03:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_RecordWeight_ID=1000000
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,TextMsg,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000007,101,50033,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,'-',TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000007
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000018,50156,1000007,101,50033,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000018,50156,1000007,101,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000018
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000018
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000018
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=651, EventType='PX', TextMsg=NULL, WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000018
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000018
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000019,50155,1000007,101,50033,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000019,50155,1000007,101,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000019
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000019
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000019
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=721, EventType='PX', TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000019
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000019
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000020,50154,1000007,101,50033,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53561,100,1000020,50154,1000007,101,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000020
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000020
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
--UPDATE FTA_RecordWeight SET DocAction='CL', DocStatus='CO', IsApproved='Y', Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_RecordWeight_ID=1000000
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000020
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=801, EventType='PX', TextMsg='-', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000020
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000020
;

-- 11/09/2013 10:03:11 AM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET Processed='Y', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 10:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000007
;

-- 11/09/2013 10:07:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000008,TO_TIMESTAMP('2013-09-11 10:07:13','YYYY-MM-DD HH24:MI:SS'),100,'FCD',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Definición de Crédito','Definición de Crédito',TO_TIMESTAMP('2013-09-11 10:07:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:07:13 AM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000008 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 11/09/2013 10:07:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000008 AND rol.IsManual='N')
;

-- 11/09/2013 10:10:16 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinition (AD_Client_ID,AD_Org_ID,Amt,Category_ID,C_DocType_ID,Created,CreatedBy,DateDoc,DocAction,DocStatus,DocumentNo,FTA_CreditDefinition_ID,IsActive,IsApproved,M_PriceList_ID,Name,PlantingCycle_ID,Processed,Updated,UpdatedBy) VALUES (11,50001,0,1000010,1000008,TO_TIMESTAMP('2013-09-11 10:10:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-09-11','YYYY-MM-DD'),'CO','DR','1000000',1000000,'Y','N',101,'Maíz Ciclo 2013',1000000,'N',TO_TIMESTAMP('2013-09-11 10:10:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:13:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_TIMESTAMP('2013-09-11 10:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000005,'Abonos Foliares',0,TO_TIMESTAMP('2013-09-11 10:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Abonos Foliares')
;

-- 11/09/2013 10:13:23 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000005, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000005)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,1000000,50003,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000005,1000011,'Agrofast','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,'Agrofast',0,0)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000011 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000011, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000005 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000011)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000011, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000011)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000011,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000011,0,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000011,0,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000011,0,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000011,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000011,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000011,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000011,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:14:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000011,TO_TIMESTAMP('2013-09-11 10:14:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:14:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_PriceList (AD_Client_ID,AD_Org_ID,C_Currency_ID,Created,CreatedBy,EnforcePriceLimit,IsActive,IsDefault,IsSOPriceList,IsTaxIncluded,M_PriceList_ID,Name,PricePrecision,Updated,UpdatedBy) VALUES (11,50001,100,TO_TIMESTAMP('2013-09-11 10:14:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','N',1000000,'LISTA DE VENTA',2,TO_TIMESTAMP('2013-09-11 10:14:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:15:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_PriceList_Version (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_DiscountSchema_ID,M_PriceList_ID,M_PriceList_Version_ID,Name,ProcCreate,Updated,UpdatedBy,ValidFrom) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:15:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',100,1000000,1000000,'LISTA DE VENTA (2013)','N',TO_TIMESTAMP('2013-09-11 10:15:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-09-11','YYYY-MM-DD'))
;

-- 11/09/2013 10:15:42 AM VET
-- Farming Technical Assistance
UPDATE M_PriceList SET IsSOPriceList='Y',Updated=TO_TIMESTAMP('2013-09-11 10:15:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_PriceList_ID=1000000
;

-- 11/09/2013 10:16:18 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:16:18','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000011,40.000000000000,40.000000000000,40.000000000000,TO_TIMESTAMP('2013-09-11 10:16:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,1000000,50003,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000005,1000012,'Anabor','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,'Anabor',0,0)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000012 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000012, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000005 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000012)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000012, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000012)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000012,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000012,0,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000012,0,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000012,0,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000012,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000012,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000012,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000012,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:17:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000012,TO_TIMESTAMP('2013-09-11 10:17:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:17:56 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:17:56','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000012,65.000000000000,65.000000000000,65.000000000000,TO_TIMESTAMP('2013-09-11 10:17:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:19:43 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_TIMESTAMP('2013-09-11 10:19:43','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000006,'Insecticidas',0,TO_TIMESTAMP('2013-09-11 10:19:43','YYYY-MM-DD HH24:MI:SS'),100,'Insecticidas')
;

-- 11/09/2013 10:19:43 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000006, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000006)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000002,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000006,1000013,'Alfamax','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,'Alfamax',0,0)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000013 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000013, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000006 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000013)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000013, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000013)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000013,0,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000013,0,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000013,0,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000013,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000013,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000013,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000013,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:20:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000013,TO_TIMESTAMP('2013-09-11 10:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:20:29 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_TIMESTAMP('2013-09-11 10:20:29','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000007,'Piretroides',0,TO_TIMESTAMP('2013-09-11 10:20:29','YYYY-MM-DD HH24:MI:SS'),100,'Piretroides')
;

-- 11/09/2013 10:20:29 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000007, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000007)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:21:01','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000002,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000007,1000014,'Alfatrin','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:21:01','YYYY-MM-DD HH24:MI:SS'),100,'Alfatrin',0,0)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000014 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000014, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000007 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000014)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000014, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000014)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000014,0,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000014,0,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000014,0,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000014,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000014,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000014,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000014,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000014,TO_TIMESTAMP('2013-09-11 10:21:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000002,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000007,1000015,'Brigade','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,'Brigade',0,0)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000015 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000015, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000007 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000015)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000015, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000015)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000015,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000015,0,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000015,0,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000015,0,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000015,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000015,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000015,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000015,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:21:37 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000015,TO_TIMESTAMP('2013-09-11 10:21:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:22:18 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_TIMESTAMP('2013-09-11 10:22:18','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000008,'Carbamatos',0,TO_TIMESTAMP('2013-09-11 10:22:18','YYYY-MM-DD HH24:MI:SS'),100,'Carbamatos')
;

-- 11/09/2013 10:22:18 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000008, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000008)
;

-- 11/09/2013 10:22:54 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM (AD_Client_ID,AD_Org_ID,CostingPrecision,Created,CreatedBy,C_UOM_ID,IsActive,IsDefault,Name,StdPrecision,UOMSymbol,Updated,UpdatedBy,X12DE355) VALUES (11,0,0,TO_TIMESTAMP('2013-09-11 10:22:54','YYYY-MM-DD HH24:MI:SS'),100,1000003,'Y','N','Gramos',2,'Gr',TO_TIMESTAMP('2013-09-11 10:22:54','YYYY-MM-DD HH24:MI:SS'),100,'Gr')
;

-- 11/09/2013 10:22:54 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM_Trl (AD_Language,C_UOM_ID, Description,Name,UOMSymbol, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_UOM_ID, t.Description,t.Name,t.UOMSymbol, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_UOM t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_UOM_ID=1000003 AND NOT EXISTS (SELECT * FROM C_UOM_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_UOM_ID=t.C_UOM_ID)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000003,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000008,1000016,'Concord','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,'Concord',0,0)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000016 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000016, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000008 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000016)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000016, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000016)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000016,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000016,0,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000016,0,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000016,0,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000016,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000016,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000016,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000016,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:23:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000016,TO_TIMESTAMP('2013-09-11 10:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:28:18 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_TIMESTAMP('2013-09-11 10:28:18','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000009,'Fertilizante de Siembra',0,TO_TIMESTAMP('2013-09-11 10:28:18','YYYY-MM-DD HH24:MI:SS'),100,'Fertilizante de Siembra')
;

-- 11/09/2013 10:28:18 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000009, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000009)
;

-- 11/09/2013 10:28:53 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_TIMESTAMP('2013-09-11 10:28:53','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000010,'Fertilizante de Reabono',0,TO_TIMESTAMP('2013-09-11 10:28:53','YYYY-MM-DD HH24:MI:SS'),100,'Fertilizante de Reabono')
;

-- 11/09/2013 10:28:53 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000010, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000010)
;

-- 11/09/2013 10:29:17 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_TIMESTAMP('2013-09-11 10:29:16','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000011,'Herbicidas',0,TO_TIMESTAMP('2013-09-11 10:29:16','YYYY-MM-DD HH24:MI:SS'),100,'Herbicidas')
;

-- 11/09/2013 10:29:17 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000011, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000011)
;

-- 11/09/2013 10:30:18 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM (AD_Client_ID,AD_Org_ID,CostingPrecision,Created,CreatedBy,C_UOM_ID,IsActive,IsDefault,Name,StdPrecision,UOMSymbol,Updated,UpdatedBy,X12DE355) VALUES (11,0,0,TO_TIMESTAMP('2013-09-11 10:30:18','YYYY-MM-DD HH24:MI:SS'),100,1000004,'Y','N','Saco',2,'Saco',TO_TIMESTAMP('2013-09-11 10:30:18','YYYY-MM-DD HH24:MI:SS'),100,'Saco')
;

-- 11/09/2013 10:30:18 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM_Trl (AD_Language,C_UOM_ID, Description,Name,UOMSymbol, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_UOM_ID, t.Description,t.Name,t.UOMSymbol, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_UOM t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_UOM_ID=1000004 AND NOT EXISTS (SELECT * FROM C_UOM_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_UOM_ID=t.C_UOM_ID)
;

-- 11/09/2013 10:30:50 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM (AD_Client_ID,AD_Org_ID,CostingPrecision,Created,CreatedBy,C_UOM_ID,IsActive,IsDefault,Name,StdPrecision,UOMSymbol,Updated,UpdatedBy,X12DE355) VALUES (11,0,0,TO_TIMESTAMP('2013-09-11 10:30:50','YYYY-MM-DD HH24:MI:SS'),100,1000005,'Y','N','Bolsa',2,'Bolsa',TO_TIMESTAMP('2013-09-11 10:30:50','YYYY-MM-DD HH24:MI:SS'),100,'Bl')
;

-- 11/09/2013 10:30:50 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM_Trl (AD_Language,C_UOM_ID, Description,Name,UOMSymbol, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_UOM_ID, t.Description,t.Name,t.UOMSymbol, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_UOM t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_UOM_ID=1000005 AND NOT EXISTS (SELECT * FROM C_UOM_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_UOM_ID=t.C_UOM_ID)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000004,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000009,1000017,'Formula 10-20-20 CP','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,'10000001',0,0)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000017 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000017, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000009 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000017)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000017, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000017)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000017,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000017,0,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000017,0,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000017,0,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000017,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000017,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000017,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000017,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:31:02 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000017,TO_TIMESTAMP('2013-09-11 10:31:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:31:36 AM VET
-- Farming Technical Assistance
UPDATE M_Product SET C_UOM_ID=50001,Updated=TO_TIMESTAMP('2013-09-11 10:31:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Product_ID=1000017
;

-- 11/09/2013 10:32:13 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:32:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000017,232.000000000000,232.000000000000,232.000000000000,TO_TIMESTAMP('2013-09-11 10:32:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:35:24 AM VET
-- Farming Technical Assistance
UPDATE M_Product SET Value='Formula 10-20-20 CP',Updated=TO_TIMESTAMP('2013-09-11 10:35:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Product_ID=1000017
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_AttributeSetInstance_ID,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,1000000,50001,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,0,50006,1000009,1000018,'Formula 10-20-24 CP','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,'Formula 10-20-24 CP',0,0)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000018 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000018, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000009 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000018)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000018, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000018)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000018,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000018,0,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000018,0,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000018,0,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000018,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000018,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000018,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000018,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:35:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000018,TO_TIMESTAMP('2013-09-11 10:35:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:35:59 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:35:59','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000018,232.000000000000,232.000000000000,232.000000000000,TO_TIMESTAMP('2013-09-11 10:35:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,1000000,50001,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000009,1000019,'Cloruro de Potasio','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,'Cloruro de Potasio',0,0)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000019 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000019, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000009 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000019)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000019, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000019)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000019,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000019,0,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000019,0,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000019,0,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000019,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000019,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000019,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000019,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:37:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000019,TO_TIMESTAMP('2013-09-11 10:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:38:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:38:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000019,110.000000000000,110.000000000000,110.000000000000,TO_TIMESTAMP('2013-09-11 10:38:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,1000000,50001,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000010,1000020,'Urea','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,'Urea',0,0)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000020 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000020, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000010 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000020)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000020, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000020)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000020,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000020,0,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000020,0,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000020,0,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000020,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000020,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000020,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000020,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:38:46 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000020,TO_TIMESTAMP('2013-09-11 10:38:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:39:12 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:39:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000020,270.000000000000,270.000000000000,270.000000000000,TO_TIMESTAMP('2013-09-11 10:39:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:40:39 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM (AD_Client_ID,AD_Org_ID,CostingPrecision,Created,CreatedBy,C_UOM_ID,IsActive,IsDefault,Name,StdPrecision,UOMSymbol,Updated,UpdatedBy,X12DE355) VALUES (11,0,0,TO_TIMESTAMP('2013-09-11 10:40:39','YYYY-MM-DD HH24:MI:SS'),100,1000006,'Y','N','Dosis',2,'Ds',TO_TIMESTAMP('2013-09-11 10:40:39','YYYY-MM-DD HH24:MI:SS'),100,'Ds')
;

-- 11/09/2013 10:40:39 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM_Trl (AD_Language,C_UOM_ID, Description,Name,UOMSymbol, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_UOM_ID, t.Description,t.Name,t.UOMSymbol, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_UOM t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_UOM_ID=1000006 AND NOT EXISTS (SELECT * FROM C_UOM_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_UOM_ID=t.C_UOM_ID)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000006,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000010,1000021,'Microelementos','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,'Microelementos',0,0)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000021 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000021, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000010 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000021)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000021, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000021)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000021,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000021,0,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000021,0,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000021,0,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000021,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000021,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000021,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000021,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000021,TO_TIMESTAMP('2013-09-11 10:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:41:50 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:41:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000021,80.000000000000,80.000000000000,80.000000000000,TO_TIMESTAMP('2013-09-11 10:41:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,1000000,50003,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000011,1000022,'Roundup','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,'Roundup',0,0)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000022 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000022, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000011 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000022)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000022, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000022)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000022,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000022,0,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000022,0,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000022,0,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000022,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000022,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000022,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000022,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:46:35 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000022,TO_TIMESTAMP('2013-09-11 10:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:47:09 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:47:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000022,300.000000000000,300.000000000000,300.000000000000,TO_TIMESTAMP('2013-09-11 10:47:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:48:06','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000005,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000011,1000023,'Atrazina','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:48:06','YYYY-MM-DD HH24:MI:SS'),100,'Atrazina',0,0)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000023 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000023, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000011 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000023)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000023, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000023)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000023,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000023,0,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000023,0,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000023,0,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000023,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000023,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000023,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000023,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:48:07 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000023,TO_TIMESTAMP('2013-09-11 10:48:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:49:05 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:49:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000023,125.000000000000,125.000000000000,125.000000000000,TO_TIMESTAMP('2013-09-11 10:49:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000003,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000011,1000024,'Accent','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,'Accent',0,0)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000024 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000024, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000011 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000024)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000024, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000024)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000024,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000024,0,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000024,0,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000024,0,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000024,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000024,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000024,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000024,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000024,TO_TIMESTAMP('2013-09-11 10:49:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 10:50:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 10:50:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000024,112.550000000000,112.550000000000,112.550000000000,TO_TIMESTAMP('2013-09-11 10:50:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:02:29 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:02:29','YYYY-MM-DD HH24:MI:SS'),100,1000000,50003,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000011,1000025,'Prowl','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:02:29','YYYY-MM-DD HH24:MI:SS'),100,'Prowl',0,0)
;

-- 11/09/2013 11:02:29 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000025 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:02:29 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000025, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000011 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000025)
;

-- 11/09/2013 11:02:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000025, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000025)
;

-- 11/09/2013 11:02:29 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:02:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000025,TO_TIMESTAMP('2013-09-11 11:02:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:02:29 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:02:29','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000025,0,TO_TIMESTAMP('2013-09-11 11:02:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:02:30 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000025,0,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:02:30 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000025,0,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:02:30 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000025,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:02:30 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000025,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:02:30 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000025,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:02:30 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000025,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:02:30 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000025,TO_TIMESTAMP('2013-09-11 11:02:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:02:53 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:02:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000025,120.000000000000,120.000000000000,120.000000000000,TO_TIMESTAMP('2013-09-11 11:02:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000002,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000011,1000026,'Surfactante','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,'Surfactante',0,0)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000026 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000026, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000011 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000026)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000026, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000026)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000026,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000026,0,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000026,0,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000026,0,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000026,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000026,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000026,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000026,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:03:38 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000026,TO_TIMESTAMP('2013-09-11 11:03:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:03:57 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:03:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000026,25.000000000000,25.000000000000,25.000000000000,TO_TIMESTAMP('2013-09-11 11:03:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,1000000,100,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000011,1000027,'Merlin','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,'Merlin',0,0)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000027 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000027, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000011 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000027)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000027, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000027)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000027,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000027,0,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000027,0,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000027,0,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000027,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000027,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000027,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000027,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:10:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000027,TO_TIMESTAMP('2013-09-11 11:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:10:22 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:10:22','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000027,80.000000000000,80.000000000000,80.000000000000,TO_TIMESTAMP('2013-09-11 11:10:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,1000000,50003,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000011,1000028,'Gramoxone','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,'Gramoxone',0,0)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000028 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000028, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000011 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000028)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000028, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000028)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000028,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000028,0,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000028,0,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000028,0,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000028,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000028,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000028,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000028,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:11:27 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000028,TO_TIMESTAMP('2013-09-11 11:11:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:11:47 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:11:47','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000028,51.000000000000,51.000000000000,51.000000000000,TO_TIMESTAMP('2013-09-11 11:11:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:13:59 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:13:59','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000002,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000006,1000029,'Piretroide Aplicación','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:13:59','YYYY-MM-DD HH24:MI:SS'),100,'Piretroide Aplicación',0,0)
;

-- 11/09/2013 11:13:59 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000029 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:13:59 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000029, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000006 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000029)
;

-- 11/09/2013 11:13:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000029, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000029)
;

-- 11/09/2013 11:14:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000029,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:14:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000029,0,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:14:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000029,0,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:14:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000029,0,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:14:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000029,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:14:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000029,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:14:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000029,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:14:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000029,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:14:00 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000029,TO_TIMESTAMP('2013-09-11 11:14:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:14:20 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:14:20','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000029,96.000000000000,96.000000000000,96.000000000000,TO_TIMESTAMP('2013-09-11 11:14:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000002,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000006,1000030,'Inhibidor de Quitina','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,'Inhibidor de Quitina',0,0)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000030 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000030, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000006 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000030)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000030, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000030)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000030,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000030,0,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000030,0,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000030,0,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000030,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000030,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000030,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000030,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:15:03 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000030,TO_TIMESTAMP('2013-09-11 11:15:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:15:33 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:15:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000030,135.000000000000,135.000000000000,135.000000000000,TO_TIMESTAMP('2013-09-11 11:15:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:23:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:23:40','YYYY-MM-DD HH24:MI:SS'),100,1000000,50003,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000006,1000031,'Lannate','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:23:40','YYYY-MM-DD HH24:MI:SS'),100,'Lannate',0,0)
;

-- 11/09/2013 11:23:40 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000031 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:23:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000031, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000031)
;

-- 11/09/2013 11:23:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:23:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000031,TO_TIMESTAMP('2013-09-11 11:23:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:23:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000031,0,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:23:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000031,0,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:23:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000031,0,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:23:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000031,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:23:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000031,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:23:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000031,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:23:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000031,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:23:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000031,TO_TIMESTAMP('2013-09-11 11:23:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:24:56 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:24:56','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000031,120.000000000000,120.000000000000,120.000000000000,TO_TIMESTAMP('2013-09-11 11:24:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100,1000000,100,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000006,1000032,'Elite','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100,'Elite',0,0)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000032 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000032, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000006 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000032)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000032, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000032)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000032,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000032,0,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000032,0,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000032,0,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000032,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000032,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:26:41 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000032,TO_TIMESTAMP('2013-09-11 11:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:26:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:26:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000032,TO_TIMESTAMP('2013-09-11 11:26:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:26:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:26:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000032,TO_TIMESTAMP('2013-09-11 11:26:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:27:32 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:27:32','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000032,60.000000000000,60.000000000000,60.000000000000,TO_TIMESTAMP('2013-09-11 11:27:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:31:47 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,232.00,TO_TIMESTAMP('2013-09-11 11:31:47','YYYY-MM-DD HH24:MI:SS'),100,50001,1000000,1000000,'Y',10,1000017,232.000000000000,'N',1,TO_TIMESTAMP('2013-09-11 11:31:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:31:47 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000000
;

-- 11/09/2013 11:32:20 AM VET
-- Farming Technical Assistance
DELETE FROM FTA_CreditDefinitionLine WHERE FTA_CreditDefinitionLine_ID=1000000
;

-- 11/09/2013 11:32:48 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,0,TO_TIMESTAMP('2013-09-11 11:32:48','YYYY-MM-DD HH24:MI:SS'),100,50001,1000000,1000001,'Y',10,1000017,0,'N',1,TO_TIMESTAMP('2013-09-11 11:32:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:32:48 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000000
;

-- 11/09/2013 11:33:07 AM VET
-- Farming Technical Assistance
DELETE FROM FTA_CreditDefinitionLine WHERE FTA_CreditDefinitionLine_ID=1000001
;

-- 11/09/2013 11:33:21 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET IsActive='N',Updated=TO_TIMESTAMP('2013-09-11 11:33:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_CreditDefinition_ID=1000000
;

-- 11/09/2013 11:34:11 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinition (AD_Client_ID,AD_Org_ID,Amt,Category_ID,C_DocType_ID,Created,CreatedBy,DateDoc,DocAction,DocStatus,DocumentNo,FTA_CreditDefinition_ID,IsActive,IsApproved,M_PriceList_ID,Name,PlantingCycle_ID,Processed,Updated,UpdatedBy) VALUES (11,50001,0,1000010,1000008,TO_TIMESTAMP('2013-09-11 11:34:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-09-11','YYYY-MM-DD'),'CO','DR','1000001',1000001,'Y','N',1000000,'Maíz Ciclo 2013',1000000,'N',TO_TIMESTAMP('2013-09-11 11:34:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:34:37 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,232.00,TO_TIMESTAMP('2013-09-11 11:34:37','YYYY-MM-DD HH24:MI:SS'),100,50001,1000001,1000002,'Y',10,1000017,232.00,'N',1,TO_TIMESTAMP('2013-09-11 11:34:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:34:37 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:35:06 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,232.00,TO_TIMESTAMP('2013-09-11 11:35:06','YYYY-MM-DD HH24:MI:SS'),100,50001,1000001,1000003,'Y',20,1000018,232.00,'N',1,TO_TIMESTAMP('2013-09-11 11:35:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:35:06 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:36:12 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,110.00,TO_TIMESTAMP('2013-09-11 11:36:12','YYYY-MM-DD HH24:MI:SS'),100,50001,1000001,1000004,'Y',30,1000019,110.00,'N',1,TO_TIMESTAMP('2013-09-11 11:36:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:36:12 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:36:23 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,270.00,TO_TIMESTAMP('2013-09-11 11:36:23','YYYY-MM-DD HH24:MI:SS'),100,50001,1000001,1000005,'Y',40,1000020,270.00,'N',1,TO_TIMESTAMP('2013-09-11 11:36:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:36:23 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:36:41 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,80.00,TO_TIMESTAMP('2013-09-11 11:36:41','YYYY-MM-DD HH24:MI:SS'),100,1000006,1000001,1000006,'Y',50,1000021,80.00,'N',1,TO_TIMESTAMP('2013-09-11 11:36:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:36:41 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:37:14 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,300.00,TO_TIMESTAMP('2013-09-11 11:37:14','YYYY-MM-DD HH24:MI:SS'),100,50003,1000001,1000007,'Y',60,1000022,300.00,'N',1,TO_TIMESTAMP('2013-09-11 11:37:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:37:14 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:37:48 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,125.00,TO_TIMESTAMP('2013-09-11 11:37:48','YYYY-MM-DD HH24:MI:SS'),100,1000005,1000001,1000008,'Y',70,1000023,125.00,'N',1,TO_TIMESTAMP('2013-09-11 11:37:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:37:48 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:38:03 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,112.55,TO_TIMESTAMP('2013-09-11 11:38:03','YYYY-MM-DD HH24:MI:SS'),100,1000003,1000001,1000009,'Y',80,1000024,112.55,'N',1,TO_TIMESTAMP('2013-09-11 11:38:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:38:03 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:38:19 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,120.00,TO_TIMESTAMP('2013-09-11 11:38:19','YYYY-MM-DD HH24:MI:SS'),100,50003,1000001,1000010,'Y',90,1000025,120.00,'N',1,TO_TIMESTAMP('2013-09-11 11:38:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:38:19 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:38:31 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,25.00,TO_TIMESTAMP('2013-09-11 11:38:31','YYYY-MM-DD HH24:MI:SS'),100,1000002,1000001,1000011,'Y',100,1000026,25.00,'N',1,TO_TIMESTAMP('2013-09-11 11:38:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:38:31 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:39:19 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,80.00,TO_TIMESTAMP('2013-09-11 11:39:19','YYYY-MM-DD HH24:MI:SS'),100,100,1000001,1000012,'Y',110,1000027,80.00,'N',1,TO_TIMESTAMP('2013-09-11 11:39:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:39:19 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:39:34 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,51.00,TO_TIMESTAMP('2013-09-11 11:39:34','YYYY-MM-DD HH24:MI:SS'),100,50003,1000001,1000013,'Y',120,1000028,51.00,'N',1,TO_TIMESTAMP('2013-09-11 11:39:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:39:34 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:39:54 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,96.00,TO_TIMESTAMP('2013-09-11 11:39:54','YYYY-MM-DD HH24:MI:SS'),100,1000002,1000001,1000014,'Y',130,1000029,96.00,'N',1,TO_TIMESTAMP('2013-09-11 11:39:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:39:54 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:40:10 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,135.00,TO_TIMESTAMP('2013-09-11 11:40:10','YYYY-MM-DD HH24:MI:SS'),100,1000002,1000001,1000015,'Y',140,1000030,135.00,'N',1,TO_TIMESTAMP('2013-09-11 11:40:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:40:10 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:41:03 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,120.00,TO_TIMESTAMP('2013-09-11 11:41:03','YYYY-MM-DD HH24:MI:SS'),100,50003,1000001,1000016,'Y',150,1000031,120.00,'N',1,TO_TIMESTAMP('2013-09-11 11:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:41:04 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:41:38 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,25.00,TO_TIMESTAMP('2013-09-11 11:41:38','YYYY-MM-DD HH24:MI:SS'),100,1000002,1000001,1000017,'Y',160,1000026,25.00,'N',1,TO_TIMESTAMP('2013-09-11 11:41:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:41:38 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:41:49 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,60.00,TO_TIMESTAMP('2013-09-11 11:41:49','YYYY-MM-DD HH24:MI:SS'),100,100,1000001,1000018,'Y',170,1000032,60.00,'N',1,TO_TIMESTAMP('2013-09-11 11:41:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:41:49 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:43:36 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM (AD_Client_ID,AD_Org_ID,CostingPrecision,Created,CreatedBy,C_UOM_ID,IsActive,IsDefault,Name,StdPrecision,UOMSymbol,Updated,UpdatedBy,X12DE355) VALUES (11,0,0,TO_TIMESTAMP('2013-09-11 11:43:36','YYYY-MM-DD HH24:MI:SS'),100,1000007,'Y','N','Pulgadas',2,'Pulg',TO_TIMESTAMP('2013-09-11 11:43:36','YYYY-MM-DD HH24:MI:SS'),100,'Pulg')
;

-- 11/09/2013 11:43:37 AM VET
-- Farming Technical Assistance
INSERT INTO C_UOM_Trl (AD_Language,C_UOM_ID, Description,Name,UOMSymbol, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_UOM_ID, t.Description,t.Name,t.UOMSymbol, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_UOM t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_UOM_ID=1000007 AND NOT EXISTS (SELECT * FROM C_UOM_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_UOM_ID=t.C_UOM_ID)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000007,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000006,1000033,'Trichogramma','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,'Trichogramma',0,0)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000033 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000033, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000006 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000033)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000033, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000033)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000033,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000033,0,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000033,0,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000033,0,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000033,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000033,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000033,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000033,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:43:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000033,TO_TIMESTAMP('2013-09-11 11:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:44:19 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:44:19','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000033,100.000000000000,100.000000000000,100.000000000000,TO_TIMESTAMP('2013-09-11 11:44:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:44:40 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,100.00,TO_TIMESTAMP('2013-09-11 11:44:40','YYYY-MM-DD HH24:MI:SS'),100,1000007,1000001,1000019,'Y',180,1000033,100.00,'N',1,TO_TIMESTAMP('2013-09-11 11:44:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:44:40 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000003,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000004,1000034,'Rizoth','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,'Rizoth',0,0)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000034 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000034, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000004 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000034)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000034, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000034)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000034,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000034,0,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000034,0,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000034,0,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000034,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000034,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000034,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000034,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:46:16 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000034,TO_TIMESTAMP('2013-09-11 11:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:46:49 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:46:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000034,50.000000000000,50.000000000000,50.000000000000,TO_TIMESTAMP('2013-09-11 11:46:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,Discontinued,GuaranteeDays,GuaranteeDaysMin,IsActive,IsBOM,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Locator_ID,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000002,'N',0,0,'Y','N','N','N','N','N','Y','Y','Y','Y','N','N','N',0,50006,1000004,1000035,'Taspa','N','I',0,0,0,0,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,'Taspa',0,0)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=1000035 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000035, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=11 AND p.M_Product_Category_ID=1000004 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=1000035)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000035, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=11 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='PR' AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000035)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,101,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000035,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,102,100,1000035,0,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,103,100,1000035,0,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Percent,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,104,100,1000035,0,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50000,100,1000035,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,105,100,1000035,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50001,100,1000035,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,50002,100,1000035,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:15 AM VET
-- Farming Technical Assistance
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,0,101,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,100,100,1000035,TO_TIMESTAMP('2013-09-11 11:48:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:52 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,50.00,TO_TIMESTAMP('2013-09-11 11:48:52','YYYY-MM-DD HH24:MI:SS'),100,1000003,1000001,1000020,'Y',190,1000034,50.00,'N',1,TO_TIMESTAMP('2013-09-11 11:48:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:48:52 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:49:42 AM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-11 11:49:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000035,150.000000000000,150.000000000000,150.000000000000,TO_TIMESTAMP('2013-09-11 11:49:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:50:07 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,150.00,TO_TIMESTAMP('2013-09-11 11:50:07','YYYY-MM-DD HH24:MI:SS'),100,1000002,1000001,1000021,'Y',200,1000035,150.00,'N',1,TO_TIMESTAMP('2013-09-11 11:50:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:50:07 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:51:53 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,ChargeAmt,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000000,450.000000000000,TO_TIMESTAMP('2013-09-11 11:51:53','YYYY-MM-DD HH24:MI:SS'),100,1000001,'Y','N','N','N','Preparación de Suelo y Siembra',TO_TIMESTAMP('2013-09-11 11:51:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:51:53 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000000 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- 11/09/2013 11:51:53 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000000)
;

-- 11/09/2013 11:52:28 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,ChargeAmt,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000001,250.000000000000,TO_TIMESTAMP('2013-09-11 11:52:28','YYYY-MM-DD HH24:MI:SS'),100,1000001,'Y','N','N','N','Imprevistos',TO_TIMESTAMP('2013-09-11 11:52:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:52:28 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000001 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- 11/09/2013 11:52:28 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000001, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000001)
;

-- 11/09/2013 11:53:01 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,ChargeAmt,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000002,200.000000000000,TO_TIMESTAMP('2013-09-11 11:53:01','YYYY-MM-DD HH24:MI:SS'),100,1000001,'Y','N','N','N','Prestamo a Cuenta de Cosecha',TO_TIMESTAMP('2013-09-11 11:53:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:53:01 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000002 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- 11/09/2013 11:53:01 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000002, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000002)
;

-- 11/09/2013 11:53:45 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,ChargeAmt,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000003,345.000000000000,TO_TIMESTAMP('2013-09-11 11:53:45','YYYY-MM-DD HH24:MI:SS'),100,107,'Y','N','N','N','Intereses 13% Anual',TO_TIMESTAMP('2013-09-11 11:53:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:53:45 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000003 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- 11/09/2013 11:53:45 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000003, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000003)
;

-- 11/09/2013 11:53:57 AM VET
-- Farming Technical Assistance
UPDATE C_Charge SET ChargeAmt=345.050000000000,Updated=TO_TIMESTAMP('2013-09-11 11:53:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Charge_ID=1000003
;

-- 11/09/2013 11:54:26 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,ChargeAmt,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000004,800.000000000000,TO_TIMESTAMP('2013-09-11 11:54:26','YYYY-MM-DD HH24:MI:SS'),100,1000001,'Y','N','N','N','Recolección ',TO_TIMESTAMP('2013-09-11 11:54:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:54:26 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000004 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- 11/09/2013 11:54:26 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000004, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000004)
;

-- 11/09/2013 11:54:41 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,ChargeAmt,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000005,800.000000000000,TO_TIMESTAMP('2013-09-11 11:54:41','YYYY-MM-DD HH24:MI:SS'),100,1000001,'Y','N','N','N','Flete',TO_TIMESTAMP('2013-09-11 11:54:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:54:41 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000005 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- 11/09/2013 11:54:41 AM VET
-- Farming Technical Assistance
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000005, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000005)
;

-- 11/09/2013 11:55:05 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,C_Charge_ID,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,800.00,1000005,TO_TIMESTAMP('2013-09-11 11:55:05','YYYY-MM-DD HH24:MI:SS'),100,100,1000001,1000022,'Y',210,800.000000000000,'N',1,TO_TIMESTAMP('2013-09-11 11:55:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:55:05 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:55:15 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,C_Charge_ID,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,250.00,1000001,TO_TIMESTAMP('2013-09-11 11:55:15','YYYY-MM-DD HH24:MI:SS'),100,100,1000001,1000023,'Y',220,250.000000000000,'N',1,TO_TIMESTAMP('2013-09-11 11:55:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:55:15 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:55:26 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,C_Charge_ID,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,345.05,1000003,TO_TIMESTAMP('2013-09-11 11:55:26','YYYY-MM-DD HH24:MI:SS'),100,100,1000001,1000024,'Y',230,345.050000000000,'N',1,TO_TIMESTAMP('2013-09-11 11:55:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:55:26 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:55:56 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,C_Charge_ID,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,450.00,1000000,TO_TIMESTAMP('2013-09-11 11:55:56','YYYY-MM-DD HH24:MI:SS'),100,100,1000001,1000025,'Y',240,450.000000000000,'N',1,TO_TIMESTAMP('2013-09-11 11:55:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:55:56 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:56:06 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,C_Charge_ID,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,200.00,1000002,TO_TIMESTAMP('2013-09-11 11:56:06','YYYY-MM-DD HH24:MI:SS'),100,100,1000001,1000026,'Y',250,200.000000000000,'N',1,TO_TIMESTAMP('2013-09-11 11:56:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:56:06 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:56:20 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,C_Charge_ID,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,800.00,1000004,TO_TIMESTAMP('2013-09-11 11:56:20','YYYY-MM-DD HH24:MI:SS'),100,100,1000001,1000027,'Y',260,800.000000000000,'N',1,TO_TIMESTAMP('2013-09-11 11:56:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:56:20 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 11:59:05 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsSelfService,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (11,50001,100,TO_TIMESTAMP('2013-09-11 11:59:05','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','F',1000012,'Semillas',0,TO_TIMESTAMP('2013-09-11 11:59:05','YYYY-MM-DD HH24:MI:SS'),100,'Semillas')
;

-- 11/09/2013 11:59:05 AM VET
-- Farming Technical Assistance
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_AverageCostVariance_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 1000012, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.P_Asset_Acct,p.P_AverageCostVariance_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=1000012)
;

-- 11/09/2013 11:59:51 AM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_Category_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,1100.00,TO_TIMESTAMP('2013-09-11 11:59:51','YYYY-MM-DD HH24:MI:SS'),100,1000004,1000001,1000028,'Y',270,1000012,1100.000000000000,'N',1.000000000000,TO_TIMESTAMP('2013-09-11 11:59:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 11:59:51 AM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=FTA_CreditDefinition.FTA_CreditDefinition_ID) WHERE FTA_CreditDefinition.FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,TextMsg,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,1000008,101,50028,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000001,'null: Total=6418.60 (#27)',TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000008
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,1000021,50136,1000008,101,50028,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000001,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,1000021,50136,1000008,101,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000001,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000021
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000021
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000021
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=334, EventType='PX', TextMsg=NULL, WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000021
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000021
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,1000022,50135,1000008,101,50028,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000001,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,1000022,50135,1000008,101,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000001,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000022
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000022
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=6418.60, DocStatus='IP',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='null: Total=6418.60 (#27)', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000022
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=491, EventType='PX', TextMsg='null: Total=6418.60 (#27)', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000022
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000022
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,1000023,50134,1000008,101,50028,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000001,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,1000023,50134,1000008,101,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000001,TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000023
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000023
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinitionLine SET Processed='Y' WHERE FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET DocAction='CL', DocStatus='CO', IsApproved='Y', Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_CreditDefinition_ID=1000001
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='null: Total=6418.60 (#27)', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000023
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=596, EventType='PX', TextMsg='null: Total=6418.60 (#27)', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000023
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000023
;

-- 11/09/2013 12:00:36 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET Processed='Y', WFState='CC',Updated=TO_TIMESTAMP('2013-09-11 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000008
;

-- 11/09/2013 12:02:53 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000009,TO_TIMESTAMP('2013-09-11 12:02:53','YYYY-MM-DD HH24:MI:SS'),100,'FFC',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Credito/ Deuda a Productor','Credito/ Deuda a Productor',TO_TIMESTAMP('2013-09-11 12:02:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/09/2013 12:02:53 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000009 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 11/09/2013 12:02:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000009 AND rol.IsManual='N')
;

