--DROP VIEW FTA_RV_AllocationCreditAct;
CREATE Or Replace View FTA_RV_AllocationCreditAct AS 
Select 
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
Case When fc.FTA_CreditAct_ID IS Null Then 'N' Else 'Y' End As IsAllocated,
fc.ApprovedQty,
fc.ApprovedAmt
From FTA_FarmerCredit fc 
Inner Join C_DocType cdt On fc.C_DocType_ID=cdt.C_DocType_ID
Where fc.DocStatus In('DR','IP') 
AND (
  (Exists (Select 1 From FTA_Farming fming Where fc.FTA_FarmerCredit_ID=fming.FTA_FarmerCredit_ID) And cdt.DocBaseType='FFC') 
  Or cdt.DocBaseType='FFL')
;