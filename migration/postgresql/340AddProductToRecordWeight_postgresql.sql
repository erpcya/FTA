-- Jan 14, 2014 5:18:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71278,454,0,19,53561,'M_Product_ID',TO_TIMESTAMP('2014-01-14 17:17:59','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product',0,TO_TIMESTAMP('2014-01-14 17:17:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 14, 2014 5:18:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71278 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 14, 2014 5:21:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutRecordWeight.product',Updated=TO_TIMESTAMP('2014-01-14 17:21:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66924
;

