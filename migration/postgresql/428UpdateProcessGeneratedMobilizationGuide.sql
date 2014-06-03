-- Mar 20, 2014 9:34:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2014-03-20 09:34:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Mar 20, 2014 9:34:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarmerCredit.isManual',Updated=TO_TIMESTAMP('2014-03-20 09:34:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72450
;

-- Mar 20, 2014 9:41:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarmerCredit.amt',Updated=TO_TIMESTAMP('2014-03-20 09:41:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72450
;

-- Mar 20, 2014 9:41:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarmerCredit.amt',Updated=TO_TIMESTAMP('2014-03-20 09:41:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Mar 20, 2014 10:16:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1106,0,53594,54653,20,'IsSOTrx',TO_TIMESTAMP('2014-03-20 10:16:52','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02',1,'The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Y','N','N','Sales Transaction',70,TO_TIMESTAMP('2014-03-20 10:16:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 20, 2014 10:16:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54653 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

