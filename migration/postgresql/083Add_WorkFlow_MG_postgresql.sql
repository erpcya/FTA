-- Aug 30, 2013 6:04:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='CO',Updated=TO_TIMESTAMP('2013-08-30 18:04:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67117
;

-- Aug 30, 2013 6:04:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='DR',Updated=TO_TIMESTAMP('2013-08-30 18:04:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67118
;

-- Aug 30, 2013 6:04:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53443,TO_TIMESTAMP('2013-08-30 18:04:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Process Mobilization Guide','Y',0,0,TO_TIMESTAMP('2013-08-30 18:04:39','YYYY-MM-DD HH24:MI:SS'),100,'FTA_MobilizationGuide Process')
;

-- Aug 30, 2013 6:04:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53443 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 30, 2013 6:05:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Procesar Guía de Movilización',Updated=TO_TIMESTAMP('2013-08-30 18:05:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53443 AND AD_Language='es_VE'
;

-- Aug 30, 2013 6:06:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Workflow (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Name,PublishStatus,Updated,UpdatedBy,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES ('1',0,0,53510,50030,'Yamel Senih',0,TO_TIMESTAMP('2013-08-30 18:06:33','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process Movilization Guide)','10000000',1,'D','ECA02','Y','Y','N','N','Process_Movilization_Guide','U',TO_TIMESTAMP('2013-08-30 18:06:33','YYYY-MM-DD HH24:MI:SS'),100,'Process_Movilization_Guide',0,0,'P',0)
;

-- Aug 30, 2013 6:06:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50030 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- Aug 30, 2013 6:07:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Workflow_Trl SET Name='Proceso de Guía de Movilización',Description='(Proceso de Guía de Movilización)',Updated=TO_TIMESTAMP('2013-08-30 18:07:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50030 AND AD_Language='es_VE'
;

-- Aug 30, 2013 6:07:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Workflow_Trl SET Description='Proceso de Guía de Movilización',Updated=TO_TIMESTAMP('2013-08-30 18:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50030 AND AD_Language='es_VE'
;

-- Aug 30, 2013 6:08:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AD_Workflow_ID=50030,Updated=TO_TIMESTAMP('2013-08-30 18:08:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53443
;

-- Aug 30, 2013 6:08:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53443,Updated=TO_TIMESTAMP('2013-08-30 18:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67117
;

-- Aug 30, 2013 6:09:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50141,50030,0,TO_TIMESTAMP('2013-08-30 18:09:56','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','--',0,0,'ECA02','Y','Y','X',0,'(DocAuto)',0,'X',TO_TIMESTAMP('2013-08-30 18:09:56','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,0)
;

-- Aug 30, 2013 6:09:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50141 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 30, 2013 6:10:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50142,50030,0,TO_TIMESTAMP('2013-08-30 18:10:23','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(DocComplete)',0,'X',TO_TIMESTAMP('2013-08-30 18:10:23','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,0)
;

-- Aug 30, 2013 6:10:24 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50142 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 30, 2013 6:10:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50143,50030,0,TO_TIMESTAMP('2013-08-30 18:10:55','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','PR',0,0,'ECA02','Y','Y','X',0,'(DocPrepare)',0,'X',TO_TIMESTAMP('2013-08-30 18:10:55','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,0)
;

-- Aug 30, 2013 6:10:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50143 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 30, 2013 6:11:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('Z',0,0,50144,50030,0,TO_TIMESTAMP('2013-08-30 18:11:16','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(Start)',0,'X',TO_TIMESTAMP('2013-08-30 18:11:16','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,0)
;

-- Aug 30, 2013 6:11:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50144 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 30, 2013 6:12:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50142,50143,50107,TO_TIMESTAMP('2013-08-30 18:12:07','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',100,TO_TIMESTAMP('2013-08-30 18:12:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 6:12:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50143,50144,50108,TO_TIMESTAMP('2013-08-30 18:12:38','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Approval)','ECA02','Y','Y',10,TO_TIMESTAMP('2013-08-30 18:12:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 6:13:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50141,50144,50109,TO_TIMESTAMP('2013-08-30 18:13:19','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',100,TO_TIMESTAMP('2013-08-30 18:13:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 6:15:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Workflow SET AD_WF_Node_ID=50144, IsValid='Y',Updated=TO_TIMESTAMP('2013-08-30 18:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50030
;

