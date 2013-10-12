-- 12/10/2013 02:33:22 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_Allocation (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) NOT NULL, FTA_Allocation_ID NUMERIC(10) NOT NULL, FTA_FarmerCredit_ID NUMERIC(10) NOT NULL, FTA_FarmerLiquidation_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_Allocation_Key PRIMARY KEY (FTA_Allocation_ID))
;

-- 12/10/2013 02:33:31 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_AllocationLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AllocationNo NUMERIC DEFAULT NULL , Amount NUMERIC NOT NULL, C_BPartner_ID NUMERIC(10) DEFAULT NULL , C_CashLine_ID NUMERIC(10) DEFAULT NULL , C_Invoice_ID NUMERIC(10) NOT NULL, C_Order_ID NUMERIC(10) DEFAULT NULL , C_Payment_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, DiscountAmt NUMERIC NOT NULL, FTA_Allocation_ID NUMERIC(10) NOT NULL, FTA_AllocationLine_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, OverUnderAmt NUMERIC DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, WriteOffAmt NUMERIC NOT NULL, CONSTRAINT FTA_AllocationLine_Key PRIMARY KEY (FTA_AllocationLine_ID))
;

-- 12/10/2013 02:33:40 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_CategoryCalc (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AD_Rule_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , EventType CHAR(1) NOT NULL, FTA_CategoryCalc_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_CategoryCalc_Key PRIMARY KEY (FTA_CategoryCalc_ID))
;

-- 12/10/2013 02:33:50 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_CreditAct (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) DEFAULT NULL , FTA_CreditAct_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) CHECK (IsApproved IN ('Y','N')) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_CreditAct_Key PRIMARY KEY (FTA_CreditAct_ID))
;

-- 12/10/2013 02:33:57 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_CreditDefinition (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, Category_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) DEFAULT NULL , FTA_CreditDefinition_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) CHECK (IsApproved IN ('Y','N')) NOT NULL, M_PriceList_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, PlantingCycle_ID NUMERIC(10) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_CreditDefinition_Key PRIMARY KEY (FTA_CreditDefinition_ID))
;

-- 12/10/2013 02:34:05 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_CreditDefinitionLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, C_Charge_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, C_UOM_ID NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_CreditDefinition_ID NUMERIC(10) NOT NULL, FTA_CreditDefinitionLine_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Line NUMERIC(10) NOT NULL, M_Product_Category_ID NUMERIC(10) DEFAULT NULL , M_Product_ID NUMERIC(10) DEFAULT NULL , Price NUMERIC NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Qty NUMERIC DEFAULT 1 NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_CreditDefinitionLine_Key PRIMARY KEY (FTA_CreditDefinitionLine_ID))
;

-- 12/10/2013 02:34:11 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_Driver (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_Driver_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Shipper_ID NUMERIC(10) DEFAULT NULL , Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) NOT NULL, CONSTRAINT FTA_Driver_Key PRIMARY KEY (FTA_Driver_ID))
;

