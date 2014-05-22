Create Or Replace View FTA_RV_CreditSOAllocation AS 
--Invoice
Select  ci.AD_Client_ID,				--Client
	ci.AD_Org_ID,					--ORg
	ci.C_BPartner_ID, 				--Business Partner
	ci.C_Invoice_ID,				--Invoice
	cil.C_InvoiceLine_ID,				--Invoice Line
	Cast(Null As Numeric(10,0)) C_Order_ID,		--Order
	Cast(Null As Numeric(10,0)) C_OrderLine_ID,	--Order
	ci.DocStatus,					--DocStatus
	ci.DocAction,					--DocAction
	ci.FTA_FarmerCredit_ID,				--Farmer Credit
	cil.Line,					--Line
	Case 
	  When mp.M_Product_Category_ID Is Not Null 
	    Then mpc.Name 
	  When cil.M_Product_ID Is Not Null 
	    Then mp.Name 
	  When cil.C_Charge_ID Is Not Null 
	    Then cch.Name
	End || COALESCE(cil.Description, '') LineDescription,--Description Invoice
	/*cil.M_Product_ID,				--Product
	cil.C_Charge_ID,				--Charge
	mp.M_Product_Category_ID,			--Product Category*/
	cdl.M_Product_ID,				--Product
	cdl.M_Product_Category_ID,			--Product Category
	cdl.C_Charge_ID,				--Charge				
	(cdl.Amt * fming.Area)  SO_CreditLimit,		--Credit Limit
	Coalesce(fa.Amt,0) SO_CreditUsed,		--CreditUsed
	Coalesce(
		fa_Alloc.Amt,
		Case 
		  When cdl.M_Product_ID=mp.M_Product_ID 
			Or cdl.M_Product_Category_ID=mp.M_Product_Category_ID 
			Or cdl.C_Charge_ID=cil.C_Charge_ID
		  Then cil.LineNetAmt
		  Else 0
		  End
		) AllocatedAmt,		--Allocated
		ci.IsSoTrx,
		cdl.FTA_CreditDefinitionLine_ID,
	cil.LineNetAmt
From
C_Invoice ci 
Inner Join C_InvoiceLine cil On ci.C_Invoice_ID=cil.C_Invoice_ID
Left Join M_Product mp On cil.M_Product_ID=mp.M_Product_ID 
Left Join M_Product_Category mpc On mp.M_Product_Category_ID=mpc.M_Product_Category_ID
Left Join C_Charge cch On cch.C_Charge_ID=cil.C_Charge_ID
Inner Join FTA_FarmerCredit fc On fc.FTA_FarmerCredit_ID=ci.FTA_FarmerCredit_ID Or ci.FTA_FarmerCredit_ID Is Null
Inner Join FTA_Farming fming On fming.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
Inner Join FTA_CreditDefinition cd On cd.FTA_CreditDefinition_ID=fc.FTA_CreditDefinition_ID
Right Join FTA_CreditDefinitionLine cdl On 
  (cdl.FTA_CreditDefinition_ID=cd.FTA_CreditDefinition_ID Or cdl.FTA_CreditDefinition_ID Is Null)
  And (cdl.M_Product_ID=mp.M_Product_ID Or cdl.M_Product_ID Is Null Or mp.M_Product_ID Is Null)
  And (cdl.M_Product_Category_ID=mp.M_Product_Category_ID  Or cdl.M_Product_Category_ID Is Null Or mp.M_Product_Category_ID Is Null)
  And (cdl.C_Charge_ID=cil.C_Charge_ID Or cdl.C_Charge_ID Is Null Or cil.C_Charge_ID Is Null)
Left Join (Select FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Sum(Amt) Amt
	   From FTA_Fact 
	   Where AD_Table_ID=318
	   Group By
	   FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID
	   )fa On   fa.FTA_CreditDefinitionLine_ID=cdl.FTA_CreditDefinitionLine_ID
		And fa.C_BPartner_ID=fc.C_BPartner_ID
		And fa.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
Left Join (Select FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Record_ID,Line_ID,Sum(Amt) Amt
	   From FTA_Fact 
	   Where AD_Table_ID=318
	   Group By
	   FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Record_ID,Line_ID
	   )fa_alloc On   fa_alloc.FTA_CreditDefinitionLine_ID=cdl.FTA_CreditDefinitionLine_ID
		And fa_alloc.C_BPartner_ID=fc.C_BPartner_ID
		And fa_alloc.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
		And fa_alloc.Record_ID=ci.C_Invoice_ID
		And fa_alloc.Line_ID=cil.C_InvoiceLine_ID

