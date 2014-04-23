-- Apr 9, 2014 10:57:33 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,72609,73279,0,53888,TO_TIMESTAMP('2014-04-09 10:57:30','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','CDL Report Group ID',0,70,0,TO_TIMESTAMP('2014-04-09 10:57:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 10:57:33 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73279 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 9, 2014 10:58:04 AM CEST
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-04-09 10:58:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73279
;

-- Apr 9, 2014 10:58:41 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53812,0,53355,TO_TIMESTAMP('2014-04-09 10:58:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','sds',TO_TIMESTAMP('2014-04-09 10:58:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 10:58:41 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53812 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Apr 9, 2014 10:58:41 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-04-09 10:58:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',53812,0,999,TO_TIMESTAMP('2014-04-09 10:58:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 10:58:49 AM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53667, SeqNo=3,Updated=TO_TIMESTAMP('2014-04-09 10:58:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53812
;

-- Apr 9, 2014 10:58:49 AM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53667, SeqNo=4,Updated=TO_TIMESTAMP('2014-04-09 10:58:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53751
;

-- Apr 9, 2014 10:58:49 AM CEST
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53667, SeqNo=5,Updated=TO_TIMESTAMP('2014-04-09 10:58:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53666
;

