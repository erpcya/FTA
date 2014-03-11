-- 12/09/2013 07:22:18 PM VET
-- Farming Technical Assistance
UPDATE C_DocType SET C_DocTypeOrder_ID=126,Updated=TO_DATE('2013-09-12 19:22:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000009
;

-- 12/09/2013 07:22:54 PM VET
-- Farming Technical Assistance
UPDATE AD_ClientInfo SET C_UOM_Weight_ID=50001,Updated=TO_DATE('2013-09-12 19:22:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Client_ID=11
;

-- 12/09/2013 07:23:30 PM VET
-- Farming Technical Assistance
UPDATE AD_OrgInfo SET M_Warehouse_ID=50002,Updated=TO_DATE('2013-09-12 19:23:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Org_ID=50001
;

-- 12/09/2013 07:24:33 PM VET
-- Farming Technical Assistance
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_PriceList_Version_ID,M_Product_ID,PriceLimit,PriceList,PriceStd,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-12 19:24:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',103,1000010,4.000000000000,4.000000000000,4.000000000000,TO_DATE('2013-09-12 19:24:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/09/2013 07:36:25 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000013,TO_DATE('2013-09-12 19:36:25','YYYY-MM-DD HH24:MI:SS'),100,'FTF',1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Hoja Técnica','Hoja Técnica',TO_DATE('2013-09-12 19:36:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/09/2013 07:36:25 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000013 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 12/09/2013 07:36:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000013 AND rol.IsManual='N')
;

