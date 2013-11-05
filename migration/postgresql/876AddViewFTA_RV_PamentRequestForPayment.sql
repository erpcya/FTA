CREATE OR REPLACE VIEW FTA_RV_PamentRequestForPayment AS 
SELECT 
pr.AD_Client_ID,
pr.AD_Org_ID,
pr.C_BPartner_ID,
pr.C_DocType_ID,
pr.DateDoc,
pr.DocAction,
pr.DocStatus,
pr.DocumentNo,
pr.FTA_FarmerCredit_ID,
pr.FTA_FarmerLiquidation_ID,
pr.FTA_PaymentRequest_ID,
pr.IsActive,
pr.IsApproved,
pr.Processed,
pr.PayAmt,
pr.M_Product_ID,
pr.C_Charge_ID,
pr.Name,
pr.Description
From FTA_PaymentRequest pr
WHERE C_PaySelectionCheck_ID IS NULL ;