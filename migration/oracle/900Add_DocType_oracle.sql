-- Sep 25, 2013 1:56:17 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_SerialPortConfig (AD_Client_ID,AD_Org_ID,Bauds,Created,CreatedBy,DataBits,FlowControl,FTA_SerialPortConfig_ID,IsActive,Name,Parity,SerialPort,StopBits,Updated,UpdatedBy) VALUES (11,50001,'9600',TO_DATE('2013-09-25 13:56:14','YYYY-MM-DD HH24:MI:SS'),100,'8','1',50000,'Y','COM 1','0','COM1','1',TO_DATE('2013-09-25 13:56:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 1:59:03 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_ScreenConfig (AD_Client_ID,AD_Org_ID,Created,CreatedBy,EndCharacter,FTA_ScreenConfig_ID,IsActive,Name,PosEndCut,PosEnd_SCut,PosStartCut,PosStart_SCut,StartCharacter,StrLength,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-25 13:58:57','YYYY-MM-DD HH24:MI:SS'),100,2,50000,'Y','Screen 1',8,8,1,1,1,9,TO_DATE('2013-09-25 13:58:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 1:59:27 PM VET
-- Farming Technical Assistance
UPDATE C_UOM SET UOMType=NULL,Updated=TO_DATE('2013-09-25 13:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_UOM_ID=50001
;

-- Sep 25, 2013 1:59:34 PM VET
-- Farming Technical Assistance
UPDATE C_UOM SET UOMType='WE',Updated=TO_DATE('2013-09-25 13:59:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_UOM_ID=50001
;

-- Sep 25, 2013 1:59:53 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_WeightScale (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_UOM_ID,FTA_ScreenConfig_ID,FTA_SerialPortConfig_ID,FTA_WeightScale_ID,IsActive,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-25 13:59:52','YYYY-MM-DD HH24:MI:SS'),100,50001,50000,50000,50000,'Y','Weight Scale 1',TO_DATE('2013-09-25 13:59:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:00:05 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_WeightScale_Role (AD_Client_ID,AD_Org_ID,AD_Role_ID,Created,CreatedBy,FTA_WeightScale_ID,IsActive,Updated,UpdatedBy) VALUES (11,50001,102,TO_DATE('2013-09-25 14:00:05','YYYY-MM-DD HH24:MI:SS'),100,50000,'Y',TO_DATE('2013-09-25 14:00:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:03:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53728,TO_DATE('2013-09-25 14:03:36','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Chute Quality Analysis','CQA-','N',1000000,TO_DATE('2013-09-25 14:03:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:03:47 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50018,TO_DATE('2013-09-25 14:03:47','YYYY-MM-DD HH24:MI:SS'),100,'FCA',53728,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Chute Quality Analysis','Chute Quality Analysis',TO_DATE('2013-09-25 14:03:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:03:47 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50018 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:03:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50018 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:06:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53729,TO_DATE('2013-09-25 14:06:09','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Credit Definition','CD-','N',1000000,TO_DATE('2013-09-25 14:06:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:06:38 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50019,TO_DATE('2013-09-25 14:06:37','YYYY-MM-DD HH24:MI:SS'),100,'FCD',53729,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Credit Definition','Credit Definition',TO_DATE('2013-09-25 14:06:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:06:38 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50019 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:06:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50019 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:07:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53730,TO_DATE('2013-09-25 14:07:43','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Entry Ticket','ET-','N',1000000,TO_DATE('2013-09-25 14:07:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:07:55 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50020,TO_DATE('2013-09-25 14:07:55','YYYY-MM-DD HH24:MI:SS'),100,'FET',53730,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Entry Ticket','Entry Ticket',TO_DATE('2013-09-25 14:07:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:07:55 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50020 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:07:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50020 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:09:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53731,TO_DATE('2013-09-25 14:09:35','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Farmer Credit','FC-','N',1000000,TO_DATE('2013-09-25 14:09:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:09:50 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,C_DocTypeOrder_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50021,126,TO_DATE('2013-09-25 14:09:50','YYYY-MM-DD HH24:MI:SS'),100,'FFC',53731,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Farmer Credit','Farmer Credit',TO_DATE('2013-09-25 14:09:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:09:50 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50021 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:09:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50021 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:10:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53732,TO_DATE('2013-09-25 14:10:16','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Farmer Loan','FL-','N',1000000,TO_DATE('2013-09-25 14:10:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:10:25 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50022,TO_DATE('2013-09-25 14:10:24','YYYY-MM-DD HH24:MI:SS'),100,'FFL',53732,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Farmer Loan','Farmer Loan',TO_DATE('2013-09-25 14:10:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:10:25 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50022 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:10:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50022 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:12:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53733,TO_DATE('2013-09-25 14:12:21','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Mobilization Guide','MG-','N',1000000,TO_DATE('2013-09-25 14:12:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:12:29 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50023,TO_DATE('2013-09-25 14:12:29','YYYY-MM-DD HH24:MI:SS'),100,'FMG',53733,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Mobilization Guide','Mobilization Guide',TO_DATE('2013-09-25 14:12:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:12:29 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50023 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:12:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50023 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:13:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53734,TO_DATE('2013-09-25 14:13:11','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Quality Analysis','QA-','N',1000000,TO_DATE('2013-09-25 14:13:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:13:37 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50024,TO_DATE('2013-09-25 14:13:36','YYYY-MM-DD HH24:MI:SS'),100,'FQA',53734,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Quality Analysis','Quality Analysis',TO_DATE('2013-09-25 14:13:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:13:37 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50024 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:13:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50024 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:14:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53735,TO_DATE('2013-09-25 14:14:08','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Raw Material Liquidation','RML-','N',1000000,TO_DATE('2013-09-25 14:14:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:14:13 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50025,TO_DATE('2013-09-25 14:14:13','YYYY-MM-DD HH24:MI:SS'),100,'FRL',53735,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Raw Material Liquidation','Raw Material Liquidation',TO_DATE('2013-09-25 14:14:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:14:13 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50025 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:14:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50025 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:15:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53736,TO_DATE('2013-09-25 14:15:41','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Raw Material Weight','RMW-','N',1000000,TO_DATE('2013-09-25 14:15:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:18:06 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50026,TO_DATE('2013-09-25 14:18:06','YYYY-MM-DD HH24:MI:SS'),100,'FRW',53736,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Raw Material Weight','Raw Material Weight',TO_DATE('2013-09-25 14:18:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:18:06 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50026 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:18:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50026 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:18:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53737,TO_DATE('2013-09-25 14:18:59','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Reception Agreement','RA-','N',1000000,TO_DATE('2013-09-25 14:18:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:19:05 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50027,TO_DATE('2013-09-25 14:19:05','YYYY-MM-DD HH24:MI:SS'),100,'FFR',53737,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Reception Agreement','Reception Agreement',TO_DATE('2013-09-25 14:19:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:19:05 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50027 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:19:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50027 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:19:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53738,TO_DATE('2013-09-25 14:19:28','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Technical Form','TF-','N',1000000,TO_DATE('2013-09-25 14:19:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:19:35 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50028,TO_DATE('2013-09-25 14:19:35','YYYY-MM-DD HH24:MI:SS'),100,'FTF',53738,1,108,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','Technical Form','Technical Form',TO_DATE('2013-09-25 14:19:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:19:35 PM VET
-- Farming Technical Assistance
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50028 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Sep 25, 2013 2:19:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50028 AND rol.IsManual='N')
;

-- Sep 25, 2013 2:22:46 PM VET
-- Farming Technical Assistance
INSERT INTO M_Lot (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_Lot_ID,M_Product_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-09-25 14:22:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,133,'Patio Chair Lot',TO_DATE('2013-09-25 14:22:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:23:31 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinition (AD_Client_ID,AD_Org_ID,Amt,Category_ID,C_DocType_ID,Created,CreatedBy,DateDoc,DocAction,DocStatus,DocumentNo,FTA_CreditDefinition_ID,IsActive,IsApproved,M_PriceList_ID,Name,PlantingCycle_ID,Processed,Updated,UpdatedBy) VALUES (11,50001,0,133,50019,TO_DATE('2013-09-25 14:23:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2013-09-25','YYYY-MM-DD'),'CO','DR','CD-100',50000,'Y','N',102,'Patio Chair Credit Definition',50000,'N',TO_DATE('2013-09-25 14:23:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:25:16 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,80.00,TO_DATE('2013-09-25 14:25:16','YYYY-MM-DD HH24:MI:SS'),100,100,50000,50000,'Y',10,136,20,'N',4.000000000000,TO_DATE('2013-09-25 14:25:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:25:16 PM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition cd SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=cd.FTA_CreditDefinition_ID) WHERE cd.FTA_CreditDefinition_ID=50000
;

-- Sep 25, 2013 2:27:07 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_CreditDefinitionLine (AD_Client_ID,AD_Org_ID,Amt,Created,CreatedBy,C_UOM_ID,FTA_CreditDefinition_ID,FTA_CreditDefinitionLine_ID,IsActive,Line,M_Product_ID,Price,Processed,Qty,Updated,UpdatedBy) VALUES (11,50001,1000.00,TO_DATE('2013-09-25 14:27:07','YYYY-MM-DD HH24:MI:SS'),100,100,50000,50001,'Y',20,50005,200.000000000000,'N',5.000000000000,TO_DATE('2013-09-25 14:27:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:27:07 PM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition cd SET Amt=(SELECT COALESCE(SUM(cdl.Amt),0) FROM FTA_CreditDefinitionLine cdl WHERE cdl.FTA_CreditDefinition_ID=cd.FTA_CreditDefinition_ID) WHERE cd.FTA_CreditDefinition_ID=50000
;
-- Sep 25, 2013 2:30:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Process (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,TextMsg,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,50020,101,50028,TO_DATE('2013-09-25 14:30:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',50000,'null: Amount=1080.00 (#2)',TO_DATE('2013-09-25 14:30:26','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- Sep 25, 2013 2:30:28 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET WFState='OR',Updated=TO_DATE('2013-09-25 14:30:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=50020
;

-- Sep 25, 2013 2:30:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,50030,50136,50020,101,50028,TO_DATE('2013-09-25 14:30:28','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',50000,TO_DATE('2013-09-25 14:30:28','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- Sep 25, 2013 2:30:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,50030,50136,50020,101,TO_DATE('2013-09-25 14:30:30','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',50000,TO_DATE('2013-09-25 14:30:30','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- Sep 25, 2013 2:30:31 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_DATE('2013-09-25 14:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=50030
;

-- Sep 25, 2013 2:30:31 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_DATE('2013-09-25 14:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=50030
;

-- Sep 25, 2013 2:30:31 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='CC',Updated=TO_DATE('2013-09-25 14:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=50030
;

-- Sep 25, 2013 2:30:31 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=1177, EventType='PX', TextMsg=NULL, WFState='CC',Updated=TO_DATE('2013-09-25 14:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=50030
;

-- Sep 25, 2013 2:30:31 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_DATE('2013-09-25 14:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=50030
;

-- Sep 25, 2013 2:30:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,50031,50135,50020,101,50028,TO_DATE('2013-09-25 14:30:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',50000,TO_DATE('2013-09-25 14:30:31','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- Sep 25, 2013 2:30:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,50031,50135,50020,101,TO_DATE('2013-09-25 14:30:32','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',50000,TO_DATE('2013-09-25 14:30:32','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- Sep 25, 2013 2:30:33 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_DATE('2013-09-25 14:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=50031
;

-- Sep 25, 2013 2:30:33 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_DATE('2013-09-25 14:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=50031
;

-- Sep 25, 2013 2:30:33 PM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET Amt=1080.00, DocStatus='IP',Updated=TO_DATE('2013-09-25 14:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_CreditDefinition_ID=50000
;

-- Sep 25, 2013 2:30:33 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='null: Amount=1080.00 (#2)', WFState='CC',Updated=TO_DATE('2013-09-25 14:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=50031
;

-- Sep 25, 2013 2:30:33 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=1652, EventType='PX', TextMsg='null: Amount=1080.00 (#2)', WFState='CC',Updated=TO_DATE('2013-09-25 14:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=50031
;

-- Sep 25, 2013 2:30:33 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_DATE('2013-09-25 14:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=50031
;

-- Sep 25, 2013 2:30:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Activity (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_Activity_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,AD_Workflow_ID,Created,CreatedBy,IsActive,Priority,Processed,Processing,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,50032,50134,50020,101,50028,TO_DATE('2013-09-25 14:30:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,'N','N',50000,TO_DATE('2013-09-25 14:30:33','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- Sep 25, 2013 2:30:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_EventAudit (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_User_ID,AD_WF_EventAudit_ID,AD_WF_Node_ID,AD_WF_Process_ID,AD_WF_Responsible_ID,Created,CreatedBy,ElapsedTimeMS,EventType,IsActive,Record_ID,Updated,UpdatedBy,WFState) VALUES (11,50001,53549,100,50032,50134,50020,101,TO_DATE('2013-09-25 14:30:34','YYYY-MM-DD HH24:MI:SS'),100,0,'PC','Y',50000,TO_DATE('2013-09-25 14:30:34','YYYY-MM-DD HH24:MI:SS'),100,'ON')
;

-- Sep 25, 2013 2:30:35 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET WFState='OR',Updated=TO_DATE('2013-09-25 14:30:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=50032
;

-- Sep 25, 2013 2:30:35 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET EventType='SC', TextMsg=NULL, WFState='OR',Updated=TO_DATE('2013-09-25 14:30:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=50032
;

-- Sep 25, 2013 2:30:35 PM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinitionLine SET Processed=? WHERE FTA_CreditDefinition_ID=?
;

-- Sep 25, 2013 2:30:35 PM VET
-- Farming Technical Assistance
UPDATE FTA_CreditDefinition SET DocAction='CL', DocStatus='CO', IsApproved='Y', Processed='Y',Updated=TO_DATE('2013-09-25 14:30:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_CreditDefinition_ID=50000
;

-- Sep 25, 2013 2:30:35 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET TextMsg='null: Amount=1080.00 (#2)', WFState='CC',Updated=TO_DATE('2013-09-25 14:30:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=50032
;

-- Sep 25, 2013 2:30:35 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_EventAudit SET ElapsedTimeMS=1903, EventType='PX', TextMsg='null: Amount=1080.00 (#2)', WFState='CC',Updated=TO_DATE('2013-09-25 14:30:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_EventAudit_ID=50032
;

-- Sep 25, 2013 2:30:35 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Activity SET Processed='Y',Updated=TO_DATE('2013-09-25 14:30:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Activity_ID=50032
;

-- Sep 25, 2013 2:30:35 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_Process SET Processed='Y', WFState='CC',Updated=TO_DATE('2013-09-25 14:30:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Process_ID=50020
;
-- Sep 25, 2013 2:54:12 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmerCredit (AD_Client_ID,AD_Org_ID,Amt,C_BPartner_ID,C_DocType_ID,Created,CreatedBy,CreditType,C_UOM_ID,DateDoc,DocAction,DocStatus,DocumentNo,FarmingAlloc,FTA_CreditDefinition_ID,FTA_FarmerCredit_ID,IsActive,IsApproved,Processed,Processing,Qty,Updated,UpdatedBy) VALUES (11,50001,0,113,50021,TO_DATE('2013-09-25 14:54:06','YYYY-MM-DD HH24:MI:SS'),100,'C',100,TO_DATE('2013-09-25','YYYY-MM-DD'),'CO','DR','FC-100','N',50000,50002,'Y','N','N','N',0,TO_DATE('2013-09-25 14:54:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:56:20 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_Farm (AD_Client_ID,AD_Org_ID,Area,C_BPartner_ID,C_BPartner_Location_ID,Created,CreatedBy,FarmType,FTA_Farm_ID,IsActive,IsValid,Name,Processing,Updated,UpdatedBy) VALUES (11,50001,2000.000000000000,113,117,TO_DATE('2013-09-25 14:56:19','YYYY-MM-DD HH24:MI:SS'),100,'O',50000,'Y','N','Beautiful Farm','N',TO_DATE('2013-09-25 14:56:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:56:47 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_FarmDivision (AD_Client_ID,AD_Org_ID,Area,Created,CreatedBy,FTA_FarmDivision_ID,FTA_Farm_ID,IsActive,Name,Updated,UpdatedBy) VALUES (11,50001,300.000000000000,TO_DATE('2013-09-25 14:56:46','YYYY-MM-DD HH24:MI:SS'),100,50000,50000,'Y','Lot 1 (41 Has)',TO_DATE('2013-09-25 14:56:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:57:58 PM VET
-- Farming Technical Assistance
INSERT INTO FTA_Farming (AD_Client_ID,AD_Org_ID,Area,Category_ID,Created,CreatedBy,EstimatedQty,EstimatedYield,FinancingType,FTA_FarmDivision_ID,FTA_Farming_ID,GuideGenerate,IsActive,Name,PlantingCycle_ID,Processing,Qty,StartDate,Status,Updated,UpdatedBy) VALUES (11,50001,290.000000000000,133,TO_DATE('2013-09-25 14:57:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,'A',50000,50000,'N','Y','Farming Chair',50000,'N',0,TO_DATE('2013-09-25','YYYY-MM-DD'),'A',TO_DATE('2013-09-25 14:57:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2013 2:58:31 PM VET
-- Farming Technical Assistance
UPDATE FTA_Farming SET EstimatedQty=3000.000000000000,Updated=TO_DATE('2013-09-25 14:58:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE FTA_Farming_ID=50000
;

