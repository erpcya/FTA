-- May 10, 2014 4:12:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic=' ',Updated=TO_TIMESTAMP('2014-05-10 04:12:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54403
;

-- May 10, 2014 4:12:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 04:12:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54403
;

-- May 10, 2014 4:21:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-05-10 04:21:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72821
;

-- May 10, 2014 4:39:27 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53600, SeqNo=0,Updated=TO_TIMESTAMP('2014-05-10 04:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53823
;

-- May 10, 2014 4:39:33 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53654, SeqNo=0,Updated=TO_TIMESTAMP('2014-05-10 04:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53823
;

-- May 10, 2014 4:39:33 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53654, SeqNo=1,Updated=TO_TIMESTAMP('2014-05-10 04:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53788
;

-- May 10, 2014 4:39:33 AM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53654, SeqNo=8,Updated=TO_TIMESTAMP('2014-05-10 04:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53653
;

-- May 10, 2014 4:41:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='@SQL=SELECT NVL(MAX(SeqNo),0)+10 AS DefaultValue FROM FTA_AttributeReportLine WHERE FTA_AttributeReport_ID=@FTA_AttributeReport_ID@',Updated=TO_TIMESTAMP('2014-05-10 04:41:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72824
;

-- May 10, 2014 4:55:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@!= 0 | @FTA_CategoryCalc_ID@!=0',Updated=TO_TIMESTAMP('2014-05-10 04:55:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73420
;

-- May 10, 2014 4:55:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@!= 0 | @FTA_CategoryCalc_ID@!=0',Updated=TO_TIMESTAMP('2014-05-10 04:55:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 10, 2014 4:56:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@!0 | @M_Attribute_ID@!0',Updated=TO_TIMESTAMP('2014-05-10 04:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 10, 2014 4:56:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@!0 | @M_Attribute_ID@!0',Updated=TO_TIMESTAMP('2014-05-10 04:56:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 4:56:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@! 0 | @FTA_CategoryCalc_ID@!0',Updated=TO_TIMESTAMP('2014-05-10 04:56:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 10, 2014 4:56:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@! 0 | @FTA_CategoryCalc_ID@!0',Updated=TO_TIMESTAMP('2014-05-10 04:56:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73420
;

-- May 10, 2014 4:58:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@= 0 | @FTA_CategoryCalc_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 04:58:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73420
;

-- May 10, 2014 4:58:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@= 0 | @FTA_CategoryCalc_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 04:58:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 10, 2014 4:59:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0 | @M_Attribute_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 04:59:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 10, 2014 4:59:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0 | @M_Attribute_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 04:59:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:02:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 05:02:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73420
;

-- May 10, 2014 5:02:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 05:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 10, 2014 5:02:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 05:02:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 10, 2014 5:03:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-05-10 05:03:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:04:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 05:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:05:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0 | @M_Attribute_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 05:05:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:06:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0 & @M_Attribute_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 05:06:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:06:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='(@M_AttributeSet_ID@=0 & @M_Attribute_ID@=0) | (@M_AttributeSet_ID@!0 & @M_Attribute_ID@=0) | (@M_AttributeSet_ID@=0 & @M_Attribute_ID@!0)',Updated=TO_TIMESTAMP('2014-05-10 05:06:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:07:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='(@M_AttributeSet_ID@=0 & @M_Attribute_ID@=0) & (@M_AttributeSet_ID@!0 & @M_Attribute_ID@=0) &| (@M_AttributeSet_ID@=0 & @M_Attribute_ID@!0)',Updated=TO_TIMESTAMP('2014-05-10 05:07:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:08:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='(@M_AttributeSet_ID@=0 & @M_Attribute_ID@=0) & (@M_AttributeSet_ID@!0 & @M_Attribute_ID@=0) & (@M_AttributeSet_ID@=0 & @M_Attribute_ID@!0)',Updated=TO_TIMESTAMP('2014-05-10 05:08:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:09:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='(@M_AttributeSet_ID@=0 & @M_Attribute_ID@=0) & (@M_AttributeSet_ID@!0 & @M_Attribute_ID@=0)',Updated=TO_TIMESTAMP('2014-05-10 05:09:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:10:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='(@M_AttributeSet_ID@=0 & @M_Attribute_ID@=0) | (@M_AttributeSet_ID@!0 & @M_Attribute_ID@=0)',Updated=TO_TIMESTAMP('2014-05-10 05:10:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:10:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='(@M_AttributeSet_ID@=0 & @M_Attribute_ID@=0)',Updated=TO_TIMESTAMP('2014-05-10 05:10:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:11:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0 & @M_Attribute_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 05:11:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 10, 2014 5:12:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0 & @M_Attribute_ID@=0',Updated=TO_TIMESTAMP('2014-05-10 05:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 10, 2014 5:14:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@ = 0 & @FTA_CategoryCalc_ID@ = 0',Updated=TO_TIMESTAMP('2014-05-10 05:14:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73420
;

-- May 10, 2014 5:14:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@ = 0 & @FTA_CategoryCalc_ID@ = 0',Updated=TO_TIMESTAMP('2014-05-10 05:14:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

