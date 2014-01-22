-- Jan 12, 2014 8:45:56 PM VET
-- LVE Withholding
CREATE TABLE FTA_Allocation (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, ApprovalAmt NUMERIC NOT NULL, C_Currency_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) NOT NULL, FTA_Allocation_ID NUMERIC(10) NOT NULL, FTA_FarmerCredit_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_Allocation_Key PRIMARY KEY (FTA_Allocation_ID))
;

-- Jan 12, 2014 8:46:06 PM VET
-- LVE Withholding
CREATE TABLE FTA_AllocationLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AllocationNo NUMERIC DEFAULT NULL , Amount NUMERIC NOT NULL, C_BPartner_ID NUMERIC(10) DEFAULT NULL , C_CashLine_ID NUMERIC(10) DEFAULT NULL , C_Invoice_ID NUMERIC(10) DEFAULT NULL , C_Order_ID NUMERIC(10) DEFAULT NULL , C_Payment_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP DEFAULT NULL , DiscountAmt NUMERIC NOT NULL, FTA_Allocation_ID NUMERIC(10) NOT NULL, FTA_AllocationLine_ID NUMERIC(10) NOT NULL, FTA_FarmerLiquidation_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, OverUnderAmt NUMERIC DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, WriteOffAmt NUMERIC NOT NULL, CONSTRAINT FTA_AllocationLine_Key PRIMARY KEY (FTA_AllocationLine_ID))
;

-- Jan 12, 2014 8:46:12 PM VET
-- LVE Withholding
CREATE TABLE FTA_BillOfExchange (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, C_BPartner_Location_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(30) NOT NULL, FTA_BillOfExchange_ID NUMERIC(10) NOT NULL, FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Status CHAR(1) DEFAULT 'G' NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidTo TIMESTAMP DEFAULT NULL , CONSTRAINT FTA_BillOfExchange_Key PRIMARY KEY (FTA_BillOfExchange_ID))
;

-- Jan 12, 2014 8:46:16 PM VET
-- LVE Withholding
CREATE TABLE FTA_CategoryCalc (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AD_Rule_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , EventType VARCHAR(2) NOT NULL, FTA_CategoryCalc_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, StdPrecision NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_CategoryCalc_Key PRIMARY KEY (FTA_CategoryCalc_ID))
;

-- Jan 12, 2014 8:46:20 PM VET
-- LVE Withholding
CREATE TABLE FTA_CDL_Category (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_CDL_Category_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(40) NOT NULL, CONSTRAINT FTA_CDL_Category_Key PRIMARY KEY (FTA_CDL_Category_ID))
;

-- Jan 12, 2014 8:46:25 PM VET
-- LVE Withholding
CREATE TABLE FTA_CDL_CategoryInterest (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, FTA_CDL_Category_ID NUMERIC(10) NOT NULL, FTA_InterestType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_CDL_CategoryInterest_Key PRIMARY KEY (FTA_CDL_Category_ID, FTA_InterestType_ID))
;

-- Jan 12, 2014 8:46:31 PM VET
-- LVE Withholding
CREATE TABLE FTA_Chute (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, FTA_Chute_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsDefault CHAR(1) DEFAULT NULL CHECK (IsDefault IN ('Y','N')), M_Locator_ID NUMERIC(10) DEFAULT NULL , M_Warehouse_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_Chute_Key PRIMARY KEY (FTA_Chute_ID))
;

-- Jan 12, 2014 8:47:28 PM VET
-- LVE Withholding
CREATE TABLE FTA_CreditAct (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, ApprovedAmt NUMERIC DEFAULT NULL , ApprovedQty NUMERIC DEFAULT NULL , C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) DEFAULT NULL , FTA_CreditAct_ID NUMERIC(10) NOT NULL, GenerateBillOfEx CHAR(1) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) CHECK (IsApproved IN ('Y','N')) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_CreditAct_Key PRIMARY KEY (FTA_CreditAct_ID))
;

-- Jan 12, 2014 8:47:33 PM VET
-- LVE Withholding
CREATE TABLE FTA_CreditDefinition (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, Category_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) DEFAULT NULL , FTA_CreditDefinition_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) CHECK (IsApproved IN ('Y','N')) NOT NULL, M_PriceList_ID NUMERIC(10) NOT NULL, PlantingCycle_ID NUMERIC(10) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_CreditDefinition_Key PRIMARY KEY (FTA_CreditDefinition_ID))
;

