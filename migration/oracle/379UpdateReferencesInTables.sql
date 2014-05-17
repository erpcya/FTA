-- Feb 11, 2014 3:46:38 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2014-02-11 15:46:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65836
;

-- Feb 11, 2014 3:46:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2014-02-11 15:46:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65949
;

-- Feb 11, 2014 3:58:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53656,TO_DATE('2014-02-11 15:58:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_FarmDivision',TO_DATE('2014-02-11 15:58:17','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Feb 11, 2014 3:58:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53656 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Feb 11, 2014 3:58:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,65843,66067,0,53656,53508,TO_DATE('2014-02-11 15:58:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2014-02-11 15:58:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 3:58:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53656,Updated=TO_DATE('2014-02-11 15:58:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69491
;

-- Feb 11, 2014 3:58:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53571,Updated=TO_DATE('2014-02-11 15:58:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71477
;

-- Feb 11, 2014 3:59:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53657,TO_DATE('2014-02-11 15:59:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_Farm',TO_DATE('2014-02-11 15:59:54','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Feb 11, 2014 3:59:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53657 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Feb 11, 2014 4:00:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,65814,65815,0,53657,53506,TO_DATE('2014-02-11 16:00:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2014-02-11 16:00:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 4:00:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53657,Updated=TO_DATE('2014-02-11 16:00:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69490
;

-- Feb 11, 2014 4:00:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53658,TO_DATE('2014-02-11 16:00:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_Farming',TO_DATE('2014-02-11 16:00:58','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Feb 11, 2014 4:00:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53658 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Feb 11, 2014 4:01:47 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Reference_Trl WHERE AD_Reference_ID=53658
;

-- Feb 11, 2014 4:01:47 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference WHERE AD_Reference_ID=53658
;

-- Feb 11, 2014 4:02:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53659,TO_DATE('2014-02-11 16:02:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_ObservationType',TO_DATE('2014-02-11 16:02:58','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Feb 11, 2014 4:02:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53659 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Feb 11, 2014 4:03:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,65898,65899,0,53659,53511,TO_DATE('2014-02-11 16:03:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2014-02-11 16:03:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 4:03:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53659,Updated=TO_DATE('2014-02-11 16:03:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69494
;

-- Feb 11, 2014 4:03:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53660,TO_DATE('2014-02-11 16:03:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_TechnicalForm',TO_DATE('2014-02-11 16:03:50','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Feb 11, 2014 4:03:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53660 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Feb 11, 2014 4:04:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,65833,65828,0,53660,53507,TO_DATE('2014-02-11 16:04:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2014-02-11 16:04:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 4:04:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53660,Updated=TO_DATE('2014-02-11 16:04:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69495
;

-- Feb 11, 2014 4:22:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71588,57033,0,22,53654,'EffectiveArea',TO_DATE('2014-02-11 16:22:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Effective Area',TO_DATE('2014-02-11 16:22:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 11, 2014 4:22:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71588 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

