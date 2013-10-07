-- Sep 20, 2013 5:18:47 PM VET
-- Farming Technical Assistance
ALTER TABLE M_InOut ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 20, 2013 5:19:08 PM VET
-- Farming Technical Assistance
ALTER TABLE M_InOut ADD FTA_RecordWeight_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 20, 2013 5:19:43 PM VET
-- Farming Technical Assistance
ALTER TABLE M_RMA ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 20, 2013 5:20:42 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 20, 2013 5:21:30 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 20, 2013 5:21:57 PM VET
-- Farming Technical Assistance
ALTER TABLE C_DocType ADD C_DocTypeOrder_ID NUMBER(10) DEFAULT NULL 
;

