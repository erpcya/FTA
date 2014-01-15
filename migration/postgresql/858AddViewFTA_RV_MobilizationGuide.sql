--DROP VIEW FTA_RV_MobilizationGuide
CREATE OR REPLACE VIEW FTA_RV_MobilizationGuide AS 
SELECT  
	mg.AD_Client_ID, 
	mg.AD_Org_ID, 
	oi.C_Location_ID AS Org_Location_ID, 
	oi.TaxID, 
	mg.C_BPartner_ID, 
	COALESCE(bp.TaxID,bp.Value) AS BPTaxID, 
	bp.Name AS BPName,
	bp.Name2 AS BPName2,
	fa.C_BPartner_Location_ID,
	mg.C_DocType_ID,
	mg.Description,
	mg.DocStatus,
	mg.DocAction, 
	mg.DocumentNo,
	mg.FTA_Farming_ID,
	mg.FTA_MobilizationGuide_ID,
	mg.IsActive,
	mg.Processed,
	mg.ValidTo,
	mg.M_Warehouse_ID,
	ci.C_Uom_Weight_ID, 
	mg.FTA_VehicleType_ID,
	vt.Name AS VehicleType,vt.LoadCapacity,
	--l.Address1||' '||l.Address2||' '||l.Address3||' '||l.Address4 AS Address,
	l.C_Region_ID,
	l.C_Country_ID,
	l.C_City_ID,
	fa.Name AS FarmName,
	p.Value,
	p.Name,
	p.C_Uom_ID,
	mg.FTA_MobilizationGuide_ID AS FTA_RV_MobilizationGuide_ID,
	mg.DateDoc,
	ROUND((FTA_RateConversion(p.M_Product_ID, ci.C_UOM_Conversion_ID ) * QtyToDeliver),2) QtyToDeliver ,
	ci.C_Uom_Area_ID ,
	p.M_Product_ID,
	ci.C_UOM_Conversion_ID,
	fd.FTA_FarmDivision_ID,
	lo.M_Lot_ID
	,l.C_Location_ID--,
	--bpl.C_Location_ID

FROM FTA_MobilizationGuide mg
INNER JOIN FTA_Farming f ON (f.FTA_Farming_ID = mg.FTA_Farming_ID)
INNER JOIN M_Lot lo ON (lo.M_Lot_ID = f.PlantingCycle_ID)
INNER JOIN M_Product p ON (f.Category_ID = p.M_Product_ID)
INNER JOIN FTA_FarmDivision fd ON (fd.FTA_FarmDivision_ID = f.FTA_FarmDivision_ID)
INNER JOIN FTA_Farm fa ON (fa.FTA_Farm_ID = fd.FTA_Farm_ID)
INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID = fa.C_BPartner_ID)
LEFT JOIN C_BPartner_Location bpl ON (bpl.C_BPartner_Location_ID = fa.C_BPartner_Location_ID )
LEFT JOIN C_Location l ON (l.C_Location_ID = bpl.C_Location_ID)
LEFT JOIN FTA_VehicleType vt ON (vt.FTA_VehicleType_ID = mg.FTA_VehicleType_ID)
LEFT JOIN M_Warehouse w ON (w.M_Warehouse_ID = mg.M_Warehouse_ID)
LEFT JOIN AD_OrgInfo oi ON (oi.AD_Org_ID = mg.AD_Org_ID)
LEFT JOIN AD_ClientInfo ci ON (ci.AD_Client_ID = mg.AD_Client_ID)
LEFT JOIN C_UOM u ON (u.C_Uom_ID = ci.C_UOM_Conversion_ID)

--WHERE FTA_MobilizationGuide_ID=1000118

--SELECT * FROM C_Region WHERE C_Region_ID = 490
	


--SELECT ROUND(FTA_RateConversion(1027289,1000002) * QtyToDeliver,2),QtyToDeliver FROM FTA_MobilizationGuide mg

/*
SELECT 
	c.MultiplyRate 
FROM	C_UOM_Conversion c
INNER JOIN C_UOM uomTo ON (c.C_UOM_TO_ID=uomTo.C_UOM_ID)
--LEFT JOIN M_Product p ON (p.M_Product_ID = c.M_Product_ID) 
WHERE 
	c.IsActive='Y' 
	AND uomTo.C_UOM_ID=1000002
	--AND c.C_UOM_TO_ID=p_C_UOM_To_ID
	AND c.M_Product_ID = 1027289 
ORDER BY 
	c.AD_Client_ID DESC, 
	c.AD_Org_ID DESC;
SELECT 
	c.MultiplyRate 
FROM	C_UOM_Conversion c
INNER JOIN C_UOM uomTo ON (c.C_UOM_TO_ID=uomTo.C_UOM_ID)
--LEFT JOIN M_Product p ON (p.M_Product_ID = c.M_Product_ID) 
WHERE 
	c.IsActive='Y' 
	AND uomTo.C_UOM_ID=1000002
	--AND c.C_UOM_TO_ID=p_C_UOM_To_ID
	AND c.M_Product_ID = 1027289 
ORDER BY 
	c.AD_Client_ID DESC, 
	c.AD_Org_ID DESC;
*/