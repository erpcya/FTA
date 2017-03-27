-- Apr 9, 2014 3:36:10 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53617,'N',TO_TIMESTAMP('2014-04-09 15:36:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_FarmerCreditBalance_Group.jrxml','CDL Category Report','Y',0,0,TO_TIMESTAMP('2014-04-09 15:36:02','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RV_CreditDefinitionBalance CDLReport')
;

-- Apr 9, 2014 3:36:10 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53617 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Apr 9, 2014 3:37:00 PM CEST
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Movimiento de Partidas (Por Grupo)',Updated=TO_TIMESTAMP('2014-04-09 15:37:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53617 AND AD_Language='es_VE'
;

-- Apr 9, 2014 3:37:05 PM CEST
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Movimiento de Partidas (Por Grupo)',Updated=TO_TIMESTAMP('2014-04-09 15:37:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53617 AND AD_Language='es_VE'
;

-- Apr 9, 2014 3:38:38 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53617,54706,30,53570,'C_BPartner_ID',TO_TIMESTAMP('2014-04-09 15:38:36','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','Business Partner ',10,TO_TIMESTAMP('2014-04-09 15:38:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 3:38:38 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54706 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Apr 9, 2014 3:38:55 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56084,0,53617,54707,19,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2014-04-09 15:38:54','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',0,'Y','Y','Y','N','Credit/Loan',20,TO_TIMESTAMP('2014-04-09 15:38:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 3:38:55 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54707 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Apr 9, 2014 3:40:14 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56994,0,53617,54708,19,'FTA_CDL_Report_ID',TO_TIMESTAMP('2014-04-09 15:40:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','CDL Report',30,TO_TIMESTAMP('2014-04-09 15:40:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 3:40:14 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54708 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Apr 9, 2014 3:41:14 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53813,0,53617,TO_TIMESTAMP('2014-04-09 15:41:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','asdsadasdasdasd',TO_TIMESTAMP('2014-04-09 15:41:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 3:41:14 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53813 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Apr 9, 2014 3:41:14 PM CEST
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-04-09 15:41:14','YYYY-MM-DD HH24:MI:SS'),100,'Y',53813,0,999,TO_TIMESTAMP('2014-04-09 15:41:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 3:41:21 PM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=5,Updated=TO_TIMESTAMP('2014-04-09 15:41:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53813
;

-- Apr 9, 2014 3:41:21 PM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=6,Updated=TO_TIMESTAMP('2014-04-09 15:41:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53662
;

-- Apr 9, 2014 3:41:21 PM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=7,Updated=TO_TIMESTAMP('2014-04-09 15:41:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53676
;

-- Apr 9, 2014 3:41:21 PM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53681, SeqNo=8,Updated=TO_TIMESTAMP('2014-04-09 15:41:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53680
;