-- 12/10/2013 02:34:19 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_EntryTicket (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO', DocStatus VARCHAR(2) DEFAULT 'DR', DocumentNo VARCHAR(60) DEFAULT NULL , Ext_Guide VARCHAR(60) DEFAULT NULL , FTA_Driver_ID NUMERIC(10) NOT NULL, FTA_EntryTicket_ID NUMERIC(10) NOT NULL, FTA_MobilizationGuide_ID NUMERIC(10) NOT NULL, FTA_Vehicle_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) CHECK (IsApproved IN ('Y','N')) NOT NULL, M_Shipper_ID NUMERIC(10) DEFAULT NULL , Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), ReferenceNo VARCHAR(60) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_EntryTicket_Key PRIMARY KEY (FTA_EntryTicket_ID))
;

-- 12/10/2013 02:34:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_Fact (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AD_Table_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_CreditDefinition_ID NUMERIC(10) NOT NULL, FTA_CreditDefinitionLine_ID NUMERIC(10) NOT NULL, FTA_Fact_ID NUMERIC(10) NOT NULL, FTA_FarmerCredit_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsManual CHAR(1) DEFAULT NULL CHECK (IsManual IN ('Y','N')), Line_ID NUMERIC(10) DEFAULT NULL , Record_ID NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_Fact_Key PRIMARY KEY (FTA_Fact_ID))
;

-- 12/10/2013 02:34:33 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_Farm (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Area NUMERIC NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, C_BPartner_Location_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FarmType CHAR(1) NOT NULL, FrontierEast VARCHAR(255) DEFAULT NULL , FrontierNorth VARCHAR(255) DEFAULT NULL , FrontierSouth VARCHAR(255) DEFAULT NULL , FrontierWest VARCHAR(255) DEFAULT NULL , FTA_Farm_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsValid CHAR(1) CHECK (IsValid IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_Farm_Key PRIMARY KEY (FTA_Farm_ID))
;

-- 12/10/2013 02:34:40 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_FarmDivision (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Area NUMERIC NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, FTA_FarmDivision_ID NUMERIC(10) NOT NULL, FTA_Farm_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_FarmDivision_Key PRIMARY KEY (FTA_FarmDivision_ID))
;

-- 12/10/2013 02:34:50 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_FarmerCredit (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, Beneficiary_ID NUMERIC(10) DEFAULT NULL , C_BPartner_ID NUMERIC(10) NOT NULL, C_Charge_ID NUMERIC(10) DEFAULT NULL , C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CreditType CHAR(1) NOT NULL, C_UOM_ID NUMERIC(10) DEFAULT NULL , DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) DEFAULT NULL , FarmingAlloc CHAR(1) DEFAULT NULL , FTA_CreditAct_ID NUMERIC(10) DEFAULT NULL , FTA_CreditDefinition_ID NUMERIC(10) DEFAULT NULL , FTA_FarmerCredit_ID NUMERIC(10) NOT NULL, GenerateOrder CHAR(1) DEFAULT 'N', IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) CHECK (IsApproved IN ('Y','N')) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Processing CHAR(1) DEFAULT NULL , Qty NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_FarmerCredit_Key PRIMARY KEY (FTA_FarmerCredit_ID))
;

-- 12/10/2013 02:34:59 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_FarmerLiquidation (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, C_Invoice_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) DEFAULT NULL , FTA_CategoryCalc_ID NUMERIC(10) DEFAULT NULL , FTA_FarmerCredit_ID NUMERIC(10) NOT NULL, FTA_FarmerLiquidation_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_ID NUMERIC(10) NOT NULL, NetWeight NUMERIC NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_FarmerLiquidation_Key PRIMARY KEY (FTA_FarmerLiquidation_ID))
;

-- 12/10/2013 02:35:06 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_FarmerLiquidationLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, FTA_FarmerLiquidation_ID NUMERIC(10) NOT NULL, FTA_FarmerLiquidationLine_ID NUMERIC(10) NOT NULL, FTA_RecordWeight_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, NetWeight NUMERIC NOT NULL, PayWeight NUMERIC NOT NULL, Price NUMERIC NOT NULL, PriceList NUMERIC DEFAULT NULL , Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, QualityAnalysis_ID NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_FarmerLiquidationLine_Key PRIMARY KEY (FTA_FarmerLiquidationLine_ID))
;

-- 12/10/2013 02:35:13 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_Farming (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Area NUMERIC NOT NULL, Category_ID NUMERIC(10) NOT NULL, C_OrderLine_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , EstimatedDate TIMESTAMP DEFAULT NULL , EstimatedQty NUMERIC DEFAULT NULL , EstimatedYield NUMERIC DEFAULT NULL , FarmingValidate CHAR(1) DEFAULT NULL , FinancingType CHAR(1) NOT NULL, FTA_FarmDivision_ID NUMERIC(10) NOT NULL, FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL , FTA_Farming_ID NUMERIC(10) NOT NULL, GuideGenerate CHAR(1) DEFAULT NULL , HarvestEndDate TIMESTAMP DEFAULT NULL , HarvestStartDate TIMESTAMP DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsValid CHAR(1) DEFAULT NULL CHECK (IsValid IN ('Y','N')), MaxQty NUMERIC DEFAULT NULL , Name VARCHAR(60) NOT NULL, PlantingCycle_ID NUMERIC(10) NOT NULL, PlantingEndDate TIMESTAMP DEFAULT NULL , PlantingStartDate TIMESTAMP DEFAULT NULL , Qty NUMERIC DEFAULT NULL , Re_EstimatedQty NUMERIC DEFAULT NULL , StartDate TIMESTAMP NOT NULL, Status CHAR(1) DEFAULT 'A' NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_Farming_Key PRIMARY KEY (FTA_Farming_ID))
;

