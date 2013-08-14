-- Jul 10, 2013 10:32:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Window SET Name='Variety',Updated=TO_TIMESTAMP('2013-07-10 10:32:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53249
;

-- Jul 10, 2013 10:32:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=53249
;

-- Jul 10, 2013 10:32:06 AM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Name='Variedad',Updated=TO_TIMESTAMP('2013-07-10 10:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53249 AND AD_Language='es_MX'
;

-- Jul 10, 2013 10:32:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53566,0,53249,TO_TIMESTAMP('2013-07-10 10:32:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Variety',TO_TIMESTAMP('2013-07-10 10:32:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 10, 2013 10:32:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53566 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 10, 2013 10:32:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53566, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53566)
;

-- Jul 10, 2013 10:32:29 AM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Variedad',Updated=TO_TIMESTAMP('2013-07-10 10:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53566 AND AD_Language='es_MX'
;

