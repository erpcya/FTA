-- Nov 12, 2013 3:04:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=120,Updated=TO_DATE('2013-11-12 15:04:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54205
;

-- Nov 12, 2013 3:05:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=110,Updated=TO_DATE('2013-11-12 15:05:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54205
;

-- Nov 12, 2013 3:05:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=100,Updated=TO_DATE('2013-11-12 15:05:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54204
;

-- Nov 12, 2013 3:08:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,2543,0,53500,54284,20,'IsInDispute',TO_DATE('2013-11-12 15:08:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Document is in dispute','ECA02',1,'The document is in dispute. Use Requests to track details.','Y','Y','N','N','In Dispute',120,TO_DATE('2013-11-12 15:08:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2013 3:08:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54284 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 12, 2013 3:08:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=90,Updated=TO_DATE('2013-11-12 15:08:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54284
;

-- Nov 12, 2013 3:53:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69898,56607,0,17,217,'OperationType',TO_DATE('2013-11-12 15:53:39','YYYY-MM-DD HH24:MI:SS'),100,'U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Operation Type',0,TO_DATE('2013-11-12 15:53:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 12, 2013 3:53:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69898 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 12, 2013 3:54:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53597,TO_DATE('2013-11-12 15:54:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_OperationType',TO_DATE('2013-11-12 15:54:07','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- Nov 12, 2013 3:54:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53597 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Nov 12, 2013 3:54:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET Name='FTA_Tipo de Operación',Updated=TO_DATE('2013-11-12 15:54:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53597 AND AD_Language='es_MX'
;

-- Nov 12, 2013 3:54:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET Name='FTA_Tipo de Operación',Updated=TO_DATE('2013-11-12 15:54:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53597 AND AD_Language='es_VE'
;

-- Nov 12, 2013 3:55:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53597,54149,TO_DATE('2013-11-12 15:55:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Raw Material Receipt',TO_DATE('2013-11-12 15:55:13','YYYY-MM-DD HH24:MI:SS'),100,'RMR')
;

-- Nov 12, 2013 3:55:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54149 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Nov 12, 2013 3:55:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Recepcion de Materia Prima',Updated=TO_DATE('2013-11-12 15:55:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54149 AND AD_Language='es_MX'
;

-- Nov 12, 2013 3:56:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Recepción de Materia Prima',Updated=TO_DATE('2013-11-12 15:56:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54149 AND AD_Language='es_MX'
;

-- Nov 12, 2013 3:56:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Recepción de Materia Prima',Updated=TO_DATE('2013-11-12 15:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54149 AND AD_Language='es_VE'
;

-- Nov 12, 2013 3:57:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53597,54150,TO_DATE('2013-11-12 15:57:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Fuel Receipt',TO_DATE('2013-11-12 15:57:18','YYYY-MM-DD HH24:MI:SS'),100,'FR')
;

-- Nov 12, 2013 3:57:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54150 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Nov 12, 2013 3:57:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Recepción de Combustible',Updated=TO_DATE('2013-11-12 15:57:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54150 AND AD_Language='es_MX'
;

-- Nov 12, 2013 3:57:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Recepción de Combustible',Updated=TO_DATE('2013-11-12 15:57:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54150 AND AD_Language='es_VE'
;

-- Nov 12, 2013 3:58:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53597,54151,TO_DATE('2013-11-12 15:58:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Receipt More than one Product',TO_DATE('2013-11-12 15:58:56','YYYY-MM-DD HH24:MI:SS'),100,'RMP')
;

-- Nov 12, 2013 3:58:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54151 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Nov 12, 2013 3:59:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Recepción Varios Productos',Updated=TO_DATE('2013-11-12 15:59:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54151 AND AD_Language='es_MX'
;

-- Nov 12, 2013 3:59:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Recepción Varios Productos',Updated=TO_DATE('2013-11-12 15:59:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54151 AND AD_Language='es_VE'
;

-- Nov 12, 2013 3:59:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53597,54152,TO_DATE('2013-11-12 15:59:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Input Movement',TO_DATE('2013-11-12 15:59:50','YYYY-MM-DD HH24:MI:SS'),100,'IM')
;

-- Nov 12, 2013 3:59:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54152 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Nov 12, 2013 4:00:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Movimiento de Entrada',Updated=TO_DATE('2013-11-12 16:00:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54152 AND AD_Language='es_MX'
;

-- Nov 12, 2013 4:00:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Movimiento de Entrada',Updated=TO_DATE('2013-11-12 16:00:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54152 AND AD_Language='es_VE'
;

-- Nov 12, 2013 4:12:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53597,54153,TO_DATE('2013-11-12 16:12:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Delivery Finished Product',TO_DATE('2013-11-12 16:12:12','YYYY-MM-DD HH24:MI:SS'),100,'DFP')
;

-- Nov 12, 2013 4:12:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54153 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Nov 12, 2013 4:12:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Despacho Producto Terminado',Updated=TO_DATE('2013-11-12 16:12:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54153 AND AD_Language='es_MX'
;

-- Nov 12, 2013 4:12:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Despacho Producto Terminado',Updated=TO_DATE('2013-11-12 16:12:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54153 AND AD_Language='es_VE'
;

-- Nov 12, 2013 4:16:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_Value_ID=53597,Updated=TO_DATE('2013-11-12 16:16:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69898
;

-- Nov 12, 2013 4:19:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69898,70340,0,167,TO_DATE('2013-11-12 16:19:49','YYYY-MM-DD HH24:MI:SS'),100,1,'U','Y','Y','Y','N','N','N','N','N','Operation Type',TO_DATE('2013-11-12 16:19:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2013 4:19:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70340 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Nov 12, 2013 4:20:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-11-12 16:20:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70340
;

-- Nov 12, 2013 4:20:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-11-12 16:20:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70340
;

-- Nov 12, 2013 4:32:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''FBE'' | @DocBaseType@=''FQA'' | @DocBaseType@=''FPR'' | @DocBaseType@=''FCA'' | @DocBaseType@=''FCD'' | @DocBaseType@=''FFC'' | @DocBaseType@=''FET'' | @DocBaseType@=''FTF'' | @DocBaseType@=''FRW'' | @DocBaseType@=''FRL'' | @DocBaseType@=''FFR'' | @DocBaseType@=''FFA'' | @DocBaseType@=''FFE'' | @DocBaseType@=''FMG'' | @DocBaseType@=''FMG'' | @DocBaseType@=''FFL'' ',Updated=TO_DATE('2013-11-12 16:32:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70340
;

-- Nov 12, 2013 4:33:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET FieldLength=3,Updated=TO_DATE('2013-11-12 16:33:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69898
;

