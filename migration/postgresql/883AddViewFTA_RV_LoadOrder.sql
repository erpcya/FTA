﻿SELECT 
	lo.AD_Client_ID, 
	lo.AD_Org_ID,
	lo.Created, 
	lo.CreatedBy, 
	lo.Updated, 
	lo.UpdatedBy, 
	lo.IsActive, 
	lo.C_DocType_ID, 
	lo.ConfirmedWeight, 
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
	lo.IsApproved, 
	lo.IsBulk, 
	lo.IsDelivered, 
	lo.IsDriverReleased, 
	lo.IsInternalLoad, 
	lo.IsInvoiced, 
	lo.IsMoved, 
	lo.IsVehicleReleased, 
	lo.IsWeightRegister, 
	lo.LoadCapacity, 
	lo.M_Shipper_ID, 
	lo.M_Warehouse_ID, 
	lo.M_WarehouseTo_ID, 
	lo.OperationType, 
	lo.Processed, 
	lo.ShipDate,  
	lo.Volume, 
	lo.Weight
FROM FTA_LoadOrder lo
INNER JOIN C_DocType dt ON (dt.C_DocType_ID = lo.C_DocType_ID)