-- Jan 12, 2014 8:47:45 PM VET
-- LVE Withholding
CREATE TABLE FTA_CreditDefinitionLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, C_Charge_ID NUMERIC(10) DEFAULT NULL , C_ChargeType_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, C_UOM_ID NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_CDL_Category_ID NUMERIC(10) NOT NULL, FTA_CreditDefinition_ID NUMERIC(10) NOT NULL, FTA_CreditDefinitionLine_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsDistributionLine CHAR(1) DEFAULT 'N' CHECK (IsDistributionLine IN ('Y','N')), IsExceedCreditLimit CHAR(1) DEFAULT 'N' CHECK (IsExceedCreditLimit IN ('Y','N')), Line NUMERIC(10) NOT NULL, M_Product_Category_ID NUMERIC(10) DEFAULT NULL , M_Product_ID NUMERIC(10) DEFAULT NULL , Price NUMERIC NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Qty NUMERIC DEFAULT 1 NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_CreditDefinitionLine_Key PRIMARY KEY (FTA_CreditDefinitionLine_ID))
;

-- Jan 12, 2014 8:47:49 PM VET
-- LVE Withholding
CREATE TABLE FTA_Driver (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_Driver_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Shipper_ID NUMERIC(10) DEFAULT NULL , Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) NOT NULL, CONSTRAINT FTA_Driver_Key PRIMARY KEY (FTA_Driver_ID))
;

-- Jan 12, 2014 8:47:54 PM VET
-- LVE Withholding
CREATE TABLE FTA_EntryTicket (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) DEFAULT NULL , C_DocType_ID NUMERIC(10) NOT NULL, C_Order_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO', DocStatus VARCHAR(2) DEFAULT 'DR', DocumentNo VARCHAR(60) DEFAULT NULL , DocumentPrint CHAR(1) DEFAULT NULL , Ext_Guide VARCHAR(60) DEFAULT NULL , FTA_Driver_ID NUMERIC(10) NOT NULL, FTA_EntryTicket_ID NUMERIC(10) NOT NULL, FTA_LoadOrder_ID NUMERIC(10) DEFAULT NULL , FTA_MobilizationGuide_ID NUMERIC(10) DEFAULT NULL , FTA_Vehicle_ID NUMERIC(10) NOT NULL, I_IsImported CHAR(1) DEFAULT NULL CHECK (I_IsImported IN ('Y','N')), IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) CHECK (IsApproved IN ('Y','N')) NOT NULL, IsPrinted CHAR(1) DEFAULT 'N' CHECK (IsPrinted IN ('Y','N')), M_Shipper_ID NUMERIC(10) DEFAULT NULL , OperationType CHAR(1) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), ReferenceNo VARCHAR(60) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_EntryTicket_Key PRIMARY KEY (FTA_EntryTicket_ID))
;

-- Jan 12, 2014 8:47:59 PM VET
-- LVE Withholding
CREATE TABLE FTA_EntryTicketGuide (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , Ext_Guide VARCHAR(60) DEFAULT NULL , FTA_EntryTicketGuide_ID NUMERIC(10) NOT NULL, FTA_EntryTicket_ID NUMERIC(10) DEFAULT NULL , FTA_MobilizationGuide_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_EntryTicketGuide_Key PRIMARY KEY (FTA_EntryTicketGuide_ID))
;

-- Jan 12, 2014 8:48:03 PM VET
-- LVE Withholding
CREATE TABLE FTA_Fact (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AD_Table_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_CreditDefinition_ID NUMERIC(10) NOT NULL, FTA_CreditDefinitionLine_ID NUMERIC(10) NOT NULL, FTA_Fact_ID NUMERIC(10) NOT NULL, FTA_FarmerCredit_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsCreditFactManual CHAR(1) DEFAULT NULL CHECK (IsCreditFactManual IN ('Y','N')), Line_ID NUMERIC(10) DEFAULT NULL , Record_ID NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_Fact_Key PRIMARY KEY (FTA_Fact_ID))
;

