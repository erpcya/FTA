-- Apr 25, 2014 5:36:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO'' AND FTA_EntryTicket.OperationType = ''@OperationType@''
AND NOT EXISTS(SELECT 1 FROM FTA_LoadOrder lo WHERE lo.FTA_EntryTicket_ID = FTA_EntryTicket.FTA_EntryTicket_ID AND lo.DocStatus NOT IN(''VO'', ''RE'',''CL''))',Updated=TO_DATE('2014-04-25 17:36:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52259
;

-- Apr 25, 2014 5:43:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Window_Trl SET Name='Reporte de Partidas',Updated=TO_DATE('2014-04-25 17:43:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53340 AND AD_Language='es_MX'
;

-- Apr 25, 2014 5:43:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Window_Trl SET Name='Reporte de Partidas',Updated=TO_DATE('2014-04-25 17:43:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53340 AND AD_Language='es_VE'
;

-- Apr 25, 2014 5:43:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Reporte de Partidas',Updated=TO_DATE('2014-04-25 17:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53887 AND AD_Language='es_MX'
;

-- Apr 25, 2014 5:43:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Reporte de Partidas',Updated=TO_DATE('2014-04-25 17:43:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53887 AND AD_Language='es_VE'
;

-- Apr 25, 2014 5:44:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Partidas',Updated=TO_DATE('2014-04-25 17:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53888 AND AD_Language='es_MX'
;

-- Apr 25, 2014 5:44:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Partidas',Updated=TO_DATE('2014-04-25 17:44:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53888 AND AD_Language='es_VE'
;

-- Apr 25, 2014 5:45:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET SeqNo=20,Updated=TO_DATE('2014-04-25 17:45:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53945
;

-- Apr 25, 2014 5:45:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET SeqNo=30,Updated=TO_DATE('2014-04-25 17:45:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53888
;

-- Apr 25, 2014 5:45:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Reporte de Partidas',Updated=TO_DATE('2014-04-25 17:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53742 AND AD_Language='es_MX'
;

-- Apr 25, 2014 5:45:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Reporte de Partidas',Updated=TO_DATE('2014-04-25 17:45:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53742 AND AD_Language='es_VE'
;

-- Apr 25, 2014 5:45:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Reporte de Partidas',PrintName='Reporte de Partidas',Updated=TO_DATE('2014-04-25 17:45:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56994 AND AD_Language='es_MX'
;

-- Apr 25, 2014 5:45:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Reporte de Partidas',PrintName='Reporte de Partidas',Updated=TO_DATE('2014-04-25 17:45:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56994 AND AD_Language='es_VE'
;

