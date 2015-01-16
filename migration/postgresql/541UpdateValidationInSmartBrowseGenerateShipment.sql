-- Jan 14, 2015 11:15:50 PM VET
-- FTA
UPDATE AD_Browse SET WhereClause='	(NOT EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID =GI.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y'') 
		OR (GI.IsImmediateDelivery = ''Y''
			AND EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID =GI.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y'') 
			
			)
		)
	AND GI.DocStatus = ''CO''
	AND GI.OperationType IN (''DFP'',''DBM'') 
	AND GI.M_InOutLine_ID IS NULL
',Updated=TO_TIMESTAMP('2015-01-14 23:15:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50043
;

-- Jan 14, 2015 11:16:24 PM VET
-- FTA
UPDATE AD_Browse SET WhereClause='(NOT EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID =GI.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y'') 
OR (GI.IsImmediateDelivery = ''Y'' AND EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID =GI.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y'') 
)) AND GI.DocStatus = ''CO'' AND GI.OperationType IN (''DFP'',''DBM'')  AND GI.M_InOutLine_ID IS NULL ',Updated=TO_TIMESTAMP('2015-01-14 23:16:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50043
;

-- Jan 14, 2015 11:17:11 PM VET
-- FTA
UPDATE AD_Val_Rule SET Code='FTA_LoadOrder.IsDelivered = ''N'' AND

(NOT EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID =GI.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y'') 
OR (GI.IsImmediateDelivery = ''Y'' AND EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID =GI.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y'') 
)) AND GI.DocStatus = ''CO'' AND GI.OperationType IN (''DFP'',''DBM'')  AND GI.M_InOutLine_ID IS NULL ',Updated=TO_TIMESTAMP('2015-01-14 23:17:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52408
;

-- Jan 14, 2015 11:21:11 PM VET
-- FTA
UPDATE AD_Val_Rule SET Code='FTA_LoadOrder.IsDelivered = ''N''  AND (NOT EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID =FTA_LoadOrder.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y'') 
OR (FTA_LoadOrder.IsImmediateDelivery = ''Y'' AND EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID =FTA_LoadOrder.AD_Org_ID  AND FTA_WeightScale.IsActive = ''Y'') 
)) AND FTA_LoadOrder.DocStatus = ''CO'' AND FTA_LoadOrder.OperationType IN (''DFP'',''DBM'') AND AD_Client_ID = @AD_Client_ID@

',Updated=TO_TIMESTAMP('2015-01-14 23:21:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52408
;