-- Jan 12, 2014 8:48:07 PM VET
-- LVE Withholding
CREATE TABLE FTA_Farm (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Area NUMERIC NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, C_BPartner_Location_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FarmType CHAR(1) NOT NULL, FrontierEast VARCHAR(255) DEFAULT NULL , FrontierNorth VARCHAR(255) DEFAULT NULL , FrontierSouth VARCHAR(255) DEFAULT NULL , FrontierWest VARCHAR(255) DEFAULT NULL , FTA_Farm_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsValid CHAR(1) CHECK (IsValid IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_Farm_Key PRIMARY KEY (FTA_Farm_ID))
;

-- Jan 12, 2014 8:48:21 PM VET
-- LVE Withholding
CREATE TABLE FTA_FarmDivision (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Area NUMERIC NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, FTA_FarmDivision_ID NUMERIC(10) NOT NULL, FTA_Farm_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_FarmDivision_Key PRIMARY KEY (FTA_FarmDivision_ID))
;

-- Jan 12, 2014 8:48:26 PM VET
-- LVE Withholding
CREATE TABLE FTA_FarmerCredit (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, ApprovedAmt NUMERIC DEFAULT NULL , ApprovedQty NUMERIC DEFAULT NULL , Beneficiary_ID NUMERIC(10) DEFAULT NULL , C_BPartner_ID NUMERIC(10) NOT NULL, C_Charge_ID NUMERIC(10) DEFAULT NULL , C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CreditType CHAR(1) NOT NULL, C_UOM_ID NUMERIC(10) DEFAULT NULL , DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) DEFAULT NULL , FarmingAlloc CHAR(1) DEFAULT NULL , FTA_CreditAct_ID NUMERIC(10) DEFAULT NULL , FTA_CreditDefinition_ID NUMERIC(10) DEFAULT NULL , FTA_FarmerCredit_ID NUMERIC(10) NOT NULL, GenerateBillOfEx CHAR(1) DEFAULT NULL , GenerateOrder CHAR(1) DEFAULT 'N', IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) CHECK (IsApproved IN ('Y','N')) NOT NULL, M_Product_ID NUMERIC(10) DEFAULT NULL , Parent_FarmerCredit_ID NUMERIC(10) DEFAULT NULL , Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Processing CHAR(1) DEFAULT NULL , Qty NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_FarmerCredit_Key PRIMARY KEY (FTA_FarmerCredit_ID))
;

-- Jan 12, 2014 8:48:29 PM VET
-- LVE Withholding
CREATE TABLE FTA_FarmerLiquidation (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Amt NUMERIC NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, C_ConversionType_ID NUMERIC(10) DEFAULT NULL , C_Currency_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) DEFAULT NULL , FTA_CategoryCalc_ID NUMERIC(10) DEFAULT NULL , FTA_FarmerCredit_ID NUMERIC(10) NOT NULL, FTA_FarmerLiquidation_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, M_Product_ID NUMERIC(10) NOT NULL, NetWeight NUMERIC NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_FarmerLiquidation_Key PRIMARY KEY (FTA_FarmerLiquidation_ID))
;

-- Jan 12, 2014 8:48:33 PM VET
-- LVE Withholding
CREATE TABLE FTA_FarmerLiquidationLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, FTA_FarmerLiquidation_ID NUMERIC(10) NOT NULL, FTA_FarmerLiquidationLine_ID NUMERIC(10) NOT NULL, FTA_RecordWeight_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LineNetAmt NUMERIC DEFAULT NULL , NetWeight NUMERIC NOT NULL, PayWeight NUMERIC NOT NULL, Price NUMERIC NOT NULL, PriceList NUMERIC DEFAULT NULL , Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, QualityAnalysis_ID NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_FarmerLiquidationLine_Key PRIMARY KEY (FTA_FarmerLiquidationLine_ID))
;

