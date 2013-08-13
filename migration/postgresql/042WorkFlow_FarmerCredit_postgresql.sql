-- Aug 13, 2013 3:13:24 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53435,TO_TIMESTAMP('2013-08-13 15:13:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA01','Y','N','N','N','N','Process Farmer Credit','Y',0,0,TO_TIMESTAMP('2013-08-13 15:13:15','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmerCredit Process')
;

-- Aug 13, 2013 3:13:24 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53435 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 13, 2013 3:14:33 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Process_ID=53435,Updated=TO_TIMESTAMP('2013-08-13 15:14:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66664
;

-- Aug 13, 2013 3:35:11 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Workflow (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_WF_Node_ID,AD_Workflow_ID,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Name,PublishStatus,Updated,UpdatedBy,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES ('1',0,0,53549,183,50027,'Yamel Senih',0,TO_TIMESTAMP('2013-08-13 15:35:09','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process Farmer Credit)','10000000',1,'D','ECA01','Y','N','N','Y','Process_Farmer_Credit','U',TO_TIMESTAMP('2013-08-13 15:35:09','YYYY-MM-DD HH24:MI:SS'),100,'Process_Farmer_Credit',0,0,'P',0)
;

-- Aug 13, 2013 3:35:12 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50027 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- Aug 13, 2013 3:36:42 PM VET
-- SFAndroid Contribution
UPDATE AD_Workflow_Trl SET Name='Proceso de Créito a Productor',Description='Proceso de Créito a Productor',Updated=TO_TIMESTAMP('2013-08-13 15:36:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50027 AND AD_Language='es_MX'
;

-- Aug 13, 2013 3:37:47 PM VET
-- SFAndroid Contribution
UPDATE AD_Process SET AD_Workflow_ID=50027,Updated=TO_TIMESTAMP('2013-08-13 15:37:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53435
;

-- Aug 13, 2013 3:39:31 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50129,50027,0,TO_TIMESTAMP('2013-08-13 15:39:31','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA01','Y','Y','X',0,'(DocAuto',0,'X',TO_TIMESTAMP('2013-08-13 15:39:31','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto',0,0,0,0,0)
;

-- Aug 13, 2013 3:39:31 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50129 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 13, 2013 3:39:55 PM VET
-- SFAndroid Contribution
UPDATE AD_WF_Node SET DocAction='--',Updated=TO_TIMESTAMP('2013-08-13 15:39:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=50129
;

-- Aug 13, 2013 3:41:02 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50130,50027,0,TO_TIMESTAMP('2013-08-13 15:40:59','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA01','Y','Y','X',0,'(DocComplete)',0,'X',TO_TIMESTAMP('2013-08-13 15:40:59','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,0)
;

-- Aug 13, 2013 3:41:02 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50130 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 13, 2013 3:41:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('D',0,0,50131,50027,0,TO_TIMESTAMP('2013-08-13 15:41:36','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','PR',0,0,'ECA01','Y','Y','X',0,'(DocPrepare)',0,'X',TO_TIMESTAMP('2013-08-13 15:41:36','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,0)
;

-- Aug 13, 2013 3:41:36 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50131 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 13, 2013 3:42:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,YPosition) VALUES ('Z',0,0,50132,50027,0,TO_TIMESTAMP('2013-08-13 15:41:59','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA01','Y','Y','X',0,'(Start)',0,'X',TO_TIMESTAMP('2013-08-13 15:41:59','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,0)
;

-- Aug 13, 2013 3:42:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50132 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Aug 13, 2013 3:42:12 PM VET
-- SFAndroid Contribution
UPDATE AD_Workflow SET AD_WF_Node_ID=50132, IsValid='Y',Updated=TO_TIMESTAMP('2013-08-13 15:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50027
;

-- Aug 13, 2013 3:45:27 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50130,50131,50098,TO_TIMESTAMP('2013-08-13 15:45:26','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA01','Y','N',100,TO_TIMESTAMP('2013-08-13 15:45:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 3:46:00 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50131,50132,50099,TO_TIMESTAMP('2013-08-13 15:45:58','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Approval)','ECA01','Y','Y',10,TO_TIMESTAMP('2013-08-13 15:45:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 3:48:43 PM VET
-- SFAndroid Contribution
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50129,50132,50100,TO_TIMESTAMP('2013-08-13 15:48:42','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA01','Y','N',100,TO_TIMESTAMP('2013-08-13 15:48:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 4:26:03 PM VET
-- SFAndroid Contribution
UPDATE AD_Workflow SET AD_Table_ID=53544, IsValid='Y',Updated=TO_TIMESTAMP('2013-08-13 16:26:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50027
;

