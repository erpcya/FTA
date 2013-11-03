--DROP VIEW FTA_RV_LiquidationsForInvoice;
Create Or Replace View FTA_RV_LiquidationsForInvoice AS
Select 
fl.AD_Client_ID,
fl.AD_Org_ID,
fl.Amt,
fl.C_BPartner_ID,
fl.C_ConversionType_ID,
fl.C_Currency_ID,
fl.C_DocType_ID,
fl.C_Invoice_ID,
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
LiquidationAvailable(fl.FTA_FarmerLiquidation_ID) AvailableAmt
From 
FTA_FarmerLiquidation fl;