-- Jan 12, 2014 8:48:37 PM VET
-- LVE Withholding
CREATE TABLE FTA_Farming (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Area NUMERIC NOT NULL, Category_ID NUMERIC(10) NOT NULL, C_OrderLine_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , EstimatedDate TIMESTAMP DEFAULT NULL , EstimatedQty NUMERIC DEFAULT NULL , EstimatedYield NUMERIC DEFAULT NULL , FarmingValidate CHAR(1) DEFAULT NULL , FinancingType CHAR(1) NOT NULL, FTA_FarmDivision_ID NUMERIC(10) NOT NULL, FTA_FarmerCredit_ID NUMERIC(10) DEFAULT NULL , FTA_Farming_ID NUMERIC(10) NOT NULL, GuideGenerate CHAR(1) DEFAULT NULL , HarvestEndDate TIMESTAMP DEFAULT NULL , HarvestStartDate TIMESTAMP DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsValid CHAR(1) DEFAULT NULL CHECK (IsValid IN ('Y','N')), MaxQty NUMERIC DEFAULT NULL , PlantingCycle_ID NUMERIC(10) NOT NULL, PlantingEndDate TIMESTAMP DEFAULT NULL , PlantingStartDate TIMESTAMP DEFAULT NULL , Qty NUMERIC DEFAULT NULL , Re_EstimatedQty NUMERIC DEFAULT NULL , StartDate TIMESTAMP NOT NULL, Status CHAR(1) DEFAULT 'A' NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_Farming_Key PRIMARY KEY (FTA_Farming_ID))
;

-- Jan 12, 2014 8:48:41 PM VET
-- LVE Withholding
CREATE TABLE FTA_FarmingStage (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Category_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DayFrom NUMERIC NOT NULL, DayTo NUMERIC NOT NULL, FTA_FarmingStage_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , SeqNo NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) DEFAULT NULL , CONSTRAINT FTA_FarmingStage_Key PRIMARY KEY (FTA_FarmingStage_ID))
;

-- Jan 12, 2014 8:49:14 PM VET
-- LVE Withholding
CREATE TABLE FTA_InterestRate (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, FTA_InterestRate_ID NUMERIC(10) NOT NULL, FTA_InterestType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Rate NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, CONSTRAINT FTA_InterestRate_Key PRIMARY KEY (FTA_InterestRate_ID))
;

-- Jan 12, 2014 8:49:18 PM VET
-- LVE Withholding
CREATE TABLE FTA_InterestType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, CalculationType CHAR(1) DEFAULT 'C' NOT NULL, C_Charge_ID NUMERIC(10) DEFAULT NULL , C_DocTypeTarget_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DaysDue NUMERIC(10) DEFAULT NULL , DaysFixed CHAR(1) DEFAULT 'Y' CHECK (DaysFixed IN ('Y','N')), FTA_InterestType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_ID NUMERIC(10) DEFAULT NULL , Name VARCHAR(60) NOT NULL, RateFixed CHAR(1) DEFAULT 'Y' CHECK (RateFixed IN ('Y','N')), Type VARCHAR(2) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(40) NOT NULL, CONSTRAINT FTA_InterestType_Key PRIMARY KEY (FTA_InterestType_ID))
;

