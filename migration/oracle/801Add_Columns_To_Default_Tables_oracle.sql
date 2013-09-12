-- Sep 11, 2013 8:57:26 AM VET
-- SFAndroid Contribution
ALTER TABLE C_DocType ADD C_DocTypeOrder_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 11, 2013 8:57:59 AM VET
-- SFAndroid Contribution
ALTER TABLE C_Order ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 11, 2013 8:57:59 AM VET
-- SFAndroid Contribution
ALTER TABLE C_Invoice ADD COLUMN FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 11, 2013 8:57:59 AM VET
-- SFAndroid Contribution
ALTER TABLE M_InOut ADD COLUMN FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 11, 2013 8:57:59 AM VET
-- SFAndroid Contribution
ALTER TABLE M_RMA ADD COLUMN FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Sep 11, 2013 8:57:59 AM VET
-- SFAndroid Contribution
ALTER TABLE M_InOut ADD COLUMN FTA_RecordWeight_ID NUMBER(10) DEFAULT NULL 
;