-- Jun 18, 2014 10:13:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53643,'org.spin.process.FarmerCreditBEDocGenerate','N',TO_TIMESTAMP('2014-06-18 10:12:57','YYYY-MM-DD HH24:MI:SS'),100,'Generate Bill Of Exchange from Document','ECA02','Y','N','N','N','N','Generate Bill Of Exchange from Document','Y',0,0,TO_TIMESTAMP('2014-06-18 10:12:57','YYYY-MM-DD HH24:MI:SS'),100,'FTA_GenerateBEFromDoc')
;

-- Jun 18, 2014 10:13:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53643 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jun 18, 2014 10:16:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Letra de Cambio Desde Documento',Description='Generar Letra de Cambio Desde Documento',Updated=TO_TIMESTAMP('2014-06-18 10:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53643 AND AD_Language='es_VE'
;

-- Jun 18, 2014 10:16:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Letra de Cambio Desde Documento',Description='Generar Letra de Cambio Desde Documento',Updated=TO_TIMESTAMP('2014-06-18 10:16:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53643 AND AD_Language='es_VE'
;

-- Jun 18, 2014 10:16:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53643,54830,15,'DateDoc',TO_TIMESTAMP('2014-06-18 10:16:41','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','Document Date',10,TO_TIMESTAMP('2014-06-18 10:16:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 18, 2014 10:16:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54830 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 18, 2014 10:16:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-18 10:16:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54830
;

-- Jun 18, 2014 10:18:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53643,54831,18,170,'C_DocTypeTarget_ID',TO_TIMESTAMP('2014-06-18 10:18:30','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02',22,'You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','Y','N','N','Target Document Type',20,TO_TIMESTAMP('2014-06-18 10:18:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 18, 2014 10:18:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54831 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 18, 2014 3:10:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET AD_Process_ID=53643,Updated=TO_TIMESTAMP('2014-06-18 15:10:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50034
;

-- Jun 18, 2014 3:26:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsKey='Y',Updated=TO_TIMESTAMP('2014-06-18 15:26:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53601
;

