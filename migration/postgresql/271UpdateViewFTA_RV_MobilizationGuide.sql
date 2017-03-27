-- Nov 2, 2013 1:58:18 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52222,Updated=TO_TIMESTAMP('2013-11-02 13:58:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67002
;

-- Nov 2, 2013 2:02:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Cruce de Cuentas en Crédito (Automático)',Updated=TO_TIMESTAMP('2013-11-02 14:02:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53620 AND AD_Language='es_VE'
;

-- Nov 2, 2013 2:09:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69698,56587,0,19,114,53620,'C_UOM_Area_ID',TO_TIMESTAMP('2013-11-02 14:09:32','YYYY-MM-DD HH24:MI:SS'),100,'Standard Unit of Measure for Area','ECA02',10,'The Standard UOM for Area indicates the UOM to use for referenced by area in a document.','Y','N','N','N','N','N','N','N','N','N','UOM for Area',TO_TIMESTAMP('2013-11-02 14:09:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 2, 2013 2:09:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69698 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 2, 2013 2:09:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69699,454,0,19,53620,'M_Product_ID',TO_TIMESTAMP('2013-11-02 14:09:35','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',10,'Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','N','N','N','Product',TO_TIMESTAMP('2013-11-02 14:09:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 2, 2013 2:09:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69699 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 2, 2013 2:10:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2013-11-02 14:10:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69698
;

