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
	fl.NetWeight,
	LiquidationAvailable(fl.FTA_FarmerLiquidation_ID)-Coalesce(pr.PayAmt,0) AvailableAmt,
	LiquidationAvailable(fl.FTA_FarmerLiquidation_ID)-Coalesce(pr.PayAmt,0) PayAmt
FROM 
FTA_FarmerLiquidation fl
Left Join (Select FTA_PaymentRequest.FTA_FarmerLiquidation_ID,Sum(PayAmt) PayAmt From FTA_PaymentRequest Group By FTA_PaymentRequest.FTA_FarmerLiquidation_ID) pr On fl.FTA_FarmerLiquidation_ID=pr.FTA_FarmerLiquidation_ID
Where LiquidationAvailable(fl.FTA_FarmerLiquidation_ID)-Coalesce(pr.PayAmt,0) > 0
;