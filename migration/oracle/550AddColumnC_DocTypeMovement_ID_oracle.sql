-- Feb 11, 2015 5:41:29 PM VET
-- FTA
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57843,0,18,170,'C_DocTypeMovement_ID',TO_DATE('2015-02-11 17:41:22','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02',22,NULL,'Y','Document Type for Movement','Doc Type Movement',TO_DATE('2015-02-11 17:41:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 5:41:29 PM VET
-- FTA
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57843 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 11, 2015 5:41:58 PM VET
-- FTA
UPDATE AD_Element_Trl SET Name='Tipo de Documento Para Movimiento',PrintName='Tipo de Documento Movimiento',Updated=TO_DATE('2015-02-11 17:41:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57843 AND AD_Language='es_MX'
;

-- Feb 11, 2015 5:42:25 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75765,57843,0,18,170,217,'C_DocTypeMovement_ID',TO_DATE('2015-02-11 17:42:24','YYYY-MM-DD HH24:MI:SS'),100,'D',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Type for Movement',0,TO_DATE('2015-02-11 17:42:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 11, 2015 5:42:25 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75765 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2015 5:42:58 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75765,76144,0,167,TO_DATE('2015-02-11 17:42:57','YYYY-MM-DD HH24:MI:SS'),100,0,'U','N','Y','Y','Y','N','N','N','N','N','Document Type for Movement',0,350,0,TO_DATE('2015-02-11 17:42:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2015 5:42:58 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=76144 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2015 5:43:05 PM VET
-- FTA
UPDATE AD_Field SET EntityType='D',Updated=TO_DATE('2015-02-11 17:43:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=76144
;

-- Feb 11, 2015 5:43:26 PM VET
-- FTA
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ = ''ODD''',Updated=TO_DATE('2015-02-11 17:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=76144
;

-- Feb 11, 2015 5:43:41 PM VET
-- FTA
ALTER TABLE C_DocType ADD C_DocTypeMovement_ID NUMBER(10) DEFAULT NULL 
;