-- Jan 12, 2014 8:49:21 PM VET
-- LVE Withholding
CREATE TABLE FTA_LoadOrder (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_DocType_ID NUMBER(10) NOT NULL, ConfirmedWeight NUMBER DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, C_UOM_Volume_ID NUMBER(10) NOT NULL, C_UOM_Weight_ID NUMBER(10) NOT NULL, DateDoc DATE NOT NULL, DeliveryRule CHAR(1) DEFAULT NULL , Description NVARCHAR2(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus NVARCHAR2(2) DEFAULT 'DR' NOT NULL, DocumentNo NVARCHAR2(60) DEFAULT NULL , FTA_Driver_ID NUMBER(10) DEFAULT NULL , FTA_EntryTicket_ID NUMBER(10) NOT NULL, FTA_LoadOrder_ID NUMBER(10) NOT NULL, FTA_Vehicle_ID NUMBER(10) DEFAULT NULL , FTA_VehicleType_ID NUMBER(10) NOT NULL, InvoiceRule CHAR(1) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, IsDelivered CHAR(1) DEFAULT 'N' CHECK (IsDelivered IN ('Y','N')), IsInvoiced CHAR(1) DEFAULT 'N' CHECK (IsInvoiced IN ('Y','N')), IsMoved CHAR(1) DEFAULT 'N' CHECK (IsMoved IN ('Y','N')), IsWeightRegister CHAR(1) DEFAULT 'N' CHECK (IsWeightRegister IN ('Y','N')), LoadCapacity NUMBER NOT NULL, M_Product_ID NUMBER(10) DEFAULT NULL , M_Shipper_ID NUMBER(10) DEFAULT NULL , M_Warehouse_ID NUMBER(10) DEFAULT NULL , OperationType NVARCHAR2(3) NOT NULL, Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL, ShipDate DATE DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Volume NUMBER DEFAULT NULL , VolumeCapacity NUMBER DEFAULT NULL , Weight NUMBER DEFAULT NULL , CONSTRAINT FTA_LoadOrder_Key PRIMARY KEY (FTA_LoadOrder_ID));

-- Jan 12, 2014 8:49:25 PM VET
-- LVE Withholding
CREATE TABLE FTA_LoadOrderLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_InvoiceLine_ID NUMERIC(10) DEFAULT NULL , ConfirmedQty NUMERIC DEFAULT NULL , ConfirmedWeight NUMERIC DEFAULT NULL , C_OrderLine_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DD_OrderLine_ID NUMERIC(10) DEFAULT NULL , Description VARCHAR(255) DEFAULT NULL , FTA_LoadOrder_ID NUMERIC(10) NOT NULL, FTA_LoadOrderLine_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_InOutLine_ID NUMERIC(10) DEFAULT NULL , M_MovementLine_ID NUMERIC(10) DEFAULT NULL , M_Product_ID NUMERIC(10) NOT NULL, Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')), Qty NUMERIC NOT NULL, SeqNo NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Volume NUMERIC NOT NULL, Weight NUMERIC NOT NULL, CONSTRAINT FTA_LoadOrderLine_Key PRIMARY KEY (FTA_LoadOrderLine_ID))
;

-- Jan 12, 2014 8:49:29 PM VET
-- LVE Withholding
CREATE TABLE FTA_MobilizationGuide (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) DEFAULT NULL , C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(30) NOT NULL, FTA_Farming_ID NUMERIC(10) NOT NULL, FTA_MobilizationGuide_ID NUMERIC(10) NOT NULL, FTA_VehicleType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Warehouse_ID NUMERIC(10) NOT NULL, Owner VARCHAR(40) DEFAULT NULL , Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), QtyToDeliver NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidTo TIMESTAMP DEFAULT NULL , CONSTRAINT FTA_MobilizationGuide_Key PRIMARY KEY (FTA_MobilizationGuide_ID))
;

-- Jan 12, 2014 8:49:33 PM VET
-- LVE Withholding
CREATE TABLE FTA_ObservationType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_ObservationType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) NOT NULL, CONSTRAINT FTA_ObservationType_Key PRIMARY KEY (FTA_ObservationType_ID))
;

-- Jan 12, 2014 8:49:37 PM VET
-- LVE Withholding
CREATE TABLE FTA_PaymentRequest (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, C_BP_BankAccount_ID NUMERIC(10) DEFAULT NULL , C_Charge_ID NUMERIC(10) DEFAULT NULL , C_DocType_ID NUMERIC(10) NOT NULL, C_PaySelectionCheck_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(30) DEFAULT NULL , FTA_FarmerCredit_ID NUMERIC(10) NOT NULL, FTA_FarmerLiquidation_ID NUMERIC(10) DEFAULT NULL , FTA_PaymentRequest_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, M_Product_ID NUMERIC(10) DEFAULT NULL , Name VARCHAR(60) NOT NULL, PayAmt NUMERIC NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_PaymentRequest_Key PRIMARY KEY (FTA_PaymentRequest_ID))
;

