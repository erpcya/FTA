-- Mar 18, 2014 8:49:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='0',Updated=TO_DATE('2014-03-18 08:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53774 AND AD_Language='es_MX'
;

-- Mar 18, 2014 8:49:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Detalle Orden de Carga',Updated=TO_DATE('2014-03-18 08:49:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53774 AND AD_Language='es_MX'
;

-- Mar 18, 2014 8:49:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Detalle Orden de Cargad ',Updated=TO_DATE('2014-03-18 08:49:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53774 AND AD_Language='es_VE'
;

-- Mar 18, 2014 8:49:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Detalle Orden de Carga',Updated=TO_DATE('2014-03-18 08:49:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53774 AND AD_Language='es_VE'
;

-- Mar 18, 2014 8:50:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72410,558,0,19,53774,'C_Order_ID',TO_DATE('2014-03-18 08:50:01','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02',10,'The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','N','N','N','Order',TO_DATE('2014-03-18 08:50:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 18, 2014 8:50:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72410 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 18, 2014 8:50:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=290,Updated=TO_DATE('2014-03-18 08:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72410
;

-- Mar 18, 2014 8:50:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53596,Updated=TO_DATE('2014-03-18 08:50:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72255
;

-- Mar 18, 2014 8:51:02 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Reference_ID=30,Updated=TO_DATE('2014-03-18 08:51:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54570
;

-- Mar 18, 2014 8:51:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,558,0,53595,54600,30,'C_Order_ID',TO_DATE('2014-03-18 08:51:17','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02',22,'The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Y','N','N','Order',70,TO_DATE('2014-03-18 08:51:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 18, 2014 8:51:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54600 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 18, 2014 8:51:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=25,Updated=TO_DATE('2014-03-18 08:51:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54600
;

-- Mar 18, 2014 8:55:07 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle Orden de Carga',Updated=TO_DATE('2014-03-18 08:55:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53595 AND AD_Language='es_MX'
;

-- Mar 18, 2014 8:55:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Detalle Orden de Carga',Updated=TO_DATE('2014-03-18 08:55:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53595 AND AD_Language='es_VE'
;

