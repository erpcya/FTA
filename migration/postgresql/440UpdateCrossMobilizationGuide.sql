-- Mar 28, 2014 9:51:50 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT mgi.FTA_Farming_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_Farming_ID= @FTA_Farming_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''N'')  
OR EXISTS( SELECT mgi.FTA_Farming_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_LoadOrder_ID = @FTA_LoadOrder_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''Y'')
',Updated=TO_TIMESTAMP('2014-03-28 09:51:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 9:54:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT FTA_Farming_ID FROM FTA_MobilizationGuide WHERE FTA_Farming_ID= @FTA_Farming_ID@ AND IsSOTrx = ''N'')  
OR EXISTS( SELECT FTA_LoadOrder_ID FROM FTA_MobilizationGuide WHERE FTA_LoadOrder_ID = @FTA_LoadOrder_ID@ AND IsSOTrx = ''Y'')
',Updated=TO_TIMESTAMP('2014-03-28 09:54:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 9:59:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT FTA_MobilizationGuide.FTA_Farming_ID FROM FTA_MobilizationGuide WHERE FTA_MobilizationGuide.FTA_Farming_ID= @FTA_Farming_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''N'')  
OR EXISTS( SELECT FTA_MobilizationGuide.FTA_LoadOrder_ID FROM FTA_MobilizationGuide.FTA_MobilizationGuide WHERE FTA_MobilizationGuide.FTA_LoadOrder_ID = @FTA_LoadOrder_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''Y'')
',Updated=TO_TIMESTAMP('2014-03-28 09:59:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 10:02:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT FTA_MobilizationGuide.FTA_Farming_ID FROM FTA_MobilizationGuide WHERE FTA_MobilizationGuide.FTA_Farming_ID= @FTA_Farming_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''N'')  ',Updated=TO_TIMESTAMP('2014-03-28 10:02:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 10:04:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT mgi.FTA_Farming_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_Farming_ID= @FTA_Farming_ID@ AND mgi.IsSOTrx = ''N'')  ',Updated=TO_TIMESTAMP('2014-03-28 10:04:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 10:06:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT mgi.FTA_Farming_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_Farming_ID= @FTA_Farming_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''N'')  ',Updated=TO_TIMESTAMP('2014-03-28 10:06:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 10:07:59 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=53240,Updated=TO_TIMESTAMP('2014-03-28 10:07:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 10:13:58 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53684,TO_TIMESTAMP('2014-03-28 10:13:51','YYYY-MM-DD HH24:MI:SS'),100,'Finds FTA_RecordWeight_IDs  for a given FTA_MobilizationGuide_ID','ECA02','Y','N','RelType FTA_RecordWeight <= FTA_MobilizationGuide',TO_TIMESTAMP('2014-03-28 10:13:51','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Mar 28, 2014 10:13:58 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53684 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Mar 28, 2014 10:14:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,65887,65882,0,53684,53510,53341,TO_TIMESTAMP('2014-03-28 10:14:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2014-03-28 10:14:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 28, 2014 10:15:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT mgi.FTA_RecordWeight_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''Y'')  ',Updated=TO_TIMESTAMP('2014-03-28 10:15:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53684
;

-- Mar 28, 2014 10:15:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT mgi.FTA_RecordWeight_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''Y'')',Updated=TO_TIMESTAMP('2014-03-28 10:15:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53684
;

-- Mar 28, 2014 10:16:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Type,Updated,UpdatedBy) VALUES (0,0,53684,50012,TO_TIMESTAMP('2014-03-28 10:16:11','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Record Weight <-> Shipment Guide','I',TO_TIMESTAMP('2014-03-28 10:16:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 28, 2014 10:16:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53685,TO_TIMESTAMP('2014-03-28 10:16:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','RelType FTA_MobilizationGuide <= FTA_RecordWeight',TO_TIMESTAMP('2014-03-28 10:16:45','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Mar 28, 2014 10:16:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53685 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Mar 28, 2014 10:17:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,66914,66915,0,53685,53561,TO_TIMESTAMP('2014-03-28 10:17:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2014-03-28 10:17:38','YYYY-MM-DD HH24:MI:SS'),100,'FTA_RecordWeight.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@')
;

-- Mar 28, 2014 10:17:52 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Target_ID=53685,Updated=TO_TIMESTAMP('2014-03-28 10:17:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50012
;

-- Mar 28, 2014 10:28:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=53264,Updated=TO_TIMESTAMP('2014-03-28 10:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53685
;

-- Mar 28, 2014 10:34:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=NULL,Updated=TO_TIMESTAMP('2014-03-28 10:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53685
;

-- Mar 28, 2014 10:34:31 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET IsDirected='Y',Updated=TO_TIMESTAMP('2014-03-28 10:34:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50012
;

-- Mar 28, 2014 10:35:17 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET IsActive='N',Updated=TO_TIMESTAMP('2014-03-28 10:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50012
;

-- Mar 28, 2014 10:40:30 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET IsActive='Y',Updated=TO_TIMESTAMP('2014-03-28 10:40:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50012
;

-- Mar 28, 2014 10:41:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_MobilizationGuide.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@',Updated=TO_TIMESTAMP('2014-03-28 10:41:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53685
;

-- Mar 28, 2014 10:42:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_RecordWeight.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@',Updated=TO_TIMESTAMP('2014-03-28 10:42:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53685
;

-- Mar 28, 2014 10:46:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=NULL,Updated=TO_TIMESTAMP('2014-03-28 10:46:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 10:46:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT mgi.FTA_Farming_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_Farming_ID= @FTA_Farming_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''N'')  

OR 
EXISTS (SELECT mgi.FTA_RecordWeight_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''Y'')',Updated=TO_TIMESTAMP('2014-03-28 10:46:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 10:46:54 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=53684
;


-- Mar 28, 2014 10:47:10 AM VET
-- Farming Technical Assistance
DELETE FROM AD_RelationType WHERE AD_RelationType_ID=50012
;

-- Mar 28, 2014 10:47:15 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=53685
;

-- Mar 28, 2014 10:47:15 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference WHERE AD_Reference_ID=53685
;

-- Mar 28, 2014 10:47:20 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=53684
;

-- Mar 28, 2014 10:47:20 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference WHERE AD_Reference_ID=53684
;

-- Mar 28, 2014 10:48:22 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT mgi.FTA_Farming_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_Farming_ID= @FTA_Farming_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''N'')  
OR 
EXISTS (SELECT mgi.FTA_RecordWeight_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_RecordWeight_ID = @FTA_RecordWeight_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''Y'')',Updated=TO_TIMESTAMP('2014-03-28 10:48:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 11:12:25 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT mgi.FTA_Farming_ID FROM FTA_MobilizationGuide mgi WHERE FTA_MobilizationGuide.FTA_Farming_ID= @FTA_Farming_ID@ AND FTA_MobilizationGuide.IsSOTrx = ''N'') ',Updated=TO_TIMESTAMP('2014-03-28 11:12:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 11:17:36 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Target_ID=NULL,Updated=TO_TIMESTAMP('2014-03-28 11:17:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:19:33 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Source_ID=53536,Updated=TO_TIMESTAMP('2014-03-28 11:19:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:20:34 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Source_ID=53535,Updated=TO_TIMESTAMP('2014-03-28 11:20:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:21:06 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Source_ID=NULL, AD_Reference_Target_ID=53536,Updated=TO_TIMESTAMP('2014-03-28 11:21:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:22:45 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Target_ID=NULL,Updated=TO_TIMESTAMP('2014-03-28 11:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:24:54 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Source_ID=53536,Updated=TO_TIMESTAMP('2014-03-28 11:24:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:25:30 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Target_ID=53535,Updated=TO_TIMESTAMP('2014-03-28 11:25:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:26:13 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Target_ID=NULL, IsDirected='Y',Updated=TO_TIMESTAMP('2014-03-28 11:26:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:27:10 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Target_ID=53535,Updated=TO_TIMESTAMP('2014-03-28 11:27:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:40:18 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET IsDirected='N',Updated=TO_TIMESTAMP('2014-03-28 11:40:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:44:30 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET IsActive='N',Updated=TO_TIMESTAMP('2014-03-28 11:44:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:45:27 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=53536
;

-- Mar 28, 2014 11:45:40 AM VET
-- Farming Technical Assistance
DELETE FROM AD_RelationType WHERE AD_RelationType_ID=50008
;

-- Mar 28, 2014 11:45:46 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=53536
;

-- Mar 28, 2014 11:45:46 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference WHERE AD_Reference_ID=53536
;

-- Mar 28, 2014 11:45:53 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 11:45:53 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Reference WHERE AD_Reference_ID=53535
;

-- Mar 28, 2014 11:53:32 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52171,Updated=TO_TIMESTAMP('2014-03-28 11:53:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65946
;

-- Mar 28, 2014 1:48:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-03-28 13:48:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72928
;

-- Mar 28, 2014 1:48:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-03-28 13:48:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73238
;

-- Mar 28, 2014 1:48:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-03-28 13:48:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73238
;

-- Mar 28, 2014 1:48:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-03-28 13:48:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72928
;

-- Mar 28, 2014 1:50:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-03-28 13:50:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68339
;

-- Mar 28, 2014 1:50:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-03-28 13:50:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72928
;

-- Mar 28, 2014 1:50:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-03-28 13:50:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72928
;

-- Mar 28, 2014 1:50:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-03-28 13:50:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68339
;

-- Mar 28, 2014 1:55:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y'' & @CreditType@ ! ''R''',Updated=TO_TIMESTAMP('2014-03-28 13:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73236
;

-- Mar 28, 2014 1:56:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y'' & @CreditType@ ! ''R''',Updated=TO_TIMESTAMP('2014-03-28 13:56:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73238
;

-- Mar 28, 2014 1:57:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y'' | @CreditType@ ! ''R''',Updated=TO_TIMESTAMP('2014-03-28 13:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73238
;

-- Mar 28, 2014 1:58:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y'' | @CreditType@ ! ''R''',Updated=TO_TIMESTAMP('2014-03-28 13:58:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73236
;

-- Mar 28, 2014 2:00:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y''',Updated=TO_TIMESTAMP('2014-03-28 14:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73236
;

-- Mar 28, 2014 2:00:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y''',Updated=TO_TIMESTAMP('2014-03-28 14:00:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73238
;

-- Mar 28, 2014 2:02:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y''  & @CreditType@ ! ''R''',Updated=TO_TIMESTAMP('2014-03-28 14:02:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73236
;

-- Mar 28, 2014 2:02:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y'' & @CreditType@ ! ''R''',Updated=TO_TIMESTAMP('2014-03-28 14:02:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73238
;

-- Mar 28, 2014 2:07:41 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Programa de Pagos ',Updated=TO_TIMESTAMP('2014-03-28 14:07:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53941 AND AD_Language='es_VE'
;

-- Mar 28, 2014 2:07:45 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Programa de Pagos ',Updated=TO_TIMESTAMP('2014-03-28 14:07:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53941 AND AD_Language='es_VE'
;

-- Mar 28, 2014 2:07:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Programa de Pagos',Updated=TO_TIMESTAMP('2014-03-28 14:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53941 AND AD_Language='es_VE'
;

-- Mar 28, 2014 2:07:52 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Programa de Pagos',Updated=TO_TIMESTAMP('2014-03-28 14:07:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53941 AND AD_Language='es_VE'
;

-- Mar 28, 2014 2:11:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-03-28 14:11:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70013
;

-- Mar 28, 2014 2:11:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-03-28 14:11:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70012
;

-- Mar 28, 2014 2:11:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-03-28 14:11:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70018
;

-- Mar 28, 2014 2:11:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-03-28 14:11:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70007
;

-- Mar 28, 2014 2:11:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-03-28 14:11:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70038
;

-- Mar 28, 2014 2:11:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-03-28 14:11:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70009
;

-- Mar 28, 2014 2:11:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-03-28 14:11:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70022
;

-- Mar 28, 2014 2:11:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-03-28 14:11:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70005
;

-- Mar 28, 2014 2:11:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-03-28 14:11:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70039
;

-- Mar 28, 2014 2:11:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-03-28 14:11:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70010
;

-- Mar 28, 2014 2:11:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-03-28 14:11:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70014
;

-- Mar 28, 2014 2:11:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-03-28 14:11:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70011
;

-- Mar 28, 2014 2:11:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-03-28 14:11:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70017
;

-- Mar 28, 2014 2:11:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-03-28 14:11:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70023
;

-- Mar 28, 2014 2:31:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@ = ''L''',Updated=TO_TIMESTAMP('2014-03-28 14:31:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73262
;

-- Mar 28, 2014 2:31:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y''  & @CreditType@ = ''L''',Updated=TO_TIMESTAMP('2014-03-28 14:31:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73236
;

-- Mar 28, 2014 2:31:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@IsManagesPaymentProgram@=''Y'' & @CreditType@ = ''L''',Updated=TO_TIMESTAMP('2014-03-28 14:31:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73238
;

-- Mar 28, 2014 3:13:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-03-28 15:13:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69780
;

