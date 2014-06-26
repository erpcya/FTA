ALTER TABLE FTA_Allocation ADD CONSTRAINT FK_FTA_Allocation_C_Currency FOREIGN KEY (C_Currency_ID)
	REFERENCES C_Currency(C_Currency_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Allocation ADD CONSTRAINT FK_FTA_Allocation_FTA_FarmerCredit FOREIGN KEY (FTA_FarmerCredit_ID)
	REFERENCES FTA_FarmerCredit(FTA_FarmerCredit_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_AllocationLine ADD CONSTRAINT FK_FTA_AllocationLine_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_AllocationLine ADD CONSTRAINT FK_FTA_AllocationLine_C_CashLine FOREIGN KEY (C_CashLine_ID)
	REFERENCES C_CashLine(C_CashLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_AllocationLine ADD CONSTRAINT FK_FTA_AllocationLine_FTA_FarmerLiquidation FOREIGN KEY (FTA_FarmerLiquidation_ID)
	REFERENCES FTA_FarmerLiquidation(FTA_FarmerLiquidation_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_AllocationLine ADD CONSTRAINT FK_FTA_AllocationLine_C_Order FOREIGN KEY (C_Order_ID)
	REFERENCES C_Order(C_Order_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_AllocationLine ADD CONSTRAINT FK_FTA_AllocationLine_FTA_Allocation FOREIGN KEY (FTA_Allocation_ID)
	REFERENCES FTA_Allocation(FTA_Allocation_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_AllocationLine ADD CONSTRAINT FK_FTA_AllocationLine_C_Invoice FOREIGN KEY (C_Invoice_ID)
	REFERENCES C_Invoice(C_Invoice_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_AllocationLine ADD CONSTRAINT FK_FTA_AllocationLine_C_Payment FOREIGN KEY (C_Payment_ID)
	REFERENCES C_Payment(C_Payment_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_BillOfExchange ADD CONSTRAINT FK_FTA_BillOfExchange_C_BPartner_Location FOREIGN KEY (C_BPartner_Location_ID)
	REFERENCES C_BPartner_Location(C_BPartner_Location_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_BillOfExchange ADD CONSTRAINT FK_FTA_BillOfExchange_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_BillOfExchange ADD CONSTRAINT FK_FTA_BillOfExchange_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_BillOfExchange ADD CONSTRAINT FK_FTA_BillOfExchange_FTA_FarmerCredit FOREIGN KEY (FTA_FarmerCredit_ID)
	REFERENCES FTA_FarmerCredit(FTA_FarmerCredit_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CategoryCalc ADD CONSTRAINT FK_FTA_CategoryCalc_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CategoryCalc ADD CONSTRAINT FK_FTA_CategoryCalc_AD_Rule FOREIGN KEY (AD_Rule_ID)
	REFERENCES AD_Rule(AD_Rule_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CDL_CategoryInterest ADD CONSTRAINT FK_FTA_CDL_CategoryInterest_FTA_CDL_Category FOREIGN KEY (FTA_CDL_Category_ID)
	REFERENCES FTA_CDL_Category(FTA_CDL_Category_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CDL_CategoryInterest ADD CONSTRAINT FK_FTA_CDL_CategoryInterest_FTA_InterestType FOREIGN KEY (FTA_InterestType_ID)
	REFERENCES FTA_InterestType(FTA_InterestType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Chute ADD CONSTRAINT FK_FTA_Chute_M_Locator FOREIGN KEY (M_Locator_ID)
	REFERENCES M_Locator(M_Locator_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Chute ADD CONSTRAINT FK_FTA_Chute_M_Warehouse FOREIGN KEY (M_Warehouse_ID)
	REFERENCES M_Warehouse(M_Warehouse_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditAct ADD CONSTRAINT FK_FTA_CreditAct_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinition ADD CONSTRAINT FK_FTA_CreditDefinition_PlantingCycle FOREIGN KEY (PlantingCycle_ID)
	REFERENCES M_Lot(M_Lot_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinition ADD CONSTRAINT FK_FTA_CreditDefinition_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinition ADD CONSTRAINT FK_FTA_CreditDefinition_Category FOREIGN KEY (Category_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinition ADD CONSTRAINT FK_FTA_CreditDefinition_M_PriceList FOREIGN KEY (M_PriceList_ID)
	REFERENCES M_PriceList(M_PriceList_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinitionLine ADD CONSTRAINT FK_FTA_CreditDefinitionLine_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinitionLine ADD CONSTRAINT FK_FTA_CreditDefinitionLine_C_ChargeType FOREIGN KEY (C_ChargeType_ID)
	REFERENCES C_ChargeType(C_ChargeType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinitionLine ADD CONSTRAINT FK_FTA_CreditDefinitionLine_M_Product_Category FOREIGN KEY (M_Product_Category_ID)
	REFERENCES M_Product_Category(M_Product_Category_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinitionLine ADD CONSTRAINT FK_FTA_CreditDefinitionLine_C_Charge FOREIGN KEY (C_Charge_ID)
	REFERENCES C_Charge(C_Charge_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinitionLine ADD CONSTRAINT FK_FTA_CreditDefinitionLine_C_UOM FOREIGN KEY (C_UOM_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinitionLine ADD CONSTRAINT FK_FTA_CreditDefinitionLine_FTA_CDL_Category FOREIGN KEY (FTA_CDL_Category_ID)
	REFERENCES FTA_CDL_Category(FTA_CDL_Category_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CreditDefinitionLine ADD CONSTRAINT FK_FTA_CreditDefinitionLine_FTA_CreditDefinition FOREIGN KEY (FTA_CreditDefinition_ID)
	REFERENCES FTA_CreditDefinition(FTA_CreditDefinition_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Driver ADD CONSTRAINT FK_FTA_Driver_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Driver ADD CONSTRAINT FK_FTA_Driver_M_Shipper FOREIGN KEY (M_Shipper_ID)
	REFERENCES M_Shipper(M_Shipper_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicket ADD CONSTRAINT FK_FTA_EntryTicket_M_Shipper FOREIGN KEY (M_Shipper_ID)
	REFERENCES M_Shipper(M_Shipper_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicket ADD CONSTRAINT FK_FTA_EntryTicket_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicket ADD CONSTRAINT FK_FTA_EntryTicket_FTA_LoadOrder FOREIGN KEY (FTA_LoadOrder_ID)
	REFERENCES FTA_LoadOrder(FTA_LoadOrder_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicket ADD CONSTRAINT FK_FTA_EntryTicket_FTA_Driver FOREIGN KEY (FTA_Driver_ID)
	REFERENCES FTA_Driver(FTA_Driver_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicket ADD CONSTRAINT FK_FTA_EntryTicket_FTA_MobilizationGuide FOREIGN KEY (FTA_MobilizationGuide_ID)
	REFERENCES FTA_MobilizationGuide(FTA_MobilizationGuide_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicket ADD CONSTRAINT FK_FTA_EntryTicket_FTA_Vehicle FOREIGN KEY (FTA_Vehicle_ID)
	REFERENCES FTA_Vehicle(FTA_Vehicle_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicket ADD CONSTRAINT FK_FTA_EntryTicket_C_Order FOREIGN KEY (C_Order_ID)
	REFERENCES C_Order(C_Order_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicket ADD CONSTRAINT FK_FTA_EntryTicket_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicketGuide ADD CONSTRAINT FK_FTA_EntryTicketGuide_FTA_MobilizationGuide FOREIGN KEY (FTA_MobilizationGuide_ID)
	REFERENCES FTA_MobilizationGuide(FTA_MobilizationGuide_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicketGuide ADD CONSTRAINT FK_FTA_EntryTicketGuide_FTA_EntryTicket FOREIGN KEY (FTA_EntryTicket_ID)
	REFERENCES FTA_EntryTicket(FTA_EntryTicket_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Fact ADD CONSTRAINT FK_FTA_Fact_FTA_FarmerCredit FOREIGN KEY (FTA_FarmerCredit_ID)
	REFERENCES FTA_FarmerCredit(FTA_FarmerCredit_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Fact ADD CONSTRAINT FK_FTA_Fact_FTA_CreditDefinition FOREIGN KEY (FTA_CreditDefinition_ID)
	REFERENCES FTA_CreditDefinition(FTA_CreditDefinition_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Fact ADD CONSTRAINT FK_FTA_Fact_AD_Table FOREIGN KEY (AD_Table_ID)
	REFERENCES AD_Table(AD_Table_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Fact ADD CONSTRAINT FK_FTA_Fact_FTA_CreditDefinitionLine FOREIGN KEY (FTA_CreditDefinitionLine_ID)
	REFERENCES FTA_CreditDefinitionLine(FTA_CreditDefinitionLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Fact ADD CONSTRAINT FK_FTA_Fact_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Farm ADD CONSTRAINT FK_FTA_Farm_C_BPartner_Location FOREIGN KEY (C_BPartner_Location_ID)
	REFERENCES C_BPartner_Location(C_BPartner_Location_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Farm ADD CONSTRAINT FK_FTA_Farm_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmDivision ADD CONSTRAINT FK_FTA_FarmDivision_FTA_Farm FOREIGN KEY (FTA_Farm_ID)
	REFERENCES FTA_Farm(FTA_Farm_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerCredit ADD CONSTRAINT FK_FTA_FarmerCredit_Beneficiary FOREIGN KEY (Beneficiary_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerCredit ADD CONSTRAINT FK_FTA_FarmerCredit_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerCredit ADD CONSTRAINT FK_FTA_FarmerCredit_FTA_CreditDefinition FOREIGN KEY (FTA_CreditDefinition_ID)
	REFERENCES FTA_CreditDefinition(FTA_CreditDefinition_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerCredit ADD CONSTRAINT FK_FTA_FarmerCredit_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerCredit ADD CONSTRAINT FK_FTA_FarmerCredit_C_Charge FOREIGN KEY (C_Charge_ID)
	REFERENCES C_Charge(C_Charge_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerCredit ADD CONSTRAINT FK_FTA_FarmerCredit_C_UOM FOREIGN KEY (C_UOM_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerCredit ADD CONSTRAINT FK_FTA_FarmerCredit_Parent_FarmerCredit FOREIGN KEY (Parent_FarmerCredit_ID)
	REFERENCES FTA_FarmerCredit(FTA_FarmerCredit_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerCredit ADD CONSTRAINT FK_FTA_FarmerCredit_FTA_CreditAct FOREIGN KEY (FTA_CreditAct_ID)
	REFERENCES FTA_CreditAct(FTA_CreditAct_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerCredit ADD CONSTRAINT FK_FTA_FarmerCredit_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerLiquidation ADD CONSTRAINT FK_FTA_FarmerLiquidation_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerLiquidation ADD CONSTRAINT FK_FTA_FarmerLiquidation_C_ConversionType FOREIGN KEY (C_ConversionType_ID)
	REFERENCES C_ConversionType(C_ConversionType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerLiquidation ADD CONSTRAINT FK_FTA_FarmerLiquidation_C_Currency FOREIGN KEY (C_Currency_ID)
	REFERENCES C_Currency(C_Currency_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerLiquidation ADD CONSTRAINT FK_FTA_FarmerLiquidation_FTA_CategoryCalc FOREIGN KEY (FTA_CategoryCalc_ID)
	REFERENCES FTA_CategoryCalc(FTA_CategoryCalc_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerLiquidation ADD CONSTRAINT FK_FTA_FarmerLiquidation_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerLiquidation ADD CONSTRAINT FK_FTA_FarmerLiquidation_FTA_FarmerCredit FOREIGN KEY (FTA_FarmerCredit_ID)
	REFERENCES FTA_FarmerCredit(FTA_FarmerCredit_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerLiquidation ADD CONSTRAINT FK_FTA_FarmerLiquidation_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerLiquidationLine ADD CONSTRAINT FK_FTA_FarmerLiquidationLine_FTA_FarmerLiquidation FOREIGN KEY (FTA_FarmerLiquidation_ID)
	REFERENCES FTA_FarmerLiquidation(FTA_FarmerLiquidation_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmerLiquidationLine ADD CONSTRAINT FK_FTA_FarmerLiquidationLine_FTA_RecordWeight FOREIGN KEY (FTA_RecordWeight_ID)
	REFERENCES FTA_RecordWeight(FTA_RecordWeight_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Farming ADD CONSTRAINT FK_FTA_Farming_FTA_FarmerCredit FOREIGN KEY (FTA_FarmerCredit_ID)
	REFERENCES FTA_FarmerCredit(FTA_FarmerCredit_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Farming ADD CONSTRAINT FK_FTA_Farming_PlantingCycle FOREIGN KEY (PlantingCycle_ID)
	REFERENCES M_Lot(M_Lot_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Farming ADD CONSTRAINT FK_FTA_Farming_C_OrderLine FOREIGN KEY (C_OrderLine_ID)
	REFERENCES C_OrderLine(C_OrderLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Farming ADD CONSTRAINT FK_FTA_Farming_Category FOREIGN KEY (Category_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Farming ADD CONSTRAINT FK_FTA_Farming_FTA_FarmDivision FOREIGN KEY (FTA_FarmDivision_ID)
	REFERENCES FTA_FarmDivision(FTA_FarmDivision_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_FarmingStage ADD CONSTRAINT FK_FTA_FarmingStage_Category FOREIGN KEY (Category_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_InterestRate ADD CONSTRAINT FK_FTA_InterestRate_FTA_InterestType FOREIGN KEY (FTA_InterestType_ID)
	REFERENCES FTA_InterestType(FTA_InterestType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_InterestType ADD CONSTRAINT FK_FTA_InterestType_C_DocTypeTarget FOREIGN KEY (C_DocTypeTarget_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_InterestType ADD CONSTRAINT FK_FTA_InterestType_C_Charge FOREIGN KEY (C_Charge_ID)
	REFERENCES C_Charge(C_Charge_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_InterestType ADD CONSTRAINT FK_FTA_InterestType_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_FTA_Driver FOREIGN KEY (FTA_Driver_ID)
	REFERENCES FTA_Driver(FTA_Driver_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_M_Shipper FOREIGN KEY (M_Shipper_ID)
	REFERENCES M_Shipper(M_Shipper_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_FTA_EntryTicket FOREIGN KEY (FTA_EntryTicket_ID)
	REFERENCES FTA_EntryTicket(FTA_EntryTicket_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_FTA_VehicleType FOREIGN KEY (FTA_VehicleType_ID)
	REFERENCES FTA_VehicleType(FTA_VehicleType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_M_Warehouse FOREIGN KEY (M_Warehouse_ID)
	REFERENCES M_Warehouse(M_Warehouse_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_C_UOM_Volume FOREIGN KEY (C_UOM_Volume_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_C_UOM_Weight FOREIGN KEY (C_UOM_Weight_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_FTA_Vehicle FOREIGN KEY (FTA_Vehicle_ID)
	REFERENCES FTA_Vehicle(FTA_Vehicle_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_FTA_LoadOrder FOREIGN KEY (FTA_LoadOrder_ID)
	REFERENCES FTA_LoadOrder(FTA_LoadOrder_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_M_InOutLine FOREIGN KEY (M_InOutLine_ID)
	REFERENCES M_InOutLine(M_InOutLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_C_InvoiceLine FOREIGN KEY (C_InvoiceLine_ID)
	REFERENCES C_InvoiceLine(C_InvoiceLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_DD_OrderLine FOREIGN KEY (DD_OrderLine_ID)
	REFERENCES DD_OrderLine(DD_OrderLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_C_OrderLine FOREIGN KEY (C_OrderLine_ID)
	REFERENCES C_OrderLine(C_OrderLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_M_MovementLine FOREIGN KEY (M_MovementLine_ID)
	REFERENCES M_MovementLine(M_MovementLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_FTA_MobilizationGuide_FTA_VehicleType FOREIGN KEY (FTA_VehicleType_ID)
	REFERENCES FTA_VehicleType(FTA_VehicleType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_FTA_MobilizationGuide_FTA_Farming FOREIGN KEY (FTA_Farming_ID)
	REFERENCES FTA_Farming(FTA_Farming_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_FTA_MobilizationGuide_M_Warehouse FOREIGN KEY (M_Warehouse_ID)
	REFERENCES M_Warehouse(M_Warehouse_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_FTA_MobilizationGuide_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_FTA_MobilizationGuide_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_PaymentRequest ADD CONSTRAINT FK_FTA_PaymentRequest_C_PaySelectionCheck FOREIGN KEY (C_PaySelectionCheck_ID)
	REFERENCES C_PaySelectionCheck(C_PaySelectionCheck_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_PaymentRequest ADD CONSTRAINT FK_FTA_PaymentRequest_C_BP_BankAccount FOREIGN KEY (C_BP_BankAccount_ID)
	REFERENCES C_BP_BankAccount(C_BP_BankAccount_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_PaymentRequest ADD CONSTRAINT FK_FTA_PaymentRequest_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_PaymentRequest ADD CONSTRAINT FK_FTA_PaymentRequest_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_PaymentRequest ADD CONSTRAINT FK_FTA_PaymentRequest_FTA_FarmerCredit FOREIGN KEY (FTA_FarmerCredit_ID)
	REFERENCES FTA_FarmerCredit(FTA_FarmerCredit_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_PaymentRequest ADD CONSTRAINT FK_FTA_PaymentRequest_FTA_FarmerLiquidation FOREIGN KEY (FTA_FarmerLiquidation_ID)
	REFERENCES FTA_FarmerLiquidation(FTA_FarmerLiquidation_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_PaymentRequest ADD CONSTRAINT FK_FTA_PaymentRequest_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_PaymentRequest ADD CONSTRAINT FK_FTA_PaymentRequest_C_Charge FOREIGN KEY (C_Charge_ID)
	REFERENCES C_Charge(C_Charge_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_FTA_ProductsToApply_M_Warehouse FOREIGN KEY (M_Warehouse_ID)
	REFERENCES M_Warehouse(M_Warehouse_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_FTA_ProductsToApply_FTA_TechnicalForm FOREIGN KEY (FTA_TechnicalForm_ID)
	REFERENCES FTA_TechnicalForm(FTA_TechnicalForm_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_FTA_ProductsToApply_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_FTA_ProductsToApply_Dosage_Uom FOREIGN KEY (Dosage_Uom_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_FTA_ProductsToApply_C_UOM FOREIGN KEY (C_UOM_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_FTA_ProductsToApply_Suggested_Uom FOREIGN KEY (Suggested_Uom_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_FTA_ProductsToApply_FTA_TechnicalFormLine FOREIGN KEY (FTA_TechnicalFormLine_ID)
	REFERENCES FTA_TechnicalFormLine(FTA_TechnicalFormLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_QualityAnalysis ADD CONSTRAINT FK_FTA_QualityAnalysis_FTA_RecordWeight FOREIGN KEY (FTA_RecordWeight_ID)
	REFERENCES FTA_RecordWeight(FTA_RecordWeight_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_QualityAnalysis ADD CONSTRAINT FK_FTA_QualityAnalysis_FTA_Chute FOREIGN KEY (FTA_Chute_ID)
	REFERENCES FTA_Chute(FTA_Chute_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_QualityAnalysis ADD CONSTRAINT FK_FTA_QualityAnalysis_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_QualityAnalysis ADD CONSTRAINT FK_FTA_QualityAnalysis_Orig_QualityAnalysis FOREIGN KEY (Orig_QualityAnalysis_ID)
	REFERENCES FTA_QualityAnalysis(FTA_QualityAnalysis_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_QualityAnalysis ADD CONSTRAINT FK_FTA_QualityAnalysis_FTA_EntryTicket FOREIGN KEY (FTA_EntryTicket_ID)
	REFERENCES FTA_EntryTicket(FTA_EntryTicket_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_QualityAnalysis ADD CONSTRAINT FK_FTA_QualityAnalysis_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ReceptionCapacity ADD CONSTRAINT FK_FTA_ReceptionCapacity_M_Warehouse FOREIGN KEY (M_Warehouse_ID)
	REFERENCES M_Warehouse(M_Warehouse_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_RecordWeight ADD CONSTRAINT FK_FTA_RecordWeight_FTA_LoadOrder FOREIGN KEY (FTA_LoadOrder_ID)
	REFERENCES FTA_LoadOrder(FTA_LoadOrder_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_RecordWeight ADD CONSTRAINT FK_FTA_RecordWeight_FTA_Chute FOREIGN KEY (FTA_Chute_ID)
	REFERENCES FTA_Chute(FTA_Chute_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_RecordWeight ADD CONSTRAINT FK_FTA_RecordWeight_FTA_EntryTicket FOREIGN KEY (FTA_EntryTicket_ID)
	REFERENCES FTA_EntryTicket(FTA_EntryTicket_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_RecordWeight ADD CONSTRAINT FK_FTA_RecordWeight_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_RecordWeight ADD CONSTRAINT FK_FTA_RecordWeight_C_UOM FOREIGN KEY (C_UOM_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_RecordWeight ADD CONSTRAINT FK_FTA_RecordWeight_FTA_QualityAnalysis FOREIGN KEY (FTA_QualityAnalysis_ID)
	REFERENCES FTA_QualityAnalysis(FTA_QualityAnalysis_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_SuggestedProduct ADD CONSTRAINT FK_FTA_SuggestedProduct_M_Product_Category FOREIGN KEY (M_Product_Category_ID)
	REFERENCES M_Product_Category(M_Product_Category_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_SuggestedProduct ADD CONSTRAINT FK_FTA_SuggestedProduct_Dosage_Uom FOREIGN KEY (Dosage_Uom_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_SuggestedProduct ADD CONSTRAINT FK_FTA_SuggestedProduct_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_SuggestedProduct ADD CONSTRAINT FK_FTA_SuggestedProduct_Category FOREIGN KEY (Category_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_SuggestedProduct ADD CONSTRAINT FK_FTA_SuggestedProduct_FTA_ObservationType FOREIGN KEY (FTA_ObservationType_ID)
	REFERENCES FTA_ObservationType(FTA_ObservationType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_SuggestedProduct ADD CONSTRAINT FK_FTA_SuggestedProduct_FTA_FarmingStage FOREIGN KEY (FTA_FarmingStage_ID)
	REFERENCES FTA_FarmingStage(FTA_FarmingStage_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_TechnicalForm ADD CONSTRAINT FK_FTA_TechnicalForm_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_TechnicalForm ADD CONSTRAINT FK_FTA_TechnicalForm_FTA_Farm FOREIGN KEY (FTA_Farm_ID)
	REFERENCES FTA_Farm(FTA_Farm_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_TechnicalForm ADD CONSTRAINT FK_FTA_TechnicalForm_SalesRep FOREIGN KEY (SalesRep_ID)
	REFERENCES AD_User(AD_User_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_TechnicalForm ADD CONSTRAINT FK_FTA_TechnicalForm_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_FTA_TechnicalFormLine_FTA_Farming FOREIGN KEY (FTA_Farming_ID)
	REFERENCES FTA_Farming(FTA_Farming_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_FTA_TechnicalFormLine_FTA_TechnicalForm FOREIGN KEY (FTA_TechnicalForm_ID)
	REFERENCES FTA_TechnicalForm(FTA_TechnicalForm_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_FTA_TechnicalFormLine_FTA_FarmingStage FOREIGN KEY (FTA_FarmingStage_ID)
	REFERENCES FTA_FarmingStage(FTA_FarmingStage_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_FTA_TechnicalFormLine_FTA_FarmDivision FOREIGN KEY (FTA_FarmDivision_ID)
	REFERENCES FTA_FarmDivision(FTA_FarmDivision_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_FTA_TechnicalFormLine_FTA_ObservationType FOREIGN KEY (FTA_ObservationType_ID)
	REFERENCES FTA_ObservationType(FTA_ObservationType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_FTA_TechnicalFormLine_FTA_Farm FOREIGN KEY (FTA_Farm_ID)
	REFERENCES FTA_Farm(FTA_Farm_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Vehicle ADD CONSTRAINT FK_FTA_Vehicle_FTA_VehicleModel FOREIGN KEY (FTA_VehicleModel_ID)
	REFERENCES FTA_VehicleModel(FTA_VehicleModel_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Vehicle ADD CONSTRAINT FK_FTA_Vehicle_FTA_VehicleType FOREIGN KEY (FTA_VehicleType_ID)
	REFERENCES FTA_VehicleType(FTA_VehicleType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Vehicle ADD CONSTRAINT FK_FTA_Vehicle_M_Shipper FOREIGN KEY (M_Shipper_ID)
	REFERENCES M_Shipper(M_Shipper_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Vehicle ADD CONSTRAINT FK_FTA_Vehicle_FTA_VehicleBrand FOREIGN KEY (FTA_VehicleBrand_ID)
	REFERENCES FTA_VehicleBrand(FTA_VehicleBrand_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_VehicleModel ADD CONSTRAINT FK_FTA_VehicleModel_FTA_VehicleType FOREIGN KEY (FTA_VehicleType_ID)
	REFERENCES FTA_VehicleType(FTA_VehicleType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_VehicleModel ADD CONSTRAINT FK_FTA_VehicleModel_FTA_VehicleBrand FOREIGN KEY (FTA_VehicleBrand_ID)
	REFERENCES FTA_VehicleBrand(FTA_VehicleBrand_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CategoryCalc ADD CONSTRAINT FK_FTA_CategoryCalc_FTA_CategoryCalcGroup FOREIGN KEY (FTA_CategoryCalcGroup_ID)
	REFERENCES FTA_CategoryCalcGroup(FTA_CategoryCalcGroup_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CategoryCalcFilter ADD CONSTRAINT FK_FTA_CategoryCalcFilter_M_AttributeValue2 FOREIGN KEY (M_AttributeValue2_ID)
	REFERENCES M_AttributeValue(M_AttributeValue_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CategoryCalcFilter ADD CONSTRAINT FK_FTA_CategoryCalcFilter_FTA_CategoryCalcFilter FOREIGN KEY (FTA_CategoryCalcFilter_ID)
	REFERENCES FTA_CategoryCalcFilter(FTA_CategoryCalcFilter_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CategoryCalcFilter ADD CONSTRAINT FK_FTA_CategoryCalcFilter_FTA_CategoryCalc FOREIGN KEY (FTA_CategoryCalc_ID)
	REFERENCES FTA_CategoryCalc(FTA_CategoryCalc_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CategoryCalcFilter ADD CONSTRAINT FK_FTA_CategoryCalcFilter_M_Attribute FOREIGN KEY (M_Attribute_ID)
	REFERENCES M_Attribute(M_Attribute_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CategoryCalcFilter ADD CONSTRAINT FK_FTA_CategoryCalcFilter_M_AttributeValue FOREIGN KEY (M_AttributeValue_ID)
	REFERENCES M_AttributeValue(M_AttributeValue_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CategoryCalcFilter ADD CONSTRAINT FK_FTA_CategoryCalcFilter_PlantingCycle FOREIGN KEY (PlantingCycle_ID)
	REFERENCES M_Lot(M_Lot_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CDL_ReportLine ADD CONSTRAINT FK_FTA_CDL_ReportLine_FTA_CDL_Report FOREIGN KEY (FTA_CDL_Report_ID)
	REFERENCES FTA_CDL_Report(FTA_CDL_Report_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_CDL_ReportLine ADD CONSTRAINT FK_FTA_CDL_ReportLine_FTA_CDL_Category FOREIGN KEY (FTA_CDL_Category_ID)
	REFERENCES FTA_CDL_Category(FTA_CDL_Category_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Chute ADD CONSTRAINT FK_FTA_Chute_M_Warehouse FOREIGN KEY (M_Warehouse_ID)
	REFERENCES M_Warehouse(M_Warehouse_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_Chute ADD CONSTRAINT FK_FTA_Chute_M_Locator FOREIGN KEY (M_Locator_ID)
	REFERENCES M_Locator(M_Locator_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicket ADD CONSTRAINT FK_FTA_EntryTicket_FTA_LoadOrder FOREIGN KEY (FTA_LoadOrder_ID)
	REFERENCES FTA_LoadOrder(FTA_LoadOrder_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_EntryTicket ADD CONSTRAINT FK_FTA_EntryTicket_C_Order FOREIGN KEY (C_Order_ID)
	REFERENCES C_Order(C_Order_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_InterestRate ADD CONSTRAINT FK_FTA_InterestRate_FTA_InterestType FOREIGN KEY (FTA_InterestType_ID)
	REFERENCES FTA_InterestType(FTA_InterestType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_FTA_Vehicle FOREIGN KEY (FTA_Vehicle_ID)
	REFERENCES FTA_Vehicle(FTA_Vehicle_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_FTA_Driver FOREIGN KEY (FTA_Driver_ID)
	REFERENCES FTA_Driver(FTA_Driver_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_C_UOM_Volume FOREIGN KEY (C_UOM_Volume_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_M_Shipper FOREIGN KEY (M_Shipper_ID)
	REFERENCES M_Shipper(M_Shipper_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_C_UOM_Weight FOREIGN KEY (C_UOM_Weight_ID)
	REFERENCES C_UOM(C_UOM_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_M_Warehouse FOREIGN KEY (M_Warehouse_ID)
	REFERENCES M_Warehouse(M_Warehouse_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_FTA_VehicleType FOREIGN KEY (FTA_VehicleType_ID)
	REFERENCES FTA_VehicleType(FTA_VehicleType_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrder ADD CONSTRAINT FK_FTA_LoadOrder_FTA_EntryTicket FOREIGN KEY (FTA_EntryTicket_ID)
	REFERENCES FTA_EntryTicket(FTA_EntryTicket_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_DD_OrderLine FOREIGN KEY (DD_OrderLine_ID)
	REFERENCES DD_OrderLine(DD_OrderLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_FTA_LoadOrder FOREIGN KEY (FTA_LoadOrder_ID)
	REFERENCES FTA_LoadOrder(FTA_LoadOrder_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_C_OrderLine FOREIGN KEY (C_OrderLine_ID)
	REFERENCES C_OrderLine(C_OrderLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_C_InvoiceLine FOREIGN KEY (C_InvoiceLine_ID)
	REFERENCES C_InvoiceLine(C_InvoiceLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_M_InOutLine FOREIGN KEY (M_InOutLine_ID)
	REFERENCES M_InOutLine(M_InOutLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_LoadOrderLine ADD CONSTRAINT FK_FTA_LoadOrderLine_M_MovementLine FOREIGN KEY (M_MovementLine_ID)
	REFERENCES M_MovementLine(M_MovementLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_FTA_MobilizationGuide_FTA_RecordWeight FOREIGN KEY (FTA_RecordWeight_ID)
	REFERENCES FTA_RecordWeight(FTA_RecordWeight_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_FTA_MobilizationGuide_FTA_LoadOrder FOREIGN KEY (FTA_LoadOrder_ID)
	REFERENCES FTA_LoadOrder(FTA_LoadOrder_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_FTA_MobilizationGuide_Owner FOREIGN KEY (Owner_ID)
	REFERENCES M_AttributeValue(M_AttributeValue_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_FTA_MobilizationGuide_AD_OrgTrx FOREIGN KEY (AD_OrgTrx_ID)
	REFERENCES AD_Org(AD_Org_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_PaymentRequest ADD CONSTRAINT FK_FTA_PaymentRequest_C_BP_BankAccount FOREIGN KEY (C_BP_BankAccount_ID)
	REFERENCES C_BP_BankAccount(C_BP_BankAccount_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_PaymentRequest ADD CONSTRAINT FK_FTA_PaymentRequest_C_Invoice FOREIGN KEY (C_Invoice_ID)
	REFERENCES C_Invoice(C_Invoice_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductListApproved ADD CONSTRAINT FK_FTA_ProductListApproved_FTA_CreditDefinition FOREIGN KEY (FTA_CreditDefinition_ID)
	REFERENCES FTA_CreditDefinition(FTA_CreditDefinition_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductListApproved ADD CONSTRAINT FK_FTA_ProductListApproved_Substitute FOREIGN KEY (Substitute_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductListApproved ADD CONSTRAINT FK_FTA_ProductListApproved_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_FTA_ProductsToApply_M_Warehouse FOREIGN KEY (M_Warehouse_ID)
	REFERENCES M_Warehouse(M_Warehouse_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_FTA_ProductsToApply_FTA_TechnicalForm FOREIGN KEY (FTA_TechnicalForm_ID)
	REFERENCES FTA_TechnicalForm(FTA_TechnicalForm_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_QualityAnalysis ADD CONSTRAINT FK_FTA_QualityAnalysis_FTA_Chute FOREIGN KEY (FTA_Chute_ID)
	REFERENCES FTA_Chute(FTA_Chute_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_QualityAnalysis ADD CONSTRAINT FK_FTA_QualityAnalysis_FTA_RecordWeight FOREIGN KEY (FTA_RecordWeight_ID)
	REFERENCES FTA_RecordWeight(FTA_RecordWeight_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_RecordWeight ADD CONSTRAINT FK_FTA_RecordWeight_FTA_LoadOrder FOREIGN KEY (FTA_LoadOrder_ID)
	REFERENCES FTA_LoadOrder(FTA_LoadOrder_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_RecordWeight ADD CONSTRAINT FK_FTA_RecordWeight_FTA_Chute FOREIGN KEY (FTA_Chute_ID)
	REFERENCES FTA_Chute(FTA_Chute_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_RecordWeight ADD CONSTRAINT FK_FTA_RecordWeight_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;
ALTER TABLE FTA_RecordWeight ADD CONSTRAINT FK_FTA_RecordWeight_M_ProductionLine FOREIGN KEY (M_ProductionLine_ID)
	REFERENCES M_ProductionLine(M_ProductionLine_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT;