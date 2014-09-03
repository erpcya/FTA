-- Apr 29, 2014 9:52:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50097,'C',TO_DATE('2014-04-29 09:52:35','YYYY-MM-DD HH24:MI:SS'),100,'Valid Qty On Hand In Technical Form [Y,N]','ECA02','Y','ValidQtyOnHandInTechnicalForm',TO_DATE('2014-04-29 09:52:35','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;

-- Apr 29, 2014 9:53:20 AM VET
-- Farming Technical Assistance
UPDATE AD_SysConfig SET Description='Enable/disable validation ->  Qty On Hand In Technical Form [Y,N]',Updated=TO_DATE('2014-04-29 09:53:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=50097
;

-- Apr 29, 2014 9:54:10 AM VET
-- Farming Technical Assistance
UPDATE AD_SysConfig SET Description='Enable/disable validation ->  Qty On Hand In Technical Form  [Y]es / [N]ot',Updated=TO_DATE('2014-04-29 09:54:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=50097
;

-- Apr 29, 2014 10:02:11 AM VET
-- Farming Technical Assistance
UPDATE AD_SysConfig SET Name='VALID_QTY_ON_HAND_IN_TECHNICAL_FORM',Updated=TO_DATE('2014-04-29 10:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=50097
;

-- Apr 29, 2014 10:07:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutTechnicalForm.uom;org.spin.model.CalloutTechnicalForm.product',Updated=TO_DATE('2014-04-29 10:07:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65965
;

-- Apr 29, 2014 10:08:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutTechnicalForm.qty;org.spin.model.CalloutTechnicalForm.product',Updated=TO_DATE('2014-04-29 10:08:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65963
;

-- Apr 29, 2014 10:09:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutTechnicalForm.product',Updated=TO_DATE('2014-04-29 10:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65960
;

-- Apr 29, 2014 10:09:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutTechnicalForm.product',Updated=TO_DATE('2014-04-29 10:09:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69952
;

-- Apr 29, 2014 10:09:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutTechnicalForm.product',Updated=TO_DATE('2014-04-29 10:09:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65961
;

-- Apr 29, 2014 10:41:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52350,'M_Warehouse_ID IN(
SELECT M_Warehouse_ID
FROM M_Storage st 
INNER JOIN M_Locator l ON (st.M_Locator_ID = l.M_Locator_ID )
WHERE  st.M_Locator_ID = l.M_Locator_ID AND st.QtyOnHand > 0 AND st.M_Product_ID =@M_Product_ID@)',TO_DATE('2014-04-29 10:40:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Warehouse of Product with qty on hand','S',TO_DATE('2014-04-29 10:40:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 29, 2014 10:57:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52350,Updated=TO_DATE('2014-04-29 10:57:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69952
;

