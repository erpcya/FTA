﻿--DROP VIEW FTA_RV_M_Movement;
CREATE OR REPLACE VIEW FTA_RV_M_Movement AS 
SELECT 
	m.AD_Client_ID, 
	m.AD_Org_ID, 
	m.Created, 
	m.CreatedBy, 
	m.Updated, 
	m.UpdatedBy, 
	m.IsActive, 
	m.AD_OrgTrx_ID, 
	m.AD_User_ID, 
	m.ApprovalAmt, 
	m.C_Activity_ID, 
	m.C_BPartner_ID, 
	m.C_BPartner_Location_ID, 
	m.C_Campaign_ID, 
	m.C_Charge_ID, 
	m.C_DocType_ID, 
	m.ChargeAmt, 
	m.C_Project_ID,  
	m.DateReceived, 
	m.DD_Order_ID, 
	m.DeliveryRule, 
	m.DeliveryViaRule, 
	m.Description, 
	m.DocStatus, 
	m.DocumentNo, 
	m.FreightAmt, 
	m.FreightCostRule, 
	m.FTA_Driver_ID, 
	m.FTA_Vehicle_ID, 
	m.IsApproved, 
	m.IsInTransit, 
	m.M_Movement_ID, 
	m.MovementDate, 
	m.M_Shipper_ID, 
	m.POReference, 
	m.Posted, 
	m.PriorityRule, 
	m.Processed, 
	m.ProcessedOn, 
	m.Processing, 
	m.Reversal_ID, 
	m.SalesRep_ID, 
	m.User1_ID, 
	m.User2_ID,
	m.M_Movement_ID FTA_RV_M_Movement_ID

FROM M_Movement m
LEFT JOIN FTA_Driver d ON (m.FTA_Driver_ID = d.FTA_Driver_ID)
LEFT JOIN FTA_Vehicle v ON (m.FTA_Vehicle_ID = v.FTA_Vehicle_ID)
LEFT JOIN M_Shipper s ON (m.M_Shipper_ID = s.M_Shipper_ID)
;