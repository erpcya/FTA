-- Sep 29, 2014 6:15:43 PM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,454,0,53536,54983,19,'M_Product_ID',TO_DATE('2014-09-29 18:15:41','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','Product',30,TO_DATE('2014-09-29 18:15:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 29, 2014 6:15:43 PM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54983 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 29, 2014 6:22:43 PM VET
-- FTA
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54983
;

-- Sep 29, 2014 6:22:43 PM VET
-- FTA
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54983
;

-- Sep 29, 2014 6:25:41 PM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,454,0,53536,54984,19,'M_Product_ID',TO_DATE('2014-09-29 18:25:40','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','Product',30,TO_DATE('2014-09-29 18:25:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 29, 2014 6:25:41 PM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54984 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 29, 2014 6:25:57 PM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,2658,0,53536,54985,19,'M_Product_To_ID',TO_DATE('2014-09-29 18:25:55','YYYY-MM-DD HH24:MI:SS'),100,'Product to be converted to (must have UOM Conversion defined to From Product)','ECA02',0,'Y','Y','N','N','To Product',40,TO_DATE('2014-09-29 18:25:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 29, 2014 6:25:57 PM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54985 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 29, 2014 6:27:20 PM VET
-- FTA
UPDATE AD_Process_Para SET AD_Reference_ID=18, AD_Reference_Value_ID=162, AD_Val_Rule_ID=52241,Updated=TO_DATE('2014-09-29 18:27:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54984
;

-- Sep 29, 2014 6:27:32 PM VET
-- FTA
UPDATE AD_Process_Para SET AD_Reference_ID=18, AD_Reference_Value_ID=162, AD_Val_Rule_ID=52241,Updated=TO_DATE('2014-09-29 18:27:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54985
;

-- Sep 29, 2014 6:31:36 PM VET
-- FTA
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52395,'M_Product.IsCategory = ''Y'' AND EXISTS ( SELECT 1 FROM FTA_CD_Category  WHERE FTA_CD_Category.FTA_CreditDefintion_ID = @FTA_CreditDefintion_ID@ AND M_Product.M_Product_ID = FTA_CD_Category.M_Product_ID)	',TO_DATE('2014-09-29 18:31:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Product just Category Exists in CD Category','S',TO_DATE('2014-09-29 18:31:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 29, 2014 6:31:50 PM VET
-- FTA
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52395,Updated=TO_DATE('2014-09-29 18:31:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54984
;

-- Sep 29, 2014 6:32:44 PM VET
-- FTA
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52396,'M_Product.IsCategory = ''Y'' AND EXISTS ( SELECT 1 FROM FTA_CD_Category  WHERE FTA_CD_Category.FTA_CreditDefintion_ID = @FTA_CreditDefinition_To_ID@ AND M_Product.M_Product_ID = FTA_CD_Category.M_Product_ID)	',TO_DATE('2014-09-29 18:32:43','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','M_Product_To just Category Exists in CD Category_To','S',TO_DATE('2014-09-29 18:32:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 29, 2014 6:32:53 PM VET
-- FTA
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52396,Updated=TO_DATE('2014-09-29 18:32:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54985
;

-- Sep 29, 2014 6:33:29 PM VET
-- FTA
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-09-29 18:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54316
;

-- Sep 29, 2014 6:33:39 PM VET
-- FTA
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-09-29 18:33:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54985
;

