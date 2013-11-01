-- Sep 3, 2013 5:54:23 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Tab_Trl WHERE AD_Tab_ID=53726
;

-- Sep 3, 2013 5:54:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Tab WHERE AD_Tab_ID=53726
;

-- Sep 3, 2013 5:57:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53535,TO_DATE('2013-09-03 17:56:55','YYYY-MM-DD HH24:MI:SS'),100,'Finds FTA_Farmings for a given FTA_MobilizationGuide_ID','ECA02','Y','N','RelType FTA_Farming <= FTA_MobilizationGuide',TO_DATE('2013-09-03 17:56:55','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Sep 3, 2013 5:57:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53535 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Sep 3, 2013 5:58:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,65887,65882,0,53535,53510,TO_DATE('2013-09-03 17:58:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2013-09-03 17:58:26','YYYY-MM-DD HH24:MI:SS'),100,'FTA_MobilizationGuide.FTA_Farming_ID = @FTA_Farming_ID@')
;

-- Sep 3, 2013 5:59:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53536,TO_DATE('2013-09-03 17:59:41','YYYY-MM-DD HH24:MI:SS'),100,'Finds FTA_MobilizationGuide_IDs for a given FTA_Farming_ID','ECA02','Y','N','RelType FTA_MobilizationGuide <= FTA_Farming',TO_DATE('2013-09-03 17:59:41','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Sep 3, 2013 5:59:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53536 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Sep 3, 2013 5:59:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET Description='Finds FTA_Farming_IDs for a given FTA_MobilizationGuide_ID',Updated=TO_DATE('2013-09-03 17:59:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Sep 3, 2013 5:59:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53535
;

-- Sep 3, 2013 6:00:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,65857,65858,0,53536,53509,TO_DATE('2013-09-03 18:00:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2013-09-03 18:00:49','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Farming.FTA_Farming_ID = @FTA_Farming_ID@')
;

-- Sep 3, 2013 6:01:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Type,Updated,UpdatedBy) VALUES (0,0,53535,53536,50008,TO_DATE('2013-09-03 18:01:12','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Farming <-> Movilization Guide','I',TO_DATE('2013-09-03 18:01:12','YYYY-MM-DD HH24:MI:SS'),100)
;

