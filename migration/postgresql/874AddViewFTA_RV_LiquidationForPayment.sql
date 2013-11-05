CREATE OR REPLACE VIEW FTA_RV_LiquidationForPayment AS 
SELECT fl.AD_Client_ID,
	fl.AD_Org_ID,
	fl.Amt,
	fl.C_BPartner_ID,
	fl.C_Currency_ID,
	fl.C_DocType_ID,
	fl.DateDoc,
	fl.DocStatus,
	fl.DocAction,
	fl.DocumentNo,
	fl.FTA_FarmerCredit_ID,
	fl.FTA_FarmerLiquidation_ID,
	fl.M_Product_ID,
	fl.NetWeight,
	LiquidationAvailable(fl.FTA_FarmerLiquidation_ID) AvailableAmt,
	LiquidationAvailable(fl.FTA_FarmerLiquidation_ID) PayAmt
FROM 
FTA_FarmerLiquidation fl
Where LiquidationAvailable(fl.FTA_FarmerLiquidation_ID)> 0
;