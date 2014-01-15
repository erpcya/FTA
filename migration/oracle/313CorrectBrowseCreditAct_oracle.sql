-- Nov 27, 2013 9:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-11-27 09:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53305
;

-- Nov 27, 2013 9:51:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-11-27 09:51:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53301
;

-- Nov 27, 2013 9:52:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-11-27 09:52:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53305
;

-- Nov 27, 2013 9:52:19 AM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53301
;

-- Nov 27, 2013 9:52:19 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53301
;

-- Nov 27, 2013 9:52:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N',Updated=TO_DATE('2013-11-27 09:52:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53305
;

-- Nov 27, 2013 9:54:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET WhereClause='((IsAllocated=''Y'' AND FTA_CreditAct_ID=@FTA_CreditAct_ID@) OR (IsAllocated=''N'' AND DocStatus Not In (''CO'',''CL'')))',Updated=TO_DATE('2013-11-27 09:54:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50022
;

