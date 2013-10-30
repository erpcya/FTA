-- Oct 28, 2013 1:12:50 AM VET
-- Farming Technical Assistance
CREATE OR REPLACE VIEW FTA_RV_LiquidationForPayment AS 
SELECT fl.AD_Client_ID,
	fl.AD_Org_ID,
	fl.Amt,
	fl.C_BPartner_ID,
	fl.C_Currency_ID,
	fl.C_DocType_ID,
	fl.C_Invoice_ID,
	fl.DateDoc,
	fl.DocStatus,
	fl.DocAction,
	fl.DocumentNo,
	fl.FTA_FarmerCredit_ID,
	fl.FTA_FarmerLiquidation_ID,
	fl.M_Product_ID,
	fl.NetWeight
FROM 
FTA_FarmerLiquidation fl 
WHERE
NOT EXISTS 
(Select 1 FROM FTA_PaymentRequest pr 
	WHERE pr.FTA_FarmerLiquidation_ID =  fl.FTA_FarmerLiquidation_ID 
	AND pr.DocStatus IN ('CO','CL','DR','IP'));