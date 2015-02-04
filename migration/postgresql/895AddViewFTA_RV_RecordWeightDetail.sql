--DROP VIEW FTA_RV_RecordWeightDetail
CREATE OR REPLACE VIEW FTA_RV_RecordWeightDetail AS 
SELECT 
rw.FTA_RecordWeight_ID,
rw.AD_Client_ID,
rw.AD_Org_ID,
rw.Created,
rw.CreatedBy,
rw.Updated,
rw.UpdatedBy,
rw.IsActive,
rw.C_DocType_ID,
COALESCE(p.C_UOM_ID,rw.C_UOM_ID)C_UOM_ID,
rw.DateDoc, 
rw.Description,
rw.DocStatus,
rw.DocumentNo,
rw.FTA_EntryTicket_ID,
rw.FTA_LoadOrder_ID,
lol.M_Product_ID,
lol.Qty,
p.Weight,
COALESCE(ddol.M_Locator_ID,iol.M_Locator_ID )M_Locator_ID,
COALESCE(ddol.M_LocatorTo_ID, ml.M_LocatorTo_ID)M_LocatorTo_ID
FROM FTA_RecordWeight rw 
INNER JOIN FTA_LoadOrder lo ON (rw.FTA_LoadORder_ID = lo.FTA_LoadOrder_ID)
INNER JOIN FTA_LoadOrderLine lol ON (lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID)
INNER JOIN M_Product p ON (p.M_Product_ID = lol.M_Product_ID)
LEFT JOIN C_OrderLine ol ON (lol.C_OrderLine_ID = ol.C_OrderLine_ID)
LEFT JOIN M_InOutLine iol ON (ol.C_OrderLine_ID = iol.C_OrderLine_ID)
LEFT JOIN DD_OrderLine ddol ON (ddol.DD_OrderLine_ID = lol.DD_OrderLine_ID)
LEFT JOIN M_MovementLine ml ON(ddol.DD_OrderLine_ID = ml.DD_OrderLine_ID)

--WHERE rw.FTA_RecordWeight_ID=1000039
