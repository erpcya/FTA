-- Aug 23, 2013 12:04:39 PM VET
-- SFAndroid Contribution
UPDATE AD_Reference SET Description='FTA_QualityAnalysis Product Status', Name='FTA_QualityAnalysis Product Status',Updated=TO_TIMESTAMP('2013-08-23 12:04:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53528
;

-- Aug 23, 2013 12:04:39 PM VET
-- SFAndroid Contribution
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53528
;

-- Aug 23, 2013 12:04:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Reference_Trl SET Name='FTA_QualityAnalysis Product Status',Description='FTA_QualityAnalysis Product Status',Updated=TO_TIMESTAMP('2013-08-23 12:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53528 AND AD_Language='es_MX'
;

-- Aug 23, 2013 12:05:30 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53528,54009,TO_TIMESTAMP('2013-08-23 12:05:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Accepted',TO_TIMESTAMP('2013-08-23 12:05:20','YYYY-MM-DD HH24:MI:SS'),100,'A')
;

-- Aug 23, 2013 12:05:30 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54009 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 23, 2013 12:06:11 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53528,54010,TO_TIMESTAMP('2013-08-23 12:06:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Rejected',TO_TIMESTAMP('2013-08-23 12:06:10','YYYY-MM-DD HH24:MI:SS'),100,'R')
;

-- Aug 23, 2013 12:06:11 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54010 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 23, 2013 12:08:18 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List_Trl SET Name='Aceptado',Updated=TO_TIMESTAMP('2013-08-23 12:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54009 AND AD_Language='es_MX'
;

-- Aug 23, 2013 12:08:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List_Trl SET Name='Rechazado',Updated=TO_TIMESTAMP('2013-08-23 12:08:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54010 AND AD_Language='es_MX'
;

-- Aug 23, 2013 12:11:54 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53528,54011,TO_TIMESTAMP('2013-08-23 12:11:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','ReGuided',TO_TIMESTAMP('2013-08-23 12:11:51','YYYY-MM-DD HH24:MI:SS'),100,'G')
;

-- Aug 23, 2013 12:11:54 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54011 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 23, 2013 12:12:04 PM VET
-- SFAndroid Contribution
UPDATE AD_Ref_List_Trl SET Name='ReGuiado',Updated=TO_TIMESTAMP('2013-08-23 12:12:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54011 AND AD_Language='es_MX'
;

