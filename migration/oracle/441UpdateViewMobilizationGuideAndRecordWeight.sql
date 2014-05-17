-- Mar 29, 2014 11:16:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2014-03-29 11:16:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72626
;

-- Mar 29, 2014 11:20:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2014-03-29 11:20:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72626
;

-- Mar 29, 2014 11:20:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET Name='Guia SADA',Updated=TO_DATE('2014-03-29 11:20:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72626 AND AD_Language='es_MX'
;

-- Mar 29, 2014 11:28:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET Name='Guia S.A.D.A.',Updated=TO_DATE('2014-03-29 11:28:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72626 AND AD_Language='es_MX'
;

-- Mar 29, 2014 11:28:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field_Trl SET Name='Guia S.A.D.A.',Updated=TO_DATE('2014-03-29 11:28:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72626 AND AD_Language='es_VE'
;

-- Mar 29, 2014 11:56:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72590,56130,0,10,53620,'Ext_Guide',TO_DATE('2014-03-29 11:56:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','N','N','N','N','N','N','N','N','N','Ext. Guide',TO_DATE('2014-03-29 11:56:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 29, 2014 11:56:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72590 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 29, 2014 12:04:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57109,0,'guide_sada',TO_DATE('2014-03-29 12:04:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','guide_sada','guide_sada',TO_DATE('2014-03-29 12:04:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 29, 2014 12:04:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57109 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 29, 2014 12:04:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72591,57109,0,10,53625,'guide_sada',TO_DATE('2014-03-29 12:04:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','N','N','N','N','N','N','N','N','N','guide_sada',TO_DATE('2014-03-29 12:04:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 29, 2014 12:04:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72591 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 29, 2014 12:04:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='Guide_SADA', Name='Guide SADA', PrintName='Guide SADA',Updated=TO_DATE('2014-03-29 12:04:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57109
;

-- Mar 29, 2014 12:04:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57109
;

-- Mar 29, 2014 12:04:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='Guide_SADA', Name='Guide SADA', Description=NULL, Help=NULL WHERE AD_Element_ID=57109
;

-- Mar 29, 2014 12:04:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='Guide_SADA', Name='Guide SADA', Description=NULL, Help=NULL, AD_Element_ID=57109 WHERE UPPER(ColumnName)='GUIDE_SADA' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Mar 29, 2014 12:04:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='Guide_SADA', Name='Guide SADA', Description=NULL, Help=NULL WHERE AD_Element_ID=57109 AND IsCentrallyMaintained='Y'
;

-- Mar 29, 2014 12:04:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Guide SADA', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57109) AND IsCentrallyMaintained='Y'
;

-- Mar 29, 2014 12:04:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Guide SADA', Name='Guide SADA' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57109)
;

-- Mar 29, 2014 12:04:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Guia SADA',PrintName='Guia SADA',Updated=TO_DATE('2014-03-29 12:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57109 AND AD_Language='es_MX'
;

-- Mar 29, 2014 12:04:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Guia SADA',PrintName='Guia SADA',Updated=TO_DATE('2014-03-29 12:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57109 AND AD_Language='es_VE'
;

-- Mar 29, 2014 12:27:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2014-03-29 12:27:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72071
;

