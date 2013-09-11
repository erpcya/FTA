-- Sep 10, 2013 12:36:16 PM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Value='FTA_FarmingAllocation Process',Updated=TO_DATE('2013-09-10 12:36:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53453
;

-- Sep 10, 2013 12:47:53 PM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Classname='org.spin.process.FarmingAllocation',Updated=TO_DATE('2013-09-10 12:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53453
;

-- Sep 10, 2013 3:35:33 PM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Name='Farming Allocation',Updated=TO_DATE('2013-09-10 15:35:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53453
;

-- Sep 10, 2013 3:35:33 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53453
;

-- Sep 10, 2013 3:37:33 PM VET
-- SFAndroid Contribution
UPDATE AD_Process SET Description='Farming Allocation/Deallocation', Help='Allocate or Deallocate a Farming from Credit', Name='Farming Allocation/Deallocation',Updated=TO_DATE('2013-09-10 15:37:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53453
;

-- Sep 10, 2013 3:37:33 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53453
;

-- Sep 10, 2013 3:38:36 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Asignar/Desasignar Cultivo',Description='Asignar/Desasignar Cultivo',Help='Asignar o desasignar un cultivo de crédito',Updated=TO_DATE('2013-09-10 15:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53453 AND AD_Language='es_MX'
;

-- Sep 10, 2013 3:44:22 PM VET
-- SFAndroid Contribution
UPDATE AD_Val_Rule SET Code='/*Framing Category Equals Credit Definition Category */
FTA_Farming.Category_ID In (Select CD.Category_ID From FTA_CreditDefinition CD Where FTA_CreditDefinition_ID=@FTA_CreditDefinition_ID@)
/*Business Partner Credit Equals to Farm*/
And Exists(Select 1 From FTA_FarmDivision fd 
Inner Join FTA_Farm f On f.FTA_Farm_ID=fd.FTA_Farm_ID Where f.C_BPartner_ID=@C_BPartner_ID@ And FTA_Farming.FTA_FarmDivision_ID=fd.FTA_FarmDivision_ID)
/*Not In Another Credi Or in Current Credit*/
And (FTA_Farming.FTA_FarmerCredit_ID Is Null Or FTA_Farming.FTA_FarmerCredit_ID=@FTA_FarmerCredit_ID@)',Updated=TO_DATE('2013-09-10 15:44:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52206
;

