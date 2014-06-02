-- Dec 31, 2000 8:48:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2000-12-31 20:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73499
;

-- Dec 31, 2000 8:48:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2000-12-31 20:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73498
;

-- Dec 31, 2000 8:48:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2000-12-31 20:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73499
;

-- Dec 31, 2000 8:48:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2000-12-31 20:48:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73498
;

-- Dec 31, 2000 9:00:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_FarmerCredit.C_BPartner_ID = @C_BPartner_ID@ AND FTA_FarmerCredit.DocStatus = ''CO'' AND EXISTS(SELECT 1   FROM FTA_BillOfExchange bfe WHERE bfe.Status=''S'' AND bfe.DocStatus IN (''CO'',''CL'')) AND Parent_FarmerCredit_ID IS NULL',Updated=TO_DATE('2000-12-31 21:00:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52207
;

-- Dec 31, 2000 11:15:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=29,Updated=TO_DATE('2000-12-31 23:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72998
;

-- Dec 31, 2000 11:15:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=10,Updated=TO_DATE('2000-12-31 23:15:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72998
;

-- Dec 31, 2000 11:16:12 PM VET
-- Farming Technical Assistance
ALTER TABLE FTA_FarmerCredit MODIFY PreviousApprovedQty NUMBER DEFAULT 0
;

-- Jun 2, 2014 4:59:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53274,0,TO_DATE('2014-06-02 16:59:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Used Approved Credit amount is greater than','I',TO_DATE('2014-06-02 16:59:53','YYYY-MM-DD HH24:MI:SS'),100,'UsedApprovedCreditamountisgreaterthan')
;

-- Jun 2, 2014 4:59:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53274 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jun 2, 2014 5:00:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Crédito usado es mayor a  monto Aprovado',Updated=TO_DATE('2014-06-02 17:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53274 AND AD_Language='es_MX'
;

-- Jun 2, 2014 5:00:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Crédito usado es mayor a  monto Aprovado',Updated=TO_DATE('2014-06-02 17:00:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53274 AND AD_Language='es_VE'
;

