-- 2/08/2013 09:14:11 AM VET
-- LVE Withholding
-- INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56068,0,'ControlNo',TO_TIMESTAMP('2013-08-02 09:14:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Control No','Control No',TO_TIMESTAMP('2013-08-02 09:14:10','YYYY-MM-DD HH24:MI:SS'),100)
-- ;

-- 2/08/2013 09:14:11 AM VET
-- LVE Withholding
-- INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56068 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
-- ;


-- Aug 10, 2013 9:41:46 PM VET
-- LVE Withholding
-- INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56104,0,'Beneficiary_ID',TO_TIMESTAMP('2013-08-10 21:41:44','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner to whom payment is made','ECA02','The Beneficiary indicates the Business Partner to whom payment will be made.  This field is only displayed if the Paid to Third Party checkbox is selected.','Y','Beneficiary','Beneficiary',TO_TIMESTAMP('2013-08-10 21:41:44','YYYY-MM-DD HH24:MI:SS'),100)
-- ;

-- Aug 10, 2013 9:41:46 PM VET
-- LVE Withholding
-- INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56104 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
-- ;

-- Aug 10, 2013 9:42:31 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Beneficiario',PrintName='Beneficiario',Description='Socio del Negocio a quién se hace el pago',Help='El beneficiario indica el socio del negocio a quién se hará el pago.',Updated=TO_TIMESTAMP('2013-08-10 21:42:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56104 AND AD_Language='es_VE'
;

-- Aug 10, 2013 9:42:43 PM VET
-- LVE Withholding
UPDATE AD_Element SET Help='The Beneficiary indicates the Business Partner to whom payment will be made.',Updated=TO_TIMESTAMP('2013-08-10 21:42:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56104
;

-- Aug 10, 2013 9:42:43 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56104
;