-- Jan 11, 2014 5:37:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO''
AND EXISTS(SELECT 1 FROM FTA_QualityAnalysis q 
INNER JOIN FTA_RecordWeight rw ON(rw.FTA_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
LEFT JOIN FTA_QualityAnalysis ca ON(ca.Orig_QualityAnalysis_ID = q.FTA_QualityAnalysis_ID)
WHERE (ca.DocStatus IN(''VO'', ''RE'') OR ca.DocStatus IS NULL)
AND rw.DocStatus IN (''IP'',''DR'',''IN'')
AND q.Orig_QualityAnalysis_ID IS NULL 
AND rw.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID)
AND OperationType = ''@OperationType@''',Updated=TO_TIMESTAMP('2014-01-11 17:37:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52202
;

