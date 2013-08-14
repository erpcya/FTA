-- 7/08/2013 10:31:11 AM VET
-- SFAndroid Contribution
UPDATE AD_Window_Trl SET Description='Rubro o Tipo de Producto',Updated=TO_TIMESTAMP('2013-08-07 10:31:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53249 AND AD_Language='es_MX'
;

-- 7/08/2013 10:32:41 AM VET
-- SFAndroid Contribution
UPDATE AD_Tab_Trl SET Description='Cultivo o Siembra',Updated=TO_TIMESTAMP('2013-08-07 10:32:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53668 AND AD_Language='es_MX'
;

-- 7/08/2013 10:33:32 AM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Rubro',PrintName='Rubro o Tipo',Updated=TO_TIMESTAMP('2013-08-07 10:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=52017 AND AD_Language='es_MX'
;

-- 7/08/2013 10:37:45 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-07 10:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65819
;

-- 7/08/2013 10:37:54 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2013-08-07 10:37:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66542
;

-- 7/08/2013 10:38:11 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsAlwaysUpdateable='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-07 10:38:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66542
;

-- 7/08/2013 10:43:39 AM VET
-- SFAndroid Contribution
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=67288
;

-- 7/08/2013 10:43:39 AM VET
-- SFAndroid Contribution
DELETE FROM AD_Field WHERE AD_Field_ID=67288
;

-- 7/08/2013 10:43:58 AM VET
-- SFAndroid Contribution
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=65873
;

-- 7/08/2013 10:43:58 AM VET
-- SFAndroid Contribution
DELETE FROM AD_Column WHERE AD_Column_ID=65873
;

-- 7/08/2013 10:52:54 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-07 10:52:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65865
;

-- 7/08/2013 10:53:02 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-07 10:53:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65863
;

-- 7/08/2013 10:53:10 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-07 10:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65864
;

-- 7/08/2013 10:53:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-07 10:53:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65872
;

-- 7/08/2013 10:55:07 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66609,526,0,29,53509,'Qty',TO_TIMESTAMP('2013-08-07 10:54:59','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02',10,'The Quantity indicates the number of a specific product or item for this document.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Quantity',0,TO_TIMESTAMP('2013-08-07 10:54:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 7/08/2013 10:55:07 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66609 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 7/08/2013 10:55:51 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66609,68061,0,53668,TO_TIMESTAMP('2013-08-07 10:55:49','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',0,'ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','Y','Y','N','N','N','N','Y','Quantity',230,0,TO_TIMESTAMP('2013-08-07 10:55:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/08/2013 10:55:51 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68061 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67289
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67285
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67273
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67803
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=67287
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=67286
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=67281
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=67280
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=67276
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68022
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=67277
;

-- 7/08/2013 10:56:00 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=68061
;

-- 7/08/2013 10:57:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=67752
;

-- 7/08/2013 10:57:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=67283
;

-- 7/08/2013 10:57:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=67986
;

-- 7/08/2013 10:57:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=67276
;

-- 7/08/2013 10:57:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68022
;

-- 7/08/2013 10:57:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=67277
;

-- 7/08/2013 10:57:36 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68061
;

-- 7/08/2013 10:57:59 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=22,Updated=TO_TIMESTAMP('2013-08-07 10:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66609
;

