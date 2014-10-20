-- Oct 24, 2013 8:52:20 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@M_Product_ID@!0',Updated=TO_DATE('2013-10-24 08:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66936
;

-- Oct 24, 2013 9:03:45 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52238,'M_Product.ProductType = ''S''',TO_DATE('2013-10-24 09:03:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Product just Service','S',TO_DATE('2013-10-24 09:03:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 9:03:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69324,454,0,30,53544,52238,'M_Product_ID',TO_DATE('2013-10-24 09:03:59','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','U',10,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product','@C_Charge_ID@!0',0,TO_DATE('2013-10-24 09:03:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 24, 2013 9:03:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69324 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 24, 2013 9:04:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2013-10-24 09:04:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69324
;

-- Oct 24, 2013 9:04:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2013-10-24 09:04:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69324
;

-- Oct 24, 2013 9:05:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69324,70085,0,53721,TO_DATE('2013-10-24 09:05:01','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',10,'ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',TO_DATE('2013-10-24 09:05:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 9:05:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70085 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 24, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=70085
;

-- Oct 24, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=70041
;

-- Oct 24, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=70040
;

-- Oct 24, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68131
;

-- Oct 24, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68132
;

-- Oct 24, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=68128
;

-- Oct 24, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=68448
;

-- Oct 24, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=70043
;

-- Oct 24, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=69830
;

-- Oct 24, 2013 9:05:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=68340
;

-- Oct 24, 2013 9:09:53 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''L''',Updated=TO_DATE('2013-10-24 09:09:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70085
;

-- Oct 24, 2013 9:11:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68339
;

-- Oct 24, 2013 9:11:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=70085
;

-- Oct 24, 2013 9:11:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68127
;

-- Oct 24, 2013 9:11:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=68129
;

-- Oct 24, 2013 9:11:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=68341
;

-- Oct 24, 2013 9:12:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-10-24 09:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68339
;

-- Oct 24, 2013 9:13:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y', IsSameLine='Y',Updated=TO_DATE('2013-10-24 09:13:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70085
;

-- Oct 24, 2013 9:18:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory=NULL,Updated=TO_DATE('2013-10-24 09:18:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70085
;

-- Oct 24, 2013 9:18:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory=NULL,Updated=TO_DATE('2013-10-24 09:18:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68339
;

-- Oct 24, 2013 9:20:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_DATE('2013-10-24 09:20:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54171
;

-- Oct 24, 2013 9:21:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,454,0,53500,54203,30,52238,'M_Product_ID',TO_DATE('2013-10-24 09:21:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','M_Product',65,TO_DATE('2013-10-24 09:21:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 9:21:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54203 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 24, 2013 9:32:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Name='Credit/Debit Generate',Updated=TO_DATE('2013-10-24 09:32:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53500
;

-- Oct 24, 2013 9:32:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53500
;

-- Oct 24, 2013 9:32:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description='Generate a Credit or Debit Document', IsActive='Y', Name='Credit/Debit Generate',Updated=TO_DATE('2013-10-24 09:32:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53657
;

-- Oct 24, 2013 9:32:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53657
;

-- Oct 24, 2013 9:33:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Abono/Cargo',Updated=TO_DATE('2013-10-24 09:33:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53500 AND AD_Language='es_MX'
;

-- Oct 24, 2013 9:37:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFarmerCredit.product',Updated=TO_DATE('2013-10-24 09:37:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69324
;

-- Oct 24, 2013 4:25:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56550,0,'GeneratePaySelect',TO_DATE('2013-10-24 16:25:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Generate Payment Selection','Generate Payment Selection',TO_DATE('2013-10-24 16:25:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 4:25:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56550 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 24, 2013 4:27:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Generar Selección de Pago',PrintName='Generar Selección de Pago',Updated=TO_DATE('2013-10-24 16:27:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56550 AND AD_Language='es_MX'
;

-- Oct 24, 2013 4:28:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56550,0,53500,54204,20,'GeneratePaySelect',TO_DATE('2013-10-24 16:28:15','YYYY-MM-DD HH24:MI:SS'),100,'N','U',0,'Y','Y','N','N','GeneratePaySelect',90,TO_DATE('2013-10-24 16:28:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 4:28:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54204 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 24, 2013 4:28:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET EntityType='ECA02',Updated=TO_DATE('2013-10-24 16:28:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54204
;

-- Oct 24, 2013 8:09:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='GeneratePayRequest', Name='Generate Payment Request', PrintName='Generate Payment Request',Updated=TO_DATE('2013-10-24 20:09:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56550
;

-- Oct 24, 2013 8:09:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56550
;

-- Oct 24, 2013 8:09:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='GeneratePayRequest', Name='Generate Payment Request', Description=NULL, Help=NULL WHERE AD_Element_ID=56550
;

-- Oct 24, 2013 8:09:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='GeneratePayRequest', Name='Generate Payment Request', Description=NULL, Help=NULL, AD_Element_ID=56550 WHERE UPPER(ColumnName)='GENERATEPAYREQUEST' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 24, 2013 8:09:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='GeneratePayRequest', Name='Generate Payment Request', Description=NULL, Help=NULL WHERE AD_Element_ID=56550 AND IsCentrallyMaintained='Y'
;

-- Oct 24, 2013 8:09:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Generate Payment Request', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56550) AND IsCentrallyMaintained='Y'
;

-- Oct 24, 2013 8:09:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Generate Payment Request', Name='Generate Payment Request' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56550)
;

-- Oct 24, 2013 8:09:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Generar Orden de Pago',PrintName='Generar Orden de Pago',Updated=TO_DATE('2013-10-24 20:09:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56550 AND AD_Language='es_MX'
;

-- Oct 24, 2013 9:33:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53511,'N',TO_DATE('2013-10-24 21:33:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Process Payment Request','Y',0,0,TO_DATE('2013-10-24 21:33:40','YYYY-MM-DD HH24:MI:SS'),100,'FTA_PaymentRequest Process')
;

-- Oct 24, 2013 9:33:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53511 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 24, 2013 9:35:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Proceso de Orden de Pago',Updated=TO_DATE('2013-10-24 21:35:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53511 AND AD_Language='es_MX'
;

-- Oct 24, 2013 9:35:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53511,Updated=TO_DATE('2013-10-24 21:35:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69362
;

-- Oct 24, 2013 9:37:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Workflow (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Limit,Name,Priority,PublishStatus,Updated,UpdatedBy,ValidateWorkflow,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES ('1',0,0,53650,50039,'Yamel Senih',0,TO_DATE('2013-10-24 21:37:46','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process Payment Request)','10000000',0,'D','U','Y','Y','N','N',0,'Process_Payment_Request',0,'U',TO_DATE('2013-10-24 21:37:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Process_Payment_Request',0,0,'P',0)
;

-- Oct 24, 2013 9:37:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50039 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- Oct 24, 2013 9:38:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AD_Workflow_ID=50039,Updated=TO_DATE('2013-10-24 21:38:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53511
;

-- Oct 24, 2013 9:38:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Workflow SET EntityType='ECA02', IsValid='N',Updated=TO_DATE('2013-10-24 21:38:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50039
;

-- Oct 24, 2013 9:39:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Workflow_Trl SET Name='Proceso de Orden de Pago',Description='(Proceso de Orden de Pago)',Updated=TO_DATE('2013-10-24 21:39:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50039 AND AD_Language='es_MX'
;

-- Oct 24, 2013 9:39:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50177,50039,0,TO_DATE('2013-10-24 21:39:40','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','--',0,0,'ECA02','Y','Y','X',0,'(DocAuto)',0,'X',TO_DATE('2013-10-24 21:39:40','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,0)
;

-- Oct 24, 2013 9:39:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50177 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 24, 2013 9:40:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50178,50039,0,TO_DATE('2013-10-24 21:40:02','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(DocComplete)',0,'X',TO_DATE('2013-10-24 21:40:02','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,0)
;

-- Oct 24, 2013 9:40:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50178 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 24, 2013 9:40:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50179,50039,0,TO_DATE('2013-10-24 21:40:25','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','PR',0,0,'ECA02','Y','Y','X',0,'(DocPrepare)',0,'X',TO_DATE('2013-10-24 21:40:25','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,0)
;

-- Oct 24, 2013 9:40:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50179 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 24, 2013 9:40:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('Z',0,0,50180,50039,0,TO_DATE('2013-10-24 21:40:45','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(Start)',0,'X',TO_DATE('2013-10-24 21:40:45','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,0)
;

-- Oct 24, 2013 9:40:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50180 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 24, 2013 9:41:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50179,50180,50134,TO_DATE('2013-10-24 21:41:11','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Approval)','ECA02','Y','Y',10,TO_DATE('2013-10-24 21:41:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 9:41:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50177,50180,50135,TO_DATE('2013-10-24 21:41:39','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',100,TO_DATE('2013-10-24 21:41:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 9:42:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50178,50179,50136,TO_DATE('2013-10-24 21:42:08','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',100,TO_DATE('2013-10-24 21:42:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 24, 2013 9:42:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Workflow SET AD_WF_Node_ID=50180, IsValid='Y',Updated=TO_DATE('2013-10-24 21:42:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50039
;

