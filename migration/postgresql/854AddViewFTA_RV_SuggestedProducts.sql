CREATE Or Replace View FTA_RV_SuggestedProducts As 
Select  tfl.AD_Client_ID,		--Client ID
	tfl.AD_Org_ID,			--Org
	fming.Category_ID,   		--Category Farm
	pc.Name As ProductName, 	--Category Name
	fming.StartDate,		--Start Farm
	fming.PlantingCycle_ID,		--Planting Cycle
	fming.FinancingType,		--Financing Type
	fming.Status,			--Farming Status
	sp.M_Product_ID,		--Suggested Product
	fsp.FTA_FarmingStage_ID,	--Farming Stage
	fsp.FTA_ObservationType_ID,	--Observation Type
	fsp.SeqNo,			--Sequence
	fsp.QtyDosage,			--Qty Dosage
	fsp.Dosage_Uom_ID,		--Uom Dosage
	sp.M_Product_Category_ID,	--Product Category
	tfl.FTA_TechnicalFormLine_ID,	--Technical Form Line
	fming.FTA_Farming_ID,		--Farming
	Coalesce(fs.DayFrom,fsp.DayFrom) DayFrom,			--Day From Farming Stage
	Coalesce(fs.DayTo,fsp.DayTo) DayTo,			--Day To Farming Stage
	fming.StartDate + Cast(Coalesce(fs.DayFrom,fsp.DayFrom) || ' day' as interval)  As DateFrom, --Date From Suggested Product Applicate
	fming.StartDate + Cast(Coalesce(fs.DayTo,fsp.DayTo) || ' day' as interval) AS DateTo,      --Date To Suggested Product Applicate
	Cast('Y' AS Char(1)) As Suggested
From 
FTA_TechnicalFormLine tfl 
Inner Join FTA_Farming fming On tfl.FTA_Farming_ID=fming.FTA_Farming_ID
Inner Join M_Product pc On pc.M_Product_ID=fming.Category_ID
Inner Join FTA_SuggestedProduct fsp On (fsp.Category_ID=fming.Category_ID Or fsp.Category_ID IS Null)
Left Join FTA_FarmingStage fs On fs.FTA_FarmingStage_ID=fsp.FTA_FarmingStage_ID
Left Join M_Product sp On sp.M_Product_Category_ID=fsp.M_Product_Category_ID Or sp.M_Product_ID=fsp.M_Product_ID
Where 
--Current Technical Form
--tfl.FTA_TechnicalFormLine_ID=1000000 
--And 
--Farming Stage equals to Suggested Product or Suggested Product not Farming Stage 
(tfl.FTA_FarmingStage_ID=fsp.FTA_FarmingStage_ID OR fsp.FTA_FarmingStage_ID Is Null)
And
--Observation Type equals to Suggested Product or Suggested Product not Observation Type
(tfl.FTA_ObservationType_ID=fsp.FTA_ObservationType_ID OR fsp.FTA_ObservationType_ID Is Null)
--Supress Product From Product Group
And
Not Exists (Select 1 From 
	    M_Product p 
	    Inner Join FTA_SuggestedProduct sps On p.M_Product_ID=sps.M_Product_ID
	    Where
	    p.M_Product_Category_ID=fsp.M_Product_Category_ID
	    And
	    p.M_Product_ID=sp.M_Product_ID
	    And 
	    (tfl.FTA_ObservationType_ID=sps.FTA_ObservationType_ID OR sps.FTA_ObservationType_ID Is Null)
	    And 
	    (tfl.FTA_FarmingStage_ID=sps.FTA_FarmingStage_ID OR sps.FTA_FarmingStage_ID Is Null)
	    )
Union
Select  tfl.AD_Client_ID,		--Client ID
	tfl.AD_Org_ID,			--Org
	fming.Category_ID,   		--Category Farm
	pc.Name As ProductName, 	--Category Name
	fming.StartDate,		--Start Farm
	fming.PlantingCycle_ID,		--Planting Cycle
	fming.FinancingType,		--Financing Type
	fming.Status,			--Farming Status
	mp.M_Product_ID,		--Suggested Product
	Cast(null As Numeric(10,0))FTA_FarmingStage_ID,	--Farming Stage
	Cast(null As Numeric(10,0)) FTA_ObservationType_ID,	--Observation Type
	Cast(0 As Numeric(10,0)) SeqNo,			--Sequence
	Cast(0 As Numeric) QtyDosage,			--Qty Dosage
	Cast(null As Numeric(10,0)) Dosage_Uom_ID,		--Uom Dosage
	mp.M_Product_Category_ID,	--Product Category
	tfl.FTA_TechnicalFormLine_ID,	--Technical Form Line
	fming.FTA_Farming_ID,		--Farming
	Cast(null As Numeric) DayFrom,			--Day From Farming Stage
	Cast(null As Numeric) DayTo,			--Day To Farming Stage
	fming.StartDate + Cast(null || ' day' as interval)  As DateFrom, --Date From Suggested Product Applicate
	fming.StartDate + Cast(null || ' day' as interval) AS DateTo,      --Date To Suggested Product Applicate
	Cast('N' AS Char(1))  As Suggested
From 
FTA_TechnicalFormLine tfl 
Inner Join FTA_Farming fming On tfl.FTA_Farming_ID=fming.FTA_Farming_ID
Inner Join M_Product pc On pc.M_Product_ID=fming.Category_ID
,M_Product mp 
;
