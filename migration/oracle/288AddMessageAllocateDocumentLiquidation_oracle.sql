-- Nov 5, 2013 5:34:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53253,0,TO_DATE('2013-11-05 17:34:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Document Allocated','M',TO_DATE('2013-11-05 17:34:10','YYYY-MM-DD HH24:MI:SS'),100,'DocumentAllocated')
;

-- Nov 5, 2013 5:34:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53253 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Nov 5, 2013 5:34:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Documento Asignado',Updated=TO_DATE('2013-11-05 17:34:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53253 AND AD_Language='es_MX'
;

-- Nov 5, 2013 5:36:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Message SET MsgText='Document Allocated Remove or Reverse Allocation',Updated=TO_DATE('2013-11-05 17:36:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53253
;

-- Nov 5, 2013 5:36:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53253
;

-- Nov 5, 2013 5:38:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Documento Asignado Elimine o Reverse la Asignación para luego Anular o Revertir el Documento',Updated=TO_DATE('2013-11-05 17:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53253 AND AD_Language='es_MX'
;

-- Nov 6, 2013 9:07:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET WhereClause='DocStatus IN (''CO'',''CL'') /*AND C_Invoice_ID IS NULL AND AvailableAmt>0*/',Updated=TO_DATE('2013-11-06 09:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50028
;

