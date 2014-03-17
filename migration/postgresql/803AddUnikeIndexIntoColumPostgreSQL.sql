CREATE UNIQUE INDEX UK_FTA_FarmingStageValue ON FTA_FarmingStage (AD_Client_ID,Value);
CREATE UNIQUE INDEX UK_FTA_ObservationTypeValue ON FTA_ObservationType (AD_Client_ID,Value);
CREATE UNIQUE INDEX UK_FTA_VehicleTypeValue ON FTA_VehicleType (AD_Client_ID,Value);
CREATE UNIQUE INDEX UK_FTA_QualityAnalysisDocumentNo ON FTA_QualityAnalysis (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_RecordWeightDocumentNo ON FTA_RecordWeight (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_EntryTicketDocumentNo ON FTA_EntryTicket (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_FarmerLiquidationDocumentNo ON FTA_FarmerLiquidation (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_FarmerCreditDocumentNo ON FTA_FarmerCredit (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_MobilizationGuideDocumentNo ON FTA_MobilizationGuide (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_AllocationDocumentNo ON FTA_Allocation (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_TechnicalFormDocumentNo ON FTA_TechnicalForm (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_CreditDefinitionDocumentNo ON FTA_CreditDefinition (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_DriverValue ON FTA_Driver (AD_Client_ID,Value);
CREATE UNIQUE INDEX UK_FTA_CreditActDocumentNo ON FTA_CreditAct (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_BillOfExchangeDocumentNo ON FTA_BillOfExchange (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_CDL_CategoryValue ON FTA_CDL_Category (AD_Client_ID,Value);
CREATE UNIQUE INDEX UK_FTA_InterestTypeValue ON FTA_InterestType (AD_Client_ID,Value);
CREATE UNIQUE INDEX UK_FTA_PaymentRequestDocumentNo ON FTA_PaymentRequest (AD_Client_ID,DocumentNo);
CREATE UNIQUE INDEX UK_FTA_LoadOrderDocumentNo ON FTA_LoadOrder (AD_Client_ID,DocumentNo);

CREATE UNIQUE INDEX UK_FTA_CategoryCalcFilterPlantingCycle ON FTA_CategoryCalcFilter (FTA_CategoryCalc_ID,PlantingCycle_ID);
CREATE UNIQUE INDEX UK_FTA_CategoryCalcFilterAttribute ON FTA_CategoryCalcFilter (FTA_CategoryCalc_ID,M_Attribute_ID);

CREATE UNIQUE INDEX UK_FTA_CDL_Category_Product ON FTA_CreditDefinitionLine (FTA_CreditDefinition_ID,FTA_CDL_Category_ID,M_Product_ID);
CREATE UNIQUE INDEX UK_FTA_CDL_Category_ProductCategory ON FTA_CreditDefinitionLine  (FTA_CreditDefinition_ID,FTA_CDL_Category_ID,M_Product_Category_ID);
CREATE UNIQUE INDEX UK_FTA_CDL_Category_Charge ON FTA_CreditDefinitionLine  (FTA_CreditDefinition_ID,FTA_CDL_Category_ID,C_Charge_ID);
CREATE UNIQUE INDEX UK_FTA_CDL_Category_ChargeCategory ON FTA_CreditDefinitionLine (FTA_CreditDefinition_ID,FTA_CDL_Category_ID,C_ChargeType_ID);