-- Oct 1, 2014 4:10:23 PM VET
-- FTA
UPDATE AD_Column SET AD_Element_ID=55970, AD_Reference_ID=18, ColumnName='PlantingCycle_ID', Description=NULL, Help=NULL, Name='Planting Cycle',Updated=TO_TIMESTAMP('2014-10-01 16:10:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74490
;

-- Oct 1, 2014 4:10:23 PM VET
-- FTA
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=74490
;

-- Oct 1, 2014 4:10:24 PM VET
-- FTA
UPDATE AD_Field SET Name='Planting Cycle', Description=NULL, Help=NULL WHERE AD_Column_ID=74490 AND IsCentrallyMaintained='Y'
;

-- Oct 1, 2014 4:11:27 PM VET
-- FTA
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=74597
;

-- Oct 1, 2014 4:11:27 PM VET
-- FTA
DELETE FROM AD_Field WHERE AD_Field_ID=74597
;

-- Oct 1, 2014 4:11:39 PM VET
-- FTA
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74490
;

-- Oct 1, 2014 4:11:39 PM VET
-- FTA
DELETE FROM AD_Column WHERE AD_Column_ID=74490
;

-- Oct 1, 2014 4:12:03 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74497,55970,0,18,53523,53883,52186,'PlantingCycle_ID',TO_TIMESTAMP('2014-10-01 16:12:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Planting Cycle',0,TO_TIMESTAMP('2014-10-01 16:12:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 1, 2014 4:12:03 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74497 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 1, 2014 4:12:26 PM VET
-- FTA
UPDATE AD_Tab SET AD_Column_ID=74491,Updated=TO_TIMESTAMP('2014-10-01 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=54007
;

-- Oct 1, 2014 4:12:34 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74497,74604,0,54007,TO_TIMESTAMP('2014-10-01 16:12:32','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Planting Cycle',TO_TIMESTAMP('2014-10-01 16:12:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 1, 2014 4:12:34 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74604 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 1, 2014 4:13:01 PM VET
-- FTA
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-01 16:13:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74604
;

-- Oct 1, 2014 4:19:12 PM VET
-- FTA
UPDATE AD_Table_Trl SET Name='Rubro',Updated=TO_TIMESTAMP('2014-10-01 16:19:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53883 AND AD_Language='es_MX'
;

-- Oct 1, 2014 4:20:14 PM VET
-- FTA
UPDATE AD_Tab SET DisplayLogic='@CreditType@ = ''C''',Updated=TO_TIMESTAMP('2014-10-01 16:20:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53727
;

-- Oct 1, 2014 4:46:01 PM VET
-- FTA
UPDATE AD_Tab SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-10-01 16:46:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53727
;

-- Oct 1, 2014 4:46:04 PM VET
-- FTA
UPDATE AD_Tab SET DisplayLogic='@CreditType@ = ''C''',Updated=TO_TIMESTAMP('2014-10-01 16:46:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=54007
;

