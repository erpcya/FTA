-- Oct 2, 2013 10:49:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Workflow_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53479,50028,TO_DATE('2013-10-02 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Process Credit Act','Y',0,0,TO_DATE('2013-10-02 10:49:55','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CreditAct Process')
;

-- Oct 2, 2013 10:49:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53479 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 2, 2013 10:50:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Procesar Acta de Crédito',Updated=TO_DATE('2013-10-02 10:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53479 AND AD_Language='es_MX'
;

-- Oct 2, 2013 10:50:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53479,Updated=TO_DATE('2013-10-02 10:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68154
;

-- Oct 2, 2013 10:51:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Workflow (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Name,PublishStatus,Updated,UpdatedBy,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES ('1',0,0,53597,50035,'Yamel Senih',0,TO_DATE('2013-10-02 10:51:34','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process Credit Act)','10000000',1,'D','ECA02','Y','Y','N','N','Process_Credit_Act','U',TO_DATE('2013-10-02 10:51:34','YYYY-MM-DD HH24:MI:SS'),100,'Process_Credit_Act',0,0,'P',0)
;

-- Oct 2, 2013 10:51:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50035 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- Oct 2, 2013 10:51:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AD_Workflow_ID=50035,Updated=TO_DATE('2013-10-02 10:51:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53479
;

-- Oct 2, 2013 10:52:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Workflow_Trl SET Name='Proceso de Acta de Crédito',Description='Proceso de Acta de Crédito',Updated=TO_DATE('2013-10-02 10:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50035 AND AD_Language='es_MX'
;

-- Oct 2, 2013 10:53:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50161,50035,0,TO_DATE('2013-10-02 10:53:07','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','--',0,0,'ECA02','Y','Y','X',0,'(DocAuto)',0,'X',TO_DATE('2013-10-02 10:53:07','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,0)
;

-- Oct 2, 2013 10:53:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50161 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 2, 2013 10:53:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50162,50035,0,TO_DATE('2013-10-02 10:53:33','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(DocComplete)',0,'X',TO_DATE('2013-10-02 10:53:33','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,0)
;

-- Oct 2, 2013 10:53:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50162 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 2, 2013 10:53:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50163,50035,0,TO_DATE('2013-10-02 10:53:58','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','PR',0,0,'ECA02','Y','Y','X',0,'(DocPrepare)',0,'X',TO_DATE('2013-10-02 10:53:58','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,0)
;

-- Oct 2, 2013 10:53:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50163 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 2, 2013 10:54:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('Z',0,0,50164,50035,0,TO_DATE('2013-10-02 10:54:16','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(Start)',0,'X',TO_DATE('2013-10-02 10:54:16','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,0)
;

-- Oct 2, 2013 10:54:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50164 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 2, 2013 10:54:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50162,50163,50122,TO_DATE('2013-10-02 10:54:55','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',100,TO_DATE('2013-10-02 10:54:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2013 10:55:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50163,50164,50123,TO_DATE('2013-10-02 10:55:25','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Approval)','ECA02','Y','Y',10,TO_DATE('2013-10-02 10:55:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2013 10:55:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50161,50164,50124,TO_DATE('2013-10-02 10:55:56','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',100,TO_DATE('2013-10-02 10:55:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2013 10:56:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Workflow SET AD_WF_Node_ID=50164, IsValid='Y',Updated=TO_DATE('2013-10-02 10:56:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50035
;

-- Oct 2, 2013 11:16:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68425,351,0,20,53507,'IsApproved',TO_DATE('2013-10-02 11:16:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Indicates if this document requires approval','ECA02',1,'The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Approved',0,TO_DATE('2013-10-02 11:16:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 2, 2013 11:16:47 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68425 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 2, 2013 11:18:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68425,69720,0,53670,TO_DATE('2013-10-02 11:18:24','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval',1,'ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','Y','N','N','N','N','N','Approved',TO_DATE('2013-10-02 11:18:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2013 11:18:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69720 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2013 11:18:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-10-02 11:18:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69720
;

-- Oct 2, 2013 11:31:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-02 11:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69720
;

-- Oct 2, 2013 11:31:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=69720
;

-- Oct 2, 2013 11:31:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=67766
;

-- Oct 2, 2013 11:31:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68535
;

-- Oct 2, 2013 11:40:40 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53480,'N',TO_DATE('2013-10-02 11:40:40','YYYY-MM-DD HH24:MI:SS'),100,'Generate a Suggested Products','ECA02','Y','N','N','N','N','Generate Suggested Product','Y',0,0,TO_DATE('2013-10-02 11:40:40','YYYY-MM-DD HH24:MI:SS'),100,'FTA_TechnicalFormLine Suggested_Product')
;

-- Oct 2, 2013 11:40:40 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53480 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 2, 2013 11:41:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Productos Sugeridos',Description='Genera un Listado de Productos Sugeridos',Help='Se Pueden Seleccionar Varios Productos y Cantidades',Updated=TO_DATE('2013-10-02 11:41:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53480 AND AD_Language='es_MX'
;

-- Oct 2, 2013 11:41:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53480,Updated=TO_DATE('2013-10-02 11:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67115
;

-- Oct 2, 2013 11:47:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53481,'N',TO_DATE('2013-10-02 11:47:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Sales Order Generate','Y',0,0,TO_DATE('2013-10-02 11:47:41','YYYY-MM-DD HH24:MI:SS'),100,'FTA_TechnicalForm OrderGenerate')
;

-- Oct 2, 2013 11:47:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53481 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 2, 2013 11:48:58 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Orden de Venta',Description='Genera Orden de Venta a Partir de los Productos Sugeridos',Help='Se Generan Ordenes de Venta a Partir de los Productos Sugeridos por el Vendedor',Updated=TO_DATE('2013-10-02 11:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53481 AND AD_Language='es_MX'
;

-- Oct 2, 2013 11:50:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53481,54114,18,170,207,'C_DocTypeTarget_ID',TO_DATE('2013-10-02 11:50:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Document Type Target',10,TO_DATE('2013-10-02 11:50:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2013 11:50:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54114 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 2, 2013 11:51:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,287,0,53481,54115,17,135,'DocAction',TO_DATE('2013-10-02 11:51:37','YYYY-MM-DD HH24:MI:SS'),100,'''PR''','ECA02',0,'Y','Y','Y','N','Document Action',20,TO_DATE('2013-10-02 11:51:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2013 11:51:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54115 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 2, 2013 11:55:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53481,Updated=TO_DATE('2013-10-02 11:55:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66321
;

-- Oct 2, 2013 11:55:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Classname='org.spin.process.TechnicalFormOrderGenerate',Updated=TO_DATE('2013-10-02 11:55:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53481
;

-- Oct 2, 2013 12:02:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_DATE('2013-10-02 12:02:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54115
;

-- Oct 2, 2013 12:02:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_DATE('2013-10-02 12:02:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54114
;

-- Oct 2, 2013 12:03:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53481,54116,15,'DateDoc',TO_DATE('2013-10-02 12:03:13','YYYY-MM-DD HH24:MI:SS'),100,'@#Date@','ECA02',0,'Y','Y','N','N','Document Date',10,TO_DATE('2013-10-02 12:03:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2013 12:03:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54116 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 2, 2013 12:03:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=50,Updated=TO_DATE('2013-10-02 12:03:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54116
;

-- Oct 2, 2013 12:03:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_DATE('2013-10-02 12:03:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54114
;

-- Oct 2, 2013 12:03:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_DATE('2013-10-02 12:03:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54115
;

-- Oct 2, 2013 12:03:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_DATE('2013-10-02 12:03:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54116
;

