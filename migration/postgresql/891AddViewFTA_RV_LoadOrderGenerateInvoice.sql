--DROP VIEW FTA_RV_LoadOrderGenerateInvoice;
/*CREATE OR REPLACE VIEW FTA_RV_LoadOrderGenerateInvoice AS 
SELECT 
    lo.AD_Org_ID,
    lo.AD_Client_ID,
    lo.IsActive,
    lo.Created,
    lo.CreatedBy,
    lo.Updated,
    lo.UpdatedBy,
    o.C_BPartner_ID, 
    o.C_Order_ID,
    lol.M_Product_ID,
    lol.Qty, 
    ol.C_Uom_ID,
    ol.PriceEntered,
    ol.PriceActual,
    ol.PriceList,
    ol.C_Tax_ID, 
    ol.LineNetAmt,
    o.SalesRep_ID,
    bpl.C_SalesRegion_ID,
    lo.FTA_Vehicle_ID,
    COALESCE(ol.M_Warehouse_ID, o.M_Warehouse_ID,lo.M_Warehouse_ID)M_Warehouse_ID,
    lo.OperationType,
    lo.C_DocType_ID,
    lo.InvoiceRule,
    lo.DeliveryRule,
    lo.FTA_VehicleType_ID,
    lo.DateDoc,
    lo.ShipDate,
    lo.FTA_EntryTicket_ID,
    lo.M_Shipper_ID,
    lo.FTA_Driver_ID,
    lo.FTA_LoadOrder_ID,
    lol.FTA_LoadOrderLine_ID,
    lo.DocStatus,
    lol.C_InvoiceLine_ID,
    lol.M_InOutLine_ID,
    lo.IsImmediateDelivery
FROM FTA_LoadOrderLine lol 
INNER JOIN FTA_LoadOrder lo ON (lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID)
INNER JOIN C_OrderLine ol ON (lol.C_OrderLine_ID = ol.C_OrderLine_ID)
INNER JOIN C_Order o ON (ol.C_Order_ID = o.C_Order_ID)
LEFT JOIN C_BPartner_Location bpl ON (o.C_BPartner_Location_ID = bpl.C_BPartner_Location_ID)
LEFT JOIN C_InvoiceLine il ON (il.C_InvoiceLine_ID = lol.C_InvoiceLine_ID )
LEFT JOIN M_InOutLine iol ON (iol.M_InOutLine_ID = lol.M_InOutLine_ID)
*/

-- WHERE 
-- 	ol.C_Order_ID = 1000046
/*    lo.AD_Org_ID = 50001
    AND lo.M_Warehouse_ID IS NULL
    AND lo.OperationType = 'DBM'
    AND lo.C_DocType_ID = 1000000
    --AND lo.C_DocTypeTarget_ID = 
    AND lo.InvoiceRule IS NULL
    AND lo.DeliveryRule IS NULL
    AND lo.FTA_VehicleType_ID = 1000000
    AND lo.DateDoc = '24/10/2014 12:00:00 AM'
    AND lo.ShipDate = '24/10/2014 12:00:00 AM'
    AND lo.FTA_EntryTicket_ID = 1000000
    AND lo.M_Shipper_ID IS NULL
    AND lo.FTA_Driver_ID = 1000000
    AND lo.FTA_Vehicle_ID = 1000000
    AND o.SalesRep_ID = 101
    --AND sr.C_SalesRegion_ID IS NULL

*/
--;

--SELECT * FROM FTA_RV_LoadOrderGenerateInvoice

-- DROP VIEW fta_rv_loadordergenerateinvoice;

CREATE OR REPLACE VIEW FTA_RV_LoadOrderGenerateInvoice AS 
 SELECT COALESCE(lo.AD_Org_ID,o.AD_Org_ID) AD_Org_ID,
    COALESCE(ol.AD_Client_ID,o.AD_Client_ID) AD_Client_ID,
    COALESCE(lo.IsActive,o.IsActive) IsActive,
    COALESCE(lo.Created,o.Created) Created,
    COALESCE(lo.CreatedBy,o.CreatedBy) CreatedBy,
    COALESCE(lo.Updated,o.Updated) Updated,
    COALESCE(lo.UpdatedBy,o.UpdatedBy) UpdatedBy,
    o.C_BPartner_ID,
    o.C_Order_ID,
    lol.M_Product_ID,
    COALESCE(lol.Qty,ol.QtyOrdered) Qty,
    ol.C_UOM_ID,
    ol.PriceEntered,
    ol.PriceActual,
    ol.PriceList,
    ol.C_Tax_ID,
    ol.LinenetAmt,
    o.SalesRep_ID,
    bpl.C_SalesRegion_ID,
    lo.FTA_Vehicle_ID,
    COALESCE(ol.M_WareHouse_ID, o.M_WareHouse_ID, lo.M_WareHouse_ID) AS M_WareHouse_ID,
    lo.OperationType,
    lo.C_DocType_ID,
    lo.InvoiceRule,
    lo.DeliveryRule,
    lo.FTA_VehicleType_ID,
    lo.DateDoc,
    lo.ShipDate,
    lo.FTA_EntryTicket_ID,
    lo.M_Shipper_ID,
    lo.FTA_Driver_ID,
    lo.FTA_LoadOrder_ID,
    lol.FTA_LoadOrderLine_ID,
    COALESCE(lo.DocStatus,o.DocStatus) DocStatus,
    lol.C_InvoiceLine_ID,
    lol.M_InoutLine_ID,
    lo.IsImmediateDelivery,
    ol.C_OrderLine_ID,
    ol.C_Charge_ID,
    COALESCE(p.Name,c.Name) ProductName
   FROM FTA_LoadOrderLine lol
     INNER JOIN FTA_LoadOrder lo ON lo.FTA_LoadOrder_ID = lol.FTA_LoadOrder_ID
     LEFT JOIN C_InvoiceLine il ON il.C_InvoiceLine_ID = lol.C_InvoiceLine_ID
     LEFT JOIN M_InoutLine iol ON iol.M_InoutLine_ID = lol.M_InoutLine_ID
     RIGHT JOIN C_OrderLine ol ON lol.C_OrderLine_ID = ol.C_OrderLine_ID
     JOIN C_Order o ON ol.C_Order_ID = o.C_Order_ID
     LEFT JOIN C_BPartner_Location bpl ON o.C_BPartner_Location_ID = bpl.C_BPartner_Location_ID
     LEFT JOIN M_Product p ON p.M_Product_ID = ol.M_Product_ID
     LEFT JOIN C_Charge c ON c.C_Charge_ID = ol.C_Charge_ID;