Union
--Orders
Select  co.AD_Client_ID,				--Client
	co.AD_Org_ID,					--ORg
	co.C_BPartner_ID, 				--Business Partner
	Cast(Null As Numeric(10,0)) C_Invoice_ID,	--Invoice
	Cast(Null As Numeric(10,0)) C_InvoiceLine_ID,	--Invoice Line
	co.C_Order_ID,					--Order
	col.C_OrderLine_ID,				--Order Line
	co.DocStatus,					--DocStatus
	co.DocAction,					--DocAction
	co.FTA_FarmerCredit_ID,				--Farmer Credit
	col.Line,					--Line
	Case 
	  When mp.M_Product_Category_ID Is Not Null 
	    Then mpc.Name 
	  When col.M_Product_ID Is Not Null 
	    Then mp.Name 
	  When col.C_Charge_ID Is Not Null 
	    Then cch.Name
	End || COALESCE(col.Description, '') LineDescription,--Description Invoice
	cdl.M_Product_ID,				--Product
	cdl.M_Product_Category_ID,			--Product Category
	cdl.C_Charge_ID,				--Charge				
	(cdl.Amt * fming.Area)  SO_CreditLimit,		--Credit Limit
	Coalesce(fa.Amt,0) SO_CreditUsed,		--CreditUsed
	Coalesce(
		fa_Alloc.Amt,
		Case 
		  When cdl.M_Product_ID=mp.M_Product_ID 
			Or cdl.M_Product_Category_ID=mp.M_Product_Category_ID 
			Or cdl.C_Charge_ID=col.C_Charge_ID
		  Then col.LineNetAmt
		  Else 0
		  End
		) AllocatedAmt,		--Allocated
		co.IsSoTrx,
		cdl.FTA_CreditDefinitionLine_ID,
	col.LineNetAmt
From
C_Order co 
Inner Join C_OrderLine col On co.C_Order_ID=col.C_Order_ID
Left Join M_Product mp On col.M_Product_ID=mp.M_Product_ID 
Left Join M_Product_Category mpc On mp.M_Product_Category_ID=mpc.M_Product_Category_ID
Left Join C_Charge cch On cch.C_Charge_ID=col.C_Charge_ID
Right Join FTA_FarmerCredit fc On (fc.FTA_FarmerCredit_ID=co.FTA_FarmerCredit_ID Or co.FTA_FarmerCredit_ID Is Null)
Inner Join FTA_Farming fming On fming.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
Inner Join FTA_CreditDefinition cd On cd.FTA_CreditDefinition_ID=fc.FTA_CreditDefinition_ID
Right Join FTA_CreditDefinitionLine cdl On 
  (cdl.FTA_CreditDefinition_ID=cd.FTA_CreditDefinition_ID Or cdl.FTA_CreditDefinition_ID Is Null)
  And (cdl.M_Product_ID=mp.M_Product_ID Or cdl.M_Product_ID Is Null Or mp.M_Product_ID Is Null)
  And (cdl.M_Product_Category_ID=mp.M_Product_Category_ID  Or cdl.M_Product_Category_ID Is Null Or mp.M_Product_Category_ID Is Null)
  And (cdl.C_Charge_ID=col.C_Charge_ID Or cdl.C_Charge_ID Is Null Or col.C_Charge_ID Is Null)
Left Join (Select FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Sum(Amt) Amt
	   From FTA_Fact 
	   Where AD_Table_ID=259
	   Group By
	   FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID
	   )fa On   fa.FTA_CreditDefinitionLine_ID=cdl.FTA_CreditDefinitionLine_ID
		And fa.C_BPartner_ID=fc.C_BPartner_ID
		And fa.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
Left Join (Select FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Record_ID,Line_ID,Sum(Amt) Amt
	   From FTA_Fact 
	   Where AD_Table_ID=259
	   Group By
	   FTA_CreditDefinitionLine_ID,C_BPartner_ID,FTA_FarmerCredit_ID,Record_ID,Line_ID
	   )fa_alloc On   fa_alloc.FTA_CreditDefinitionLine_ID=cdl.FTA_CreditDefinitionLine_ID
		And fa_alloc.C_BPartner_ID=fc.C_BPartner_ID
		And fa_alloc.FTA_FarmerCredit_ID=fc.FTA_FarmerCredit_ID
		And fa_alloc.Record_ID=co.C_Order_ID
		And fa_alloc.Line_ID=col.C_OrderLine_ID;