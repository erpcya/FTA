CREATE OR REPLACE VIEW FTA_RV_AttributeList AS
SELECT pr.AD_Client_ID, pr.AD_Org_ID, pr.IsActive, pr.Created, pr.CreatedBy, pr.Updated, pr.UpdatedBy,
att.Name, att.AttributeValueType,' ' AS AttributeValue, atts.M_AttributeSet_ID, pr.M_Product_ID, attu.SeqNo
FROM M_Product pr
INNER JOIN M_AttributeSet atts ON(atts.M_AttributeSet_ID = pr.M_AttributeSet_ID)
INNER JOIN M_AttributeUse attu ON(attu.M_AttributeSet_ID = atts.M_AttributeSet_ID)
INNER JOIN M_Attribute att ON(att.M_Attribute_ID = attu.M_Attribute_ID)