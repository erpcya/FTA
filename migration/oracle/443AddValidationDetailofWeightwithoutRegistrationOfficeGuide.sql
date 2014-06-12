-- Apr 2, 2014 9:41:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,WhereClause) VALUES (0,0,53121,53625,TO_DATE('2014-04-02 09:41:19','YYYY-MM-DD HH24:MI:SS'),100,'Detail of Weight without Registration Office Guide','ECA02','Y','FTA_RV_RecordWeight without Registration Office Guide',TO_DATE('2014-04-02 09:41:19','YYYY-MM-DD HH24:MI:SS'),100,'NOT EXISTS ( SELECT 1  FROM FTA_MobilizationGuide mg  WHERE  FTA_RecordWeight.FTA_RecordWeight_ID = mg.FTA_RecordWeight_ID  AND mg.ISSOTrx=''Y''  )')
;

-- Apr 2, 2014 9:51:58 AM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause='NOT EXISTS ( SELECT 1  FROM FTA_MobilizationGuide mg  WHERE  FTA_RV_RecordWeight.FTA_RecordWeight_ID = mg.FTA_RecordWeight_ID  AND mg.ISSOTrx=''Y''  )',Updated=TO_DATE('2014-04-02 09:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53121
;

