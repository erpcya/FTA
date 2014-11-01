-- Oct 18, 2013 3:45:09 PM VET
-- LVE-Import
UPDATE AD_Process_Para SET AD_Element_ID=1922, ColumnName='DeleteOldImported', Description='Before processing delete old imported records in the import table', Name='Delete old imported records',Updated=TO_DATE('2013-10-18 15:45:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54157
;

-- Oct 18, 2013 3:45:09 PM VET
-- LVE-Import
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=54157
;

-- Oct 18, 2013 4:30:04 PM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69030,56075,0,22,53627,'LoadCapacity',TO_DATE('2013-10-18 16:30:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Load Capacity',0,TO_DATE('2013-10-18 16:30:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 18, 2013 4:30:04 PM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69030 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 18, 2013 4:30:37 PM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69031,56440,0,19,53627,'FTA_Vehicle_ID',TO_DATE('2013-10-18 16:30:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Vehicle',0,TO_DATE('2013-10-18 16:30:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 18, 2013 4:30:37 PM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69031 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 18, 2013 4:30:41 PM VET
-- LVE-Import
ALTER TABLE I_RecordWeight ADD LoadCapacity NUMBER DEFAULT NULL 
;

-- Oct 18, 2013 4:30:51 PM VET
-- LVE-Import
ALTER TABLE I_RecordWeight ADD FTA_Vehicle_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 18, 2013 4:31:09 PM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69030,69992,0,53782,TO_DATE('2013-10-18 16:31:07','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Load Capacity',TO_DATE('2013-10-18 16:31:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 18, 2013 4:31:09 PM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69992 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 18, 2013 4:31:09 PM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69031,69993,0,53782,TO_DATE('2013-10-18 16:31:09','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Vehicle',TO_DATE('2013-10-18 16:31:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 18, 2013 4:31:09 PM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69993 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69992
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69993
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69986
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69985
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69938
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69962
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69961
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69960
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69924
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69988
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69987
;

-- Oct 18, 2013 5:00:42 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2013-10-18 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69959
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69928
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69972
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69929
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69973
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69930
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69974
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69931
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69975
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69932
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69976
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=460,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69933
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=470,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69977
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=480,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69934
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=490,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69978
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=500,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69935
;

-- Oct 18, 2013 5:00:43 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=510,Updated=TO_DATE('2013-10-18 17:00:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69979
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=520,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69936
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=530,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69980
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=540,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69937
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=550,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69981
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=560,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69964
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=570,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69965
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=580,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69971
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=590,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69967
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=600,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69947
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=610,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69984
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=620,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69970
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=630,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69953
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=640,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69989
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=650,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69956
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=660,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69958
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=670,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69957
;

-- Oct 18, 2013 5:00:44 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=680,Updated=TO_DATE('2013-10-18 17:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69923
;

-- Oct 18, 2013 5:44:43 PM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69032,2019,0,35,53627,'M_AttributeSetInstance_ID',TO_DATE('2013-10-18 17:44:42','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance','ECA02',22,'The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Attribute Set Instance',0,TO_DATE('2013-10-18 17:44:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 18, 2013 5:44:43 PM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69032 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 18, 2013 5:44:56 PM VET
-- LVE-Import
ALTER TABLE I_RecordWeight ADD M_AttributeSetInstance_ID NUMBER(10) DEFAULT NULL 
;

-- Oct 18, 2013 5:45:06 PM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69032,69994,0,53782,TO_DATE('2013-10-18 17:45:05','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance',22,'ECA02','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Y','Y','Y','N','N','N','N','N','Attribute Set Instance',TO_DATE('2013-10-18 17:45:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 18, 2013 5:45:06 PM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69994 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 18, 2013 5:45:22 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2013-10-18 17:45:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69994
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69928
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69972
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69929
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69973
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69930
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69974
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69931
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69975
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69932
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=460,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69976
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=470,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69933
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=480,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69977
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=490,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69934
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=500,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69978
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=510,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69935
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=520,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69979
;

-- Oct 18, 2013 5:45:23 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=530,Updated=TO_DATE('2013-10-18 17:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69936
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=540,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69980
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=550,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69937
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=560,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69981
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=570,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69964
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=580,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69965
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=590,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69971
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=600,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69967
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=610,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69947
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=620,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69984
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=630,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69970
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=640,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69953
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=650,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69989
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=660,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69956
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=670,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69958
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=680,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69957
;

-- Oct 18, 2013 5:45:24 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=690,Updated=TO_DATE('2013-10-18 17:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69923
;

-- Oct 18, 2013 5:45:39 PM VET
-- LVE-Import
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-18 17:45:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69994
;

-- Oct 18, 2013 6:18:03 PM VET
-- LVE-Import
UPDATE AD_Element SET Description='Quality Analysis Document Type', Name='Quality Analysis Document Type', PrintName='Quality Analysis Document Type',Updated=TO_DATE('2013-10-18 18:18:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56501
;

-- Oct 18, 2013 6:18:03 PM VET
-- LVE-Import
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56501
;

-- Oct 18, 2013 6:18:03 PM VET
-- LVE-Import
UPDATE AD_Column SET ColumnName='QA_Doc_Type_ID', Name='Quality Analysis Document Type', Description='Quality Analysis Document Type', Help=NULL WHERE AD_Element_ID=56501
;

-- Oct 18, 2013 6:18:03 PM VET
-- LVE-Import
UPDATE AD_Process_Para SET ColumnName='QA_Doc_Type_ID', Name='Quality Analysis Document Type', Description='Quality Analysis Document Type', Help=NULL, AD_Element_ID=56501 WHERE UPPER(ColumnName)='QA_DOC_TYPE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 18, 2013 6:18:03 PM VET
-- LVE-Import
UPDATE AD_Process_Para SET ColumnName='QA_Doc_Type_ID', Name='Quality Analysis Document Type', Description='Quality Analysis Document Type', Help=NULL WHERE AD_Element_ID=56501 AND IsCentrallyMaintained='Y'
;

-- Oct 18, 2013 6:18:03 PM VET
-- LVE-Import
UPDATE AD_Field SET Name='Quality Analysis Document Type', Description='Quality Analysis Document Type', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56501) AND IsCentrallyMaintained='Y'
;

-- Oct 18, 2013 6:18:03 PM VET
-- LVE-Import
UPDATE AD_PrintFormatItem pi SET PrintName='Quality Analysis Document Type', Name='Quality Analysis Document Type' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56501)
;

-- Oct 18, 2013 6:19:57 PM VET
-- LVE-Import
UPDATE AD_Element SET Description='Quality Analysis Document Type Name', Name='Quality Analysis Document Type Name', PrintName='Quality Analysis Document Type Name',Updated=TO_DATE('2013-10-18 18:19:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56502
;

-- Oct 18, 2013 6:19:57 PM VET
-- LVE-Import
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56502
;

-- Oct 18, 2013 6:19:57 PM VET
-- LVE-Import
UPDATE AD_Column SET ColumnName='QA_Doc_Type_Name', Name='Quality Analysis Document Type Name', Description='Quality Analysis Document Type Name', Help=NULL WHERE AD_Element_ID=56502
;

-- Oct 18, 2013 6:19:57 PM VET
-- LVE-Import
UPDATE AD_Process_Para SET ColumnName='QA_Doc_Type_Name', Name='Quality Analysis Document Type Name', Description='Quality Analysis Document Type Name', Help=NULL, AD_Element_ID=56502 WHERE UPPER(ColumnName)='QA_DOC_TYPE_NAME' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 18, 2013 6:19:57 PM VET
-- LVE-Import
UPDATE AD_Process_Para SET ColumnName='QA_Doc_Type_Name', Name='Quality Analysis Document Type Name', Description='Quality Analysis Document Type Name', Help=NULL WHERE AD_Element_ID=56502 AND IsCentrallyMaintained='Y'
;

-- Oct 18, 2013 6:19:57 PM VET
-- LVE-Import
UPDATE AD_Field SET Name='Quality Analysis Document Type Name', Description='Quality Analysis Document Type Name', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56502) AND IsCentrallyMaintained='Y'
;

-- Oct 18, 2013 6:19:57 PM VET
-- LVE-Import
UPDATE AD_PrintFormatItem pi SET PrintName='Quality Analysis Document Type Name', Name='Quality Analysis Document Type Name' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56502)
;

-- Oct 18, 2013 6:24:39 PM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69033,634,0,10,53627,'X12DE355',TO_DATE('2013-10-18 18:24:38','YYYY-MM-DD HH24:MI:SS'),100,'UOM EDI X12 Code','ECA02',4,'The Unit of Measure Code indicates the EDI X12 Code Data Element 355 (Unit or Basis for Measurement)','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','UOM Code',0,TO_DATE('2013-10-18 18:24:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 18, 2013 6:24:39 PM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69033 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 18, 2013 6:24:44 PM VET
-- LVE-Import
ALTER TABLE I_RecordWeight ADD X12DE355 NVARCHAR2(4) DEFAULT NULL 
;

-- Oct 18, 2013 6:25:19 PM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69033,69995,0,53782,TO_DATE('2013-10-18 18:25:18','YYYY-MM-DD HH24:MI:SS'),100,'UOM EDI X12 Code',4,'ECA02','The Unit of Measure Code indicates the EDI X12 Code Data Element 355 (Unit or Basis for Measurement)','Y','Y','Y','N','N','N','N','N','UOM Code',TO_DATE('2013-10-18 18:25:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 18, 2013 6:25:19 PM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69995 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=590,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69995
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=600,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69971
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=610,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69967
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=620,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69947
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=630,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69984
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=640,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69970
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=650,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69953
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=660,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69989
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=670,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69956
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=680,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69958
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=690,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69957
;

-- Oct 18, 2013 6:25:32 PM VET
-- LVE-Import
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=700,Updated=TO_DATE('2013-10-18 18:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69923
;

-- Oct 18, 2013 6:25:41 PM VET
-- LVE-Import
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-18 18:25:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69971
;

