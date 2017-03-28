-- Jul 7, 2013 9:35:55 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53561,0,53240,TO_TIMESTAMP('2013-07-07 21:35:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Mobilization Guide',TO_TIMESTAMP('2013-07-07 21:35:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 7, 2013 9:35:55 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53561 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 7, 2013 9:35:55 PM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 0,t.AD_Tree_ID, 53561, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53561)
;

-- Jul 7, 2013 9:37:29 PM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Name='Guia de Movilización',Updated=TO_TIMESTAMP('2013-07-07 21:37:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53240 AND AD_Language='es_VE'
;

-- Jul 7, 2013 9:37:41 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Guia de Movilización',Updated=TO_TIMESTAMP('2013-07-07 21:37:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53561 AND AD_Language='es_VE'
;

-- Jul 7, 2013 9:38:09 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53562,0,53238,TO_TIMESTAMP('2013-07-07 21:38:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Observation Type',TO_TIMESTAMP('2013-07-07 21:38:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 7, 2013 9:38:09 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53562 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 7, 2013 9:38:09 PM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 0,t.AD_Tree_ID, 53562, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53562)
;

-- Jul 7, 2013 9:38:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Name='Tipo de Observación',Updated=TO_TIMESTAMP('2013-07-07 21:38:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53238 AND AD_Language='es_VE'
;

-- Jul 7, 2013 9:39:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Tipo de Observación',Updated=TO_TIMESTAMP('2013-07-07 21:39:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53562 AND AD_Language='es_VE'
;

-- Jul 7, 2013 9:39:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53563,0,53237,TO_TIMESTAMP('2013-07-07 21:39:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Producer',TO_TIMESTAMP('2013-07-07 21:39:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 7, 2013 9:39:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53563 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 7, 2013 9:39:38 PM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 0,t.AD_Tree_ID, 53563, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53563)
;

-- Jul 7, 2013 9:39:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Productor',Updated=TO_TIMESTAMP('2013-07-07 21:39:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53563 AND AD_Language='es_VE'
;

-- Jul 7, 2013 9:40:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Description='Productor o Entidad encargada de producir la Materia Prima',Updated=TO_TIMESTAMP('2013-07-07 21:40:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53237 AND AD_Language='es_VE'
;

-- Jul 7, 2013 9:41:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Window SET Description='Producer or Entity that Producing the Raw Material',Updated=TO_TIMESTAMP('2013-07-07 21:41:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53237
;

-- Jul 7, 2013 9:41:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=53237
;

-- Jul 7, 2013 9:41:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu SET Description='Producer or Entity that Producing the Raw Material', IsActive='Y', Name='Producer',Updated=TO_TIMESTAMP('2013-07-07 21:41:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53563
;

-- Jul 7, 2013 9:41:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53563
;

-- Jul 7, 2013 9:42:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Window SET Description='Producer or Entity responsible for Producing the Raw Material',Updated=TO_TIMESTAMP('2013-07-07 21:42:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53237
;

-- Jul 7, 2013 9:42:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=53237
;

-- Jul 7, 2013 9:42:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu SET Description='Producer or Entity responsible for Producing the Raw Material', IsActive='Y', Name='Producer',Updated=TO_TIMESTAMP('2013-07-07 21:42:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53563
;

-- Jul 7, 2013 9:42:27 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53563
;

-- Jul 7, 2013 9:43:08 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53564,0,53241,TO_TIMESTAMP('2013-07-07 21:43:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Suggested Product',TO_TIMESTAMP('2013-07-07 21:43:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 7, 2013 9:43:08 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53564 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 7, 2013 9:43:08 PM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 0,t.AD_Tree_ID, 53564, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53564)
;

-- Jul 7, 2013 9:43:17 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Productos Sugeridos',Updated=TO_TIMESTAMP('2013-07-07 21:43:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53564 AND AD_Language='es_VE'
;

-- Jul 7, 2013 9:43:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53565,0,53239,TO_TIMESTAMP('2013-07-07 21:43:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Technical Form',TO_TIMESTAMP('2013-07-07 21:43:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 7, 2013 9:43:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53565 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 7, 2013 9:43:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 0,t.AD_Tree_ID, 53565, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53565)
;

-- Jul 7, 2013 9:44:04 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Hoja Técnica',Updated=TO_TIMESTAMP('2013-07-07 21:44:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53565 AND AD_Language='es_VE'
;

-- Jul 7, 2013 9:44:23 PM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Name='Hoja Técnica',Updated=TO_TIMESTAMP('2013-07-07 21:44:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53239 AND AD_Language='es_VE'
;

