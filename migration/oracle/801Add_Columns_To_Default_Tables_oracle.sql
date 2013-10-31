-- Oct 30, 2013 9:09:22 PM VET
-- Farming Technical Assistance
ALTER TABLE C_BPartner ADD IsFarmer CHAR(1) DEFAULT 'N' CHECK (IsFarmer IN ('Y','N'))
;

-- Oct 30, 2013 9:09:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_UserQuery (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_User_ID,AD_UserQuery_ID,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,101,101,100,1000001,TO_DATE('2013-10-30 21:09:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','** Last Query **',TO_DATE('2013-10-30 21:09:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 9:09:51 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:09:55 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD IsCreditFactManual CHAR(1) DEFAULT 'N' CHECK (IsCreditFactManual IN ('Y','N'))
;

-- Oct 30, 2013 9:09:59 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD IsCreditFactPosted CHAR(1) DEFAULT 'N' CHECK (IsCreditFactPosted IN ('Y','N'))
;

-- Oct 30, 2013 9:10:04 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Invoice ADD IsCreditLimitExceeded CHAR(1) DEFAULT NULL  CHECK (IsCreditLimitExceeded IN ('Y','N'))
;

-- Oct 30, 2013 9:10:59 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:11:04 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD FTA_TechnicalForm_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:11:09 PM VET
-- Farming Technical Assistance
ALTER TABLE C_Order ADD IsCreditFactManual CHAR(1) DEFAULT 'N' CHECK (IsCreditFactManual IN ('Y','N'))
;

-- Oct 30, 2013 9:11:38 PM VET
-- Farming Technical Assistance
ALTER TABLE M_InOut ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:11:41 PM VET
-- Farming Technical Assistance
ALTER TABLE M_InOut ADD FTA_RecordWeight_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:12:01 PM VET
-- Farming Technical Assistance
ALTER TABLE M_Movement ADD FTA_Driver_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:12:04 PM VET
-- Farming Technical Assistance
ALTER TABLE M_Movement ADD FTA_Vehicle_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 30, 2013 9:12:25 PM VET
-- Farming Technical Assistance
ALTER TABLE M_Product ADD IsCategory CHAR(1) DEFAULT 'N' CHECK (IsCategory IN ('Y','N'))
;

-- Oct 30, 2013 9:12:42 PM VET
-- Farming Technical Assistance
ALTER TABLE M_RMA ADD FTA_FarmerCredit_ID NUMBER(10) DEFAULT NULL 
;

