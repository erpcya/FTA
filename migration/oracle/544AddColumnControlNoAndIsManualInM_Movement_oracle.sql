-- Jan 27, 2015 3:53:59 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75495,56068,0,10,323,'ControlNo',TO_DATE('2015-01-27 15:53:51','YYYY-MM-DD HH24:MI:SS'),100,'D',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Control No',0,TO_DATE('2015-01-27 15:53:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 27, 2015 3:53:59 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75495 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 27, 2015 3:54:25 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,75495,75343,0,259,TO_DATE('2015-01-27 15:54:23','YYYY-MM-DD HH24:MI:SS'),100,60,'D','Y','Y','Y','N','N','N','N','N','Control No',TO_DATE('2015-01-27 15:54:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 27, 2015 3:54:25 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75343 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 27, 2015 3:54:27 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,59048,75344,0,259,TO_DATE('2015-01-27 15:54:25','YYYY-MM-DD HH24:MI:SS'),100,'The date+time (expressed in decimal format) when the document has been processed',20,'D','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed On',TO_DATE('2015-01-27 15:54:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 27, 2015 3:54:27 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75344 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 27, 2015 3:54:34 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,55308,75345,0,259,TO_DATE('2015-01-27 15:54:27','YYYY-MM-DD HH24:MI:SS'),100,'ID of document reversal',22,'D','Y','Y','Y','N','N','N','N','N','Reversal ID',TO_DATE('2015-01-27 15:54:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 27, 2015 3:54:34 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75345 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 27, 2015 3:54:50 PM VET
-- FTA
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=75345
;

-- Jan 27, 2015 3:54:50 PM VET
-- FTA
DELETE FROM AD_Field WHERE AD_Field_ID=75345
;

-- Jan 27, 2015 3:54:51 PM VET
-- FTA
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=75344
;

-- Jan 27, 2015 3:54:51 PM VET
-- FTA
DELETE FROM AD_Field WHERE AD_Field_ID=75344
;

-- Jan 27, 2015 3:55:04 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2015-01-27 15:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75343
;

-- Jan 27, 2015 3:55:04 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2015-01-27 15:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54046
;

-- Jan 27, 2015 3:55:04 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2015-01-27 15:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2722
;

-- Jan 27, 2015 3:55:04 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2015-01-27 15:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2725
;

-- Jan 27, 2015 3:55:04 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2015-01-27 15:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10418
;

-- Jan 27, 2015 3:55:04 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2015-01-27 15:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54047
;

-- Jan 27, 2015 3:55:04 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2015-01-27 15:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54048
;

-- Jan 27, 2015 3:55:04 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2015-01-27 15:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54049
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54050
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70079
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70080
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54051
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54052
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54053
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54054
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7791
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7788
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7792
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7793
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7790
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7789
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74868
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10530
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10529
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9223
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9222
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9224
;

-- Jan 27, 2015 3:55:05 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2015-01-27 15:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9221
;

-- Jan 27, 2015 3:55:06 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2015-01-27 15:55:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2727
;

-- Jan 27, 2015 3:55:06 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2015-01-27 15:55:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5144
;

-- Jan 27, 2015 3:58:38 PM VET
-- FTA
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-01-27 15:58:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75343
;

-- Jan 27, 2015 3:58:42 PM VET
-- FTA
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2015-01-27 15:58:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54046
;

-- Jan 27, 2015 3:59:02 PM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75496,1474,0,20,323,'IsManual',TO_DATE('2015-01-27 15:59:00','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process','D',1,'The Manual check box indicates if the process will done manually.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Manual',0,TO_DATE('2015-01-27 15:59:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 27, 2015 3:59:02 PM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75496 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 27, 2015 3:59:53 PM VET
-- FTA
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75496,75346,0,259,TO_DATE('2015-01-27 15:59:47','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process',0,'D','The Manual check box indicates if the process will done manually.','N','Y','Y','Y','N','N','N','N','Y','Manual',0,360,0,TO_DATE('2015-01-27 15:59:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 27, 2015 3:59:53 PM VET
-- FTA
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75346 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 27, 2015 4:00:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2015-01-27 16:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75346
;

-- Jan 27, 2015 4:00:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2015-01-27 16:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54047
;

-- Jan 27, 2015 4:00:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2015-01-27 16:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54048
;

-- Jan 27, 2015 4:00:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2015-01-27 16:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54049
;

-- Jan 27, 2015 4:00:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2015-01-27 16:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54050
;

-- Jan 27, 2015 4:00:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2015-01-27 16:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70079
;

-- Jan 27, 2015 4:00:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2015-01-27 16:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70080
;

-- Jan 27, 2015 4:00:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2015-01-27 16:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54051
;

-- Jan 27, 2015 4:00:22 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2015-01-27 16:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54052
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54053
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54054
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7791
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7788
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7792
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7793
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7790
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7789
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74868
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10530
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10529
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9223
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9222
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9224
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9221
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2727
;

-- Jan 27, 2015 4:00:23 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2015-01-27 16:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5144
;

-- Jan 27, 2015 4:01:31 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2015-01-27 16:01:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54046
;

-- Jan 27, 2015 4:01:31 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2015-01-27 16:01:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75343
;

-- Jan 27, 2015 4:01:31 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2015-01-27 16:01:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75346
;

-- Jan 27, 2015 4:01:31 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2015-01-27 16:01:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2722
;

-- Jan 27, 2015 4:01:31 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2015-01-27 16:01:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2725
;

-- Jan 27, 2015 4:01:31 PM VET
-- FTA
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2015-01-27 16:01:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10418
;

-- Jan 27, 2015 4:01:38 PM VET
-- FTA
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-01-27 16:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54046
;

-- Jan 27, 2015 4:01:59 PM VET
-- FTA
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2015-01-27 16:01:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75343
;

-- Jan 27, 2015 4:02:06 PM VET
-- FTA
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2015-01-27 16:02:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75346
;

-- Jan 27, 2015 4:04:26 PM VET
-- FTA
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@ = ''N''',Updated=TO_DATE('2015-01-27 16:04:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75495
;

-- Jan 27, 2015 4:31:10 PM VET
-- FTA
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2015-01-27 16:31:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75343
;

