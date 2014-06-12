-- May 7, 2014 3:52:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72854,454,0,19,53801,'M_Product_ID',TO_DATE('2014-05-07 03:52:20','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product',0,TO_DATE('2014-05-07 03:52:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- May 7, 2014 3:52:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72854 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- May 7, 2014 3:53:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-05-07 03:53:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72854
;

-- May 7, 2014 3:53:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72854,73423,0,53954,TO_DATE('2014-05-07 03:53:28','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',22,'ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',TO_DATE('2014-05-07 03:53:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 7, 2014 3:53:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73423 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- May 7, 2014 3:53:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-05-07 03:53:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73423
;

-- May 7, 2014 3:53:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-05-07 03:53:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73420
;

-- May 7, 2014 3:53:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-05-07 03:53:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 7, 2014 3:53:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-05-07 03:53:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 7, 2014 3:53:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-05-07 03:53:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 7, 2014 3:53:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-05-07 03:53:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73401
;

-- May 7, 2014 3:53:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-05-07 03:53:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73402
;

-- May 7, 2014 3:53:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2014-05-07 03:53:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73395
;

-- May 7, 2014 3:54:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-05-07 03:54:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73423
;

-- May 7, 2014 3:57:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52241,Updated=TO_DATE('2014-05-07 03:57:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72854
;

-- May 7, 2014 3:57:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_DATE('2014-05-07 03:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72854
;

-- May 7, 2014 4:06:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52355,'EXISTS
(
	SELECT ccg.FTA_CategoryCalcGroup_ID 
	FROM FTA_CategoryCalcGroup ccg
	INNER JOIN FTA_CategoryCalc cc ON (cc.FTA_CategoryCalcGroup_ID =ccg.FTA_CategoryCalcGroup_ID ) 
	WHERE M_Product_ID = @M_Product_ID@ OR @M_Product_ID@ IS NULL
)',TO_DATE('2014-05-07 04:06:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_CategoryCalcGroup of Category','S',TO_DATE('2014-05-07 04:06:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 7, 2014 4:06:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52355,Updated=TO_DATE('2014-05-07 04:06:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72853
;

-- May 7, 2014 4:14:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_CategoryCalc.FTA_CategoryCalcGroup_ID=@FTA_CategoryCalcGroup_ID@
AND  FTA_CategoryCalc.M_Product_ID = @M_Product_ID@ OR @M_Product_ID@ IS NULL',Updated=TO_DATE('2014-05-07 04:14:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52354
;

-- May 7, 2014 4:20:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS
(
	SELECT ccg.FTA_CategoryCalcGroup_ID 
	FROM FTA_CategoryCalcGroup ccg
	LEFT JOIN FTA_CategoryCalc cc ON (cc.FTA_CategoryCalcGroup_ID =ccg.FTA_CategoryCalcGroup_ID ) 
	WHERE M_Product_ID = @M_Product_ID@ OR @M_Product_ID@ IS NULL
)',Updated=TO_DATE('2014-05-07 04:20:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52355
;

-- May 7, 2014 4:24:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS
(
	SELECT ccg.FTA_CategoryCalcGroup_ID 
	FROM FTA_CategoryCalcGroup ccg
	LEFT JOIN FTA_CategoryCalc cc ON (cc.FTA_CategoryCalcGroup_ID =ccg.FTA_CategoryCalcGroup_ID ) 
	WHERE M_Product_ID = @M_Product_ID@ OR @M_Product_ID@ =0
)',Updated=TO_DATE('2014-05-07 04:24:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52355
;

-- May 7, 2014 4:28:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS

(
	SELECT cc.FTA_CategoryCalcGroup_ID 
	FROM FTA_CategoryCalc cc
	WHERE M_Product_ID = 1009134 OR M_Product_ID IS NULL
)
OR EXISTS(SELECT FTA_CategoryCalcGroup_ID FROM FTA_CategoryCalcGroup)
',Updated=TO_DATE('2014-05-07 04:28:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52355
;

-- May 7, 2014 4:31:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS( SELECT cc.FTA_CategoryCalcGroup_ID FROM FTA_CategoryCalc cc WHERE M_Product_ID = @M_Product_ID@ OR M_Product_ID IS NULL
)
OR EXISTS(SELECT FTA_CategoryCalcGroup_ID FROM FTA_CategoryCalcGroup)
',Updated=TO_DATE('2014-05-07 04:31:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52355
;

-- May 7, 2014 4:32:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS(SELECT FTA_CategoryCalcGroup_ID FROM FTA_CategoryCalcGroup)OR 
EXISTS( SELECT cc.FTA_CategoryCalcGroup_ID FROM FTA_CategoryCalc cc WHERE M_Product_ID = @M_Product_ID@ OR M_Product_ID IS NULL
)

',Updated=TO_DATE('2014-05-07 04:32:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52355
;

-- May 7, 2014 4:34:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS(SELECT FTA_CategoryCalcGroup_ID FROM FTA_CategoryCalcGroup)OR 
EXISTS( SELECT cc.FTA_CategoryCalcGroup_ID FROM FTA_CategoryCalc cc WHERE M_Product_ID = @M_Product_ID@ OR @M_Product_ID@  IS NULL
)

',Updated=TO_DATE('2014-05-07 04:34:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52355
;

-- May 7, 2014 4:36:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS( SELECT cc.FTA_CategoryCalcGroup_ID FROM FTA_CategoryCalc cc WHERE M_Product_ID = @M_Product_ID@ OR @M_Product_ID@  IS NULL)

',Updated=TO_DATE('2014-05-07 04:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52355
;

-- May 7, 2014 4:43:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52292,Updated=TO_DATE('2014-05-07 04:43:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72852
;

-- May 7, 2014 4:48:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52356,'EXISTS( SELECT ase.M_AttributeSet_ID
FROM M_AttributeSet ase
INNER JOIN M_Product p ON (ase.M_AttributeSet_ID = p.M_AttributeSet_ID)
WHERE p.M_Product_ID = @M_Product_ID@)',TO_DATE('2014-05-07 04:48:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_AttributeSet of Product','S',TO_DATE('2014-05-07 04:48:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 7, 2014 4:48:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52356,Updated=TO_DATE('2014-05-07 04:48:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72852
;

-- May 7, 2014 4:50:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS( SELECT p.M_AttributeSet_ID
FROM M_Product p
WHERE p.M_Product_ID = @M_Product_ID@)',Updated=TO_DATE('2014-05-07 04:50:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52356
;

-- May 7, 2014 4:52:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='EXISTS
(
SELECT p.M_AttributeSet_ID
FROM M_Product p 
WHERE p.M_Product_ID = @M_Product_ID@
AND M_AttributeSet.M_AttributeSet_ID = p.M_AttributeSet_ID
)',Updated=TO_DATE('2014-05-07 04:52:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52356
;

