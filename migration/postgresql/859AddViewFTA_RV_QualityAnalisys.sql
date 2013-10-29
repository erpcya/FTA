--DROP VIEW FTA_RV_QualityAnalisys 
CREATE OR REPLACE VIEW FTA_RV_QualityAnalisys AS
SELECT qa.AD_Client_ID, qa.AD_Org_ID, qa.Created, qa.CreatedBy, qa.IsActive, qa.Updated, qa.UpdatedBy, 
qa.AnalysisType, qa.C_DocType_ID, qa.DateDoc, qa.Description, 
qa.DocStatus, qa.DocumentNo, qa.FTA_EntryTicket_ID, qa.FTA_QualityAnalysis_ID, 
qa.IsApproved, qa.M_Product_ID, qa.Orig_QualityAnalysis_ID, qa.ProductStatus, qa.QualityAnalysis_ID,
oi.C_Location_ID AS Org_Location_ID, oi.TaxID,
et.FTA_Driver_ID,
et.FTA_Vehicle_ID,
qa.FTA_QualityAnalysis_ID AS FTA_RV_QualityAnalisys_ID,
et.FTA_MobilizationGuide_ID
FROM FTA_QualityAnalysis qa
INNER JOIN AD_OrgInfo oi ON(oi.AD_Org_ID = qa.AD_Org_ID)
INNER JOIN FTA_EntryTicket et ON (et.FTA_EntryTicket_ID = qa.FTA_EntryTicket_ID)
INNER JOIN FTA_Driver d ON (d.FTA_Driver_ID = et.FTA_Driver_ID)
INNER JOIN FTA_Vehicle v ON (v.FTA_Vehicle_ID = et.FTA_Vehicle_ID)
INNER JOIN FTA_MobilizationGuide mg ON (mg.FTA_MobilizationGuide_ID = et.FTA_MobilizationGuide_ID)