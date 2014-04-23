-- Jan 11, 2014 9:36:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET Name='M_AttributeValue Owner',Updated=TO_DATE('2014-01-11 09:36:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 11, 2014 9:36:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53643
;

-- Jan 11, 2014 9:37:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Display=8468, AD_Key=8469,Updated=TO_DATE('2014-01-11 09:37:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53643
;

-- Jan 11, 2014 9:40:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='M_AttributeValue Attribute',Updated=TO_DATE('2014-01-11 09:40:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52291
;

-- Jan 11, 2014 9:41:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS(SELECT att.M_Attribute_ID FROM AD_SysConfig s
         INNER JOIN M_Attribute att ON(att.Name = s.Value)
         WHERE M_AttributeValue.M_Attribute_ID = att.M_Attribute_ID
)',Updated=TO_DATE('2014-01-11 09:41:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52291
;

