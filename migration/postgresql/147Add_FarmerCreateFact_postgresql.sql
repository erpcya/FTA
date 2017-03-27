-- Oct 14, 2013 1:45:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=53570,Updated=TO_TIMESTAMP('2013-10-14 01:45:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66554
;

-- Oct 14, 2013 1:46:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=53570,Updated=TO_TIMESTAMP('2013-10-14 01:46:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65818
;

-- Oct 14, 2013 1:46:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=53570,Updated=TO_TIMESTAMP('2013-10-14 01:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68213
;

-- Oct 14, 2013 1:46:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=53570,Updated=TO_TIMESTAMP('2013-10-14 01:46:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66883
;

-- Oct 14, 2013 1:47:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=53570,Updated=TO_TIMESTAMP('2013-10-14 01:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66316
;

-- Oct 14, 2013 1:48:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=53570,Updated=TO_TIMESTAMP('2013-10-14 01:48:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67002
;

-- Oct 14, 2013 1:52:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56479,0,'IsCreditFactManual',TO_TIMESTAMP('2013-10-14 01:52:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Is Credit Fact Manual','Is Credit Fact Manual',TO_TIMESTAMP('2013-10-14 01:52:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 1:52:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56479 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 14, 2013 1:53:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Crédito a Productor Manual',PrintName='Crédito a Productor Manual',Updated=TO_TIMESTAMP('2013-10-14 01:53:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56479 AND AD_Language='es_VE'
;

-- Oct 14, 2013 1:53:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68741,56479,0,20,259,'IsCreditFactManual',TO_TIMESTAMP('2013-10-14 01:53:37','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Is Credit Fact Manual',0,TO_TIMESTAMP('2013-10-14 01:53:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 1:53:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68741 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 1:54:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68742,56479,0,20,318,'IsCreditFactManual',TO_TIMESTAMP('2013-10-14 01:54:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Is Credit Fact Manual',0,TO_TIMESTAMP('2013-10-14 01:54:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 1:54:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68742 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 1:54:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2013-10-14 01:54:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68742
;

-- Oct 14, 2013 2:10:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Element_ID=56479, ColumnName='IsCreditFactManual', Description=NULL, Help=NULL, Name='Is Credit Fact Manual',Updated=TO_TIMESTAMP('2013-10-14 02:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68218
;

-- Oct 14, 2013 2:10:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=68218
;

-- Oct 14, 2013 2:10:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Is Credit Fact Manual', Description=NULL, Help=NULL WHERE AD_Column_ID=68218 AND IsCentrallyMaintained='Y'
;

-- Oct 14, 2013 2:18:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53488,'org.spin.process.FactCreate','N',TO_TIMESTAMP('2013-10-14 02:18:03','YYYY-MM-DD HH24:MI:SS'),100,'Create a Farmer Credit Fact','ECA02','Y','N','N','N','N','Create Farmer Credit Fact','Y',0,0,TO_TIMESTAMP('2013-10-14 02:18:03','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Fact Create Fact')
;

-- Oct 14, 2013 2:18:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53488 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 14, 2013 2:45:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Crear Movimiento de Crédito',Description='Crear Movimiento de Crédito',Help='Crear los Movimiento de Crédito a partir de un Rango de Fecha y una Tabla',Updated=TO_TIMESTAMP('2013-10-14 02:45:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53488 AND AD_Language='es_VE'
;

-- Oct 14, 2013 2:48:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52223,'AD_Table.TableName IN(''C_Order'', ''C_Invoice'') AND AD_Table.IsView=''N''',TO_TIMESTAMP('2013-10-14 02:48:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','AD_Table Order, Invoice','S',TO_TIMESTAMP('2013-10-14 02:48:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 2:49:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,126,0,53488,54140,19,52223,'AD_Table_ID',TO_TIMESTAMP('2013-10-14 02:49:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Table',10,TO_TIMESTAMP('2013-10-14 02:49:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 2:49:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54140 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 2:50:00 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53488,54141,15,'DateDoc',TO_TIMESTAMP('2013-10-14 02:49:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','Y','Date Doc',20,TO_TIMESTAMP('2013-10-14 02:49:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 2:50:00 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54141 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 14, 2013 2:51:49 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53570, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53563
;

-- Oct 14, 2013 2:51:49 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53570, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53590
;

-- Oct 14, 2013 2:51:49 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53571, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53570
;

-- Oct 14, 2013 2:51:49 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53571, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53566
;

-- Oct 14, 2013 2:51:49 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53571, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53562
;

-- Oct 14, 2013 2:51:49 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53571, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53564
;

-- Oct 14, 2013 2:53:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53650,0,53488,TO_TIMESTAMP('2013-10-14 02:52:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Farmer Credit Create Fact',TO_TIMESTAMP('2013-10-14 02:52:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 2:53:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53650 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Oct 14, 2013 2:53:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53650, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53650)
;

-- Oct 14, 2013 2:53:49 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53650
;

-- Oct 14, 2013 2:53:49 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53591
;

-- Oct 14, 2013 2:53:49 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53636
;

-- Oct 14, 2013 2:53:49 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53589
;

-- Oct 14, 2013 3:27:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56480,0,'Parent_FarmerCredit_ID',TO_TIMESTAMP('2013-10-14 03:27:02','YYYY-MM-DD HH24:MI:SS'),100,'Parent Farmer Credit or Loan','ECA02','Y','Parent Credit/Loan','Parent Credit/Loan',TO_TIMESTAMP('2013-10-14 03:27:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:27:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56480 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 14, 2013 3:30:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Crédito/Préstamo Padre',PrintName='Crédito/Préstamo Padre',Description='Crédito/Préstamo al que se cargará la Deuda',Updated=TO_TIMESTAMP('2013-10-14 03:30:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56480 AND AD_Language='es_VE'
;

-- Oct 14, 2013 3:30:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53571,TO_TIMESTAMP('2013-10-14 03:30:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_FarmerCredit',TO_TIMESTAMP('2013-10-14 03:30:54','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Oct 14, 2013 3:30:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53571 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Oct 14, 2013 3:31:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,66662,66550,0,53571,53544,TO_TIMESTAMP('2013-10-14 03:31:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2013-10-14 03:31:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:31:48 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68743,56480,0,30,53571,53544,'Parent_FarmerCredit_ID',TO_TIMESTAMP('2013-10-14 03:31:46','YYYY-MM-DD HH24:MI:SS'),100,'Parent Farmer Credit or Loan','ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Parent Credit/Loan',0,TO_TIMESTAMP('2013-10-14 03:31:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 3:31:48 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68743 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 3:32:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68743,69884,0,53721,TO_TIMESTAMP('2013-10-14 03:32:10','YYYY-MM-DD HH24:MI:SS'),100,'Parent Farmer Credit or Loan',10,'ECA02','Y','Y','Y','N','N','N','N','N','Parent Credit/Loan',TO_TIMESTAMP('2013-10-14 03:32:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2013 3:32:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69884 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=69884
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68126
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68127
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68340
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=69292
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68341
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=68339
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=68129
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68130
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=68131
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68132
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68128
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=68448
;

-- Oct 14, 2013 3:35:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=69830
;

-- Oct 14, 2013 3:36:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''L'' | @CreditType@=''E''',Updated=TO_TIMESTAMP('2013-10-14 03:36:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69884
;

-- Oct 14, 2013 3:46:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53250,0,TO_TIMESTAMP('2013-10-14 03:46:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','You Must Generate','I',TO_TIMESTAMP('2013-10-14 03:46:43','YYYY-MM-DD HH24:MI:SS'),100,'MustGenerate')
;

-- Oct 14, 2013 3:46:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53250 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Oct 14, 2013 3:46:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Debe Generar',Updated=TO_TIMESTAMP('2013-10-14 03:46:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53250 AND AD_Language='es_VE'
;

-- Oct 14, 2013 3:49:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52207,Updated=TO_TIMESTAMP('2013-10-14 03:49:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68743
;

-- Oct 14, 2013 3:54:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@CreditType@!''L'' ',Updated=TO_TIMESTAMP('2013-10-14 03:54:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66657
;

-- Oct 14, 2013 3:54:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@CreditType@!''L''',Updated=TO_TIMESTAMP('2013-10-14 03:54:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66657
;

-- Oct 14, 2013 3:55:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@CreditType@!''L'' ',Updated=TO_TIMESTAMP('2013-10-14 03:55:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Oct 14, 2013 3:55:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@CreditType@!''L''',Updated=TO_TIMESTAMP('2013-10-14 03:55:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Oct 14, 2013 4:00:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND (FTA_FarmerCredit.CreditType=''C'' OR (FTA_FarmerCredit.CreditType=''L'' AND FTA_FarmerCredit.Parent_FarmerCredit_ID = 0))',Updated=TO_TIMESTAMP('2013-10-14 04:00:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Oct 14, 2013 4:06:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND (FTA_FarmerCredit.CreditType=''C'' OR (FTA_FarmerCredit.CreditType=''L'' AND FTA_FarmerCredit.Parent_FarmerCredit_ID > 0))',Updated=TO_TIMESTAMP('2013-10-14 04:06:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Oct 14, 2013 4:08:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND (FTA_FarmerCredit.CreditType=''C'' OR (FTA_FarmerCredit.CreditType=''L'' AND FTA_FarmerCredit.Parent_FarmerCredit_ID <= 0))',Updated=TO_TIMESTAMP('2013-10-14 04:08:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Oct 14, 2013 4:10:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND (FTA_FarmerCredit.CreditType=''C'' OR (FTA_FarmerCredit.CreditType=''L'' AND FTA_FarmerCredit.Parent_FarmerCredit_ID IS NULL))',Updated=TO_TIMESTAMP('2013-10-14 04:10:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Oct 14, 2013 4:14:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarmerCredit.bpartner',Updated=TO_TIMESTAMP('2013-10-14 04:14:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66554
;

