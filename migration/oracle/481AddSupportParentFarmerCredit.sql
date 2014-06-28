-- Jun 18, 2014 9:08:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53275,0,TO_DATE('2014-06-18 09:08:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Used Approved Credit amount is greater than','I',TO_DATE('2014-06-18 09:08:01','YYYY-MM-DD HH24:MI:SS'),100,'UsedApprovedCreditamountisgreaterthan')
;

-- Jun 18, 2014 9:08:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53275 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jun 18, 2014 9:08:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Monto del Credito usado es mayor que el aprobado',Updated=TO_DATE('2014-06-18 09:08:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53275 AND AD_Language='es_MX'
;

-- Jun 18, 2014 9:09:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Monto del Credito usado es mayor que el aprobado',Updated=TO_DATE('2014-06-18 09:09:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53275 AND AD_Language='es_VE'
;

-- Jun 18, 2014 9:16:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND FTA_FarmerCredit.Parent_FarmerCredit_ID IS NULL AND EXISTS(SELECT 1   FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'' AND bfe.DocStatus IN (''CO'',''CL'')) ',Updated=TO_DATE('2014-06-18 09:16:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

