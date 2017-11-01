-- Dec 19, 2014 9:52:13 AM VET
-- FTA
UPDATE AD_Browse SET WhereClause='MLO.DocStatus = ''CO'' AND MLO.M_MovementLine_ID IS NULL AND MLO.OperationType = ''MOM'' AND NOT EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID = MLO.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y''	)',Updated=TO_DATE('2014-12-19 09:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50044
;

-- Dec 19, 2014 9:52:35 AM VET
-- FTA
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-12-19 09:52:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55069
;

-- Dec 19, 2014 9:52:40 AM VET
-- FTA
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2014-12-19 09:52:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55069
;

