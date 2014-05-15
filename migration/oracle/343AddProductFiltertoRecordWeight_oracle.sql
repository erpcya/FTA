-- Jan 15, 2014 4:47:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52298,'exists (select 1 
from FTA_EntryTicket et
inner join C_OrderLine ol on et.C_Order_ID = ol.C_Order_ID
where
ol.M_Product_ID = M_Product.M_Product_ID 
and 
et.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@)
or
exists (select 1
from FTA_QualityAnalysis qa 
where qa.M_Product_ID = M_Product.M_Product_ID 
and
qa.FTA_QualityAnalysis_ID=@FTA_QualityAnalysis_ID@)',TO_DATE('2014-01-15 16:46:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Products for (Order - Quality Analysis)','S',TO_DATE('2014-01-15 16:46:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 15, 2014 4:47:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52298,Updated=TO_DATE('2014-01-15 16:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71278
;

