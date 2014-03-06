-- Jan 12, 2014 8:57:53 PM VET
-- LVE Withholding
ALTER TABLE AD_ClientInfo ADD COLUMN C_UOM_Area_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:57:56 PM VET
-- LVE Withholding
ALTER TABLE AD_ClientInfo ADD COLUMN C_UOM_Conversion_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:58:22 PM VET
-- LVE Withholding
ALTER TABLE C_BPartner ADD COLUMN IsFarmer CHAR(1) DEFAULT 'N' CHECK (IsFarmer IN ('Y','N'))
;

-- Jan 12, 2014 8:58:38 PM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD COLUMN OperationType VARCHAR(3) DEFAULT NULL 
;

-- Jan 12, 2014 8:58:53 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:58:56 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD COLUMN FTA_FarmerLiquidation_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:58:59 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD COLUMN IsCreditFactManual CHAR(1) DEFAULT 'N' CHECK (IsCreditFactManual IN ('Y','N'))
;

-- Jan 12, 2014 8:59:02 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD COLUMN IsCreditFactPosted CHAR(1) DEFAULT 'N' CHECK (IsCreditFactPosted IN ('Y','N'))
;

-- Jan 12, 2014 8:59:07 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD COLUMN IsExceedCreditLimit CHAR(1) DEFAULT NULL CHECK (IsExceedCreditLimit IN ('Y','N'))
;

-- Jan 12, 2014 8:59:28 PM VET
-- LVE Withholding
ALTER TABLE C_InvoiceLine ADD COLUMN DocAffected VARCHAR(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:59:42 PM VET
-- LVE Withholding
ALTER TABLE C_Order ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:59:44 PM VET
-- LVE Withholding
ALTER TABLE C_Order ADD COLUMN FTA_TechnicalForm_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:59:46 PM VET
-- LVE Withholding
ALTER TABLE C_Order ADD COLUMN IsCreditFactManual CHAR(1) DEFAULT 'N' CHECK (IsCreditFactManual IN ('Y','N'))
;

-- Jan 12, 2014 8:59:48 PM VET
-- LVE Withholding
ALTER TABLE C_Order ADD COLUMN IsExceedCreditLimit CHAR(1) DEFAULT 'N' CHECK (IsExceedCreditLimit IN ('Y','N'))
;

-- Jan 12, 2014 9:00:09 PM VET
-- LVE Withholding
ALTER TABLE M_InOut ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 12, 2014 9:00:11 PM VET
-- LVE Withholding
ALTER TABLE M_InOut ADD COLUMN FTA_RecordWeight_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 12, 2014 9:00:24 PM VET
-- LVE Withholding
ALTER TABLE M_Movement ADD COLUMN FTA_Driver_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 12, 2014 9:00:26 PM VET
-- LVE Withholding
ALTER TABLE M_Movement ADD COLUMN FTA_Vehicle_ID NUMERIC(10) DEFAULT NULL 
;

-- Jan 12, 2014 9:00:40 PM VET
-- LVE Withholding
ALTER TABLE M_Product ADD COLUMN IsBulk CHAR(1) DEFAULT 'N' CHECK (IsBulk IN ('Y','N'))
;

-- Jan 12, 2014 9:00:42 PM VET
-- LVE Withholding
ALTER TABLE M_Product ADD COLUMN IsCategory CHAR(1) DEFAULT 'N' CHECK (IsCategory IN ('Y','N'))
;

-- Jan 12, 2014 9:00:59 PM VET
-- LVE Withholding
ALTER TABLE M_RMA ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

