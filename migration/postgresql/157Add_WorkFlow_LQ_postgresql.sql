-- Oct 15, 2013 1:45:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Saldo del Productor',Description='Muestra el Saldo del Productor por Partida',Updated=TO_TIMESTAMP('2013-10-15 13:45:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53490 AND AD_Language='es_VE'
;

-- Oct 15, 2013 1:45:38 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET Name='FTA_RV_CreditDefinitionBalance just Invoice', WhereClause='FTA_RV_CreditDefinitionBalance.AD_Table_ID = 318',Updated=TO_TIMESTAMP('2013-10-15 13:45:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53074
;

-- Oct 15, 2013 1:47:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Table SET AD_Window_ID=53282,Updated=TO_TIMESTAMP('2013-10-15 13:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53600
;

-- Oct 15, 2013 1:47:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET WhereClause='AD_Table_ID = 318',Updated=TO_TIMESTAMP('2013-10-15 13:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53781
;

-- Oct 15, 2013 1:50:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab SET WhereClause='(AD_Table_ID = 318 OR AD_Table_ID IS NULL)',Updated=TO_TIMESTAMP('2013-10-15 13:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53781
;

-- Oct 15, 2013 1:50:53 PM VET
-- Farming Technical Assistance
UPDATE AD_ReportView SET WhereClause='(FTA_RV_CreditDefinitionBalance.AD_Table_ID = 318 OR AD_Table_ID IS NULL)',Updated=TO_TIMESTAMP('2013-10-15 13:50:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53074
;

-- Oct 15, 2013 1:51:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Window SET IsSOTrx='Y',Updated=TO_TIMESTAMP('2013-10-15 13:51:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53261
;

-- Oct 15, 2013 2:24:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53495,TO_TIMESTAMP('2013-10-15 14:24:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Process Farmer Credit Allocation','Y',0,0,TO_TIMESTAMP('2013-10-15 14:24:05','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Allocation Process')
;

-- Oct 15, 2013 2:24:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53495 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 15, 2013 2:24:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Procesar Asignación de Crédito',Updated=TO_TIMESTAMP('2013-10-15 14:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53495 AND AD_Language='es_VE'
;

-- Oct 15, 2013 2:25:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53495,Updated=TO_TIMESTAMP('2013-10-15 14:25:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67029
;

-- Oct 15, 2013 2:28:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Workflow (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,"limit",Name,Priority,PublishStatus,Updated,UpdatedBy,ValidateWorkflow,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES ('1',0,0,53566,50036,'Yamel Senih',0,TO_TIMESTAMP('2013-10-15 14:28:08','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process Liquidation Allocation)','10000000',0,'D','ECA02','Y','Y','N','N',0,'Process_Liquidation_Allocation',0,'U',TO_TIMESTAMP('2013-10-15 14:28:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Process_Liquidation_Allocation',0,0,'P',0)
;

-- Oct 15, 2013 2:28:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50036 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- Oct 15, 2013 2:28:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AD_Workflow_ID=50036,Updated=TO_TIMESTAMP('2013-10-15 14:28:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53495
;

-- Oct 15, 2013 2:29:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Workflow_Trl SET Name='Proceso de Asignación de Liquidación',Description='(Proceso de Asignación de Liquidación)',Updated=TO_TIMESTAMP('2013-10-15 14:29:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50036 AND AD_Language='es_VE'
;

-- Oct 15, 2013 2:29:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50165,50036,0,TO_TIMESTAMP('2013-10-15 14:29:45','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','--',0,0,'ECA02','Y','Y','X',0,'(DocAuto)',0,'X',TO_TIMESTAMP('2013-10-15 14:29:45','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,0)
;

-- Oct 15, 2013 2:29:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50165 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 15, 2013 2:30:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50166,50036,0,TO_TIMESTAMP('2013-10-15 14:30:10','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(DocComplete)',0,'X',TO_TIMESTAMP('2013-10-15 14:30:10','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,0)
;

-- Oct 15, 2013 2:30:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50166 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 15, 2013 2:30:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50167,50036,0,TO_TIMESTAMP('2013-10-15 14:30:34','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','PR',0,0,'ECA02','Y','Y','X',0,'(DocPrepare)',0,'X',TO_TIMESTAMP('2013-10-15 14:30:34','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,0)
;

-- Oct 15, 2013 2:30:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50167 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 15, 2013 2:30:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('Z',0,0,50168,50036,0,TO_TIMESTAMP('2013-10-15 14:30:54','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(Start)',0,'X',TO_TIMESTAMP('2013-10-15 14:30:54','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,0)
;

-- Oct 15, 2013 2:30:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50168 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 15, 2013 2:32:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50166,50167,50125,TO_TIMESTAMP('2013-10-15 14:32:11','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',10,TO_TIMESTAMP('2013-10-15 14:32:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 2:32:22 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_NodeNext SET SeqNo=100,Updated=TO_TIMESTAMP('2013-10-15 14:32:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=50125
;

-- Oct 15, 2013 2:32:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50167,50168,50126,TO_TIMESTAMP('2013-10-15 14:32:54','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Approval)','ECA02','Y','Y',10,TO_TIMESTAMP('2013-10-15 14:32:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 2:33:33 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50165,50168,50127,TO_TIMESTAMP('2013-10-15 14:33:32','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',10,TO_TIMESTAMP('2013-10-15 14:33:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 2:33:58 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_NodeNext SET SeqNo=100,Updated=TO_TIMESTAMP('2013-10-15 14:33:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=50127
;

-- Oct 15, 2013 2:34:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Workflow SET AD_WF_Node_ID=50168, IsValid='Y',Updated=TO_TIMESTAMP('2013-10-15 14:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50036
;

-- Oct 15, 2013 4:03:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53496,TO_TIMESTAMP('2013-10-15 16:03:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Process Farmer Liquidation','Y',0,0,TO_TIMESTAMP('2013-10-15 16:03:11','YYYY-MM-DD HH24:MI:SS'),100,'FTA_Liquidation Process')
;

-- Oct 15, 2013 4:03:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53496 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 15, 2013 4:03:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Process_ID=53496,Updated=TO_TIMESTAMP('2013-10-15 16:03:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66992
;

-- Oct 15, 2013 4:04:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET Value='FTA_FarmerLiquidation Process',Updated=TO_TIMESTAMP('2013-10-15 16:04:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53496
;

-- Oct 15, 2013 4:04:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Procesar Liquidación de Productor',Updated=TO_TIMESTAMP('2013-10-15 16:04:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53496 AND AD_Language='es_VE'
;

-- Oct 15, 2013 4:05:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Workflow (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,"limit",Name,Priority,PublishStatus,Updated,UpdatedBy,ValidateWorkflow,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES ('1',0,0,53564,50037,'Yamel Senih',0,TO_TIMESTAMP('2013-10-15 16:05:21','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process Farmer Liquidation)','10000001',0,'D','U','Y','Y','N','N',0,'Process_Farmer_Liquidation',0,'U',TO_TIMESTAMP('2013-10-15 16:05:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Process_Farmer_Liquidation',0,0,'P',0)
;

-- Oct 15, 2013 4:05:22 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50037 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- Oct 15, 2013 4:05:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Workflow_Trl SET Name='Proceso de Liquidación de Productor',Description='(Proceso de Liquidación de Productor)',Updated=TO_TIMESTAMP('2013-10-15 16:05:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50037 AND AD_Language='es_VE'
;

-- Oct 15, 2013 4:06:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET AD_Workflow_ID=50037,Updated=TO_TIMESTAMP('2013-10-15 16:06:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53496
;

-- Oct 15, 2013 4:07:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50169,50037,0,TO_TIMESTAMP('2013-10-15 16:07:10','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','--',0,0,'ECA02','Y','Y','X',0,'(DocAuto)',0,'X',TO_TIMESTAMP('2013-10-15 16:07:10','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,0)
;

-- Oct 15, 2013 4:07:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50169 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 15, 2013 4:08:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50170,50037,0,TO_TIMESTAMP('2013-10-15 16:08:12','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(DocComplete)',0,'X',TO_TIMESTAMP('2013-10-15 16:08:12','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,0)
;

-- Oct 15, 2013 4:08:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50170 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 15, 2013 4:08:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50171,50037,0,TO_TIMESTAMP('2013-10-15 16:08:42','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','PR',0,0,'ECA02','Y','Y','X',0,'(DocPrepare)',0,'X',TO_TIMESTAMP('2013-10-15 16:08:42','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,0)
;

-- Oct 15, 2013 4:08:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50171 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 15, 2013 4:08:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('Z',0,0,50172,50037,0,TO_TIMESTAMP('2013-10-15 16:08:58','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','X',0,'(Start)',0,'X',TO_TIMESTAMP('2013-10-15 16:08:58','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,0)
;

-- Oct 15, 2013 4:08:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50172 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Oct 15, 2013 4:10:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50171,50172,50128,TO_TIMESTAMP('2013-10-15 16:10:05','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Approval)','ECA02','Y','Y',10,TO_TIMESTAMP('2013-10-15 16:10:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 4:10:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50169,50172,50129,TO_TIMESTAMP('2013-10-15 16:10:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',100,TO_TIMESTAMP('2013-10-15 16:10:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 4:10:37 PM VET
-- Farming Technical Assistance
UPDATE AD_WF_NodeNext SET Description='(Standard Transition)',Updated=TO_TIMESTAMP('2013-10-15 16:10:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=50129
;

-- Oct 15, 2013 4:11:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50170,50171,50130,TO_TIMESTAMP('2013-10-15 16:11:08','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',100,TO_TIMESTAMP('2013-10-15 16:11:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 4:11:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Workflow SET AD_WF_Node_ID=50172, IsValid='Y',Updated=TO_TIMESTAMP('2013-10-15 16:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50037
;

-- Oct 15, 2013 4:47:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68913,2533,0,12,53566,'ApprovalAmt',TO_TIMESTAMP('2013-10-15 16:47:08','YYYY-MM-DD HH24:MI:SS'),100,'Document Approval Amount','ECA02',14,'Approval Amount for Workflow','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Approval Amount',0,TO_TIMESTAMP('2013-10-15 16:47:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 15, 2013 4:47:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68913 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 15, 2013 4:47:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68913,69915,0,53733,TO_TIMESTAMP('2013-10-15 16:47:49','YYYY-MM-DD HH24:MI:SS'),100,'Document Approval Amount',14,'ECA02','Approval Amount for Workflow','Y','Y','Y','N','N','N','N','N','Approval Amount',TO_TIMESTAMP('2013-10-15 16:47:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 4:47:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69915 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 15, 2013 4:48:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=69915
;

-- Oct 15, 2013 4:48:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68360
;

-- Oct 15, 2013 4:48:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68357
;

-- Oct 15, 2013 4:48:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68364
;

-- Oct 15, 2013 4:48:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68361
;

-- Oct 15, 2013 4:48:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68369
;

-- Oct 15, 2013 4:48:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68358
;

-- Oct 15, 2013 4:48:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68357
;

-- Oct 15, 2013 4:48:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68360
;

-- Oct 15, 2013 4:48:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-15 16:48:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68357
;

-- Oct 15, 2013 5:22:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68914,351,0,20,53564,'IsApproved',TO_TIMESTAMP('2013-10-15 17:22:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Indicates if this document requires approval','ECA02',1,'The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Approved',0,TO_TIMESTAMP('2013-10-15 17:22:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 15, 2013 5:22:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68914 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 15, 2013 5:23:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68914,69916,0,53735,TO_TIMESTAMP('2013-10-15 17:23:02','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval',1,'ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','Y','N','N','N','N','N','Approved',TO_TIMESTAMP('2013-10-15 17:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 15, 2013 5:23:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69916 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 15, 2013 5:23:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-10-15 17:23:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69916
;

-- Oct 15, 2013 5:23:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-15 17:23:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69916
;

