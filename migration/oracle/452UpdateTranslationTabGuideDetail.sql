-- Apr 23, 2014 4:18:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Table SET Name='Guide Detail',Updated=TO_DATE('2014-04-23 16:18:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53652
;

-- Apr 23, 2014 4:18:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53652
;

-- Apr 23, 2014 4:19:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Detalle de la Guía',Updated=TO_DATE('2014-04-23 16:19:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53652 AND AD_Language='es_MX'
;

-- Apr 23, 2014 4:19:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Detalle de la Guía',Updated=TO_DATE('2014-04-23 16:19:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53652 AND AD_Language='es_VE'
;

-- Apr 23, 2014 4:19:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET Name='Guide Detail', PrintName='Guide Detail',Updated=TO_DATE('2014-04-23 16:19:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56569
;

-- Apr 23, 2014 4:19:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56569
;

-- Apr 23, 2014 4:19:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='FTA_EntryTicketGuide_ID', Name='Guide Detail', Description=NULL, Help=NULL WHERE AD_Element_ID=56569
;

-- Apr 23, 2014 4:19:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_EntryTicketGuide_ID', Name='Guide Detail', Description=NULL, Help=NULL, AD_Element_ID=56569 WHERE UPPER(ColumnName)='FTA_ENTRYTICKETGUIDE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Apr 23, 2014 4:19:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='FTA_EntryTicketGuide_ID', Name='Guide Detail', Description=NULL, Help=NULL WHERE AD_Element_ID=56569 AND IsCentrallyMaintained='Y'
;

-- Apr 23, 2014 4:19:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Guide Detail', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56569) AND IsCentrallyMaintained='Y'
;

-- Apr 23, 2014 4:19:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Guide Detail', Name='Guide Detail' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56569)
;

-- Apr 23, 2014 4:19:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Detalle de la Guía',PrintName='Detalle de la Guía',Updated=TO_DATE('2014-04-23 16:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56569 AND AD_Language='es_MX'
;

-- Apr 23, 2014 4:19:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Detalle de la Guía',PrintName='Detalle de la Guía',Updated=TO_DATE('2014-04-23 16:19:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56569 AND AD_Language='es_VE'
;

-- Apr 23, 2014 4:20:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Detalle de la Guía',Updated=TO_DATE('2014-04-23 16:20:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53795 AND AD_Language='es_MX'
;

-- Apr 23, 2014 4:20:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Detalle de la Guía',Updated=TO_DATE('2014-04-23 16:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53795 AND AD_Language='es_VE'
;

