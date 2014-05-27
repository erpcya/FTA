-- Sep 10, 2013 12:28:17 PM VET
-- SFAndroid Contribution
UPDATE AD_Val_Rule SET Code='FTA_Farming.Category_ID In (Select CD.Category_ID From FTA_CreditDefinition CD Where FTA_CreditDefinition_ID=@FTA_CreditDefinition_ID@)
And Exists(Select 1 From FTA_Farming fm
Inner Join FTA_FarmDivision fd On fm.FTA_FarmDivision_ID=fd.FTA_FarmDivision_ID
Inner Join FTA_Farm f On f.FTA_Farm_ID=fd.FTA_Farm_ID Where f.C_BPartner_ID=@C_BPartner_ID@)',Updated=TO_TIMESTAMP('2013-09-10 12:28:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52206
;

