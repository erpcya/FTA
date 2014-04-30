-- Oct 29, 2013 3:37:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69519,2543,0,20,53586,'IsInDispute',TO_TIMESTAMP('2013-10-29 15:37:09','YYYY-MM-DD HH24:MI:SS'),100,'Document is in dispute','ECA02',1,'The document is in dispute. Use Requests to track details.','Y','N','N','N','N','N','N','N','N','N','In Dispute',TO_TIMESTAMP('2013-10-29 15:37:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 29, 2013 3:37:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69519 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 29, 2013 3:38:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,69519,0,52240,50053,50016,'RWUL_IsInDispute','RWUL.IsInDispute',TO_TIMESTAMP('2013-10-29 15:38:17','YYYY-MM-DD HH24:MI:SS'),100,'Document is in dispute','ECA02','The document is in dispute. Use Requests to track details.','Y','In Dispute',TO_TIMESTAMP('2013-10-29 15:38:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 29, 2013 3:38:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53394,50021,0,2543,0,20,52240,TO_TIMESTAMP('2013-10-29 15:38:37','YYYY-MM-DD HH24:MI:SS'),100,'Document is in dispute','ECA02','The document is in dispute. Use Requests to track details.','Y','N','N','N','N','N','N','In Dispute',10,TO_TIMESTAMP('2013-10-29 15:38:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 29, 2013 3:38:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53394 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;
