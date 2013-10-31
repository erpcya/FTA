-- Oct 30, 2013 9:09:22 PM VET
-- Farming Technical Assistance
ALTER TABLE C_BPartner ADD COLUMN IsFarmer CHAR(1) DEFAULT 'N' CHECK (IsFarmer IN ('Y','N'))
;

-- Oct 30, 2013 9:09:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_UserQuery (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_User_ID,AD_UserQuery_ID,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,101,101,100,1000001,TO_TIMESTAMP('2013-10-30 21:09:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','** Last Query **',TO_TIMESTAMP('2013-10-30 21:09:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 9:09:51 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:09:55 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD COLUMN IsCreditFactManual CHAR(1) DEFAULT 'N' CHECK (IsCreditFactManual IN ('Y','N'))
;

-- Oct 30, 2013 9:09:59 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD COLUMN IsCreditFactPosted CHAR(1) DEFAULT 'N' CHECK (IsCreditFactPosted IN ('Y','N'))
;

-- Oct 30, 2013 9:10:04 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD COLUMN IsCreditLimitExceeded CHAR(1) DEFAULT NULL CHECK (IsCreditLimitExceeded IN ('Y','N'))
;

-- Oct 30, 2013 9:10:59 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:11:04 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD COLUMN FTA_TechnicalForm_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:11:09 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD COLUMN IsCreditFactManual CHAR(1) DEFAULT 'N' CHECK (IsCreditFactManual IN ('Y','N'))
;

-- Oct 30, 2013 9:11:38 PM VET
-- Farming Technical Assistance
ALTER TABLE M_InOut ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:11:41 PM VET
-- Farming Technical Assistance
ALTER TABLE M_InOut ADD COLUMN FTA_RecordWeight_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:12:01 PM VET
-- Farming Technical Assistance
ALTER TABLE M_Movement ADD COLUMN FTA_Driver_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:12:04 PM VET
-- Farming Technical Assistance
ALTER TABLE M_Movement ADD COLUMN FTA_Vehicle_ID NUMERIC(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:12:25 PM VET
-- Farming Technical Assistance
ALTER TABLE M_Product ADD COLUMN IsCategory CHAR(1) DEFAULT 'N' CHECK (IsCategory IN ('Y','N'))
;

-- Oct 30, 2013 9:12:42 PM VET
-- Farming Technical Assistance
ALTER TABLE M_RMA ADD COLUMN FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL 
;

