--DROP VIEW FTA_RV_AttributeValue;
CREATE OR REPLACE VIEW FTA_RV_AttributeValue AS
SELECT attsi.AD_Client_ID, attsi.AD_Org_ID, attsi.IsActive, attsi.Created, attsi.CreatedBy, attsi.Updated, attsi.UpdatedBy,
attsi.M_AttributeSetInstance_ID, att.Name, att.AttributeValueType,
CASE 
	WHEN att.AttributeValueType = 'S' THEN atti.Value
	WHEN att.AttributeValueType = 'N' THEN CAST(ROUND(atti.ValueNumber, 2) AS TEXT)
	WHEN att.AttributeValueType = 'L' THEN attv.Name
END AS AttributeValue, 
atti.Value, atti.ValueNumber, attv.Name AttributeName,
attsi.M_AttributeSetInstance_ID QualityAnalysis_ID, attu.SeqNo, att.M_Attribute_ID, attv.M_AttributeValue_ID, attsi.M_Lot_ID
FROM M_AttributeSetInstance attsi
INNER JOIN M_AttributeInstance atti ON(atti.M_AttributeSetInstance_ID = attsi.M_AttributeSetInstance_ID)
INNER JOIN M_Attribute att ON(att.M_Attribute_ID = atti.M_Attribute_ID)
INNER JOIN M_AttributeUse attu ON(attu.M_AttributeSet_ID = attsi.M_AttributeSet_ID  AND attu.M_Attribute_ID = att.M_Attribute_ID)
LEFT JOIN M_AttributeValue attv ON(attv.M_AttributeValue_ID = atti.M_AttributeValue_ID)