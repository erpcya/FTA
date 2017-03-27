-- 07-oct-2013 15:43:47 VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Asignación de Credito a Acta',Description='Asignación de Credito a Acta',Help='Asignación de Credito a Acta',Updated=TO_TIMESTAMP('2013-10-07 15:43:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53482 AND AD_Language='es_VE'
;

-- 07-oct-2013 15:44:17 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Trl SET Name='Asignación de Credito a Acta',Description='Asignación de Credito a Acta',Help='Asignación de Credito a Acta',Updated=TO_TIMESTAMP('2013-10-07 15:44:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50022 AND AD_Language='es_VE'
;

-- 07-oct-2013 15:46:17 VET
-- SFAndroid Contribution
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2013-10-07 15:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68220
;

-- 07-oct-2013 16:00:03 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Val_Rule_ID=52214,Updated=TO_TIMESTAMP('2013-10-07 16:00:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68524
;

-- 07-oct-2013 16:00:46 VET
-- SFAndroid Contribution
UPDATE AD_Table SET AD_Window_ID=53259,Updated=TO_TIMESTAMP('2013-10-07 16:00:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53612
;

-- 07-oct-2013 16:01:10 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET AD_Val_Rule_ID=52214,Updated=TO_TIMESTAMP('2013-10-07 16:01:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53291
;

-- 07-oct-2013 16:01:22 VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsActive='N',Updated=TO_TIMESTAMP('2013-10-07 16:01:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53288
;

-- 07-oct-2013 16:12:42 VET
-- SFAndroid Contribution
UPDATE AD_Browse SET WhereClause='FTA_CreditAct_ID Is Not Null And DocStatus Not In (''CO'',''CL'')',Updated=TO_TIMESTAMP('2013-10-07 16:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50022
;

