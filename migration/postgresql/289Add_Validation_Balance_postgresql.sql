-- Nov 4, 2013 9:02:02 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET Name='FTA_RV_CreditDefinitionBalance just Invoice and Liquidation', WhereClause='(FTA_RV_CreditDefinitionBalance.AD_Table_ID IN(318, 53564) OR AD_Table_ID IS NULL)',Updated=TO_TIMESTAMP('2013-11-04 21:02:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53074
;

-- Nov 4, 2013 9:03:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET WhereClause='(AD_Table_ID IN(318, 53564) OR AD_Table_ID IS NULL)',Updated=TO_TIMESTAMP('2013-11-04 21:03:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53781
;

-- Nov 4, 2013 9:04:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,68772,70280,0,53781,TO_TIMESTAMP('2013-11-04 21:04:12','YYYY-MM-DD HH24:MI:SS'),100,'Database Table information',0,'ECA02','The Database Table provides the information of the table definition','N','Y','Y','Y','N','N','N','N','N','Table',0,180,0,TO_TIMESTAMP('2013-11-04 21:04:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 4, 2013 9:04:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70280 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Nov 4, 2013 9:04:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-11-04 21:04:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70280
;

-- Nov 4, 2013 9:05:06 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=70280
;

-- Nov 4, 2013 9:05:06 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=70280
;

-- Nov 4, 2013 9:58:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53252,0,TO_TIMESTAMP('2013-11-04 21:58:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','No Lines In Credit Definition for this Document','E',TO_TIMESTAMP('2013-11-04 21:58:22','YYYY-MM-DD HH24:MI:SS'),100,'NoLinesInCDef')
;

-- Nov 4, 2013 9:58:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53252 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Nov 4, 2013 9:59:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='No hay Lineas en la Definición de Crédito para éste Documento',Updated=TO_TIMESTAMP('2013-11-04 21:59:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53252 AND AD_Language='es_VE'
;

-- Nov 4, 2013 9:59:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='No hay Lineas en la Definición de Crédito para éste Documento',Updated=TO_TIMESTAMP('2013-11-04 21:59:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53252 AND AD_Language='es_VE'
;

-- Nov 4, 2013 10:21:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C'' | @CreditType@=''E'' | & @CreditType@=''L'' @Parent_FarmerCredit_ID@!0',Updated=TO_TIMESTAMP('2013-11-04 22:21:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Nov 4, 2013 10:24:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C'' | @CreditType@=''E'' | @CreditType@=''L'' & @Parent_FarmerCredit_ID@!0',Updated=TO_TIMESTAMP('2013-11-04 22:24:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

-- Nov 4, 2013 10:26:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C'' | @CreditType@=''E'' | @CreditType@=''L'' & @Parent_FarmerCredit_ID@=0',Updated=TO_TIMESTAMP('2013-11-04 22:26:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68229
;

