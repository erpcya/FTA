-- Jan 13, 2014 10:01:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET AD_Reference_ID=18, AD_Reference_Value_ID=53643,Updated=TO_TIMESTAMP('2014-01-13 10:01:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56978
;

-- Jan 13, 2014 10:01:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='Owner_ID',Updated=TO_TIMESTAMP('2014-01-13 10:01:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56978
;

-- Jan 13, 2014 10:01:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='Owner_ID', Name='Owner', Description=NULL, Help=NULL WHERE AD_Element_ID=56978
;

-- Jan 13, 2014 10:01:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='Owner_ID', Name='Owner', Description=NULL, Help=NULL, AD_Element_ID=56978 WHERE UPPER(ColumnName)='OWNER_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 13, 2014 10:01:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='Owner_ID', Name='Owner', Description=NULL, Help=NULL WHERE AD_Element_ID=56978 AND IsCentrallyMaintained='Y'
;

-- Jan 13, 2014 10:01:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET IsValueDisplayed='N',Updated=TO_TIMESTAMP('2014-01-13 10:01:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 13, 2014 10:27:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutQualityAnalysis.recordWeight',Updated=TO_TIMESTAMP('2014-01-13 10:27:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70644
;

