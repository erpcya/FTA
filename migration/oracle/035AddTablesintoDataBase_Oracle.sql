-- Aug 1, 2013 10:15:00 AM VET
-- SFAndroid Contribution
CREATE TABLE FTA_Farm (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Area NUMBER NOT NULL, C_BPartner_ID NUMBER(10) NOT NULL, C_BPartner_Location_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , FTA_Farm_ID NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsValid CHAR(1) CHECK (IsValid IN ('Y','N')) NOT NULL, Name NVARCHAR2(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Value NVARCHAR2(40) DEFAULT NULL , CONSTRAINT FTA_Farm_Key PRIMARY KEY (FTA_Farm_ID))
;

-- Aug 1, 2013 10:15:27 AM VET
-- SFAndroid Contribution
CREATE TABLE FTA_FarmDivision (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Area NUMBER NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, FTA_Farm_ID NUMBER(10) NOT NULL, FTA_FarmDivision_ID NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name NVARCHAR2(60) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Value NVARCHAR2(60) DEFAULT NULL , CONSTRAINT FTA_FarmDivision_Key PRIMARY KEY (FTA_FarmDivision_ID))
;

-- Aug 1, 2013 10:15:33 AM VET
-- SFAndroid Contribution
CREATE TABLE FTA_Farming (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Area NUMBER NOT NULL, C_Order_ID NUMBER(10) DEFAULT NULL , Category VARCHAR2(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , EstimatedDate DATE DEFAULT NULL , EstimatedQty NUMBER DEFAULT NULL , FinancingType CHAR(1) NOT NULL, FTA_FarmDivision_ID NUMBER(10) NOT NULL, FTA_Farming_ID NUMBER(10) NOT NULL, HarvestEndDate DATE DEFAULT NULL , HarvestStartDate DATE DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name NVARCHAR2(60) NOT NULL, PlantingCycle CHAR(1) NOT NULL, PlantingEndDate DATE DEFAULT NULL , PlantingStartDate DATE DEFAULT NULL , Processing CHAR(1) DEFAULT NULL , SalesRep_ID NUMBER(10) NOT NULL, StartDate DATE NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT FTA_Farming_Key PRIMARY KEY (FTA_Farming_ID))
;

-- Aug 1, 2013 10:15:38 AM VET
-- SFAndroid Contribution
CREATE TABLE FTA_FarmingStage (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Category VARCHAR2(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, DayFrom NUMBER NOT NULL, DayTo NUMBER NOT NULL, FTA_FarmingStage_ID NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name NVARCHAR2(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , SeqNo NUMBER(10) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Value NVARCHAR2(60) DEFAULT NULL , CONSTRAINT FTA_FarmingStage_Key PRIMARY KEY (FTA_FarmingStage_ID))
;

-- Aug 1, 2013 10:15:43 AM VET
-- SFAndroid Contribution
CREATE TABLE FTA_MobilizationGuide (A_Asset_ID NUMBER(10) DEFAULT NULL , AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_DocType_ID NUMBER(10) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, DateDoc DATE NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , DocumentNo NVARCHAR2(30) NOT NULL, FTA_Farming_ID NUMBER(10) NOT NULL, FTA_MobilizationGuide_ID NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Shipper_ID NUMBER(10) DEFAULT NULL , Processed CHAR(1) DEFAULT NULL  CHECK (Processed IN ('Y','N')), QtyToDeliver NUMBER NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT FTA_MobilizationGuide_Key PRIMARY KEY (FTA_MobilizationGuide_ID))
;

-- Aug 1, 2013 10:15:48 AM VET
-- SFAndroid Contribution
CREATE TABLE FTA_ObservationType (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , FTA_ObservationType_ID NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name NVARCHAR2(60) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Value NVARCHAR2(60) NOT NULL, CONSTRAINT FTA_ObservationType_Key PRIMARY KEY (FTA_ObservationType_ID))
;

-- Aug 1, 2013 10:15:54 AM VET
-- SFAndroid Contribution
CREATE TABLE FTA_ProductsToApply (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_UOM_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, DateFrom DATE DEFAULT NULL , DateTo DATE DEFAULT NULL , Dosage_Uom_ID NUMBER(10) NOT NULL, FTA_ProductsToApply_ID NUMBER(10) NOT NULL, FTA_TechnicalForm_ID NUMBER(10) NOT NULL, FTA_TechnicalFormLine_ID NUMBER(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_ID NUMBER(10) NOT NULL, Qty NUMBER NOT NULL, QtyDosage NUMBER NOT NULL, QtySuggested NUMBER DEFAULT NULL , Suggested_Uom_ID NUMBER(10) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT FTA_ProductsToApply_Key PRIMARY KEY (FTA_ProductsToApply_ID))
;

-- Aug 1, 2013 10:15:59 AM VET
-- SFAndroid Contribution
CREATE TABLE FTA_SuggestedProduct (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Category VARCHAR2(10) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, DayFrom NUMBER DEFAULT NULL , DayTo NUMBER DEFAULT NULL , Dosage_Uom_ID NUMBER(10) DEFAULT NULL , FTA_FarmingStage_ID NUMBER(10) DEFAULT NULL , FTA_ObservationType_ID NUMBER(10) DEFAULT NULL , FTA_SuggestedProduct_ID NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_Category_ID NUMBER(10) DEFAULT NULL , M_Product_ID NUMBER(10) DEFAULT NULL , QtyDosage NUMBER DEFAULT NULL , SeqNo NUMBER(10) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT FTA_SuggestedProduct_Key PRIMARY KEY (FTA_SuggestedProduct_ID))
;

-- Aug 1, 2013 10:16:03 AM VET
-- SFAndroid Contribution
CREATE TABLE FTA_TechnicalForm (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_BPartner_ID NUMBER(10) NOT NULL, C_DocType_ID NUMBER(10) NOT NULL, Comments NVARCHAR2(2000) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, DateDoc DATE NOT NULL, DocumentNo NVARCHAR2(60) DEFAULT NULL , FTA_Farm_ID NUMBER(10) NOT NULL, FTA_TechnicalForm_ID NUMBER(10) NOT NULL, GenerateOrder CHAR(1) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, Processing CHAR(1) DEFAULT NULL , SalesRep_ID NUMBER(10) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT FTA_TechnicalForm_Key PRIMARY KEY (FTA_TechnicalForm_ID))
;

-- Aug 1, 2013 10:16:08 AM VET
-- SFAndroid Contribution
CREATE TABLE FTA_TechnicalFormLine (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Comments NVARCHAR2(2000) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, FTA_FarmDivision_ID NUMBER(10) NOT NULL, FTA_Farming_ID NUMBER(10) NOT NULL, FTA_FarmingStage_ID NUMBER(10) NOT NULL, FTA_ObservationType_ID NUMBER(10) NOT NULL, FTA_TechnicalForm_ID NUMBER(10) DEFAULT NULL , FTA_TechnicalFormLine_ID NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT FTA_TechnicalFormLine_Key PRIMARY KEY (FTA_TechnicalFormLine_ID))
;
