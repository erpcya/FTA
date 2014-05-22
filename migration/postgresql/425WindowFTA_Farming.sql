-- Mar 19, 2014 3:12:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53531,54392,TO_TIMESTAMP('2014-03-19 15:12:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Making',TO_TIMESTAMP('2014-03-19 15:12:04','YYYY-MM-DD HH24:MI:SS'),100,'M')
;

-- Mar 19, 2014 3:12:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54392 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Mar 19, 2014 3:12:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Preparación',Updated=TO_TIMESTAMP('2014-03-19 15:12:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54392 AND AD_Language='es_MX'
;

-- Mar 19, 2014 3:12:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Preparación',Updated=TO_TIMESTAMP('2014-03-19 15:12:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54392 AND AD_Language='es_VE'
;

-- Mar 19, 2014 3:12:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='M',Updated=TO_TIMESTAMP('2014-03-19 15:12:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66941
;

-- Mar 19, 2014 3:13:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@Status@!''A'' & @Status@!''M''',Updated=TO_TIMESTAMP('2014-03-19 15:13:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66941
;

-- Mar 19, 2014 3:49:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarmerCredit.qty',Updated=TO_TIMESTAMP('2014-03-19 15:49:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

