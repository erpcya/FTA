-- Feb 25, 2014 1:49:24 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Menu_Trl WHERE AD_Menu_ID=53750
;

-- Feb 25, 2014 1:49:24 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Menu WHERE AD_Menu_ID=53750
;

-- Feb 25, 2014 1:49:26 PM VET
-- Farming Technical Assistance
DELETE FROM AD_TreeNodeMM WHERE AD_Tree_ID=10 AND Node_ID=53750
;

-- Feb 25, 2014 1:49:37 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Trl WHERE AD_Process_ID=53558
;

-- Feb 25, 2014 1:49:37 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process WHERE AD_Process_ID=53558
;

-- Feb 25, 2014 1:54:53 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process_Trl WHERE AD_Process_ID=53558
;

-- Feb 25, 2014 1:54:53 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Process WHERE AD_Process_ID=53558
;

-- Feb 25, 2014 2:45:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Registro de Peso (Guiado)2',Updated=TO_TIMESTAMP('2014-02-25 14:45:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53584 AND AD_Language='es_VE'
;

-- Feb 25, 2014 2:45:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Registro de Peso (Guiado)',Updated=TO_TIMESTAMP('2014-02-25 14:45:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53584 AND AD_Language='es_VE'
;

-- Feb 25, 2014 2:46:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Registro de Peso (Guiado)2',Updated=TO_TIMESTAMP('2014-02-25 14:46:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53777 AND AD_Language='es_VE'
;

-- Feb 25, 2014 2:46:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Registro de Peso (Guiado)',Updated=TO_TIMESTAMP('2014-02-25 14:46:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53777 AND AD_Language='es_VE'
;

-- Feb 25, 2014 2:57:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=180,Updated=TO_TIMESTAMP('2014-02-25 14:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54219
;

-- Feb 25, 2014 3:47:53 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause=NULL,Updated=TO_TIMESTAMP('2014-02-25 15:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53075
;

-- Feb 25, 2014 3:49:43 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause='NOT EXISTS (SELECT 1 FROM FTA_EntryTicket et WHERE et.FTA_MobilizationGuide_ID = FTA_RV_MobilizationGuide.FTA_MobilizationGuide_ID AND et.DocStatus IN (''CO'',''CL''))',Updated=TO_TIMESTAMP('2014-02-25 15:49:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53102
;

-- Feb 25, 2014 3:50:06 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET Description='Mobilization Guide to Quality Not Used', Name='FTA_RV_MobilizationGuide Not Used',Updated=TO_TIMESTAMP('2014-02-25 15:50:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53102
;

