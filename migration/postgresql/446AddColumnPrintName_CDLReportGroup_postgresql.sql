-- Apr 9, 2014 11:17:45 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72610,958,0,10,53789,'PrintName',TO_TIMESTAMP('2014-04-09 11:17:42','YYYY-MM-DD HH24:MI:SS'),100,'The label text to be printed on a document or correspondence.','ECA02',60,'The Label to be printed indicates the name that will be printed on a document or correspondence. The max length is 2000 characters.','Y','Y','N','N','N','N','N','N','N','Y','N','N','Y','Print Text',0,TO_TIMESTAMP('2014-04-09 11:17:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 9, 2014 11:17:45 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72610 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 9, 2014 11:18:06 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72610,73280,0,53944,TO_TIMESTAMP('2014-04-09 11:18:04','YYYY-MM-DD HH24:MI:SS'),100,'The label text to be printed on a document or correspondence.',60,'ECA02','The Label to be printed indicates the name that will be printed on a document or correspondence. The max length is 2000 characters.','Y','Y','Y','N','N','N','N','N','Print Text',TO_TIMESTAMP('2014-04-09 11:18:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 11:18:06 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73280 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 9, 2014 11:18:24 AM CEST
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-04-09 11:18:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73280
;

-- Apr 9, 2014 11:18:25 AM CEST
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-04-09 11:18:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73274
;

