-- Apr 9, 2014 11:37:25 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72611,566,0,11,53743,'SeqNo',TO_TIMESTAMP('2014-04-09 11:37:15','YYYY-MM-DD HH24:MI:SS'),100,'@SQL=SELECT NVL(MAX(SeqNo),0)+10 AS DefaultValue FROM FTA_CDL_ReportLine WHERE FTA_CDL_Report_ID=@FTA_CDL_Report_ID@','Method of ordering records; lowest number comes first','ECA02',22,'The Sequence indicates the order of records','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Sequence',0,TO_TIMESTAMP('2014-04-09 11:37:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 9, 2014 11:37:25 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72611 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 9, 2014 11:38:12 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Tab (AD_Client_ID,AD_ColumnSortOrder_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,72611,0,53945,53743,53340,TO_TIMESTAMP('2014-04-09 11:38:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','N','Y','N','Sequence','N',30,0,TO_TIMESTAMP('2014-04-09 11:38:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 9, 2014 11:38:12 AM CEST
-- Farming Technical Assistance
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53945 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Apr 9, 2014 11:38:17 AM CEST
-- Farming Technical Assistance
UPDATE AD_Tab SET TabLevel=1,Updated=TO_TIMESTAMP('2014-04-09 11:38:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53945
;

-- Apr 9, 2014 11:38:25 AM CEST
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Secuencia',Updated=TO_TIMESTAMP('2014-04-09 11:38:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53945 AND AD_Language='es_VE'
;

-- Apr 9, 2014 11:38:28 AM CEST
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Secuencia',Updated=TO_TIMESTAMP('2014-04-09 11:38:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53945 AND AD_Language='es_VE'
;

