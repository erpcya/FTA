-- Jan 17, 2014 6:21:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71309,56607,0,17,53597,53627,'OperationType',TO_TIMESTAMP('2014-01-17 18:21:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Operation Type',0,TO_TIMESTAMP('2014-01-17 18:21:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 17, 2014 6:21:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71309 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 17, 2014 6:23:51 PM VET
-- Farming Technical Assistance
ALTER TABLE I_RecordWeight ADD COLUMN OperationType VARCHAR(3) DEFAULT NULL 
;

