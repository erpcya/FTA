-- Sep 12, 2013 5:19:30 AM VET
-- SFAndroid Contribution
Create or Replace View FTA_RV_RecordWeightUnLiquidated as 
Select
rw.AD_Client_ID,/*Identifier Company*/
rw.AD_Org_ID,/*Identifier Organization*/
rw.FTA_RecordWeight_ID, /*Identifier Record Weight*/
rw.NetWeight,/*Net Weight*/
rw.DateDoc,/*Document Date*/
qa.FTA_QualityAnalysis_ID,/*Identifier Quality Analisis*/
qa.QualityAnalysis_ID,/*Quality Analisis*/
et.FTA_EntryTicket_ID,/*Identifier Entry Ticket*/
mg.FTA_MobilizationGuide_ID,/*Identifier Mobilization Guide*/
fm.FTA_Farming_ID,/*Identifier Farming*/
coalesce(fc.Parent_FarmerCredit_ID,fm.FTA_FarmerCredit_ID) AS FTA_FarmerCredit_ID,/*Identifier Farmer Credit*/
fm.Category_ID,/*Identifier Product*/
fd.FTA_FarmDivision_ID,/*Identifier Farm Division*/
f.FTA_Farm_ID,/*Identifier Farm*/
f.C_BPartner_ID, /*Identifier Business Partner*/
cc.FTA_CategoryCalc_ID, /*Identifier Category Calc*/
--0.00 As PayWeight,
Case When rw.SelectionWeight='I' Then rw.ImportWeight Else rw.PayWeight End As PayWeight, /*PayWeight*/
Coalesce(col.PriceList,0.00) As Price,
fm.Category_ID As M_Product_ID, /*Identifier Product*/
Cast(Null AS Numeric(10)) As PayAnalysis_ID, /*Pay Analysis*/
Cast('N' As Char(1)) AS IsInDispute
From 
/*Record Weight*/
FTA_RecordWeight rw
/*Quality Analysis*/
Inner Join FTA_QualityAnalysis qa On rw.FTA_QualityAnalysis_ID=qa.FTA_QualityAnalysis_ID
/*Entry Ticket*/
Inner Join FTA_EntryTicket et On qa.FTA_EntryTicket_ID=et.FTA_EntryTicket_ID
/*Mobilization Guide*/
Inner Join FTA_MobilizationGuide mg On et.FTA_MobilizationGuide_ID=mg.FTA_MobilizationGuide_ID
/*Farming*/
Inner Join FTA_Farming fm On mg.FTA_Farming_ID=fm.FTA_Farming_ID
/*Order Line*/
Left Join C_OrderLine col On col.C_OrderLine_ID=fm.C_OrderLine_ID
/*Farm Division*/
Inner Join FTA_FarmDivision fd On fm.FTA_FarmDivision_ID=fd.FTA_FarmDivision_ID
/*Farm*/
Inner Join FTA_Farm f On fd.FTA_Farm_ID=f.FTA_Farm_ID
/*Category Calc*/
Left Join FTA_CategoryCalc cc On fm.Category_ID=cc.M_Product_ID
Where 
/*Record Weight Completed Or Closed*/
rw.DocStatus In ('CO','CL')
/*Record Weight Don't Exists in Another Liquidation Completed or Closed*/
And 
Not Exists (Select 1 
	    From FTA_FarmerLiquidation fl
	    Inner Join FTA_FarmerLiquidationLine fll On fl.FTA_FarmerLiquidation_ID= fll.FTA_FarmerLiquidation_ID
	    Where fll.FTA_RecordWeight_ID=rw.FTA_RecordWeight_ID And fl.DocStatus In ('CO','CL')
	    )
/*Only Active Category Calcs*/
And 
cc.IsActive='Y' AND cc.EventType='LI'
;
