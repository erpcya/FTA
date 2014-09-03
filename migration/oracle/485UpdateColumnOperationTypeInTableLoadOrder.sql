-- Aug 25, 2014 4:15:13 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='OperationType', Description=NULL, Help=NULL, Name='Operation Type',Updated=TO_DATE('2014-08-25 04:15:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69870
;

-- Aug 25, 2014 4:15:13 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=69870
;

-- Aug 25, 2014 4:15:13 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Operation Type', Description=NULL, Help=NULL WHERE AD_Column_ID=69870 AND IsCentrallyMaintained='Y'
;

