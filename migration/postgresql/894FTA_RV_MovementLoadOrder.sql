--DROP VIEW FTA_RV_MovementLoadOrder;
CREATE OR REPLACE VIEW FTA_RV_MovementLoadOrder AS
SELECT 
    lo.AD_Client_ID,
    lo.AD_Org_ID,
    lo.Created,
    lo.CreatedBy,
    lo.Updated,
    lo.UpdatedBy,
    lo.IsActive,
    lo.DocStatus,
    lo.DateDoc,
    COALESCE(lo.C_DocType_ID,o.C_DocType_ID,m.C_DocType_ID)C_DocType_ID,
    COALESCE(lo.M_Product_ID,lol.M_Product_ID,ml.M_Product_ID,ol.M_Product_ID) M_Product_ID,
    lo.M_Warehouse_ID,
    lo.FTA_LoadOrder_ID,
    lol.Qty,
    lol.Weight,
    lol.ConfirmedQty,
    lol.ConfirmedWeight,
    COALESCE(lol.DD_OrderLine_ID,ol.DD_OrderLine_ID) DD_OrderLine_ID,
    lol.FTA_LoadOrderLine_ID,
    COALESCE(o.DocumentNo,m.DocumentNO) DocumentNO,
    ol.QtyEntered,
    ol.LineNetAmt,
    ol.C_Uom_ID,
	ml.M_MovementLine_ID,
    o.DD_Order_ID,
    m.M_Movement_ID,
    COALESCE(m.C_BPartner_ID,o.C_BPartner_ID)C_BPartner_ID,
    ml.MovementQty,
    lo.operationtype,
    lo.fta_entryticket_id
FROM FTA_LoadOrder lo
INNER JOIN FTA_LoadOrderLine lol ON (lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID )
LEFT JOIN DD_OrderLine ol ON (ol.DD_OrderLine_ID = lol.DD_OrderLine_ID)
LEFT JOIN DD_Order o ON (o.DD_Order_ID = ol.DD_Order_ID)

LEFT JOIN M_MovementLine ml ON (ml.M_MovementLine_ID = lol.M_MovementLine_ID)
LEFT JOIN M_Movement m ON (ml.M_Movement_ID = m.M_Movement_ID)



;
SELECT *
FROM FTA_RV_MovementLoadOrder MLO
WHERE 
	MLO.DocStatus = 'CO' 
	AND MLO.M_MovementLine_ID IS NULL 
	AND MLO.OperationType = 'MOM' 
	AND EXISTS (SELECT 1 FROM FTA_WeightScale WHERE FTA_WeightScale.AD_Org_ID = MLO.AD_Org_ID  AND FTA_WeightScale.IsActive = 'Y'	)
