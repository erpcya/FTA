--DROP VIEW FTA_RV_AllocationCreditAct;
CREATE OR REPLACE VIEW FTA_RV_AllocationCreditAct AS 
SELECT 
fc.AD_Client_ID,
fc.AD_Org_ID,
fc.Amt,
fc.Beneficiary_ID,
fc.C_BPartner_ID,
fc.C_Charge_ID,
fc.C_DocType_ID,
fc.C_UOM_ID,
fc.DateDoc,
fc.Description,
fc.DocAction,
fc.DocStatus,
fc.DocumentNo,
fc.FarmingAlloc,
fc.FTA_CreditAct_ID,
fc.FTA_CreditDefinition_ID,
fc.FTA_FarmerCredit_ID,
fc.IsActive,
fc.IsApproved,
fc.Processed,
fc.Processing,
fc.Qty,
CASE WHEN fc.FTA_CreditAct_ID IS NULL THEN 'N' ELSE 'Y' END AS IsAllocated,
CASE WHEN fc.ApprovedQty= 0 THEN fc.Qty ELSE fc.ApprovedQty END AS ApprovedQty,
CASE WHEN fc.ApprovedAmt= 0 THEN fc.Amt ELSE fc.ApprovedAmt END AS ApprovedAmt
FROM FTA_FarmerCredit fc 
WHERE fc.DocStatus IN('DR','IP') 
AND (
  (Exists (Select 1 From FTA_Farming fming Where fc.FTA_FarmerCredit_ID=fming.FTA_FarmerCredit_ID) And fc.CreditType<>'L') 
  Or fc.CreditType='L')
;