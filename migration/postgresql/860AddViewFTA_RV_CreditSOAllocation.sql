/*--DROP View FTA_RV_CreditSOAllocation;
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
	(cdl.Amt * fc.ApprovedQty)  SO_CreditLimit,		--Credit Limit
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
	ci.GrandTotal,
	cdl.FTA_CDL_Category_ID
From
C_Invoice ci 
Right Join FTA_FarmerCredit fc On fc.FTA_FarmerCredit_ID=ci.FTA_FarmerCredit_ID Or ci.FTA_FarmerCredit_ID Is Null
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
	(cdl.Amt * fc.ApprovedQty)  SO_CreditLimit,		--Credit Limit
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
	co.GrandTotal,
	cdl.FTA_CDL_Category_ID
From
C_Order co 
Right Join FTA_FarmerCredit fc On (fc.FTA_FarmerCredit_ID=co.FTA_FarmerCredit_ID Or co.FTA_FarmerCredit_ID Is Null)
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
*/


CREATE OR REPLACE VIEW fta_rv_creditsoallocation AS 
         SELECT ci.ad_client_id, ci.ad_org_id, ci.c_bpartner_id, 
            ci.c_invoice_id, NULL::numeric(10,0) AS c_order_id, ci.docstatus, 
            ci.docaction, fc.fta_farmercredit_id, cdl.line, 
            cdl.amt * fc.approvedqty AS so_creditlimit, 
            COALESCE(fa.amt, 0::numeric) AS so_creditused, 
            COALESCE(fa_alloc.amt, 0::numeric) AS allocatedamt, ci.issotrx, 
            cdl.fta_creditdefinitionline_id, 
                CASE
                    WHEN cdl.m_product_category_id IS NOT NULL THEN mpc.name
                    WHEN cdl.m_product_id IS NOT NULL THEN mp.name
                    WHEN cdl.c_charge_id IS NOT NULL THEN cch.name
                    ELSE NULL::character varying
                END::text || COALESCE(cdl.description, ''::character varying)::text AS linedescription, 
            ci.grandtotal, cdl.fta_cdl_category_id
           FROM c_invoice ci
      RIGHT JOIN fta_farmercredit fc ON fc.fta_farmercredit_id = ci.fta_farmercredit_id OR fc.fta_farmercredit_id<>ci.fta_farmercredit_id OR ci.FTA_FarmerCredit_ID IS NULL
   JOIN fta_creditdefinition cd ON cd.fta_creditdefinition_id = fc.fta_creditdefinition_id
   RIGHT JOIN fta_creditdefinitionline cdl ON cdl.fta_creditdefinition_id = cd.fta_creditdefinition_id OR cdl.fta_creditdefinition_id IS NULL
   LEFT JOIN m_product mp ON cdl.m_product_id = mp.m_product_id
   LEFT JOIN m_product_category mpc ON cdl.m_product_category_id = mpc.m_product_category_id
   LEFT JOIN c_charge cch ON cch.c_charge_id = cdl.c_charge_id
   LEFT JOIN ( SELECT fta_fact.fta_creditdefinitionline_id, 
    fta_fact.c_bpartner_id, fta_fact.fta_farmercredit_id, 
    sum(fta_fact.amt * fta_fact.multiplier) AS amt
   FROM fta_fact
  WHERE fta_fact.ad_table_id = 318::numeric
  GROUP BY fta_fact.fta_creditdefinitionline_id, fta_fact.c_bpartner_id, fta_fact.fta_farmercredit_id) fa ON fa.fta_creditdefinitionline_id = cdl.fta_creditdefinitionline_id AND fa.c_bpartner_id = fc.c_bpartner_id AND fa.fta_farmercredit_id = fc.fta_farmercredit_id
   LEFT JOIN ( SELECT fta_fact.fta_creditdefinitionline_id, 
    fta_fact.c_bpartner_id, fta_fact.fta_farmercredit_id, fta_fact.record_id, 
    sum(fta_fact.amt) AS amt
   FROM fta_fact
  WHERE fta_fact.ad_table_id = 318::numeric
  GROUP BY fta_fact.fta_creditdefinitionline_id, fta_fact.c_bpartner_id, fta_fact.fta_farmercredit_id, fta_fact.record_id) fa_alloc ON fa_alloc.fta_creditdefinitionline_id = cdl.fta_creditdefinitionline_id AND fa_alloc.c_bpartner_id = fc.c_bpartner_id AND fa_alloc.fta_farmercredit_id = fc.fta_farmercredit_id AND fa_alloc.record_id = ci.c_invoice_id
  
