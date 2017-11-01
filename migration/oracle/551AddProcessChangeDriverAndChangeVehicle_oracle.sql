-- Feb 11, 2015 6:38:29 PM VET
-- FTA
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53742,'org.spin.process.ChangeDriver','N',TO_DATE('2015-02-11 18:38:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Change Driver','Y',0,0,TO_DATE('2015-02-11 18:38:23','YYYY-MM-DD HH24:MI:SS'),100,'prc_ChangeDriver')
;

-- Feb 11, 2015 6:38:29 PM VET
-- FTA
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53742 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Feb 11, 2015 6:38:29 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53742,0,TO_DATE('2015-02-11 18:38:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-02-11 18:38:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:38:29 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53742,102,TO_DATE('2015-02-11 18:38:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-02-11 18:38:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:38:30 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53742,103,TO_DATE('2015-02-11 18:38:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-02-11 18:38:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:38:30 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53742,50001,TO_DATE('2015-02-11 18:38:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-02-11 18:38:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:38:30 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53742,50002,TO_DATE('2015-02-11 18:38:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-02-11 18:38:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:38:40 PM VET
-- FTA
UPDATE AD_Process_Trl SET Name='Cambiar Conductor',Updated=TO_DATE('2015-02-11 18:38:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53742 AND AD_Language='es_MX'
;

-- Feb 11, 2015 6:39:26 PM VET
-- FTA
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52426,'FTA_EntryTicket.DocStatus = ''CO''',TO_DATE('2015-02-11 18:39:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_EntryTicket completed','S',TO_DATE('2015-02-11 18:39:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:39:38 PM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56129,0,53742,55127,18,53537,52426,'FTA_EntryTicket_ID',TO_DATE('2015-02-11 18:39:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Entry Ticket',10,TO_DATE('2015-02-11 18:39:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:39:38 PM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55127 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 11, 2015 6:39:55 PM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56441,0,53742,55128,18,53567,'FTA_Driver_ID',TO_DATE('2015-02-11 18:39:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Driver',20,TO_DATE('2015-02-11 18:39:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:39:55 PM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55128 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 11, 2015 6:40:19 PM VET
-- FTA
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53944,0,53742,TO_DATE('2015-02-11 18:40:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Change Driver',TO_DATE('2015-02-11 18:40:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:40:19 PM VET
-- FTA
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53944 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Feb 11, 2015 6:40:19 PM VET
-- FTA
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2015-02-11 18:40:19','YYYY-MM-DD HH24:MI:SS'),100,'Y',53944,0,999,TO_DATE('2015-02-11 18:40:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53684
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53654
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53646
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53748
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53791
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53757
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=7,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53561
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=8,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53784
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=9,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53756
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=10,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53764
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=11,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53755
;

-- Feb 11, 2015 6:40:29 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=12,Updated=TO_DATE('2015-02-11 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53944
;

-- Feb 11, 2015 6:41:34 PM VET
-- FTA
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53743,'org.spin.process.EntryTicketChange','N',TO_DATE('2015-02-11 18:41:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Entry Ticket Change','Y',0,0,TO_DATE('2015-02-11 18:41:33','YYYY-MM-DD HH24:MI:SS'),100,'prc_EntryTicketChange')
;

-- Feb 11, 2015 6:41:34 PM VET
-- FTA
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53743 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Feb 11, 2015 6:41:35 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53743,0,TO_DATE('2015-02-11 18:41:34','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-02-11 18:41:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:41:35 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53743,102,TO_DATE('2015-02-11 18:41:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-02-11 18:41:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:41:35 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53743,103,TO_DATE('2015-02-11 18:41:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-02-11 18:41:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:41:35 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53743,50001,TO_DATE('2015-02-11 18:41:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-02-11 18:41:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:41:35 PM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53743,50002,TO_DATE('2015-02-11 18:41:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-02-11 18:41:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:41:51 PM VET
-- FTA
UPDATE AD_Process SET Value='prc_EntryTicketChange Change Driver',Updated=TO_DATE('2015-02-11 18:41:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53742
;

-- Feb 11, 2015 6:41:55 PM VET
-- FTA
UPDATE AD_Process SET Classname='org.spin.process.EntryTicketChange',Updated=TO_DATE('2015-02-11 18:41:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53742
;

-- Feb 11, 2015 6:42:11 PM VET
-- FTA
UPDATE AD_Process SET Name='Change Vehicle', Value='prc_EntryTicketChange ChangeVehicle',Updated=TO_DATE('2015-02-11 18:42:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53743
;

-- Feb 11, 2015 6:42:11 PM VET
-- FTA
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53743
;

-- Feb 11, 2015 6:42:36 PM VET
-- FTA
UPDATE AD_Process SET Value='prc_ChangeDriver',Updated=TO_DATE('2015-02-11 18:42:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53742
;

-- Feb 11, 2015 6:42:41 PM VET
-- FTA
UPDATE AD_Process SET Value='prc_ChangeVehicle',Updated=TO_DATE('2015-02-11 18:42:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53743
;

-- Feb 11, 2015 6:43:10 PM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56129,0,53743,55129,18,53537,52426,'FTA_EntryTicket_ID',TO_DATE('2015-02-11 18:43:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Entry Ticket',10,TO_DATE('2015-02-11 18:43:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:43:10 PM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55129 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 11, 2015 6:43:29 PM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56440,0,53743,55130,18,53568,'FTA_Vehicle_ID',TO_DATE('2015-02-11 18:43:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Vehicle',20,TO_DATE('2015-02-11 18:43:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:43:29 PM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55130 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Feb 11, 2015 6:44:03 PM VET
-- FTA
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53945,0,53743,TO_DATE('2015-02-11 18:44:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Change Vehicle',TO_DATE('2015-02-11 18:44:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:44:03 PM VET
-- FTA
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53945 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Feb 11, 2015 6:44:03 PM VET
-- FTA
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2015-02-11 18:44:03','YYYY-MM-DD HH24:MI:SS'),100,'Y',53945,0,999,TO_DATE('2015-02-11 18:44:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 6:44:11 PM VET
-- FTA
UPDATE AD_Process_Trl SET Name='Cambiar Vehiculo',Updated=TO_DATE('2015-02-11 18:44:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53743 AND AD_Language='es_MX'
;

-- Feb 11, 2015 6:44:15 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=13,Updated=TO_DATE('2015-02-11 18:44:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53945
;

-- Feb 11, 2015 6:44:15 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=14,Updated=TO_DATE('2015-02-11 18:44:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53796
;

-- Feb 11, 2015 6:44:15 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=15,Updated=TO_DATE('2015-02-11 18:44:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Feb 11, 2015 6:44:15 PM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=16,Updated=TO_DATE('2015-02-11 18:44:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

