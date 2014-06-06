-- Mar 15, 2014 3:50:34 PM CET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72405,56084,0,19,53584,'FTA_FarmerCredit_ID',TO_TIMESTAMP('2014-03-15 15:50:29','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan','ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Credit/Loan',TO_TIMESTAMP('2014-03-15 15:50:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 15, 2014 3:50:34 PM CET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72405 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

