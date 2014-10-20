-- Oct 18, 2013 7:39:43 PM VET
-- LVE-Import
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,102,0,53498,54174,19,'AD_Client_ID',TO_DATE('2013-10-18 19:39:42','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','Client',1,TO_DATE('2013-10-18 19:39:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 18, 2013 7:39:43 PM VET
-- LVE-Import
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54174 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 18, 2013 7:39:47 PM VET
-- LVE-Import
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2013-10-18 19:39:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54174
;

-- Oct 18, 2013 7:39:53 PM VET
-- LVE-Import
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_DATE('2013-10-18 19:39:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54157
;

-- Oct 18, 2013 7:39:57 PM VET
-- LVE-Import
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_DATE('2013-10-18 19:39:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54174
;

-- Oct 18, 2013 7:40:28 PM VET
-- LVE-Import
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,2168,0,53498,54175,20,'IsValidateOnly',TO_DATE('2013-10-18 19:40:27','YYYY-MM-DD HH24:MI:SS'),100,'Validate the date and do not process','ECA02',1,'Y','Y','N','N','Only Validate Data',20,TO_DATE('2013-10-18 19:40:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 18, 2013 7:40:28 PM VET
-- LVE-Import
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54175 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

