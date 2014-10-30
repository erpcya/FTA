-- Oct 18, 2013 1:56:48 PM VET
-- LVE-Import
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53655,0,53287,TO_DATE('2013-10-18 13:56:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Import Record Weight',TO_DATE('2013-10-18 13:56:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 18, 2013 1:56:48 PM VET
-- LVE-Import
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53655 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Oct 18, 2013 1:56:48 PM VET
-- LVE-Import
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-10-18 13:56:48','YYYY-MM-DD HH24:MI:SS'),100,'Y',53655,0,999,TO_DATE('2013-10-18 13:56:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 18, 2013 1:57:00 PM VET
-- LVE-Import
UPDATE AD_Menu_Trl SET Name='Importar Registro de Peso',Updated=TO_DATE('2013-10-18 13:57:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53655 AND AD_Language='es_MX'
;

-- Oct 18, 2013 1:57:43 PM VET
-- LVE-Import
UPDATE AD_Column SET ColumnName=' ',Updated=TO_DATE('2013-10-18 13:57:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68980
;

-- Oct 18, 2013 1:59:05 PM VET
-- LVE-Import
UPDATE AD_Column SET ColumnName='ShipperName', Name='Shipper Name',Updated=TO_DATE('2013-10-18 13:59:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68980
;

-- Oct 18, 2013 1:59:05 PM VET
-- LVE-Import
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=68980
;

-- Oct 18, 2013 1:59:05 PM VET
-- LVE-Import
UPDATE AD_Field SET Name='Shipper Name', Description=NULL, Help=NULL WHERE AD_Column_ID=68980 AND IsCentrallyMaintained='Y'
;

-- Oct 18, 2013 1:59:11 PM VET
-- LVE-Import
CREATE TABLE I_RecordWeight (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, AnalysisType NVARCHAR2(2) DEFAULT NULL , BPartnerValue NVARCHAR2(40) DEFAULT NULL , C_BPartner_ID NUMBER(10) DEFAULT NULL , Col_0 NVARCHAR2(60) DEFAULT NULL , Col_1 NVARCHAR2(60) DEFAULT NULL , Col_2 NVARCHAR2(60) DEFAULT NULL , Col_3 NVARCHAR2(60) DEFAULT NULL , Col_4 NVARCHAR2(60) DEFAULT NULL , Col_5 NVARCHAR2(60) DEFAULT NULL , Col_6 NVARCHAR2(60) DEFAULT NULL , Col_7 NVARCHAR2(60) DEFAULT NULL , Col_8 NVARCHAR2(60) DEFAULT NULL , Col_9 NVARCHAR2(60) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, C_UOM_ID NUMBER(10) DEFAULT NULL , DateDoc DATE DEFAULT NULL , Description NVARCHAR2(255) DEFAULT NULL , DriverName NVARCHAR2(60) DEFAULT NULL , DriverValue NVARCHAR2(60) DEFAULT NULL , Entry_Doc_Type_ID NUMBER(10) DEFAULT NULL , Entry_Doc_Type_Name NVARCHAR2(60) DEFAULT NULL , Ext_Guide NVARCHAR2(60) DEFAULT NULL , FTA_Driver_ID NUMBER(10) DEFAULT NULL , FTA_EntryTicket_ID NUMBER(10) DEFAULT NULL , FTA_MobilizationGuide_ID NUMBER(10) DEFAULT NULL , FTA_QualityAnalysis_ID NUMBER(10) DEFAULT NULL , FTA_RecordWeight_ID NUMBER(10) DEFAULT NULL , FTA_VehicleType_ID NUMBER(10) DEFAULT NULL , GrossWeight NUMBER DEFAULT NULL , GuideDocumentNo NVARCHAR2(30) DEFAULT NULL , I_ErrorMsg NVARCHAR2(2000) DEFAULT NULL , I_IsImported CHAR(1) DEFAULT NULL  CHECK (I_IsImported IN ('Y','N','E')), InDate DATE DEFAULT NULL , I_RecordWeight_ID NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsSOTrx CHAR(1) DEFAULT NULL  CHECK (IsSOTrx IN ('Y','N')), M_Product_ID NUMBER(10) DEFAULT NULL , M_Shipper_ID NUMBER(10) DEFAULT NULL , NetWeight NUMBER DEFAULT NULL , OrgValue NVARCHAR2(40) DEFAULT NULL , OutDate DATE DEFAULT NULL , Processed CHAR(1) DEFAULT NULL  CHECK (Processed IN ('Y','N')), Processing CHAR(1) DEFAULT NULL , ProductStatus CHAR(1) DEFAULT NULL , ProductValue NVARCHAR2(40) DEFAULT NULL , QA_Doc_Type_ID NUMBER(10) DEFAULT NULL , QA_Doc_Type_Name NVARCHAR2(60) DEFAULT NULL , ReferenceNo NVARCHAR2(40) DEFAULT NULL , RW_Doc_Type_ID NUMBER(10) DEFAULT NULL , RW_Doc_Type_Name NVARCHAR2(60) DEFAULT NULL , ShipperName NVARCHAR2(40) DEFAULT NULL , TareWeight NUMBER DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Val_0 NVARCHAR2(60) DEFAULT NULL , Val_1 NVARCHAR2(60) DEFAULT NULL , Val_2 NVARCHAR2(60) DEFAULT NULL , Val_3 NVARCHAR2(60) DEFAULT NULL , Val_4 NVARCHAR2(60) DEFAULT NULL , Val_5 NVARCHAR2(60) DEFAULT NULL , Val_6 NVARCHAR2(60) DEFAULT NULL , Val_7 NVARCHAR2(60) DEFAULT NULL , Val_8 NVARCHAR2(60) DEFAULT NULL , Val_9 NVARCHAR2(60) DEFAULT NULL , VehicleName NVARCHAR2(60) DEFAULT NULL , VehiclePlate NVARCHAR2(60) DEFAULT NULL , VehicleType NVARCHAR2(60) DEFAULT NULL , WeightStatus CHAR(1) DEFAULT NULL , CONSTRAINT I_RecordWeight_Key PRIMARY KEY (I_RecordWeight_ID))
;

-- Oct 18, 2013 2:00:38 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15,Updated=TO_DATE('2013-10-18 14:00:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53648
;

-- Oct 18, 2013 2:00:38 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16,Updated=TO_DATE('2013-10-18 14:00:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53655
;

-- Oct 18, 2013 2:00:38 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17,Updated=TO_DATE('2013-10-18 14:00:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53655
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=5,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53303
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=6,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53264
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=7,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53655
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=8,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53206
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=9,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=339
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=10,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=338
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=11,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53282
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=12,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=363
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=13,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=376
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=14,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=382
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=15,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=486
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=16,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=425
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=17,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=378
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=18,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53263
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=19,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=374
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=20,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=423
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=21,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=373
;

-- Oct 18, 2013 2:00:53 PM VET
-- LVE-Import
UPDATE AD_TreeNodeMM SET Parent_ID=163, SeqNo=22,Updated=TO_DATE('2013-10-18 14:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=424
;

-- Oct 18, 2013 2:23:18 PM VET
-- LVE-Import
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53498,'org.spin.process.ImportRecordWeight',TO_DATE('2013-10-18 14:23:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Import Record Weight','Y',0,0,TO_DATE('2013-10-18 14:23:17','YYYY-MM-DD HH24:MI:SS'),100,'FTA_ImportRecordWeight Process')
;

-- Oct 18, 2013 2:23:18 PM VET
-- LVE-Import
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53498 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 18, 2013 2:23:23 PM VET
-- LVE-Import
UPDATE AD_Process SET AccessLevel='3',Updated=TO_DATE('2013-10-18 14:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53498
;

-- Oct 18, 2013 2:23:35 PM VET
-- LVE-Import
UPDATE AD_Process_Trl SET Name='Importar Registro de Peso',Updated=TO_DATE('2013-10-18 14:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53498 AND AD_Language='es_MX'
;

-- Oct 18, 2013 2:24:05 PM VET
-- LVE-Import
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1669,0,53498,54157,20,'DeleteOld',TO_DATE('2013-10-18 14:24:04','YYYY-MM-DD HH24:MI:SS'),100,'Otherwise records will be added','ECA02',1,'Y','Y','N','N','Delete old/existing records',10,TO_DATE('2013-10-18 14:24:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 18, 2013 2:24:05 PM VET
-- LVE-Import
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54157 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 18, 2013 2:25:37 PM VET
-- LVE-Import
UPDATE AD_Column SET AD_Process_ID=53498,Updated=TO_DATE('2013-10-18 14:25:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68966
;