-- Jan 12, 2014 8:49:41 PM VET
-- LVE Withholding
CREATE TABLE FTA_ProductsToApply (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, C_UOM_ID NUMERIC(10) NOT NULL, DateFrom TIMESTAMP DEFAULT NULL , DateTo TIMESTAMP DEFAULT NULL , Dosage_Uom_ID NUMERIC(10) NOT NULL, FTA_ProductsToApply_ID NUMERIC(10) NOT NULL, FTA_TechnicalForm_ID NUMERIC(10) NOT NULL, FTA_TechnicalFormLine_ID NUMERIC(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_ID NUMERIC(10) NOT NULL, M_Warehouse_ID NUMERIC(10) DEFAULT NULL , Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Qty NUMERIC NOT NULL, QtyDosage NUMERIC NOT NULL, QtySuggested NUMERIC DEFAULT NULL , Suggested_Uom_ID NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_ProductsToApply_Key PRIMARY KEY (FTA_ProductsToApply_ID))
;

-- Jan 12, 2014 8:49:47 PM VET
-- LVE Withholding
CREATE TABLE FTA_QualityAnalysis (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AnalysisType VARCHAR(2) DEFAULT 'QA' NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO', DocStatus VARCHAR(2) DEFAULT 'DR', DocumentNo VARCHAR(60) DEFAULT NULL , DocumentPrint CHAR(1) DEFAULT NULL , FTA_Chute_ID NUMERIC(10) DEFAULT NULL , FTA_EntryTicket_ID NUMERIC(10) NOT NULL, FTA_QualityAnalysis_ID NUMERIC(10) NOT NULL, FTA_RecordWeight_ID NUMERIC(10) DEFAULT NULL , I_IsImported CHAR(1) DEFAULT NULL CHECK (I_IsImported IN ('Y','N')), IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, IsPrinted CHAR(1) DEFAULT 'N' CHECK (IsPrinted IN ('Y','N')), M_Product_ID NUMERIC(10) DEFAULT NULL , OperationType VARCHAR(3) NOT NULL, Orig_QualityAnalysis_ID NUMERIC(10) DEFAULT NULL , Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), ProductStatus CHAR(1) DEFAULT 'A' NOT NULL, QualityAnalysis_ID NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_QualityAnalysis_Key PRIMARY KEY (FTA_QualityAnalysis_ID))
;

-- Jan 12, 2014 8:49:50 PM VET
-- LVE Withholding
CREATE TABLE FTA_ReceptionCapacity (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_ReceptionCapacity_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Warehouse_ID NUMERIC(10) NOT NULL, Qty NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, CONSTRAINT FTA_ReceptionCapacity_Key PRIMARY KEY (FTA_ReceptionCapacity_ID))
;

-- Jan 12, 2014 8:49:55 PM VET
-- LVE Withholding
CREATE TABLE FTA_RecordWeight (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CreateFrom CHAR(1) DEFAULT NULL , C_UOM_ID NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(60) DEFAULT NULL , DocumentPrint CHAR(1) DEFAULT NULL , FTA_Chute_ID NUMERIC(10) DEFAULT NULL , FTA_EntryTicket_ID NUMERIC(10) NOT NULL, FTA_LoadOrder_ID NUMERIC(10) DEFAULT NULL , FTA_QualityAnalysis_ID NUMERIC(10) DEFAULT NULL , FTA_RecordWeight_ID NUMERIC(10) NOT NULL, GrossWeight NUMERIC NOT NULL, I_IsImported CHAR(1) DEFAULT NULL CHECK (I_IsImported IN ('Y','N')), ImportWeight NUMERIC DEFAULT NULL , InDate TIMESTAMP DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, IsPrinted CHAR(1) DEFAULT 'N' CHECK (IsPrinted IN ('Y','N')), IsSOTrx CHAR(1) CHECK (IsSOTrx IN ('Y','N')) NOT NULL, NetWeight NUMERIC NOT NULL, OperationType VARCHAR(3) NOT NULL, OutDate TIMESTAMP DEFAULT NULL , PayWeight NUMERIC DEFAULT NULL , Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, SelectionWeight CHAR(1) DEFAULT 'P', TareWeight NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, WeightStatus CHAR(1) DEFAULT 'T', CONSTRAINT FTA_RecordWeight_Key PRIMARY KEY (FTA_RecordWeight_ID))
;

-- Jan 12, 2014 8:50:17 PM VET
-- LVE Withholding
CREATE TABLE FTA_SuggestedProduct (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Category_ID NUMERIC(10) DEFAULT NULL , Comments VARCHAR(255) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DayFrom NUMERIC DEFAULT NULL , DayTo NUMERIC DEFAULT NULL , Dosage_Uom_ID NUMERIC(10) DEFAULT NULL , FTA_FarmingStage_ID NUMERIC(10) DEFAULT NULL , FTA_ObservationType_ID NUMERIC(10) DEFAULT NULL , FTA_SuggestedProduct_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Product_Category_ID NUMERIC(10) DEFAULT NULL , M_Product_ID NUMERIC(10) DEFAULT NULL , Name VARCHAR(60) NOT NULL, QtyDosage NUMERIC DEFAULT NULL , SeqNo NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_SuggestedProduct_Key PRIMARY KEY (FTA_SuggestedProduct_ID))
;

-- Jan 12, 2014 8:50:22 PM VET
-- LVE Withholding
CREATE TABLE FTA_TechnicalForm (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, C_DocType_ID NUMERIC(10) NOT NULL, Comments VARCHAR(2000) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO', DocStatus VARCHAR(2) DEFAULT 'DR', DocumentNo VARCHAR(60) DEFAULT NULL , FTA_Farm_ID NUMERIC(10) DEFAULT NULL , FTA_TechnicalForm_ID NUMERIC(10) NOT NULL, GenerateOrder CHAR(1) DEFAULT 'N', IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsApproved CHAR(1) DEFAULT 'N' CHECK (IsApproved IN ('Y','N')) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, SalesRep_ID NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_TechnicalForm_Key PRIMARY KEY (FTA_TechnicalForm_ID))
;

-- Jan 12, 2014 8:50:25 PM VET
-- LVE Withholding
CREATE TABLE FTA_TechnicalFormLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Comments VARCHAR(2000) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, FTA_FarmDivision_ID NUMERIC(10) NOT NULL, FTA_Farm_ID NUMERIC(10) NOT NULL, FTA_Farming_ID NUMERIC(10) NOT NULL, FTA_FarmingStage_ID NUMERIC(10) NOT NULL, FTA_ObservationType_ID NUMERIC(10) NOT NULL, FTA_TechnicalForm_ID NUMERIC(10) NOT NULL, FTA_TechnicalFormLine_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_TechnicalFormLine_Key PRIMARY KEY (FTA_TechnicalFormLine_ID))
;

-- Jan 12, 2014 8:50:31 PM VET
-- LVE Withholding
CREATE TABLE FTA_Vehicle (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_VehicleBrand_ID NUMERIC(10) DEFAULT NULL , FTA_Vehicle_ID NUMERIC(10) NOT NULL, FTA_VehicleModel_ID NUMERIC(10) DEFAULT NULL , FTA_VehicleType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LoadCapacity NUMERIC NOT NULL, M_Shipper_ID NUMERIC(10) DEFAULT NULL , Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, VehiclePlate VARCHAR(60) NOT NULL, VolumeCapacity NUMERIC NOT NULL, CONSTRAINT FTA_Vehicle_Key PRIMARY KEY (FTA_Vehicle_ID))
;

-- Jan 12, 2014 8:50:36 PM VET
-- LVE Withholding
CREATE TABLE FTA_VehicleBrand (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_VehicleBrand_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_VehicleBrand_Key PRIMARY KEY (FTA_VehicleBrand_ID))
;

-- Jan 12, 2014 8:50:40 PM VET
-- LVE Withholding
CREATE TABLE FTA_VehicleModel (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_VehicleBrand_ID NUMERIC(10) NOT NULL, FTA_VehicleModel_ID NUMERIC(10) NOT NULL, FTA_VehicleType_ID NUMERIC(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT FTA_VehicleModel_Key PRIMARY KEY (FTA_VehicleModel_ID))
;

-- Jan 12, 2014 8:50:44 PM VET
-- LVE Withholding
CREATE TABLE FTA_VehicleType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , FTA_VehicleType_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LoadCapacity NUMERIC NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) NOT NULL, VolumeCapacity NUMERIC NOT NULL, CONSTRAINT FTA_VehicleType_Key PRIMARY KEY (FTA_VehicleType_ID))
;

-- Jan 12, 2014 8:50:55 PM VET
-- LVE Withholding
UPDATE AD_UserQuery SET UpdatedBy=100,Updated=TO_TIMESTAMP('2014-01-12 20:50:55','YYYY-MM-DD HH24:MI:SS') WHERE AD_UserQuery_ID=1000000
;

-- Jan 12, 2014 8:51:05 PM VET
-- LVE Withholding
UPDATE AD_UserQuery SET UpdatedBy=100,Updated=TO_TIMESTAMP('2014-01-12 20:51:05','YYYY-MM-DD HH24:MI:SS') WHERE AD_UserQuery_ID=1000000
;

