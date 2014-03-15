﻿--DROP VIEW FTA_RV_LoadOrder;
CREATE OR REPLACE VIEW FTA_RV_LoadOrder AS
SELECT 
	lo.AD_Client_ID, 
	lo.AD_Org_ID, 
	lo.C_DocType_ID, 
	lo.ConfirmedWeight, 
	lo.Created, 
	lo.CreatedBy, 
	lo.C_UOM_Volume_ID, 
	lo.C_UOM_Weight_ID, 
	lo.DateDoc, 
	lo.DeliveryRule, 
	lo.Description, 
	lo.DocAction, 
	lo.DocStatus, 
	lo.DocumentNo, 
	lo.FTA_Driver_ID, 
	lo.FTA_EntryTicket_ID, 
	lo.FTA_LoadOrder_ID, 
	lo.FTA_Vehicle_ID, 
	lo.FTA_VehicleType_ID, 
	lo.InvoiceRule, 
	lo.IsActive, 
	lo.IsApproved, 
	lo.IsDelivered, 
	lo.IsHandleRecordWeight, 
	lo.IsInvoiced, 
	lo.IsMoved, 
	lo.IsWeightRegister, 
	lo.LoadCapacity, 
	lo.M_Product_ID, 
	lo.M_Shipper_ID, 
	lo.M_Warehouse_ID, 
	lo.OperationType, 
	lo.Processed, 
	lo.Processing, 
	lo.ShipDate, 
	lo.Updated, 
	lo.UpdatedBy, 
	lo.Volume, 
	lo.VolumeCapacity, 
	lo.Weight,
	oi.C_Location_ID Org_Location_ID,
	oi.TaxID,
	lo.FTA_LoadOrder_ID FTA_RV_LoadOrder_ID
	
FROM FTA_LoadOrder lo
INNER JOIN C_DocType dt ON (dt.C_DocType_ID = lo.C_DocType_ID)
LEFT JOIN AD_OrgInfo oi ON (oi.AD_Org_ID = lo.AD_Org_ID);

--DROP VIEW FTA_RV_LoadOrder;
CREATE OR REPLACE VIEW FTA_RV_LoadOrderLine AS
SELECT 
	lol.AD_Client_ID, 
	lol.AD_Org_ID, 
	o.C_BPartner_ID, 
	lol.C_InvoiceLine_ID, 
	lol.ConfirmedQty, 
	lol.ConfirmedWeight, 
	lol.C_OrderLine_ID, 
	lol.Created, 
	lol.CreatedBy, 
	lol.DD_OrderLine_ID, 
	lol.Description, 
	lol.FTA_LoadOrder_ID, 
	lol.FTA_LoadOrderLine_ID, 
	lol.IsActive, 
	lol.M_InOutLine_ID, 
	lol.M_MovementLine_ID, 
	lol.M_Product_ID, 
	lol.Processed, 
	lol.Qty, 
	lol.SeqNo, 
	lol.Updated, 
	lol.UpdatedBy, 
	lol.Volume, 
	lol.Weight,
	lo.DocStatus,
	lo.C_DocType_ID
FROM FTA_LoadOrderLine lol
INNER JOIN FTA_LoadOrder lo ON (lol.FTA_LoadOrder_ID = lo.FTA_LoadOrder_ID )
LEFT JOIN C_OrderLine ol ON (ol.C_OrderLine_ID = lol.C_OrderLine_ID)
LEFT JOIN C_Order o ON (o.C_Order_ID = ol.C_Order_ID )
;