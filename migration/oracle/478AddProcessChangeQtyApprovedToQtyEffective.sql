-- Jun 3, 2014 9:49:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53634,'org.spin.process.ChangeQtyApprovedToQtyEfective','N',TO_DATE('2014-06-03 09:48:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Change Qty Approved To Qty Efective','Y',0,0,TO_DATE('2014-06-03 09:48:58','YYYY-MM-DD HH24:MI:SS'),100,'FTA_ChangeQtyApprovedToQtyEfective')
;

-- Jun 3, 2014 9:49:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53634 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jun 3, 2014 10:01:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57183,0,20,'BasedOnEffectiveQuantity',TO_DATE('2014-06-03 10:01:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Based On Effective Quantity','Based On Effective Quantity',TO_DATE('2014-06-03 10:01:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 3, 2014 10:01:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57183 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 3, 2014 10:02:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Basado en Cantidad Efectiva',PrintName='Basado en Cantidad Efectiva',Updated=TO_DATE('2014-06-03 10:02:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57183 AND AD_Language='es_MX'
;

-- Jun 3, 2014 10:02:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Basado en Cantidad Efectiva',PrintName='Basado en Cantidad Efectiva',Updated=TO_DATE('2014-06-03 10:02:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57183 AND AD_Language='es_VE'
;

-- Jun 3, 2014 10:03:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57183,0,53634,54802,20,'BasedOnEffectiveQuantity',TO_DATE('2014-06-03 10:03:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','Based On Effective Quantity',10,TO_DATE('2014-06-03 10:03:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 3, 2014 10:03:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54802 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 3, 2014 10:05:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Cambiar Cantidad Aprobada con Cantidad Efectiva',Updated=TO_DATE('2014-06-03 10:05:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53634 AND AD_Language='es_MX'
;

-- Jun 3, 2014 10:05:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Cambiar Cantidad Aprobada con Cantidad Efectiva',Updated=TO_DATE('2014-06-03 10:05:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53634 AND AD_Language='es_VE'
;

-- Jun 3, 2014 10:05:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53834,0,53634,TO_DATE('2014-06-03 10:05:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Change Qty Approved To Qty Efective',TO_DATE('2014-06-03 10:05:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 3, 2014 10:05:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53834 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jun 3, 2014 10:05:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-06-03 10:05:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',53834,0,999,TO_DATE('2014-06-03 10:05:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 3, 2014 10:06:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Cambiar Cantidad Aprobada con Cantidad Efectiva',Updated=TO_DATE('2014-06-03 10:06:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53834 AND AD_Language='es_MX'
;

-- Jun 3, 2014 10:06:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Cambiar Cantidad Aprobada con Cantidad Efectiva',Updated=TO_DATE('2014-06-03 10:06:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53834 AND AD_Language='es_VE'
;

-- Jun 3, 2014 10:06:17 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=0,Updated=TO_DATE('2014-06-03 10:06:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53834
;

-- Jun 3, 2014 10:06:22 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=0,Updated=TO_DATE('2014-06-03 10:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53834
;

-- Jun 3, 2014 10:07:13 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=12,Updated=TO_DATE('2014-06-03 10:07:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53834
;

-- Jun 3, 2014 10:07:13 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=13,Updated=TO_DATE('2014-06-03 10:07:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53692
;

-- Jun 3, 2014 10:07:14 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=14,Updated=TO_DATE('2014-06-03 10:07:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53657
;

-- Jun 3, 2014 10:07:14 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=15,Updated=TO_DATE('2014-06-03 10:07:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53762
;

-- Jun 3, 2014 10:07:14 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=16,Updated=TO_DATE('2014-06-03 10:07:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53664
;

-- Jun 3, 2014 10:07:14 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=17,Updated=TO_DATE('2014-06-03 10:07:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53675
;

-- Jun 3, 2014 10:07:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_DATE('2014-06-03 10:07:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54802
;

-- Jun 3, 2014 10:07:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56084,0,53634,54803,18,53571,'FTA_FarmerCredit_ID',TO_DATE('2014-06-03 10:07:47','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',0,'Y','Y','N','N','Credit/Loan',30,TO_DATE('2014-06-03 10:07:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 3, 2014 10:07:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54803 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 3, 2014 10:08:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53634,54804,30,53570,'C_BPartner_ID',TO_DATE('2014-06-03 10:08:12','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',40,TO_DATE('2014-06-03 10:08:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 3, 2014 10:08:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54804 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 3, 2014 10:08:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y', SeqNo=10,Updated=TO_DATE('2014-06-03 10:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54804
;

-- Jun 3, 2014 10:08:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52207, IsMandatory='Y', SeqNo=20,Updated=TO_DATE('2014-06-03 10:08:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54803
;

-- Jun 3, 2014 10:08:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=40,Updated=TO_DATE('2014-06-03 10:08:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54802
;

-- Jun 3, 2014 10:09:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52207, IsMandatory='Y', SeqNo=20,Updated=TO_DATE('2014-06-03 10:09:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54803
;

-- Jun 3, 2014 10:13:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57184,0,29,'EffectiveQty',TO_DATE('2014-06-03 10:13:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Effective Quantity','Effective Quantity',TO_DATE('2014-06-03 10:13:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 3, 2014 10:13:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57184 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 3, 2014 10:13:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Cantidad Efectiva',PrintName='Cantidad Efectiva',Updated=TO_DATE('2014-06-03 10:13:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57184 AND AD_Language='es_MX'
;

-- Jun 3, 2014 10:14:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Cantidad Efectiva',PrintName='Cantidad Efectiva',Updated=TO_DATE('2014-06-03 10:14:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57184 AND AD_Language='es_VE'
;

-- Jun 3, 2014 10:14:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73001,57184,0,29,53544,'EffectiveQty',TO_DATE('2014-06-03 10:14:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Effective Quantity',0,TO_DATE('2014-06-03 10:14:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 3, 2014 10:14:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73001 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 3, 2014 10:14:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73001,73633,0,53721,TO_DATE('2014-06-03 10:14:41','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Effective Quantity',TO_DATE('2014-06-03 10:14:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 3, 2014 10:14:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73633 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 3, 2014 10:15:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2014-06-03 10:15:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73633
;

-- Jun 3, 2014 10:15:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2014-06-03 10:15:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68131
;

-- Jun 3, 2014 10:15:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2014-06-03 10:15:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68132
;

-- Jun 3, 2014 10:15:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2014-06-03 10:15:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68128
;

-- Jun 3, 2014 10:15:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2014-06-03 10:15:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68448
;

-- Jun 3, 2014 10:15:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_DATE('2014-06-03 10:15:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73432
;

-- Jun 3, 2014 10:15:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_DATE('2014-06-03 10:15:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70043
;

-- Jun 3, 2014 10:15:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_DATE('2014-06-03 10:15:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Jun 3, 2014 10:15:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_DATE('2014-06-03 10:15:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68340
;

-- Jun 3, 2014 10:19:34 AM VET
-- Farming Technical Assistance
ALTER TABLE FTA_FarmerCredit ADD EffectiveQty NUMBER DEFAULT NULL 
;

-- Jun 3, 2014 10:40:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.ChangeQtyApprovedToQtyEffective', Name='Change Qty Approved To Qty Effective', Value='FTA_ChangeQtyApprovedToQtyEffective',Updated=TO_DATE('2014-06-03 10:40:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53634
;

-- Jun 3, 2014 10:40:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53634
;

-- Jun 3, 2014 10:40:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Change Qty Approved To Qty Effective',Updated=TO_DATE('2014-06-03 10:40:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53834
;

-- Jun 3, 2014 10:40:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53834
;

