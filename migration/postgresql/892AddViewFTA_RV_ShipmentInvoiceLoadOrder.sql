--DROP VIEW FTA_RV_ShipmentInvoiceLoadOrder;
CREATE OR REPLACE VIEW FTA_RV_ShipmentInvoiceLoadOrder AS
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
    COALESCE(lo.C_DocType_ID,i.C_DocType_ID,io.C_DocType_ID)C_DocType_ID,
    COALESCE(lo.M_Product_ID,lol.M_Product_ID,iol.M_Product_ID,il.M_Product_ID) M_Product_ID,
    COALESCE(lo.M_Warehouse_ID,io.M_Warehouse_ID)M_Warehouse_ID,
    lo.FTA_LoadOrder_ID,
    lol.Qty,
    lol.Weight,
    lol.ConfirmedQty,
    lol.ConfirmedWeight,
    COALESCE(lol.C_OrderLine_ID,il.C_OrderLine_ID,iol.C_OrderLine_ID) C_OrderLine_ID,
    lol.FTA_LoadOrderLine_ID,
    i.C_Invoice_ID,
    COALESCE(i.DocumentNo,io.DocumentNO) DocumentNO,
    il.C_InvoiceLine_ID,
    COALESCE(il.QtyEntered,iol.QtyEntered)QtyEntered,
    il.PriceEntered,
    il.PriceActual,
    il.LineNetAmt,
    COALESCE(il.C_Uom_ID,iol.C_Uom_ID)C_Uom_ID,
    iol.M_InOutLine_ID,
    COALESCE(io.C_Order_ID,i.C_Order_ID)C_Order_ID,
    io.M_InOut_ID,
    COALESCE(io.C_BPartner_ID,i.C_BPartner_ID)C_BPartner_ID,
    iol.MovementQty,
    io.MovementType, 
    lo.IsImmediateDelivery
FROM FTA_LoadOrder lo
INNER JOIN FTA_LoadOrderLine lol ON (lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID )
LEFT JOIN C_InvoiceLine il ON (lol.C_InvoiceLine_ID = il.C_InvoiceLine_ID)
LEFT JOIN C_Invoice i ON (il.C_Invoice_ID = i.C_Invoice_ID)
LEFT JOIN M_InOutLine iol ON (iol.M_InOutLine_ID = lol.M_InOutLine_ID)
LEFT JOIN M_InOut io ON (io.M_InOut_ID = iol.M_InOut_ID)