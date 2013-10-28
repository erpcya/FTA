-- Oct 28, 2013 9:46:48 AM VET
-- Farming Technical Assistance
ALTER TABLE C_BPartner ADD COLUMN IsFarmer CHAR(1) DEFAULT 'N' CHECK (IsFarmer IN ('Y','N'))
;

-- Oct 28, 2013 9:47:45 AM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 28, 2013 9:48:02 AM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD COLUMN IsCreditFactManual CHAR(1) DEFAULT 'N' CHECK (IsCreditFactManual IN ('Y','N'))
;

-- Oct 28, 2013 9:48:48 AM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 28, 2013 9:48:59 AM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD COLUMN FTA_TechnicalForm_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 28, 2013 9:49:13 AM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD COLUMN IsCreditFactManual CHAR(1) DEFAULT 'N' CHECK (IsCreditFactManual IN ('Y','N'))
;

-- Oct 28, 2013 9:50:01 AM VET
-- Farming Technical Assistance
ALTER TABLE M_InOut ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 28, 2013 9:50:13 AM VET
-- Farming Technical Assistance
ALTER TABLE M_InOut ADD COLUMN FTA_RecordWeight_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 28, 2013 9:50:52 AM VET
-- Farming Technical Assistance
ALTER TABLE M_Movement ADD COLUMN FTA_Driver_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 28, 2013 9:51:02 AM VET
-- Farming Technical Assistance
ALTER TABLE M_Movement ADD COLUMN FTA_Vehicle_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 28, 2013 9:52:11 AM VET
-- Farming Technical Assistance
ALTER TABLE M_Product ADD COLUMN IsCategory CHAR(1) DEFAULT 'N' CHECK (IsCategory IN ('Y','N'))
;

-- Oct 28, 2013 9:52:47 AM VET
-- Farming Technical Assistance
ALTER TABLE M_RMA ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

