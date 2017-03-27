-- Sep 5, 2013 11:29:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='Orig_QualityAnalysis_ID', Name='Original Quality Analysis', PrintName='Original Quality Analysis',Updated=TO_TIMESTAMP('2013-09-05 11:29:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56134
;

-- Sep 5, 2013 11:29:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56134
;

-- Sep 5, 2013 11:29:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='Orig_QualityAnalysis_ID', Name='Original Quality Analysis', Description=NULL, Help=NULL WHERE AD_Element_ID=56134
;

-- Sep 5, 2013 11:29:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='Orig_QualityAnalysis_ID', Name='Original Quality Analysis', Description=NULL, Help=NULL, AD_Element_ID=56134 WHERE UPPER(ColumnName)='ORIG_QUALITYANALYSIS_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 5, 2013 11:29:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='Orig_QualityAnalysis_ID', Name='Original Quality Analysis', Description=NULL, Help=NULL WHERE AD_Element_ID=56134 AND IsCentrallyMaintained='Y'
;

-- Sep 5, 2013 11:29:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Original Quality Analysis', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56134) AND IsCentrallyMaintained='Y'
;

-- Sep 5, 2013 11:29:05 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET PrintName='Original Quality Analysis', Name='Original Quality Analysis' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56134)
;

-- Sep 5, 2013 11:30:08 AM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Análisis de Calidad Orígen',PrintName='Análisis de Calidad Orígen',Updated=TO_TIMESTAMP('2013-09-05 11:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56134 AND AD_Language='es_VE'
;

