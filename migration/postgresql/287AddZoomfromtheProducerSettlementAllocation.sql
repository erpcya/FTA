-- Nov 5, 2013 3:50:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53593,TO_TIMESTAMP('2013-11-05 15:50:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_Allocation <-> FTA_FarmerLiquidation',TO_TIMESTAMP('2013-11-05 15:50:47','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Nov 5, 2013 3:50:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53593 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Nov 5, 2013 3:51:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET Name='Asignación <-> Liquidación Productor',Updated=TO_TIMESTAMP('2013-11-05 15:51:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53593 AND AD_Language='es_MX'
;

-- Nov 5, 2013 3:53:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET Name='Asignación <-> Liquidación Productor',Updated=TO_TIMESTAMP('2013-11-05 15:53:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53593 AND AD_Language='es_VE'
;

-- Nov 5, 2013 3:54:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,OrderByClause,Updated,UpdatedBy,WhereClause) VALUES (0,66994,66995,0,53593,53564,53266,TO_TIMESTAMP('2013-11-05 15:54:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_FarmerLiquidation.DocumentNo',TO_TIMESTAMP('2013-11-05 15:54:08','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmerLiquidation_ID IN  (
SELECT FTA_AllocationLine.FTA_FarmerLiquidation_ID
from FTA_Allocation 
INNER JOIN FTA_AllocationLine ON FTA_AllocationLine.FTA_Allocation_ID = FTA_Allocation.FTA_Allocation_ID
where FTA_AllocationLine.FTA_FarmerLiquidation_ID = @FTA_FarmerLiquidation_ID@
)')
;

-- Nov 5, 2013 3:55:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53594,TO_TIMESTAMP('2013-11-05 15:55:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_FarmerLiquidation <-> FTA_Allocation',TO_TIMESTAMP('2013-11-05 15:55:10','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Nov 5, 2013 3:55:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53594 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Nov 5, 2013 3:55:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET Name='Liquidación Productor <-> Asignación',Description=NULL,Updated=TO_TIMESTAMP('2013-11-05 15:55:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53594 AND AD_Language='es_MX'
;

-- Nov 5, 2013 3:55:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET Name='Liquidación Productor <-> Asignación',Updated=TO_TIMESTAMP('2013-11-05 15:55:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53594 AND AD_Language='es_VE'
;

-- Nov 5, 2013 3:56:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,67031,67032,0,53594,53566,53265,TO_TIMESTAMP('2013-11-05 15:56:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2013-11-05 15:56:36','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Allocation_ID IN(
SELECT FTA_AllocationLine.FTA_Allocation_ID
from FTA_FarmerLiquidation
INNER JOIN FTA_AllocationLine ON FTA_AllocationLine.FTA_FarmerLiquidation_ID = FTA_FarmerLiquidation.FTA_FarmerLiquidation_ID
where FTA_AllocationLine.FTA_FarmerLiquidation_ID = @FTA_FarmerLiquidation_ID@
)')
;

-- Nov 5, 2013 3:58:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54146,TO_TIMESTAMP('2013-11-05 15:58:33','YYYY-MM-DD HH24:MI:SS'),100,'Allocation/Liquidation','ECA02','Y','Allocation/Liquidation',TO_TIMESTAMP('2013-11-05 15:58:33','YYYY-MM-DD HH24:MI:SS'),100,'Allocation/Liquidation')
;

-- Nov 5, 2013 3:58:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54146 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Nov 5, 2013 3:59:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,53593,53594,50009,TO_TIMESTAMP('2013-11-05 15:59:06','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','FTA_Allocation <-> FTA_FarmerLiquidation','Allocation/Liquidation','Allocation/Liquidation','I',TO_TIMESTAMP('2013-11-05 15:59:06','YYYY-MM-DD HH24:MI:SS'),100)
;

