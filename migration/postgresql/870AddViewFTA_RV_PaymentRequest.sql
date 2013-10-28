-- DROP VIEW FTA_RV_PaymentRequest ;
CREATE OR REPLACE VIEW FTA_RV_PaymentRequest AS 
SELECT 
	pr.AD_Client_ID, 
	pr.AD_Org_ID, 
	pr.Created, 
	pr.CreatedBy, 
	pr.Updated, 
	pr.UpdatedBy, 
	pr.IsActive, 	
	pr.C_BPartner_ID, 
	COALESCE(bp.Value, bp.TaxID) AS BPTaxID,
	bp.Name ||' '|| COALESCE(bp.Name2,'') AS BPName,
	bpl.C_BPartner_Location_ID,	
	pr.M_Product_ID,
	pr.C_Charge_ID, 
	COALESCE(c.Name, p.Name, pr.Description) AS Item, 	
	CASE
		WHEN COALESCE(c.Name, p.Name) IS NOT NULL THEN pr.Description
                ELSE NULL
        END AS Description, 
	
	pr.C_DocType_ID, 
	pr.DateDoc,  
	pr.DocStatus, 
	pr.DocumentNo, 
	pr.FTA_FarmerCredit_ID, 
	pr.FTA_FarmerLiquidation_ID, 
	pr.FTA_PaymentRequest_ID, 
	pr.IsApproved,	 
	pr.Name, 
	pr.PayAmt,
	pr.FTA_PaymentRequest_ID FTA_RV_PaymentRequest_ID,
	oi.TaxID,
	oi.C_Location_ID Org_Location_ID	
FROM FTA_PaymentRequest pr
INNER JOIN C_BPartner bp ON (pr.C_BPartner_ID = bp.C_BPartner_ID)
LEFT JOIN C_BPartner_Location bpl ON (bp.C_BPartner_ID = bpl.C_BPartner_ID )
INNER JOIN C_DocType dt ON (dt.C_DocType_ID = pr.C_DocType_ID)
INNER JOIN FTA_FarmerCredit fc ON (pr.FTA_FarmerCredit_ID = fc.FTA_FarmerCredit_ID)
LEFT JOIN C_Charge c ON (pr.C_Charge_ID = c.C_Charge_ID)
LEFT JOIN FTA_FarmerLiquidation fl ON (fl.FTA_FarmerLiquidation_ID = pr.FTA_FarmerLiquidation_ID) 
LEFT JOIN M_Product p ON (pr.M_Product_ID = p.M_Product_ID)
LEFT JOIN AD_OrgInfo oi ON (oi.AD_Org_ID = pr.AD_Org_ID)
	
	