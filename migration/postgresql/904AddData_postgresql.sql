-- 12/09/2013 08:17:23 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000014,TO_TIMESTAMP('2013-09-12 20:17:23','YYYY-MM-DD HH24:MI:SS'),100,'FRL',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Liquidación ','Liquidación ',TO_TIMESTAMP('2013-09-12 20:17:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/09/2013 08:17:24 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000014 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 12/09/2013 08:17:24 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000014 AND rol.IsManual='N')
;

-- 12/09/2013 08:20:21 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO FTA_FarmerCredit (AD_Client_ID,AD_Org_ID,Amt,C_BPartner_ID,C_DocType_ID,Created,CreatedBy,CreditType,C_UOM_ID,DateDoc,DocAction,DocStatus,DocumentNo,FarmingAlloc,FTA_CreditDefinition_ID,FTA_FarmerCredit_ID,IsActive,IsApproved,Processed,Processing,Qty,Updated,UpdatedBy) VALUES (11,50001,0,1000000,1000009,TO_TIMESTAMP('2013-09-12 20:20:21','YYYY-MM-DD HH24:MI:SS'),100,'C',100,TO_TIMESTAMP('2013-09-12','YYYY-MM-DD'),'CO','DR','1000000','N',1000001,1000000,'Y','N','N','N',0,TO_TIMESTAMP('2013-09-12 20:20:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/09/2013 08:20:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE FTA_Farming SET FTA_FarmerCredit_ID=1000000,Updated=TO_TIMESTAMP('2013-09-12 20:20:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_Farming_ID=1000000
;

-- 12/09/2013 08:20:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE FTA_FarmerCredit SET Amt=192558000.00000000000000, Qty=30000.000000000000,Updated=TO_TIMESTAMP('2013-09-12 20:20:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_FarmerCredit_ID=1000000
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,TextMsg,Updated,UpdatedBy,WFState) VALUES (11,50001,53544,100,1000009,101,50027,TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,'-: Total=192558000.00000000000000 (#1)',TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000009
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53544,100,1000024,50132,1000009,101,50027,TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53544,100,1000024,50132,1000009,101,TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000024
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000024
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Activity SET WFState='CC',Updated=TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000024
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=852, EventType='PX', TextMsg=NULL, WFState='CC',Updated=TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000024
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000024
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53544,100,1000025,50131,1000009,101,50027,TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53544,100,1000025,50131,1000009,101,TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000025
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000025
;

-- 12/09/2013 08:20:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE FTA_FarmerCredit SET DocStatus='IP',Updated=TO_TIMESTAMP('2013-09-12 20:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_FarmerCredit_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Activity SET TextMsg='-: Total=192558000.00000000000000 (#1)', WFState='CC',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000025
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=1007, EventType='PX', TextMsg='-: Total=192558000.00000000000000 (#1)', WFState='CC',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000025
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000025
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53544,100,1000026,50130,1000009,101,50027,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',1000000,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53544,100,1000026,50130,1000009,101,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',1000000,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000026
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000026
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_Order (UpdatedBy,InvoiceRule,FreightAmt,DeliveryViaRule,IsApproved,IsCreditApproved,IsDelivered,IsInvoiced,M_Warehouse_ID,IsActive,DateAcct,SalesRep_ID,Created,C_PaymentTerm_ID,C_DocTypeTarget_ID,C_Currency_ID,TotalLines,GrandTotal,DocAction,C_DocType_ID,DocStatus,AD_Org_ID,DocumentNo,IsPrinted,PriorityRule,C_BPartner_ID,AD_Client_ID,ChargeAmt,IsTransferred,IsDiscountPrinted,Processing,Updated,DatePromised,IsSelected,DeliveryRule,C_BPartner_Location_ID,Posted,IsSOTrx,SendEMail,FreightCostRule,Bill_BPartner_ID,Bill_Location_ID,Processed,IsTaxIncluded,IsSelfService,M_PriceList_ID,PaymentRule,IsDropShip,DateOrdered,CreatedBy,C_Order_ID,FTA_FarmerCredit_ID) VALUES (100,'I',0,'P','N','N','N','N',50002,'Y',TO_TIMESTAMP('2013-09-12','YYYY-MM-DD'),100,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),105,126,100,0,0,'PR',0,'DR',50001,'800003','N','5',1000000,11,0,'N','N','N',TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2013-09-12','YYYY-MM-DD'),'N','A',1000000,'N','N','N','I',1000000,1000000,'N','N','N',102,'P','N',TO_TIMESTAMP('2013-09-12','YYYY-MM-DD'),100,1000000,1000000)
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_OrderLine (AD_Client_ID,AD_Org_ID,C_BPartner_ID,C_BPartner_Location_ID,C_Currency_ID,C_Order_ID,C_OrderLine_ID,Created,CreatedBy,C_Tax_ID,C_UOM_ID,DateOrdered,DatePromised,Discount,FreightAmt,IsActive,IsDescription,Line,LineNetAmt,M_AttributeSetInstance_ID,M_Product_ID,M_Warehouse_ID,PriceActual,PriceEntered,PriceLimit,PriceList,Processed,QtyDelivered,QtyEntered,QtyInvoiced,QtyOrdered,QtyReserved,Updated,UpdatedBy) VALUES (11,50001,1000000,1000000,100,1000000,1000000,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100,104,50001,TO_TIMESTAMP('2013-09-12','YYYY-MM-DD'),TO_TIMESTAMP('2013-09-12','YYYY-MM-DD'),0.00,0,'Y','N',10,2000.00,0,1000010,50002,4.00,4.00,4.00,4.00,'N',0,500.00,0,500.00,0,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Order SET TotalLines=(SELECT COALESCE(SUM(LineNetAmt),0) FROM C_OrderLine il WHERE C_Order.C_Order_ID=il.C_Order_ID) WHERE C_Order_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Order SET GrandTotal=TotalLines+(SELECT COALESCE(SUM(TaxAmt),0) FROM C_OrderTax it WHERE C_Order.C_Order_ID=it.C_Order_ID) WHERE C_Order_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO PP_MRP (AD_Client_ID,AD_Org_ID,C_BPartner_ID,C_Order_ID,C_OrderLine_ID,Created,CreatedBy,DateFinishSchedule,DateOrdered,DatePromised,DateSimulation,DateStartSchedule,DocStatus,IsActive,IsAvailable,M_Product_ID,M_Warehouse_ID,Name,OrderType,PP_MRP_ID,Qty,TypeMRP,Updated,UpdatedBy,Value) VALUES (11,50001,1000000,1000000,1000000,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-09-12 00:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2013-09-12 00:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2013-09-12 00:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2013-09-12 00:00:00','YYYY-MM-DD HH24:MI:SS'),'DR','Y','N',1000010,50002,'MRP','POO',1000000,500.00,'S',TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100,'MRP')
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO M_Storage (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_AttributeSetInstance_ID,M_Locator_ID,M_Product_ID,QtyOnHand,QtyOrdered,QtyReserved,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,50001,1000010,0,0,0,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE M_Storage SET QtyOrdered=500.00,Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_AttributeSetInstance_ID=0 AND M_Locator_ID=50001 AND M_Product_ID=1000010
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_OrderLine SET Discount=0.00, LineNetAmt=2000.00, QtyReserved=500.00,Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_OrderLine_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Order SET TotalLines=(SELECT COALESCE(SUM(LineNetAmt),0) FROM C_OrderLine il WHERE C_Order.C_Order_ID=il.C_Order_ID) WHERE C_Order_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Order SET GrandTotal=TotalLines+(SELECT COALESCE(SUM(TaxAmt),0) FROM C_OrderTax it WHERE C_Order.C_Order_ID=it.C_Order_ID) WHERE C_Order_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM C_OrderTax WHERE C_Order_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_OrderTax (AD_Client_ID,AD_Org_ID,C_Order_ID,Created,CreatedBy,C_Tax_ID,IsActive,IsTaxIncluded,Processed,TaxAmt,TaxBaseAmt,Updated,UpdatedBy) VALUES (11,50001,1000000,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100,104,'Y','N','N',0,2000.00,TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_OrderLine SET Processed='Y' WHERE C_Order_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_OrderTax SET Processed='Y' WHERE C_Order_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Order SET IsApproved='Y', TotalLines=2000.00, GrandTotal=2000.00, DocAction='CL', C_DocType_ID=126, DocStatus='CO', Processed='Y', Volume=0.00, Weight=0.00, ProcessedOn=1379033445723.723876953125,Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Order_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE PP_MRP SET AD_Org_ID=50001, C_BPartner_ID=1000000, C_Order_ID=1000000, DateFinishSchedule=TO_TIMESTAMP('2013-09-12 00:00:00','YYYY-MM-DD HH24:MI:SS'), DateOrdered=TO_TIMESTAMP('2013-09-12 00:00:00','YYYY-MM-DD HH24:MI:SS'), DatePromised=TO_TIMESTAMP('2013-09-12 00:00:00','YYYY-MM-DD HH24:MI:SS'), DateStartSchedule=TO_TIMESTAMP('2013-09-12 00:00:00','YYYY-MM-DD HH24:MI:SS'), Description=NULL, DocStatus='CO', M_Product_ID=1000010, M_Warehouse_ID=50002, Name='MRP', OrderType='POO', Qty=500.00, TypeMRP='S',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE PP_MRP_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE FTA_FarmerCredit SET DocAction='CL', DocStatus='CO', IsApproved='Y', Processed='Y',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_FarmerCredit_ID=1000000
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Activity SET TextMsg='-: Total=192558000.00000000000000 (#1)', WFState='CC',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000026
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=793, EventType='PX', TextMsg='-: Total=192558000.00000000000000 (#1)', WFState='CC',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=1000026
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=1000026
;

-- 12/09/2013 08:20:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Process SET Processed='Y', WFState='CC',Updated=TO_TIMESTAMP('2013-09-12 20:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=1000009
;

-- 12/09/2013 08:26:01 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,50001,1000015,TO_TIMESTAMP('2013-09-12 20:26:01','YYYY-MM-DD HH24:MI:SS'),100,'FMG',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Guía de Movilización','Guía de Movilización',TO_TIMESTAMP('2013-09-12 20:26:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/09/2013 08:26:16 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,50001,1000016,TO_TIMESTAMP('2013-09-12 20:26:15','YYYY-MM-DD HH24:MI:SS'),100,'FMG',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Guías de Movilización','Guía de Movilización',TO_TIMESTAMP('2013-09-12 20:26:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/09/2013 08:26:16 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000016 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 12/09/2013 08:26:16 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000016 AND rol.IsManual='N')
;

-- 12/09/2013 08:27:00 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO FTA_MobilizationGuide (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DateDoc,DocumentNo,FTA_Farming_ID,FTA_MobilizationGuide_ID,FTA_VehicleType_ID,IsActive,M_Warehouse_ID,Processed,QtyToDeliver,Updated,UpdatedBy) VALUES (11,50001,1000016,TO_TIMESTAMP('2013-09-12 20:27:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-09-12','YYYY-MM-DD'),'1000000',1000000,1000000,1000000,'Y',50002,'N',500.000000000000,TO_TIMESTAMP('2013-09-12 20:27:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/09/2013 08:27:00 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE FTA_MobilizationGuide SET DocAction='CL', DocStatus='CO', Processed='Y',Updated=TO_TIMESTAMP('2013-09-12 20:27:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_MobilizationGuide_ID=1000000
;

