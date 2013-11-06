-- Oct 22, 2013 9:47:22 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69190,56147,0,19,53586,'FTA_CategoryCalc_ID',TO_TIMESTAMP('2013-10-22 21:47:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Category Calc',TO_TIMESTAMP('2013-10-22 21:47:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 22, 2013 9:47:22 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69190 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 22, 2013 9:47:24 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69191,454,0,19,53586,'M_Product_ID',TO_TIMESTAMP('2013-10-22 21:47:22','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',10,'Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','N','N','N','Product',TO_TIMESTAMP('2013-10-22 21:47:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 22, 2013 9:47:24 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69191 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 22, 2013 9:47:26 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56537,0,'payanalysis_id',TO_TIMESTAMP('2013-10-22 21:47:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','payanalysis_id','payanalysis_id',TO_TIMESTAMP('2013-10-22 21:47:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 22, 2013 9:47:26 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56537 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 22, 2013 9:47:28 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69192,56537,0,19,53586,'payanalysis_id',TO_TIMESTAMP('2013-10-22 21:47:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','payanalysis_id',TO_TIMESTAMP('2013-10-22 21:47:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 22, 2013 9:47:28 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69192 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 22, 2013 9:48:10 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=35,Updated=TO_TIMESTAMP('2013-10-22 21:48:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69192
;

-- Oct 22, 2013 9:48:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Element SET ColumnName='PayAnalysis_ID', Name='Analysis Paid', PrintName='Analysis Paid',Updated=TO_TIMESTAMP('2013-10-22 21:48:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56537
;

-- Oct 22, 2013 9:48:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56537
;

-- Oct 22, 2013 9:48:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET ColumnName='PayAnalysis_ID', Name='Analysis Paid', Description=NULL, Help=NULL WHERE AD_Element_ID=56537
;

-- Oct 22, 2013 9:48:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para SET ColumnName='PayAnalysis_ID', Name='Analysis Paid', Description=NULL, Help=NULL, AD_Element_ID=56537 WHERE UPPER(ColumnName)='PAYANALYSIS_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 22, 2013 9:48:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para SET ColumnName='PayAnalysis_ID', Name='Analysis Paid', Description=NULL, Help=NULL WHERE AD_Element_ID=56537 AND IsCentrallyMaintained='Y'
;

-- Oct 22, 2013 9:48:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET Name='Analysis Paid', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56537) AND IsCentrallyMaintained='Y'
;

-- Oct 22, 2013 9:48:35 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET PrintName='Analysis Paid', Name='Analysis Paid' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56537)
;

-- Oct 22, 2013 9:48:48 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Analisis Negociado',PrintName='Analisis Negociado',Updated=TO_TIMESTAMP('2013-10-22 21:48:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56537 AND AD_Language='es_MX'
;

