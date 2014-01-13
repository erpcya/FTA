-- Aug 14, 2013 4:17:52 PM VET
-- FTA Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53436,TO_DATE('2013-08-14 16:17:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Process Credit Definition','Y',0,0,TO_DATE('2013-08-14 16:17:50','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CreditDefinition Process')
;

-- Aug 14, 2013 4:17:52 PM VET
-- FTA Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53436 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 14, 2013 4:18:28 PM VET
-- FTA Contribution
UPDATE AD_Process_Trl SET Name='Procesar Definición de Crédito',Updated=TO_DATE('2013-08-14 16:18:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53435 AND AD_Language='es_MX'
;

-- Aug 14, 2013 4:19:25 PM VET
-- FTA Contribution
UPDATE AD_Process_Trl SET Name='Procesar Crédito/Deuda del Productor',Updated=TO_DATE('2013-08-14 16:19:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53435 AND AD_Language='es_MX'
;

-- Aug 14, 2013 4:19:39 PM VET
-- FTA Contribution
UPDATE AD_Process_Trl SET Name='Procesar Definición de Crédito',Updated=TO_DATE('2013-08-14 16:19:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53436 AND AD_Language='es_MX'
;

-- Aug 14, 2013 4:20:19 PM VET
-- FTA Contribution
UPDATE AD_Column SET AD_Process_ID=53436,Updated=TO_DATE('2013-08-14 16:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66678
;

-- Aug 14, 2013 4:21:10 PM VET
-- FTA Contribution
INSERT INTO AD_Workflow (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Name,PublishStatus,Updated,UpdatedBy,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES ('1',0,0,53549,50028,'Yamel Senih',0,TO_DATE('2013-08-14 16:21:08','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process Credit Definition)','10000000',1,'D','ECA02','Y','N','N','N','Process_Credit_Definition','U',TO_DATE('2013-08-14 16:21:08','YYYY-MM-DD HH24:MI:SS'),100,'Process_Credit_Definition',0,0,'P',0)
;

-- Aug 14, 2013 4:21:10 PM VET
-- FTA Contribution
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50028 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- Aug 14, 2013 4:21:29 PM VET
-- FTA Contribution
UPDATE AD_Workflow_Trl SET Name='Proceso de Crédito a Productor',Description='Proceso de Crédito a Productor',Updated=TO_DATE('2013-08-14 16:21:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50027 AND AD_Language='es_MX'
;

-- Aug 14, 2013 4:22:04 PM VET
-- FTA Contribution
UPDATE AD_Workflow_Trl SET Name='Proceso de Definición de Crédito',Description='Proceso de Definición de Crédito',Updated=TO_DATE('2013-08-14 16:22:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50028 AND AD_Language='es_MX'
;

-- Aug 14, 2013 4:22:36 PM VET
-- FTA Contribution
UPDATE AD_Process SET AD_Workflow_ID=50028,Updated=TO_DATE('2013-08-14 16:22:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53436
;

-- Aug 14, 2013 4:23:53 PM VET
-- FTA Contribution
UPDATE AD_WF_Node SET Name='(DocAuto)', Value='(DocAuto)',Updated=TO_DATE('2013-08-14 16:23:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=50129
;

-- Aug 14, 2013 4:23:53 PM VET
-- FTA Contribution
UPDATE AD_WF_Node_Trl SET IsTranslated='N' WHERE AD_WF_Node_ID=50129
;

-- Aug 14, 2013 4:24:03 PM VET
-- FTA Contribution
UPDATE AD_WF_Node_Trl SET Name='(DocAuto)',Updated=TO_DATE('2013-08-14 16:24:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=50129 AND AD_Language='es_MX'
;

-- Aug 14, 2013 4:24:46 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50133,50028,0,TO_DATE('2013-08-14 16:24:45','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','--',0,0,'ECA02','Y','Y','X',0,'(DocAuto)',0,'X',TO_DATE('2013-08-14 16:24:45','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,0)
;

-- Aug 14, 2013 4:24:46 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50133 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 14, 2013 4:25:12 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50134,50028,0,TO_DATE('2013-08-14 16:25:12','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(DocComplete)',0,'X',TO_DATE('2013-08-14 16:25:12','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,0)
;

-- Aug 14, 2013 4:25:12 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50134 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 14, 2013 4:25:38 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50135,50028,0,TO_DATE('2013-08-14 16:25:37','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','PR',0,0,'ECA02','Y','Y','X',0,'(DocPrepare)',0,'X',TO_DATE('2013-08-14 16:25:37','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,0)
;

-- Aug 14, 2013 4:25:38 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50135 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 14, 2013 4:25:59 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('Z',0,0,50136,50028,0,TO_DATE('2013-08-14 16:25:58','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(Start)',0,'X',TO_DATE('2013-08-14 16:25:58','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,0)
;

-- Aug 14, 2013 4:25:59 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50136 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 14, 2013 4:26:37 PM VET
-- FTA Contribution
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50134,50135,50101,TO_DATE('2013-08-14 16:26:36','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',10,TO_DATE('2013-08-14 16:26:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2013 4:26:43 PM VET
-- FTA Contribution
UPDATE AD_WF_NodeNext SET SeqNo=100,Updated=TO_DATE('2013-08-14 16:26:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=50101
;

-- Aug 14, 2013 4:27:20 PM VET
-- FTA Contribution
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50135,50136,50102,TO_DATE('2013-08-14 16:27:19','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Approval)','ECA02','Y','Y',10,TO_DATE('2013-08-14 16:27:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2013 4:27:53 PM VET
-- FTA Contribution
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50133,50136,50103,TO_DATE('2013-08-14 16:27:53','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',100,TO_DATE('2013-08-14 16:27:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2013 4:28:23 PM VET
-- FTA Contribution
UPDATE AD_Workflow SET AD_WF_Node_ID=50132, IsValid='Y',Updated=TO_DATE('2013-08-14 16:28:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50028
;

-- Aug 14, 2013 4:33:14 PM VET
-- FTA Contribution
UPDATE AD_Column SET FieldLength=2,Updated=TO_DATE('2013-08-14 16:33:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66678
;

-- Aug 14, 2013 4:33:19 PM VET
-- FTA Contribution
UPDATE AD_Column SET FieldLength=2,Updated=TO_DATE('2013-08-14 16:33:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66700
;

-- Aug 14, 2013 4:36:40 PM VET
-- FTA Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-08-14 16:36:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68235
;

-- Aug 14, 2013 4:37:07 PM VET
-- FTA Contribution
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-08-14 16:37:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68236
;

-- Aug 14, 2013 4:41:07 PM VET
-- FTA Contribution
UPDATE AD_Workflow SET AD_WF_Node_ID=50136, IsValid='Y',Updated=TO_DATE('2013-08-14 16:41:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50028
;

-- Aug 14, 2013 4:48:32 PM VET
-- FTA Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53437,TO_DATE('2013-08-14 16:48:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Process Technical Form','Y',0,0,TO_DATE('2013-08-14 16:48:31','YYYY-MM-DD HH24:MI:SS'),100,'FTA_TechnicalForm Process')
;

-- Aug 14, 2013 4:48:32 PM VET
-- FTA Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53437 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 14, 2013 4:48:43 PM VET
-- FTA Contribution
UPDATE AD_Process_Trl SET Name='Procesar Ficha Técnica',Updated=TO_DATE('2013-08-14 16:48:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53437 AND AD_Language='es_MX'
;

-- Aug 14, 2013 4:50:36 PM VET
-- FTA Contribution
INSERT INTO AD_Workflow (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Name,PublishStatus,Updated,UpdatedBy,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES ('1',0,0,53507,50029,'Yamel Senih',0,TO_DATE('2013-08-14 16:50:34','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process Technical Form)','10000001',1,'D','ECA02','Y','N','N','N','Process_Technical_Form','U',TO_DATE('2013-08-14 16:50:34','YYYY-MM-DD HH24:MI:SS'),100,'Process_Technical_Form',0,0,'P',0)
;

-- Aug 14, 2013 4:50:36 PM VET
-- FTA Contribution
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50029 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- Aug 14, 2013 4:50:58 PM VET
-- FTA Contribution
UPDATE AD_Workflow_Trl SET Name='Proceso de Ficha Técnica',Description='Proceso de Ficha Técnica',Updated=TO_DATE('2013-08-14 16:50:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50029 AND AD_Language='es_MX'
;

-- Aug 14, 2013 4:51:31 PM VET
-- FTA Contribution
UPDATE AD_Column SET AD_Process_ID=53437,Updated=TO_DATE('2013-08-14 16:51:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66317
;

-- Aug 14, 2013 4:51:55 PM VET
-- FTA Contribution
UPDATE AD_Process SET AD_Workflow_ID=50029,Updated=TO_DATE('2013-08-14 16:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53437
;

-- Aug 14, 2013 4:52:58 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50137,50029,0,TO_DATE('2013-08-14 16:52:56','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','--',0,0,'ECA02','Y','Y','X',0,'(DocAuto)',0,'X',TO_DATE('2013-08-14 16:52:56','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,0)
;

-- Aug 14, 2013 4:52:58 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50137 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 14, 2013 4:53:22 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50138,50029,0,TO_DATE('2013-08-14 16:53:21','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(DocComplete)',0,'X',TO_DATE('2013-08-14 16:53:21','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,0)
;

-- Aug 14, 2013 4:53:22 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50138 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 14, 2013 4:53:44 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50139,50029,0,TO_DATE('2013-08-14 16:53:44','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','PR',0,0,'ECA02','Y','Y','X',0,'(DocPrepare)',0,'X',TO_DATE('2013-08-14 16:53:44','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,0)
;

-- Aug 14, 2013 4:53:44 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50139 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 14, 2013 4:54:08 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('Z',0,0,50140,50029,0,TO_DATE('2013-08-14 16:54:07','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(Start)',0,'X',TO_DATE('2013-08-14 16:54:07','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,0)
;

-- Aug 14, 2013 4:54:08 PM VET
-- FTA Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50140 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 14, 2013 4:54:31 PM VET
-- FTA Contribution
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50139,50140,50104,TO_DATE('2013-08-14 16:54:30','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Approval)','ECA02','Y','Y',10,TO_DATE('2013-08-14 16:54:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2013 4:54:59 PM VET
-- FTA Contribution
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50137,50140,50105,TO_DATE('2013-08-14 16:54:59','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',10,TO_DATE('2013-08-14 16:54:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2013 4:55:13 PM VET
-- FTA Contribution
UPDATE AD_WF_NodeNext SET SeqNo=100,Updated=TO_DATE('2013-08-14 16:55:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=50105
;

-- Aug 14, 2013 4:55:50 PM VET
-- FTA Contribution
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50138,50139,50106,TO_DATE('2013-08-14 16:55:50','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',10,TO_DATE('2013-08-14 16:55:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2013 4:55:57 PM VET
-- FTA Contribution
UPDATE AD_WF_NodeNext SET SeqNo=100,Updated=TO_DATE('2013-08-14 16:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=50106
;

-- Aug 14, 2013 4:56:06 PM VET
-- FTA Contribution
UPDATE AD_Workflow SET AD_WF_Node_ID=50140, IsValid='Y',Updated=TO_DATE('2013-08-14 16:56:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50029
;