-- 12/10/2013 02:35:21 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_FarmingStage (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Category_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DayFrom NUMERIC NOT NULL, DayTo NUMERIC NOT NULL, FTA_FarmingStage_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , SeqNo NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) DEFAULT NULL , CONSTRAINT FTA_FarmingStage_Key PRIMARY KEY (FTA_FarmingStage_ID))
;

-- 12/10/2013 02:35:28 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_MobilizationGuide (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) DEFAULT NULL , C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(30) NOT NULL, FTA_Farming_ID NUMERIC(10) NOT NULL, FTA_MobilizationGuide_ID NUMERIC(10) NOT NULL, FTA_VehicleType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Warehouse_ID NUMERIC(10) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), QtyToDeliver NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidTo TIMESTAMP DEFAULT NULL , CONSTRAINT FTA_MobilizationGuide_Key PRIMARY KEY (FTA_MobilizationGuide_ID))
;

-- 12/10/2013 02:35:38 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_ObservationType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_ObservationType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) NOT NULL, CONSTRAINT FTA_ObservationType_Key PRIMARY KEY (FTA_ObservationType_ID))
;

-- 12/10/2013 02:35:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_ProductsToApply (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, C_UOM_ID NUMERIC(10) NOT NULL, DateFrom TIMESTAMP DEFAULT NULL , DateTo TIMESTAMP DEFAULT NULL , Dosage_Uom_ID NUMERIC(10) NOT NULL, FTA_ProductsToApply_ID NUMERIC(10) NOT NULL, FTA_TechnicalForm_ID NUMERIC(10) NOT NULL, FTA_TechnicalFormLine_ID NUMERIC(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_ID NUMERIC(10) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Qty NUMERIC NOT NULL, QtyDosage NUMERIC NOT NULL, QtySuggested NUMERIC DEFAULT NULL , Suggested_Uom_ID NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_ProductsToApply_Key PRIMARY KEY (FTA_ProductsToApply_ID))
;

-- 12/10/2013 02:35:53 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_QualityAnalysis (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AnalysisType VARCHAR(2) DEFAULT 'QA' NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO', DocStatus VARCHAR(2) DEFAULT 'DR', DocumentNo VARCHAR(60) DEFAULT NULL , FTA_EntryTicket_ID NUMERIC(10) NOT NULL, FTA_QualityAnalysis_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, M_Product_ID NUMERIC(10) DEFAULT NULL , Orig_QualityAnalysis_ID NUMERIC(10) DEFAULT NULL , Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), ProductStatus CHAR(1) DEFAULT 'A' NOT NULL, QualityAnalysis_ID NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_QualityAnalysis_Key PRIMARY KEY (FTA_QualityAnalysis_ID))
;

-- 12/10/2013 02:36:00 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_ReceptionCapacity (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_ReceptionCapacity_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Warehouse_ID NUMERIC(10) NOT NULL, Qty NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, CONSTRAINT FTA_ReceptionCapacity_Key PRIMARY KEY (FTA_ReceptionCapacity_ID))
;

-- 12/10/2013 02:36:07 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_RecordWeight (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CreateFrom CHAR(1) DEFAULT NULL , C_UOM_ID NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) DEFAULT NULL , FTA_EntryTicket_ID NUMERIC(10) NOT NULL, FTA_QualityAnalysis_ID NUMERIC(10) NOT NULL, FTA_RecordWeight_ID NUMERIC(10) NOT NULL, GrossWeight NUMERIC NOT NULL, InDate TIMESTAMP DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, IsSOTrx CHAR(1) CHECK (IsSOTrx IN ('Y','N')) NOT NULL, NetWeight NUMERIC NOT NULL, OutDate TIMESTAMP DEFAULT NULL , Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, TareWeight NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, WeightStatus CHAR(1) DEFAULT 'T', CONSTRAINT FTA_RecordWeight_Key PRIMARY KEY (FTA_RecordWeight_ID))
;

-- 12/10/2013 02:36:20 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_SuggestedProduct (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Category_ID NUMERIC(10) DEFAULT NULL , Comments VARCHAR(255) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DayFrom NUMERIC DEFAULT NULL , DayTo NUMERIC DEFAULT NULL , Dosage_Uom_ID NUMERIC(10) DEFAULT NULL , FTA_FarmingStage_ID NUMERIC(10) DEFAULT NULL , FTA_ObservationType_ID NUMERIC(10) DEFAULT NULL , FTA_SuggestedProduct_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_Category_ID NUMERIC(10) DEFAULT NULL , M_Product_ID NUMERIC(10) DEFAULT NULL , Name VARCHAR(60) NOT NULL, QtyDosage NUMERIC DEFAULT NULL , SeqNo NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_SuggestedProduct_Key PRIMARY KEY (FTA_SuggestedProduct_ID))
;

-- 12/10/2013 02:36:27 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_TechnicalForm (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Comments VARCHAR(2000) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO', DocStatus VARCHAR(2) DEFAULT 'DR', DocumentNo VARCHAR(60) DEFAULT NULL , FTA_Farm_ID NUMERIC(10) NOT NULL, FTA_TechnicalForm_ID NUMERIC(10) NOT NULL, GenerateOrder CHAR(1) DEFAULT 'N', IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, SalesRep_ID NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_TechnicalForm_Key PRIMARY KEY (FTA_TechnicalForm_ID))
;

-- 12/10/2013 02:36:34 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_TechnicalFormLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Comments VARCHAR(2000) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, FTA_FarmDivision_ID NUMERIC(10) NOT NULL, FTA_Farming_ID NUMERIC(10) NOT NULL, FTA_FarmingStage_ID NUMERIC(10) NOT NULL, FTA_ObservationType_ID NUMERIC(10) NOT NULL, FTA_TechnicalForm_ID NUMERIC(10) NOT NULL, FTA_TechnicalFormLine_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_TechnicalFormLine_Key PRIMARY KEY (FTA_TechnicalFormLine_ID))
;

-- 12/10/2013 02:36:42 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_Vehicle (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_VehicleBrand_ID NUMERIC(10) DEFAULT NULL , FTA_Vehicle_ID NUMERIC(10) NOT NULL, FTA_VehicleModel_ID NUMERIC(10) DEFAULT NULL , FTA_VehicleType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Shipper_ID NUMERIC(10) DEFAULT NULL , Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) NOT NULL, CONSTRAINT FTA_Vehicle_Key PRIMARY KEY (FTA_Vehicle_ID))
;

-- 12/10/2013 02:36:50 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_VehicleBrand (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_VehicleBrand_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_VehicleBrand_Key PRIMARY KEY (FTA_VehicleBrand_ID))
;

-- 12/10/2013 02:36:57 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_VehicleModel (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_VehicleBrand_ID NUMERIC(10) NOT NULL, FTA_VehicleModel_ID NUMERIC(10) NOT NULL, FTA_VehicleType_ID NUMERIC(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_VehicleModel_Key PRIMARY KEY (FTA_VehicleModel_ID))
;

-- 12/10/2013 02:37:06 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE FTA_VehicleType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_VehicleType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LoadCapacity NUMERIC NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) NOT NULL, CONSTRAINT FTA_VehicleType_Key PRIMARY KEY (FTA_VehicleType_ID))
;

