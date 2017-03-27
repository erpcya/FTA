-- Oct 6, 2014 10:32:54 AM VET
-- FTA
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57494,0,20,'IsCheckReturn',TO_TIMESTAMP('2014-10-06 10:32:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Check Return','Check Return',TO_TIMESTAMP('2014-10-06 10:32:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 6, 2014 10:32:54 AM VET
-- FTA
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57494 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 6, 2014 10:33:13 AM VET
-- FTA
UPDATE AD_Element_Trl SET Name='Cheque Devuelto',PrintName='Cheque Devuelto',Updated=TO_TIMESTAMP('2014-10-06 10:33:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57494 AND AD_Language='es_VE'
;

-- Oct 6, 2014 10:34:05 AM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74518,57494,0,20,217,'IsCheckReturn',TO_TIMESTAMP('2014-10-06 10:34:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Check Return',0,TO_TIMESTAMP('2014-10-06 10:34:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 6, 2014 10:34:05 AM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74518 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 6, 2014 10:34:21 AM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74518,74635,0,167,TO_TIMESTAMP('2014-10-06 10:34:19','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Check Return',TO_TIMESTAMP('2014-10-06 10:34:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 6, 2014 10:34:21 AM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74635 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 6, 2014 10:34:24 AM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,15806,74636,0,167,TO_TIMESTAMP('2014-10-06 10:34:22','YYYY-MM-DD HH24:MI:SS'),100,'Index the document for the internal search engine',1,'D','For cross document search, the document can be indexed for faster search (Container, Document Type, Request Type)','Y','Y','Y','N','N','N','N','N','Indexed',TO_TIMESTAMP('2014-10-06 10:34:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 6, 2014 10:34:24 AM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74636 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 6, 2014 10:34:36 AM VET
-- FTA
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=74636
;

-- Oct 6, 2014 10:34:36 AM VET
-- FTA
DELETE FROM AD_Field WHERE AD_Field_ID=74636
;

-- Oct 6, 2014 10:36:12 AM VET
-- FTA
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ = ''ARI'' | @DocBaseType@ = ''ARC''',Updated=TO_TIMESTAMP('2014-10-06 10:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74635
;

-- Oct 6, 2014 10:36:23 AM VET
-- FTA
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-06 10:36:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74635
;

-- Oct 6, 2014 10:40:09 AM VET
-- FTA
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2014-10-06 10:40:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74518
;

-- Oct 6, 2014 11:29:45 AM VET
-- FTA
UPDATE AD_Val_Rule SET Code='FTA_EntryTicket.DocStatus = ''CO'' AND FTA_EntryTicket.OperationType = ''@OperationType@''
',Updated=TO_TIMESTAMP('2014-10-06 11:29:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52259
;