UNION 

         SELECT co.ad_client_id, co.ad_org_id, co.c_bpartner_id, 
            NULL::numeric(10,0) AS c_invoice_id, co.c_order_id, co.docstatus, 
            co.docaction, fc.fta_farmercredit_id, cdl.line, 
            cdl.amt * fc.approvedqty AS so_creditlimit, 
            COALESCE(fa.amt, 0::numeric) AS so_creditused, 
            COALESCE(fa_alloc.amt, 0::numeric) AS allocatedamt, co.issotrx, 
            cdl.fta_creditdefinitionline_id, 
                CASE
                    WHEN cdl.m_product_category_id IS NOT NULL THEN mpc.name
                    WHEN cdl.m_product_id IS NOT NULL THEN mp.name
                    WHEN cdl.c_charge_id IS NOT NULL THEN cch.name
                    ELSE NULL::character varying
                END::text || COALESCE(cdl.description, ''::character varying)::text AS linedescription, 
            co.grandtotal, cdl.fta_cdl_category_id
           FROM c_order co
      RIGHT JOIN fta_farmercredit fc ON fc.fta_farmercredit_id = co.fta_farmercredit_id OR fc.fta_farmercredit_id <> co.fta_farmercredit_id OR co.FTA_FarmerCredit_ID IS NULL
   JOIN fta_creditdefinition cd ON cd.fta_creditdefinition_id = fc.fta_creditdefinition_id
   RIGHT JOIN fta_creditdefinitionline cdl ON cdl.fta_creditdefinition_id = cd.fta_creditdefinition_id OR cdl.fta_creditdefinition_id IS NULL
   LEFT JOIN m_product mp ON cdl.m_product_id = mp.m_product_id
   LEFT JOIN m_product_category mpc ON cdl.m_product_category_id = mpc.m_product_category_id
   LEFT JOIN c_charge cch ON cch.c_charge_id = cdl.c_charge_id
   LEFT JOIN ( SELECT fta_fact.fta_creditdefinitionline_id, 
    fta_fact.c_bpartner_id, fta_fact.fta_farmercredit_id, 
    sum(fta_fact.amt * fta_fact.multiplier) AS amt
   FROM fta_fact
  WHERE fta_fact.ad_table_id = 318::numeric
  GROUP BY fta_fact.fta_creditdefinitionline_id, fta_fact.c_bpartner_id, fta_fact.fta_farmercredit_id) fa ON fa.fta_creditdefinitionline_id = cdl.fta_creditdefinitionline_id AND fa.c_bpartner_id = fc.c_bpartner_id AND fa.fta_farmercredit_id = fc.fta_farmercredit_id
   LEFT JOIN ( SELECT fta_fact.fta_creditdefinitionline_id, 
    fta_fact.c_bpartner_id, fta_fact.fta_farmercredit_id, fta_fact.record_id, 
    sum(fta_fact.amt) AS amt
   FROM fta_fact
  WHERE fta_fact.ad_table_id = 259::numeric
  GROUP BY fta_fact.fta_creditdefinitionline_id, fta_fact.c_bpartner_id, fta_fact.fta_farmercredit_id, fta_fact.record_id) fa_alloc ON fa_alloc.fta_creditdefinitionline_id = cdl.fta_creditdefinitionline_id AND fa_alloc.c_bpartner_id = fc.c_bpartner_id AND fa_alloc.fta_farmercredit_id = fc.fta_farmercredit_id AND fa_alloc.record_id = co.c_order_id;

