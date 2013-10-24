Drop View FTA_RV_CreditSOAllocation;
Create Or Replace View FTA_RV_CreditSOAllocation AS 
--Invoice
Select  ci.AD_Client_ID,				--Client
	ci.AD_Org_ID,					--ORg
	ci.C_BPartner_ID, 				--Business Partner
	ci.C_Invoice_ID,				--Invoice
	Cast(Null As Numeric(10,0)) C_Order_ID,		--Order
	ci.DocStatus,					--DocStatus
	ci.DocAction,					--DocAction
	fc.FTA_FarmerCredit_ID,				--Farmer Credit
	cdl.Line,					--Line
	(cdl.Amt * fming.Area)  SO_CreditLimit,		--Credit Limit
	Coalesce(fa.Amt,0) SO_CreditUsed,		--CreditUsed
	Coalesce(
		fa_Alloc.Amt,0
		) AllocatedAmt,		--Allocated
	ci.IsSoTrx,
	cdl.FTA_CreditDefinitionLine_ID,
	Case 
	  When cdl.M_Product_Category_ID Is Not Null 
	    Then mpc.Name 
	  When cdl.M_Product_ID Is Not Null 
	    Then mp.Name 
	  When cdl.C_Charge_ID Is Not Null 
	    Then cch.Name
	End || COALESCE(cdl.Description, '') LineDescription,
	ci.GrandTotal
From
C_Invoice ci 
Right Join FTA_FarmerCredit fc On fc.FTA_FarmerCredit_ID=ci.FTA_FarmerCredit_ID Or ci.FTA_FarmerCredit_ID Is Null
Inner Join FTA_Farming fming On fming.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
Inner Join FTA_CreditDefinition cd On cd.FTA_CreditDefinition_ID=fc.FTA_CreditDefinition_ID
Right Join FTA_CreditDefinitionLine cdl On 
  (cdl.FTA_CreditDefinition_ID=cd.FTA_CreditDefinition_ID Or cdl.FTA_CreditDefinition_ID Is Null)
Left Join M_Product mp On cdl.M_Product_ID=mp.M_Product_ID 
Left Join M_Product_Category mpc On cdl.M_Product_Category_ID=mpc.M_Product_Category_ID
Left Join C_Charge cch On cch.C_Charge_ID=cdl.C_Charge_ID
Left Join (Select FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Sum(Amt) Amt
	   From FTA_Fact 
	   Where AD_Table_ID=318
	   Group By
	   FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID
	   )fa On   fa.FTA_CreditDefinitionLine_ID=cdl.FTA_CreditDefinitionLine_ID
		And fa.C_BPartner_ID=fc.C_BPartner_ID
		And fa.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
		
Left Join (Select FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Record_ID,Sum(Amt) Amt
	   From FTA_Fact 
	   Where AD_Table_ID=318
	   Group By
	   FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Record_ID
	   )fa_alloc On fa_alloc.FTA_CreditDefinitionLine_ID=cdl.FTA_CreditDefinitionLine_ID
		And fa_alloc.C_BPartner_ID=fc.C_BPartner_ID
		And fa_alloc.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
		And fa_alloc.Record_ID=ci.C_Invoice_ID
		

Union
--Orders
Select  co.AD_Client_ID,				--Client
	co.AD_Org_ID,					--ORg
	co.C_BPartner_ID, 				--Business Partner
	Cast(Null As Numeric(10,0)) C_Invoice_ID,	--Invoice
	co.C_Order_ID,					--Order
	co.DocStatus,					--DocStatus
	co.DocAction,					--DocAction
	fc.FTA_FarmerCredit_ID,				--Farmer Credit
	cdl.Line,					--Line
	(cdl.Amt * fming.Area)  SO_CreditLimit,		--Credit Limit
	Coalesce(fa.Amt,0) SO_CreditUsed,		--CreditUsed
	Coalesce(
		fa_Alloc.Amt,0) AllocatedAmt,		--Allocated
	co.IsSoTrx,
	cdl.FTA_CreditDefinitionLine_ID,
	Case 
	  When cdl.M_Product_Category_ID Is Not Null 
	    Then mpc.Name 
	  When cdl.M_Product_ID Is Not Null 
	    Then mp.Name 
	  When cdl.C_Charge_ID Is Not Null 
	    Then cch.Name
	End || COALESCE(cdl.Description, '') LineDescription,--Description Invoice
	co.GrandTotal
From
C_Order co 
Right Join FTA_FarmerCredit fc On (fc.FTA_FarmerCredit_ID=co.FTA_FarmerCredit_ID Or co.FTA_FarmerCredit_ID Is Null)
Inner Join FTA_Farming fming On fming.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
Inner Join FTA_CreditDefinition cd On cd.FTA_CreditDefinition_ID=fc.FTA_CreditDefinition_ID
Right Join FTA_CreditDefinitionLine cdl On 
  (cdl.FTA_CreditDefinition_ID=cd.FTA_CreditDefinition_ID Or cdl.FTA_CreditDefinition_ID Is Null)
Left Join M_Product mp On cdl.M_Product_ID=mp.M_Product_ID 
Left Join M_Product_Category mpc On cdl.M_Product_Category_ID=mpc.M_Product_Category_ID
Left Join C_Charge cch On cch.C_Charge_ID=cdl.C_Charge_ID
Left Join (Select FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Sum(Amt) Amt
	   From FTA_Fact 
	   Where AD_Table_ID=318 --Invoice 
	   Group By
	   FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID
	   )fa On   fa.FTA_CreditDefinitionLine_ID=cdl.FTA_CreditDefinitionLine_ID
		And fa.C_BPartner_ID=fc.C_BPartner_ID
		And fa.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
Left Join (Select FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Record_ID,Sum(Amt) Amt
	   From FTA_Fact 
	   Where AD_Table_ID=259
	   Group By
	   FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Record_ID
	   )fa_alloc On   fa_alloc.FTA_CreditDefinitionLine_ID=cdl.FTA_CreditDefinitionLine_ID
		And fa_alloc.C_BPartner_ID=fc.C_BPartner_ID
		And fa_alloc.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
		And fa_alloc.Record_ID=co.C_Order_ID;
