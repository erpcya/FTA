-- 07-oct-2013 16:50:31 VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',50022,0,0,53483,NULL,'N',TO_DATE('2013-10-07 16:50:31','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit Allocation','ECA02','Allocate Farmer Credit to Act','Y','N','N','N','N','Farmer Credit Allocation','Y',2,2,TO_DATE('2013-10-07 16:50:31','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmerCreditAllocation Browse')
;

-- 07-oct-2013 16:50:31 VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53483 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 07-oct-2013 16:50:51 VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Asignación de Credito a Acta',Description='Asignación de Credito a Acta',Help='Asignación de Credito a Acta',Updated=TO_DATE('2013-10-07 16:50:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53483 AND AD_Language='es_MX'
;

-- 07-oct-2013 16:51:35 VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Process_ID=53483,Updated=TO_DATE('2013-10-07 16:51:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68220
;

-- 07-oct-2013 16:54:15 VET
-- SFAndroid Contribution
UPDATE AD_Process SET AD_Browse_ID=NULL,Updated=TO_DATE('2013-10-07 16:54:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53482
;

