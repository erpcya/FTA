-- Oct 12, 2013 3:56:51 PM VET
-- Farming Technical Assistance
ALTER TABLE M_InOut ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 12, 2013 3:56:57 PM VET
-- Farming Technical Assistance
ALTER TABLE M_InOut ADD COLUMN FTA_RecordWeight_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 12, 2013 3:57:27 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 12, 2013 3:57:33 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD COLUMN FTA_TechnicalForm_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 12, 2013 3:58:05 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 12, 2013 3:59:23 PM VET
-- Farming Technical Assistance
ALTER TABLE M_RMA ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 12, 2013 4:02:22 PM VET
-- Farming Technical Assistance
ALTER TABLE C_BPartner ADD COLUMN IsFarmer CHAR(1) DEFAULT 'N' CHECK (IsFarmer IN ('Y','N'))
;

