-- Jan 16, 2014 3:35:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@ IN (''DBM'')',Updated=TO_DATE('2014-01-16 15:35:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71458
;

-- Jan 16, 2014 3:42:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,112,0,53554,54364,18,130,'AD_OrgTrx_ID',TO_DATE('2014-01-16 15:41:56','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization','ECA02',22,'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Y','Y','Y','N','Trx Organization',80,TO_DATE('2014-01-16 15:41:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 3:42:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54364 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 16, 2014 3:42:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,459,0,53554,54365,19,189,'M_Warehouse_ID',TO_DATE('2014-01-16 15:42:29','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02',22,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','N','N','Warehouse',90,TO_DATE('2014-01-16 15:42:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 3:42:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54365 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 16, 2014 3:42:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,448,0,53554,54366,19,127,'M_Locator_ID',TO_DATE('2014-01-16 15:42:53','YYYY-MM-DD HH24:MI:SS'),100,'Warehouse Locator','ECA02',22,'The Locator indicates where in a Warehouse a product is located.','Y','Y','N','N','Locator',100,TO_DATE('2014-01-16 15:42:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 3:42:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54366 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 16, 2014 3:43:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1037,0,53554,54367,15,'MovementDate',TO_DATE('2014-01-16 15:43:06','YYYY-MM-DD HH24:MI:SS'),100,'Date a product was moved in or out of inventory','ECA02',7,'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.','Y','Y','N','Y','Movement Date',110,TO_DATE('2014-01-16 15:43:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 3:43:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54367 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 16, 2014 3:43:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=120,Updated=TO_DATE('2014-01-16 15:43:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54361
;

-- Jan 16, 2014 3:43:33 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0,Updated=TO_DATE('2014-01-16 15:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53745
;

-- Jan 16, 2014 3:43:33 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=1,Updated=TO_DATE('2014-01-16 15:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53684
;

-- Jan 16, 2014 3:43:33 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=2,Updated=TO_DATE('2014-01-16 15:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53654
;

-- Jan 16, 2014 3:43:33 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=3,Updated=TO_DATE('2014-01-16 15:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53646
;

-- Jan 16, 2014 3:43:34 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=4,Updated=TO_DATE('2014-01-16 15:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53748
;

-- Jan 16, 2014 3:43:34 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=5,Updated=TO_DATE('2014-01-16 15:43:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53597
;

-- Jan 16, 2014 3:43:34 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=6,Updated=TO_DATE('2014-01-16 15:43:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53601
;

-- Jan 16, 2014 3:43:34 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=7,Updated=TO_DATE('2014-01-16 15:43:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53602
;

-- Jan 16, 2014 3:43:39 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=0,Updated=TO_DATE('2014-01-16 15:43:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53745
;

-- Jan 16, 2014 3:43:39 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=1,Updated=TO_DATE('2014-01-16 15:43:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53686
;

-- Jan 16, 2014 3:43:39 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=2,Updated=TO_DATE('2014-01-16 15:43:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53685
;

-- Jan 16, 2014 3:45:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=18, AD_Reference_Value_ID=191,Updated=TO_DATE('2014-01-16 15:45:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54366
;

-- Jan 16, 2014 3:45:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=18, AD_Reference_Value_ID=197,Updated=TO_DATE('2014-01-16 15:45:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54365
;

-- Jan 16, 2014 3:45:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2014-01-16 15:45:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54365
;

-- Jan 16, 2014 3:46:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2014-01-16 15:46:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54366
;

-- Jan 16, 2014 3:47:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52299,'M_Warehouse.AD_Org_ID=@AD_OrgTrx_ID@',TO_DATE('2014-01-16 15:47:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Warehouse Org Transaction','S',TO_DATE('2014-01-16 15:47:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 3:47:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52299,Updated=TO_DATE('2014-01-16 15:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54365
;

-- Jan 16, 2014 3:47:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_DATE('2014-01-16 15:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54361
;

-- Jan 16, 2014 3:50:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y', IsRange='N',Updated=TO_DATE('2014-01-16 15:50:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54367
;

-- Jan 16, 2014 3:50:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-01-16 15:50:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54366
;

-- Jan 16, 2014 3:51:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=31, AD_Reference_Value_ID=197,Updated=TO_DATE('2014-01-16 15:51:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54366
;

-- Jan 16, 2014 3:51:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_Value_ID=191,Updated=TO_DATE('2014-01-16 15:51:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54366
;

-- Jan 16, 2014 3:53:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=21,Updated=TO_DATE('2014-01-16 15:53:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54366
;

-- Jan 16, 2014 3:55:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56991,0,18,'M_WarehouseTo_ID',TO_DATE('2014-01-16 15:55:11','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02',0,'Y','Warehouse To','Warehouse To',TO_DATE('2014-01-16 15:55:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 3:55:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56991 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jan 16, 2014 3:55:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='A Almacen',PrintName='A Almacen',Description=NULL,Updated=TO_DATE('2014-01-16 15:55:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56991 AND AD_Language='es_MX'
;

-- Jan 16, 2014 3:55:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='A Almacen',PrintName='A Almacen',Description=NULL,Updated=TO_DATE('2014-01-16 15:55:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56991 AND AD_Language='es_VE'
;

-- Jan 16, 2014 3:55:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='A Almacén',PrintName='A Almacén',Updated=TO_DATE('2014-01-16 15:55:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56991 AND AD_Language='es_VE'
;

-- Jan 16, 2014 3:56:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='A Almacén',PrintName='A Almacén',Updated=TO_DATE('2014-01-16 15:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56991 AND AD_Language='es_MX'
;

-- Jan 16, 2014 3:56:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Description='A Almacén y punto de servicio',Updated=TO_DATE('2014-01-16 15:56:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56991 AND AD_Language='es_MX'
;

-- Jan 16, 2014 3:56:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Description='A Almacén y punto de servicio',Updated=TO_DATE('2014-01-16 15:56:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56991 AND AD_Language='es_VE'
;

-- Jan 16, 2014 3:56:39 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54365
;

-- Jan 16, 2014 3:56:39 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54365
;

-- Jan 16, 2014 3:57:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET AD_Reference_Value_ID=197,Updated=TO_DATE('2014-01-16 15:57:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56991
;

-- Jan 16, 2014 3:57:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56991,0,53554,54368,18,197,52299,'M_WarehouseTo_ID',TO_DATE('2014-01-16 15:57:32','YYYY-MM-DD HH24:MI:SS'),100,'-1','Storage Warehouse and Service Point','ECA02',0,'Y','Y','Y','N','Warehouse To',130,TO_DATE('2014-01-16 15:57:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 3:57:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54368 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 16, 2014 3:57:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=90,Updated=TO_DATE('2014-01-16 15:57:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54368
;

-- Jan 16, 2014 3:58:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1029,0,53554,54369,31,191,'M_LocatorTo_ID',TO_DATE('2014-01-16 15:58:04','YYYY-MM-DD HH24:MI:SS'),100,'Location inventory is moved to','ECA02',22,'The Locator To indicates the location where the inventory is being moved to.','Y','Y','N','N','Locator To',130,TO_DATE('2014-01-16 15:58:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 3:58:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54369 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 16, 2014 3:58:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1', IsMandatory='Y',Updated=TO_DATE('2014-01-16 15:58:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54369
;

-- Jan 16, 2014 3:58:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=100,Updated=TO_DATE('2014-01-16 15:58:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54369
;

-- Jan 16, 2014 3:59:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=127,Updated=TO_DATE('2014-01-16 15:59:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54369
;

-- Jan 16, 2014 4:01:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52300,'M_Locator.M_Warehouse_ID=@M_WarehouseTo_ID@',TO_DATE('2014-01-16 16:01:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Locator of Warehouse To','S',TO_DATE('2014-01-16 16:01:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 4:01:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52300,Updated=TO_DATE('2014-01-16 16:01:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54369
;

-- Jan 16, 2014 4:01:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2014-01-16 16:01:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54356
;

-- Jan 16, 2014 4:05:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_DATE('2014-01-16 16:05:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54366
;

-- Jan 16, 2014 4:07:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=18,Updated=TO_DATE('2014-01-16 16:07:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54369
;

-- Jan 16, 2014 4:16:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52301,'@EvenType@ = ''DR''',TO_DATE('2014-01-16 16:16:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_CategoryCalc only drying','S',TO_DATE('2014-01-16 16:16:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 4:17:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52301,Updated=TO_DATE('2014-01-16 16:17:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54360
;

-- Jan 16, 2014 4:19:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CategoryCalc.EvenType = ''DR''',Updated=TO_DATE('2014-01-16 16:19:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52301
;

-- Jan 16, 2014 4:22:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='AD_Ref_List.Value = ''DR''',Updated=TO_DATE('2014-01-16 16:22:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52301
;

-- Jan 16, 2014 4:24:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=18,Updated=TO_DATE('2014-01-16 16:24:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54360
;

-- Jan 16, 2014 4:24:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53648,TO_DATE('2014-01-16 16:24:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_CategoryCalc Name',TO_DATE('2014-01-16 16:24:33','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Jan 16, 2014 4:24:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53648 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Jan 16, 2014 4:24:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,67070,67064,0,53648,53568,TO_DATE('2014-01-16 16:24:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2014-01-16 16:24:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 4:25:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_Value_ID=53648,Updated=TO_DATE('2014-01-16 16:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54360
;

-- Jan 16, 2014 4:28:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CategoryCalc.EventType= ''DR''',Updated=TO_DATE('2014-01-16 16:28:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52301
;

-- Jan 16, 2014 4:29:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,208,0,53554,54370,19,'C_Project_ID',TO_DATE('2014-01-16 16:29:56','YYYY-MM-DD HH24:MI:SS'),100,'Financial Project','ECA02',22,'A Project allows you to track and control internal or external activities.','Y','Y','N','N','Project',130,TO_DATE('2014-01-16 16:29:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 4:29:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54370 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 16, 2014 4:30:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1005,0,53554,54371,18,142,'C_Activity_ID',TO_DATE('2014-01-16 16:30:05','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity','ECA02',22,'Activities indicate tasks that are performed and used to utilize Activity based Costing','Y','Y','N','N','Activity',140,TO_DATE('2014-01-16 16:30:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 4:30:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54371 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 16, 2014 4:30:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,550,0,53554,54372,18,143,'C_Campaign_ID',TO_DATE('2014-01-16 16:30:17','YYYY-MM-DD HH24:MI:SS'),100,'Marketing Campaign','ECA02',22,'The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.','Y','Y','N','N','Campaign',150,TO_DATE('2014-01-16 16:30:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 4:30:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54372 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 16, 2014 4:36:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@ = (''DBM'')',Updated=TO_DATE('2014-01-16 16:36:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71458
;

-- Jan 16, 2014 4:36:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@OperationType@ = ''DBM''',Updated=TO_DATE('2014-01-16 16:36:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71458
;

-- Jan 16, 2014 4:47:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71281,2019,0,35,385,'M_AttributeSetInstance_ID',TO_DATE('2014-01-16 16:47:03','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance','ECA02',22,'The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Attribute Set Instance',0,TO_DATE('2014-01-16 16:47:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 16, 2014 4:47:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71281 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 16, 2014 4:47:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71281,72128,0,320,TO_DATE('2014-01-16 16:47:16','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance',22,'ECA02','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Y','Y','Y','N','N','N','N','N','Attribute Set Instance',TO_DATE('2014-01-16 16:47:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 4:47:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72128 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 16, 2014 4:48:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-01-16 16:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10337
;

-- Jan 16, 2014 4:48:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-01-16 16:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3792
;

-- Jan 16, 2014 4:48:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_DATE('2014-01-16 16:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3793
;

-- Jan 16, 2014 4:48:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2014-01-16 16:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3794
;

-- Jan 16, 2014 4:48:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2014-01-16 16:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3796
;

-- Jan 16, 2014 4:48:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-01-16 16:48:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3810
;

-- Jan 16, 2014 4:48:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-01-16 16:48:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3797
;

-- Jan 16, 2014 4:48:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-01-16 16:48:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72128
;

-- Jan 16, 2014 4:48:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-01-16 16:48:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3795
;

-- Jan 16, 2014 4:48:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-01-16 16:48:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3798
;

-- Jan 16, 2014 4:48:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-01-16 16:48:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3799
;

-- Jan 16, 2014 4:48:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-01-16 16:48:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3800
;

-- Jan 16, 2014 4:48:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-01-16 16:48:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72128
;

-- Jan 16, 2014 5:30:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1672,0,53554,54373,20,'MustBeStocked',TO_DATE('2014-01-16 17:30:43','YYYY-MM-DD HH24:MI:SS'),100,'If not sufficient in stock in the warehouse, the BOM is not produced','ECA02',0,'Y','Y','N','N','Product quantity must be in stock',160,TO_DATE('2014-01-16 17:30:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 16, 2014 5:30:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54373 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

