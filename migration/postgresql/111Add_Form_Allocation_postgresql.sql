-- Sep 12, 2013 7:29:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Form (AccessLevel,AD_Client_ID,AD_Form_ID,AD_Org_ID,Classname,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,Name,Updated,UpdatedBy) VALUES ('1',0,53036,0,'org.spin.form.VFarmerCreditAllocation',TO_TIMESTAMP('2013-09-12 19:29:29','YYYY-MM-DD HH24:MI:SS'),100,'Allocate invoices of AR with Liquidation','ECA02','Y','N','Farmer Credit Allocation',TO_TIMESTAMP('2013-09-12 19:29:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 7:29:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Form_Trl (AD_Language,AD_Form_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Form_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Form t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Form_ID=53036 AND NOT EXISTS (SELECT * FROM AD_Form_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Form_ID=t.AD_Form_ID)
;

-- Sep 12, 2013 7:30:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Form_Trl SET Name='Cruce de Cuentas en Crédito',Description='Cruza las Cuentas por Cobrar con la Liquidación del Productor',Updated=TO_TIMESTAMP('2013-09-12 19:30:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=53036 AND AD_Language='es_VE'
;

-- Sep 12, 2013 7:33:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Form_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('X',0,53036,53620,0,TO_TIMESTAMP('2013-09-12 19:33:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Farmer Allocation',TO_TIMESTAMP('2013-09-12 19:33:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 7:33:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53620 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Sep 12, 2013 7:33:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53620, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53620)
;

-- Sep 12, 2013 7:33:07 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53620
;

-- Sep 12, 2013 7:33:07 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Sep 12, 2013 7:33:07 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53603
;

