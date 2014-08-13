-- Apr 30, 2014 4:11:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Guía de Movilización',PrintName='Tipo de Documento Guía de Movilización',Updated=TO_DATE('2014-04-30 16:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57051 AND AD_Language='es_MX'
;

-- Apr 30, 2014 4:11:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Documento Guía de Movilización',PrintName='Tipo de Documento Guía de Movilización',Updated=TO_DATE('2014-04-30 16:11:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57051 AND AD_Language='es_VE'
;

-- Apr 30, 2014 4:25:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND EXISTS(SELECT 1   FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'' AND bfe.DocStatus IN (''CO'',''CL'')) AND EXISTS( SELECT 1 FROM FTA_CreditDefinition WHERE FTA_CreditDefinition.CreditType = ''@CreditType@'')
',Updated=TO_DATE('2014-04-30 16:25:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Apr 30, 2014 4:29:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND EXISTS(SELECT 1   FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'' AND bfe.DocStatus IN (''CO'',''CL'')) AND FTA_CreditDefinition_ID IN ( SELECT FTA_CreditDefinition_ID FROM FTA_CreditDefinition WHERE FTA_CreditDefinition.CreditType = ''@CreditType@'')
',Updated=TO_DATE('2014-04-30 16:29:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Apr 30, 2014 4:32:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND EXISTS(SELECT 1   FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'' AND bfe.DocStatus IN (''CO'',''CL'')) AND FTA_CreditDefinition_ID IN ( 
SELECT FTA_CreditDefinition.FTA_CreditDefinition_ID 
FROM FTA_CreditDefinition WHERE FTA_CreditDefinition.CreditType = FTA_FarmerCredit.CreditType)
',Updated=TO_DATE('2014-04-30 16:32:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Apr 30, 2014 4:42:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND EXISTS(SELECT 1   FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'' AND bfe.DocStatus IN (''CO'',''CL'')) AND  FTA_CreditDefinition.CreditType = FTA_FarmerCredit.CreditType
',Updated=TO_DATE('2014-04-30 16:42:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Apr 30, 2014 4:44:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND EXISTS(SELECT 1   FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'' AND bfe.DocStatus IN (''CO'',''CL''))',Updated=TO_DATE('2014-04-30 16:44:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Apr 30, 2014 4:44:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CreditDefinition.DocStatus = ''CO''
AND FTA_CreditDefinition.CreditType = @CreditType@',Updated=TO_DATE('2014-04-30 16:44:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52205
;

-- Apr 30, 2014 4:45:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CreditDefinition.DocStatus = ''CO''
AND FTA_CreditDefinition.CreditType = ''@CreditType@''',Updated=TO_DATE('2014-04-30 16:45:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52205
;

