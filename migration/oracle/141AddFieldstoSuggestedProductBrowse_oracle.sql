-- Oct 11, 2013 2:04:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56478,0,'suggested',TO_DATE('2013-10-11 14:04:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','suggested','suggested',TO_DATE('2013-10-11 14:04:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 2:04:04 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56478 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 11, 2013 2:04:06 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68740,56478,0,20,53617,'suggested',TO_DATE('2013-10-11 14:04:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','N','N','N','N','N','N','N','N','N','suggested',TO_DATE('2013-10-11 14:04:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 11, 2013 2:04:06 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68740 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 11, 2013 2:04:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Element SET ColumnName='Suggested', Name='Suggested', PrintName='Suggested',Updated=TO_DATE('2013-10-11 14:04:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56478
;

-- Oct 11, 2013 2:04:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56478
;

-- Oct 11, 2013 2:04:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET ColumnName='Suggested', Name='Suggested', Description=NULL, Help=NULL WHERE AD_Element_ID=56478
;

-- Oct 11, 2013 2:04:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para SET ColumnName='Suggested', Name='Suggested', Description=NULL, Help=NULL, AD_Element_ID=56478 WHERE UPPER(ColumnName)='SUGGESTED' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 11, 2013 2:04:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para SET ColumnName='Suggested', Name='Suggested', Description=NULL, Help=NULL WHERE AD_Element_ID=56478 AND IsCentrallyMaintained='Y'
;

-- Oct 11, 2013 2:04:35 PM VET
-- SFAndroid Contribution
UPDATE AD_Field SET Name='Suggested', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56478) AND IsCentrallyMaintained='Y'
;

-- Oct 11, 2013 2:04:36 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem pi SET PrintName='Suggested', Name='Suggested' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56478)
;

-- Oct 11, 2013 2:04:49 PM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Sugerido',PrintName='Sugerido',Updated=TO_DATE('2013-10-11 14:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56478 AND AD_Language='es_MX'
;

-- Oct 11, 2013 2:05:20 PM VET
-- SFAndroid Contribution
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,68740,0,52197,50055,50018,'SP_Suggested','SP.Suggested',TO_DATE('2013-10-11 14:05:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Suggested',TO_DATE('2013-10-11 14:05:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 2:05:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53339,50023,0,56478,0,20,52197,TO_DATE('2013-10-11 14:05:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Suggested',10,TO_DATE('2013-10-11 14:05:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 2:05:33 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53339 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 11, 2013 2:05:44 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-10-11 14:05:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53339
;

-- Oct 11, 2013 2:06:14 PM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET DefaultValue='Y', IsDisplayed='N', IsMandatory='Y', IsQueryCriteria='Y',Updated=TO_DATE('2013-10-11 14:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53339
;

