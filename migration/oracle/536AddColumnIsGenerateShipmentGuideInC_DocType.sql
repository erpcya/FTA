-- Dec 16, 2014 10:56:08 AM VET
-- FTA
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57580,0,20,'IsGenerateShipmentGuide',TO_DATE('2014-12-16 10:55:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Generate Shipment Guide','Generate Shipment Guide',TO_DATE('2014-12-16 10:55:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 10:56:08 AM VET
-- FTA
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57580 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Dec 16, 2014 10:56:30 AM VET
-- FTA
UPDATE AD_Element_Trl SET Name='Generar Guía de Despacho',PrintName='Generar Guía de Despacho',Updated=TO_DATE('2014-12-16 10:56:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57580 AND AD_Language='es_MX'
;

-- Dec 16, 2014 10:56:33 AM VET
-- FTA
UPDATE AD_Element_Trl SET Name='Generar Guía de Despacho',PrintName='Generar Guía de Despacho',Updated=TO_DATE('2014-12-16 10:56:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57580 AND AD_Language='es_VE'
;

-- Dec 16, 2014 10:56:54 AM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74966,57580,0,20,217,'IsGenerateShipmentGuide',TO_DATE('2014-12-16 10:56:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Generate Shipment Guide',0,TO_DATE('2014-12-16 10:56:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 16, 2014 10:56:54 AM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74966 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 16, 2014 10:57:35 AM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,74966,74949,0,167,TO_DATE('2014-12-16 10:57:30','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','N','Y','Y','N','N','N','N','N','Generate Shipment Guide',0,330,0,TO_DATE('2014-12-16 10:57:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 10:57:35 AM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74949 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 16, 2014 10:57:51 AM VET
-- FTA
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ = ''FLO''',Updated=TO_DATE('2014-12-16 10:57:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74949
;

-- Dec 16, 2014 10:59:08 AM VET
-- FTA
ALTER TABLE C_DocType ADD IsGenerateShipmentGuide CHAR(1) DEFAULT 'N'  CHECK (IsGenerateShipmentGuide IN ('Y','N'))
;

