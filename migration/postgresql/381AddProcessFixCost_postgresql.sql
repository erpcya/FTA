-- 15/02/2014 11:16:53 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53578,'org.spin.process.FixCost','N',TO_TIMESTAMP('2014-02-15 11:16:51','YYYY-MM-DD HH24:MI:SS'),100,'Fix Cost Average Invoice','ECA02','Y','N','N','N','N','Fix Cost','Y',0,0,TO_TIMESTAMP('2014-02-15 11:16:51','YYYY-MM-DD HH24:MI:SS'),100,'FixCost')
;

-- 15/02/2014 11:16:53 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53578 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 15/02/2014 11:18:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Reparar Costos',Description='Reparar Costos Facturación Promedio',Updated=TO_TIMESTAMP('2014-02-15 11:18:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53578 AND AD_Language='es_MX'
;

-- 15/02/2014 11:18:45 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,454,0,53578,54479,19,'M_Product_ID',TO_TIMESTAMP('2014-02-15 11:18:43','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','Product',10,TO_TIMESTAMP('2014-02-15 11:18:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/02/2014 11:18:45 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54479 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 15/02/2014 11:27:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52314,'CostingMethod = ''I''',TO_TIMESTAMP('2014-02-15 11:27:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_CostElement Average Invoice','S',TO_TIMESTAMP('2014-02-15 11:27:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/02/2014 11:27:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,2700,0,53578,54480,19,52314,'M_CostElement_ID',TO_TIMESTAMP('2014-02-15 11:27:29','YYYY-MM-DD HH24:MI:SS'),100,'Product Cost Element','ECA02',10,'Y','Y','Y','N','Cost Element',20,TO_TIMESTAMP('2014-02-15 11:27:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/02/2014 11:27:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54480 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 15/02/2014 11:29:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53766,0,53578,TO_TIMESTAMP('2014-02-15 11:29:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Fix Cost',TO_TIMESTAMP('2014-02-15 11:29:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/02/2014 11:29:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53766 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 15/02/2014 11:29:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-02-15 11:29:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',53766,0,999,TO_TIMESTAMP('2014-02-15 11:29:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/02/2014 11:29:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Reparar Costos',Updated=TO_TIMESTAMP('2014-02-15 11:29:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53766 AND AD_Language='es_MX'
;

-- 15/02/2014 11:29:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Reparar Costos',Updated=TO_TIMESTAMP('2014-02-15 11:29:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53766 AND AD_Language='es_VE'
;

-- 15/02/2014 11:29:31 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=0,Updated=TO_TIMESTAMP('2014-02-15 11:29:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53766
;

-- 15/02/2014 11:29:31 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=1,Updated=TO_TIMESTAMP('2014-02-15 11:29:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=164
;

-- 15/02/2014 11:29:31 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=2,Updated=TO_TIMESTAMP('2014-02-15 11:29:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=280
;

-- 15/02/2014 11:29:32 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=3,Updated=TO_TIMESTAMP('2014-02-15 11:29:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=158
;

-- 15/02/2014 11:29:32 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=4,Updated=TO_TIMESTAMP('2014-02-15 11:29:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=522
;

-- 15/02/2014 11:29:32 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=5,Updated=TO_TIMESTAMP('2014-02-15 11:29:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=118
;

-- 15/02/2014 11:29:32 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=6,Updated=TO_TIMESTAMP('2014-02-15 11:29:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=169
;

-- 15/02/2014 11:29:32 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=278, SeqNo=7,Updated=TO_TIMESTAMP('2014-02-15 11:29:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=433
;

-- 15/02/2014 11:29:36 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=0,Updated=TO_TIMESTAMP('2014-02-15 11:29:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53766
;

-- 15/02/2014 11:29:36 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=1,Updated=TO_TIMESTAMP('2014-02-15 11:29:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=370
;

-- 15/02/2014 11:29:36 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=2,Updated=TO_TIMESTAMP('2014-02-15 11:29:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=521
;

-- 15/02/2014 11:29:37 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=3,Updated=TO_TIMESTAMP('2014-02-15 11:29:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=520
;

-- 15/02/2014 11:29:37 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=4,Updated=TO_TIMESTAMP('2014-02-15 11:29:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=546
;

-- 15/02/2014 11:29:37 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=5,Updated=TO_TIMESTAMP('2014-02-15 11:29:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=313
;

-- 15/02/2014 11:29:37 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=6,Updated=TO_TIMESTAMP('2014-02-15 11:29:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=314
;

-- 15/02/2014 11:29:37 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=7,Updated=TO_TIMESTAMP('2014-02-15 11:29:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=541
;

-- 15/02/2014 11:29:37 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=8,Updated=TO_TIMESTAMP('2014-02-15 11:29:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=540
;

-- 15/02/2014 11:29:37 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=9,Updated=TO_TIMESTAMP('2014-02-15 11:29:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=542
;

-- 15/02/2014 11:29:41 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=6,Updated=TO_TIMESTAMP('2014-02-15 11:29:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53766
;

-- 15/02/2014 11:29:41 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=7,Updated=TO_TIMESTAMP('2014-02-15 11:29:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=314
;

-- 15/02/2014 11:29:41 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=8,Updated=TO_TIMESTAMP('2014-02-15 11:29:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=541
;

-- 15/02/2014 11:29:41 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=9,Updated=TO_TIMESTAMP('2014-02-15 11:29:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=540
;

-- 15/02/2014 11:29:41 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=522, SeqNo=10,Updated=TO_TIMESTAMP('2014-02-15 11:29:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=542
;

-- 15/02/2014 11:32:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2014-02-15 11:32:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54479
;

-- 15/02/2014 11:32:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='I',Updated=TO_TIMESTAMP('2014-02-15 11:32:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54480
;

-- 15/02/2014 12:33:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53578,54481,19,'AD_Org_ID',TO_TIMESTAMP('2014-02-15 12:33:34','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',5,TO_TIMESTAMP('2014-02-15 12:33:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/02/2014 12:33:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54481 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 15/02/2014 12:33:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,181,0,53578,54482,19,'C_AcctSchema_ID',TO_TIMESTAMP('2014-02-15 12:33:46','YYYY-MM-DD HH24:MI:SS'),100,'Rules for accounting','ECA02',22,'An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar','Y','Y','N','N','Accounting Schema',15,TO_TIMESTAMP('2014-02-15 12:33:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/02/2014 12:33:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54482 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

