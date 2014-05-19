-- Nov 4, 2013 7:56:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69806,558,0,19,53665,'C_Order_ID',TO_DATE('2013-11-04 07:56:37','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02',10,'The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','N','N','N','Order',TO_DATE('2013-11-04 07:56:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 4, 2013 7:56:41 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69806 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 4, 2013 7:57:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,69806,0,52299,50059,50022,'LFI_C_Order_ID','LFI.C_Order_ID',TO_DATE('2013-11-04 07:56:59','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Order',TO_DATE('2013-11-04 07:56:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 4, 2013 7:57:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53453,50028,0,558,0,19,52299,TO_DATE('2013-11-04 07:57:09','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','Order',10,TO_DATE('2013-11-04 07:57:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 4, 2013 7:57:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53453 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 4, 2013 7:57:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-11-04 07:57:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53453
;

-- Nov 4, 2013 7:57:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', IsIdentifier='Y',Updated=TO_DATE('2013-11-04 07:57:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53453
;

-- Nov 4, 2013 9:26:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,267,0,53528,54282,15,'DateInvoiced',TO_DATE('2013-11-04 09:26:32','YYYY-MM-DD HH24:MI:SS'),100,'Date printed on Invoice','ECA02',7,'The Date Invoice indicates the date printed on the invoice.','Y','Y','Y','N','Date Invoiced',40,TO_DATE('2013-11-04 09:26:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 4, 2013 9:26:33 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54282 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 4, 2013 9:27:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse SET WhereClause='DocStatus IN (''CO'',''CL'') AND C_Invoice_ID IS NULL /*AND AvailableAmt>0*/',Updated=TO_DATE('2013-11-04 09:27:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50028
;

-- Nov 4, 2013 10:59:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-11-04 10:59:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53453
;

-- Nov 4, 2013 10:59:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-11-04 10:59:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53437
;

-- Nov 4, 2013 10:59:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', IsIdentifier='Y',Updated=TO_DATE('2013-11-04 10:59:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53437
;

-- Nov 4, 2013 11:11:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-11-04 11:11:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53437
;

-- Nov 4, 2013 11:11:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-11-04 11:11:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53453
;

-- Nov 4, 2013 11:12:09 AM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='N',Updated=TO_DATE('2013-11-04 11:12:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53453
;

