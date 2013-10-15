﻿CREATE OR REPLACE VIEW FTA_RV_QualityAnalisys AS
SELECT qa.AD_Client_ID, qa.AD_Org_ID, qa.Created, qa.CreatedBy, qa.IsActive, qa.Updated, qa.UpdatedBy, 
qa.AnalysisType, qa.C_DocType_ID, qa.DateDoc, qa.Description, 
qa.DocStatus, qa.DocumentNo, qa.FTA_EntryTicket_ID, qa.FTA_QualityAnalysis_ID, 
qa.IsApproved, qa.M_Product_ID, qa.Orig_QualityAnalysis_ID, qa.ProductStatus, qa.QualityAnalysis_ID
FROM FTA_QualityAnalysis qa