--DROP VIEW FTA_RV_M_MovementLine;
CREATE OR REPLACE VIEW FTA_RV_M_MovementLine AS
SELECT 
	ml.AD_Client_ID, 
	ml.AD_Org_ID, 
	ml.Created, 
	ml.CreatedBy, 
	ml.Updated, 
	ml.UpdatedBy, 
	ml.IsActive, 	
	ml.ConfirmedQty, 
	ml.DD_OrderLine_ID, 
	ml.Description, 
	ml.Line, 
	ml.M_AttributeSetInstance_ID, 
	ml.M_AttributeSetInstanceTo_ID, 
	ml.M_Locator_ID, 
	ml.M_LocatorTo_ID, 
	ml.M_Movement_ID, 
	ml.M_MovementLine_ID, 
	ml.MovementQty, 
	ml.M_Product_ID, 
	ml.Processed, 
	ml.ReversalLine_ID, 
	ml.ScrappedQty, 
	ml.TargetQty, 
	p.Value
FROM M_MovementLine ml
LEFT JOIN M_Product p ON (p.M_Product_ID = ml.M_Product_ID);

