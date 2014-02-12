-- Jan 12, 2014 8:57:53 PM VET
-- LVE Withholding
ALTER TABLE AD_ClientInfo ADD C_UOM_Area_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:57:56 PM VET
-- LVE Withholding
ALTER TABLE AD_ClientInfo ADD C_UOM_Conversion_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:58:22 PM VET
-- LVE Withholding
ALTER TABLE C_BPartner ADD IsFarmer CHAR(1) DEFAULT 'N' CHECK (IsFarmer IN ('Y','N'))
;

-- Jan 12, 2014 8:58:38 PM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD OperationType NVARCHAR2(3) DEFAULT NULL 
;

-- Jan 12, 2014 8:58:53 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:58:56 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD FTA_FarmerLiquidation_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:58:59 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD IsCreditFactManual CHAR(1) DEFAULT 'N' CHECK (IsCreditFactManual IN ('Y','N'))
;

-- Jan 12, 2014 8:59:02 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD IsCreditFactPosted CHAR(1) DEFAULT 'N' CHECK (IsCreditFactPosted IN ('Y','N'))
;

-- Jan 12, 2014 8:59:07 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD IsExceedCreditLimit CHAR(1) DEFAULT NULL  CHECK (IsExceedCreditLimit IN ('Y','N'))
;

-- Jan 12, 2014 8:59:28 PM VET
-- LVE Withholding
ALTER TABLE C_InvoiceLine ADD DocAffected VARCHAR2(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:59:42 PM VET
-- LVE Withholding
ALTER TABLE C_Order ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:59:44 PM VET
-- LVE Withholding
ALTER TABLE C_Order ADD FTA_TechnicalForm_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 12, 2014 8:59:46 PM VET
-- LVE Withholding
ALTER TABLE C_Order ADD IsCreditFactManual CHAR(1) DEFAULT 'N' CHECK (IsCreditFactManual IN ('Y','N'))
;

-- Jan 12, 2014 8:59:48 PM VET
-- LVE Withholding
ALTER TABLE C_Order ADD IsExceedCreditLimit CHAR(1) DEFAULT 'N' CHECK (IsExceedCreditLimit IN ('Y','N'))
;

-- Jan 12, 2014 9:00:09 PM VET
-- LVE Withholding
ALTER TABLE M_InOut ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 12, 2014 9:00:11 PM VET
-- LVE Withholding
ALTER TABLE M_InOut ADD FTA_RecordWeight_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 12, 2014 9:00:24 PM VET
-- LVE Withholding
ALTER TABLE M_Movement ADD FTA_Driver_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 12, 2014 9:00:26 PM VET
-- LVE Withholding
ALTER TABLE M_Movement ADD FTA_Vehicle_ID NUMBER(10) DEFAULT NULL 
;

-- Jan 12, 2014 9:00:40 PM VET
-- LVE Withholding
ALTER TABLE M_Product ADD IsBulk CHAR(1) DEFAULT 'N' CHECK (IsBulk IN ('Y','N'))
;

-- Jan 12, 2014 9:00:42 PM VET
-- LVE Withholding
ALTER TABLE M_Product ADD IsCategory CHAR(1) DEFAULT 'N' CHECK (IsCategory IN ('Y','N'))
;

-- Jan 12, 2014 9:00:59 PM VET
-- LVE Withholding
ALTER TABLE M_RMA ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

