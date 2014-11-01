CREATE OR REPLACE VIEW FTA_RV_BillOfExchangeDoc AS 
SELECT 
i.AD_Client_ID,
i.AD_Org_ID,
i.C_Invoice_ID,
i.DocumentNo,
i.DateInvoiced,
i.DateAcct,
i.DocStatus,
i.DocAction,
i.IsSOTrx,
i.GrandTotal,
i.FTA_FarmerCredit_ID,
i.C_BPartner_ID,
i.C_Doctype_ID,
i.C_DocTypeTarget_ID
FROM
C_Invoice i 
INNER JOIN FTA_FarmerCredit fc ON i.FTA_FarmerCredit_ID = fc.FTA_FarmerCredit_ID
WHERE
NOT EXISTS (SELECT 1 FROM FTA_BillofExchange boe WHERE boe.DocStatus IN ('CO','CL') AND boe.C_Invoice_ID = i.C_Invoice_ID);
