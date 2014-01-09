-- Oct 28, 2013 11:54:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53084,53625,TO_DATE('2013-10-28 11:53:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_RV_RecordWeight Roman Ballot',TO_DATE('2013-10-28 11:53:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 11:54:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53514,53084,'N',TO_DATE('2013-10-28 11:54:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Roman Ballot','Y',0,0,TO_DATE('2013-10-28 11:54:33','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_RecordWeight RomanBallot')
;

-- Oct 28, 2013 11:54:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53514 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 28, 2013 12:03:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53514,54212,19,'AD_Org_ID',TO_DATE('2013-10-28 12:03:38','YYYY-MM-DD HH24:MI:SS'),100,'-1','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_DATE('2013-10-28 12:03:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 12:03:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54212 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 28, 2013 12:04:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56129,0,53514,54213,18,53537,'FTA_EntryTicket',TO_DATE('2013-10-28 12:04:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Entry Ticket',20,TO_DATE('2013-10-28 12:04:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 12:04:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54213 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 28, 2013 12:05:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53514,54214,30,'C_BPartner_ID',TO_DATE('2013-10-28 12:05:09','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',30,TO_DATE('2013-10-28 12:05:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 12:05:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54214 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 28, 2013 12:06:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53672,0,53514,TO_DATE('2013-10-28 12:06:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Roman Ballot',TO_DATE('2013-10-28 12:06:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 12:06:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53672 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Oct 28, 2013 12:06:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-10-28 12:06:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',53672,0,999,TO_DATE('2013-10-28 12:06:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2013 12:06:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Boletas de Romana',Updated=TO_DATE('2013-10-28 12:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53514 AND AD_Language='es_MX'
;

-- Oct 28, 2013 12:07:24 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53654, SeqNo=0,Updated=TO_DATE('2013-10-28 12:07:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53672
;

-- Oct 28, 2013 12:07:24 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53654, SeqNo=1,Updated=TO_DATE('2013-10-28 12:07:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53653
;

