Create Or Replace View FTA_RV_SuggestedProducts As 
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
	FTA_TechnicalFormLine_ID,	--Technical Form Line
	fming.FTA_Farming_ID,		--Farming
	fs.DayFrom,			--Day From Farming Stage
	fs.DayTo,			--Day To Farming Stage
	fming.StartDate + Cast(fs.DayFrom || ' day' as interval)  As DateFrom, --Date From Suggested Product Applicate
	fming.StartDate + Cast(fs.DayTo || ' day' as interval) AS DateTo      --Date To Suggested Product Applicate
From 
FTA_TechnicalFormLine tfl 
Inner Join FTA_Farming fming On tfl.FTA_Farming_ID=fming.FTA_Farming_ID
Inner Join M_Product pc On pc.M_Product_ID=fming.Category_ID
Right Join FTA_SuggestedProduct fsp On fsp.Category_ID=fming.Category_ID Or fsp.Category_ID IS Null
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
;
