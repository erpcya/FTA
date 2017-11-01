--DROP VIEW FTA_RV_LiquidationsForInvoice;
CREATE OR REPLACE VIEW FTA_RV_LiquidationsForInvoice AS
SELECT 
fl.AD_Client_ID,
fl.AD_Org_ID,
fl.Amt,
fl.C_BPartner_ID,
fl.C_ConversionType_ID,
fl.C_Currency_ID,
fl.C_DocType_ID,
--fl.C_Invoice_ID,
fl.DateDoc,
fl.Description,
fl.DocAction,
fl.DocStatus,
fl.DocumentNo,
fl.FTA_CategoryCalc_ID,
fl.FTA_FarmerCredit_ID,
fl.FTA_FarmerLiquidation_ID,
fl.IsActive,
fl.IsApproved,
fl.M_Product_ID,
fl.NetWeight,
fl.Processed,
LiquidationAvailable(fl.FTA_FarmerLiquidation_ID) AvailableAmt,
fming.C_Order_ID
FROM 
FTA_FarmerLiquidation fl
LEFT JOIN (SELECT DISTINCT col.C_Order_ID, COALESCE(fc.Parent_FarmerCredit_ID, fming.FTA_FarmerCredit_ID) FTA_FarmerCredit_ID,fming.Category_ID AS M_Product_ID  
		FROM  FTA_Farming fming 
		INNER JOIN FTA_FarmerCredit fc ON(fc.FTA_FarmerCredit_ID = fming.FTA_FarmerCredit_ID)
		INNER JOIN C_OrderLine col ON fming.C_OrderLine_ID = col.C_OrderLine_ID) fming ON fl.FTA_FarmerCredit_ID = fming.FTA_FarmerCredit_ID AND fming.M_Product_ID = fl.M_Product_ID
;