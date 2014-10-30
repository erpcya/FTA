-- Mar 25, 2014 8:25:13 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET SeqNo=31,Updated=TO_TIMESTAMP('2014-03-25 08:25:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54590
;

-- Mar 25, 2014 8:33:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72539,56154,0,20,53636,'CreditType',TO_TIMESTAMP('2014-03-25 08:32:57','YYYY-MM-DD HH24:MI:SS'),100,'If is Credit, Loan and other','ECA02',1,'Y','N','N','N','N','N','N','N','N','N','Credit Type',TO_TIMESTAMP('2014-03-25 08:32:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2014 8:33:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72539 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2014 8:33:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72540,590,0,14,53636,'TaxID',TO_TIMESTAMP('2014-03-25 08:33:02','YYYY-MM-DD HH24:MI:SS'),100,'Tax Identification','ECA02',2147483647,'The Tax ID field identifies the legal Identification number of this Entity.','Y','N','N','N','N','N','N','N','N','N','Tax ID',TO_TIMESTAMP('2014-03-25 08:33:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 25, 2014 8:33:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72540 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 25, 2014 8:37:05 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2014-03-25 08:37:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54184
;

-- Mar 25, 2014 9:21:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52207,Updated=TO_TIMESTAMP('2014-03-25 09:21:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54695
;

-- Mar 25, 2014 5:37:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET JasperReport='attachment:inf_Ticket_Record_Weight_Summary.jrxml',Updated=TO_TIMESTAMP('2014-03-25 17:37:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53606
;

-- Mar 25, 2014 2:33:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Message SET MsgText='Port Not Configured', Value='PortNotConfigured',Updated=TO_TIMESTAMP('2014-03-25 14:33:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53245
;

-- Mar 25, 2014 2:33:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53245
;

-- Mar 25, 2014 2:33:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Puerto No Configurado',Updated=TO_TIMESTAMP('2014-03-25 14:33:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53245 AND AD_Language='es_VE'
;

-- Mar 25, 2014 2:33:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Puerto No configurado para el Usuario',Updated=TO_TIMESTAMP('2014-03-25 14:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53213 AND AD_Language='es_VE'
;

-- Mar 25, 2014 5:37:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Process SET JasperReport='attachment:inf_Ticket_Record_Weight_Summary.jrxml',Updated=TO_TIMESTAMP('2014-03-25 17:37:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53606
;