-- Sep 5, 2013 11:31:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=53538,Updated=TO_TIMESTAMP('2013-09-05 11:31:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66905
;

-- Sep 5, 2013 11:34:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52199,'FTA_QualityAnalysis.DocStatus = ''CO'' 
AND FTA_QualityAnalysis.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@ 
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis q WHERE q.Orig_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND q.DocStatus NOT IN(''VO'', ''RE''))',TO_TIMESTAMP('2013-09-05 11:34:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_QualityAnalysis only completed and not yet used in CQA','S',TO_TIMESTAMP('2013-09-05 11:34:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 11:34:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52199,Updated=TO_TIMESTAMP('2013-09-05 11:34:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66905
;

-- Sep 5, 2013 11:34:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2013-09-05 11:34:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68298
;

-- Sep 5, 2013 11:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68298
;

-- Sep 5, 2013 11:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68302
;

-- Sep 5, 2013 11:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68297
;

-- Sep 5, 2013 11:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68309
;

-- Sep 5, 2013 11:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68311
;

-- Sep 5, 2013 11:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68300
;

-- Sep 5, 2013 11:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68310
;

-- Sep 5, 2013 11:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68308
;

-- Sep 5, 2013 11:37:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68347
;

-- Sep 5, 2013 11:37:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68302
;

-- Sep 5, 2013 11:37:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68297
;

-- Sep 5, 2013 11:37:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68305
;

-- Sep 5, 2013 11:37:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68298
;

-- Sep 5, 2013 11:37:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-09-05 11:37:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68302
;

-- Sep 5, 2013 11:38:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-09-05 11:38:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68298
;

-- Sep 5, 2013 11:38:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-09-05 11:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68298
;

-- Sep 5, 2013 11:41:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN(''FQA'', ''FCA'')',Updated=TO_TIMESTAMP('2013-09-05 11:41:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52190
;

-- Sep 5, 2013 11:42:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54034,TO_TIMESTAMP('2013-09-05 11:42:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Chute Quality Analysis',TO_TIMESTAMP('2013-09-05 11:42:08','YYYY-MM-DD HH24:MI:SS'),100,'FCA')
;

-- Sep 5, 2013 11:42:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54034 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 5, 2013 11:42:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Análisis de Calidad en Tolva',Updated=TO_TIMESTAMP('2013-09-05 11:42:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54034 AND AD_Language='es_VE'
;

-- Sep 5, 2013 11:42:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Name='C_DocType FQA and FCA Quality Analysis',Updated=TO_TIMESTAMP('2013-09-05 11:42:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52190
;

-- Sep 5, 2013 11:50:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutQualityAnalysis.docType',Updated=TO_TIMESTAMP('2013-09-05 11:50:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66934
;

-- Sep 5, 2013 12:08:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56251,0,'AnalysisType',TO_TIMESTAMP('2013-09-05 12:08:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Analysis Type','Analysis Type',TO_TIMESTAMP('2013-09-05 12:08:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 12:08:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56251 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 5, 2013 12:10:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Tipo de Análisis',PrintName='Tipo de Análisis',Description='Tipo de Análisis, ejem: Tolva, Primario....',Updated=TO_TIMESTAMP('2013-09-05 12:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56251 AND AD_Language='es_VE'
;

-- Sep 5, 2013 12:11:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53539,TO_TIMESTAMP('2013-09-05 12:11:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','AnalysisType Analysis Type',TO_TIMESTAMP('2013-09-05 12:11:34','YYYY-MM-DD HH24:MI:SS'),100,'L','L')
;

-- Sep 5, 2013 12:11:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53539 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Sep 5, 2013 12:15:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53539,54035,TO_TIMESTAMP('2013-09-05 12:15:25','YYYY-MM-DD HH24:MI:SS'),100,'EE05','Y','Raw Material',TO_TIMESTAMP('2013-09-05 12:15:25','YYYY-MM-DD HH24:MI:SS'),100,'RM')
;

-- Sep 5, 2013 12:15:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54035 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 5, 2013 12:15:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Materia Prima',Updated=TO_TIMESTAMP('2013-09-05 12:15:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54035 AND AD_Language='es_VE'
;

-- Sep 5, 2013 12:15:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET VFormat='LL',Updated=TO_TIMESTAMP('2013-09-05 12:15:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53539
;

-- Sep 5, 2013 12:18:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET EntityType='ECA02', Name='Quality Analysis', Value='QA',Updated=TO_TIMESTAMP('2013-09-05 12:18:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54035
;

-- Sep 5, 2013 12:18:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54035
;

-- Sep 5, 2013 12:19:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Análisis de Calidad',Updated=TO_TIMESTAMP('2013-09-05 12:19:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54035 AND AD_Language='es_VE'
;

-- Sep 5, 2013 12:19:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53539,54036,TO_TIMESTAMP('2013-09-05 12:19:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Chute Analysis',TO_TIMESTAMP('2013-09-05 12:19:27','YYYY-MM-DD HH24:MI:SS'),100,'CA')
;

-- Sep 5, 2013 12:19:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54036 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 5, 2013 12:19:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Análisis de Tolva',Updated=TO_TIMESTAMP('2013-09-05 12:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54036 AND AD_Language='es_VE'
;

-- Sep 5, 2013 12:26:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67220,56251,0,17,53539,53560,'AnalysisType',TO_TIMESTAMP('2013-09-05 12:26:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Analysis Type',0,TO_TIMESTAMP('2013-09-05 12:26:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 5, 2013 12:26:25 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67220 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 5, 2013 12:28:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67220,68728,0,53730,TO_TIMESTAMP('2013-09-05 12:28:08','YYYY-MM-DD HH24:MI:SS'),100,2,'ECA02','Y','Y','Y','N','N','N','N','N','Analysis Type',TO_TIMESTAMP('2013-09-05 12:28:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 5, 2013 12:28:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68728 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68728
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68297
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68305
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68298
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68309
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68311
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68300
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68310
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68304
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68301
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68308
;

-- Sep 5, 2013 12:28:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68347
;

-- Sep 5, 2013 12:30:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68305
;

-- Sep 5, 2013 12:30:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68298
;

-- Sep 5, 2013 12:30:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68309
;

-- Sep 5, 2013 12:30:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68311
;

-- Sep 5, 2013 12:30:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68297
;

-- Sep 5, 2013 12:30:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-05 12:30:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68728
;

-- Sep 5, 2013 12:30:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-09-05 12:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68297
;

-- Sep 5, 2013 12:31:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='QA',Updated=TO_TIMESTAMP('2013-09-05 12:31:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67220
;

-- Sep 5, 2013 1:53:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AnalysisType@!''QA''',Updated=TO_TIMESTAMP('2013-09-05 13:53:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68298
;

-- Sep 5, 2013 1:55:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68300
;

-- Sep 5, 2013 1:55:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68310
;

-- Sep 5, 2013 1:55:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68297
;

-- Sep 5, 2013 1:55:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-05 13:55:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68297
;

-- Sep 5, 2013 1:56:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@AnalysisType@!''QA'' & @FTA_EntryTicket_ID@!0',Updated=TO_TIMESTAMP('2013-09-05 13:56:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68298
;

-- Sep 5, 2013 2:03:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_QualityAnalysis.DocStatus = ''CO'' 
AND FTA_QualityAnalysis.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@ 
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis q WHERE q.Orig_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND q.DocStatus NOT IN(''VO'', ''RE''))
AND EXISTS(SELECT 1 FROM FTA_RecordWeight r WHERE r.FTA_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND q.DocStatus = ''IP'')',Updated=TO_TIMESTAMP('2013-09-05 14:03:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52199
;

-- Sep 5, 2013 2:03:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_QualityAnalysis.DocStatus = ''CO'' 
AND FTA_QualityAnalysis.FTA_EntryTicket_ID = @FTA_EntryTicket_ID@ 
AND NOT EXISTS(SELECT 1 FROM FTA_QualityAnalysis q WHERE q.Orig_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND q.DocStatus NOT IN(''VO'', ''RE''))
AND EXISTS(SELECT 1 FROM FTA_RecordWeight r WHERE r.FTA_QualityAnalysis_ID = FTA_QualityAnalysis.FTA_QualityAnalysis_ID AND r.DocStatus = ''IP'')',Updated=TO_TIMESTAMP('2013-09-05 14:03:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52199
;

-- Sep 5, 2013 2:09:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET Name='Mobilization Guide',Updated=TO_TIMESTAMP('2013-09-05 14:09:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54026
;

-- Sep 5, 2013 2:09:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54026
;

-- Sep 5, 2013 2:11:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=189,Updated=TO_TIMESTAMP('2013-09-05 14:11:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66534
;

-- Sep 5, 2013 2:13:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-09-05 14:13:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68543
;

