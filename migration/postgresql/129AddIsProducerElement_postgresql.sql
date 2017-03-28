-- 07-oct-2013 14:52:50 VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56448,0,'IsFarmer',TO_TIMESTAMP('2013-10-07 14:52:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Is Farmer','Is Farmer',TO_TIMESTAMP('2013-10-07 14:52:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07-oct-2013 14:52:50 VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56448 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 07-oct-2013 14:53:09 VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Es Productor',PrintName='Es Productor',Updated=TO_TIMESTAMP('2013-10-07 14:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56448 AND AD_Language='es_VE'
;

