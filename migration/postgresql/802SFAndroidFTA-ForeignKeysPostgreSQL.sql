ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_MobilizationGuide_Asset FOREIGN KEY (A_Asset_ID)
REFERENCES A_Asset (A_Asset_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_MobilizationGuide_DocType FOREIGN KEY (C_DocType_ID)
REFERENCES C_DocType (C_DocType_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_MobilizationGuide_Farming FOREIGN KEY (FTA_Farming_ID)
REFERENCES FTA_Farming (FTA_Farming_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_MobilizationGuide ADD CONSTRAINT FK_MobilizationGuide_Shipper FOREIGN KEY (M_Shipper_ID)
REFERENCES M_Shipper (M_Shipper_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_Farm ADD CONSTRAINT FK_Farm_BPartner FOREIGN KEY (C_BPartner_Location_ID)
REFERENCES C_BPartner_Location (C_BPartner_Location_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_FarmDivision ADD CONSTRAINT FK_FarmDivision_Farm FOREIGN KEY (FTA_Farm_ID)
REFERENCES FTA_Farm (FTA_Farm_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;


ALTER TABLE FTA_Farming ADD CONSTRAINT FK_Farming_Order FOREIGN KEY (C_Order_ID)
REFERENCES C_Order (C_Order_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;


ALTER TABLE FTA_Farming ADD CONSTRAINT FK_Farming_FarmDivision FOREIGN KEY (FTA_FarmDivision_ID)
REFERENCES FTA_FarmDivision (FTA_FarmDivision_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;


ALTER TABLE FTA_SuggestedProduct ADD CONSTRAINT FK_SuggestedProduct_FarmingStage FOREIGN KEY (FTA_FarmingStage_ID)
REFERENCES FTA_FarmingStage (FTA_FarmingStage_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_SuggestedProduct ADD CONSTRAINT FK_SuggestedProduct_ObservationType FOREIGN KEY (FTA_ObservationType_ID)
REFERENCES FTA_ObservationType (FTA_ObservationType_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_SuggestedProduct ADD CONSTRAINT FK_SuggestedProduct_ProductCategory FOREIGN KEY (M_Product_Category_ID)
REFERENCES M_Product_Category (M_Product_Category_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_SuggestedProduct ADD CONSTRAINT FK_SuggestedProduct_Product FOREIGN KEY (M_Product_ID)
REFERENCES M_Product (M_Product_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_TechnicalForm ADD CONSTRAINT FK_TechnicalForm_BPartner FOREIGN KEY (C_BPartner_ID)
REFERENCES C_BPartner (C_BPartner_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_TechnicalForm ADD CONSTRAINT FK_TechnicalForm_DocType FOREIGN KEY (C_DocType_ID)
REFERENCES C_DocType (C_DocType_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_TechnicalForm ADD CONSTRAINT FK_TechnicalForm_Farm FOREIGN KEY (FTA_Farm_ID)
REFERENCES FTA_Farm (FTA_Farm_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_TechnicalFormLine_FarmDivision FOREIGN KEY (FTA_FarmDivision_ID)
REFERENCES FTA_FarmDivision (FTA_FarmDivision_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_TechnicalFormLine_Farming FOREIGN KEY (FTA_Farming_ID)
REFERENCES FTA_Farming (FTA_Farming_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_TechnicalFormLine_FarmingStage FOREIGN KEY (FTA_FarmingStage_ID)
REFERENCES FTA_FarmingStage (FTA_FarmingStage_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_TechnicalFormLine_ObservationType FOREIGN KEY (FTA_ObservationType_ID)
REFERENCES FTA_ObservationType (FTA_ObservationType_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_TechnicalFormLine ADD CONSTRAINT FK_TechnicalFormLine_TechnicalForm FOREIGN KEY (FTA_TechnicalForm_ID)
REFERENCES FTA_TechnicalForm (FTA_TechnicalForm_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;


ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_ProductsToApply_TecnicalForm FOREIGN KEY (FTA_TechnicalForm_ID)
REFERENCES FTA_TechnicalForm (FTA_TechnicalForm_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;

ALTER TABLE FTA_ProductsToApply ADD CONSTRAINT FK_ProductsToApply_TecnicalFormLine FOREIGN KEY (FTA_TechnicalFormLine_ID)
REFERENCES FTA_TechnicalFormLine (FTA_TechnicalFormLine_ID) 
ON UPDATE CASCADE 
ON DELETE RESTRICT;