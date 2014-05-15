-- Mar 18, 2014 10:58:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,72435,56485,0,10,53584,'VehiclePlate',TO_DATE('2014-03-18 10:58:54','YYYY-MM-DD HH24:MI:SS'),100,'Vehicle Plate or Identifier','ECA02',60,'Y','N','N','N','N','N','N','N','N','N','Vehicle Plate',TO_DATE('2014-03-18 10:58:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 18, 2014 10:58:59 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72435 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 18, 2014 11:00:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Detalle Liquidacion',Updated=TO_DATE('2014-03-18 11:00:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53584 AND AD_Language='es_VE'
;

-- Mar 18, 2014 11:00:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Detalle Liquidación',Updated=TO_DATE('2014-03-18 11:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53584 AND AD_Language='es_VE'
;

