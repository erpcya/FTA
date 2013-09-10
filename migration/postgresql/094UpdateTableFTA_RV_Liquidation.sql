-- Sep 10, 2013 4:34:23 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET AD_Process_ID=NULL,Updated=TO_TIMESTAMP('2013-09-10 16:34:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53733
;

-- Sep 10, 2013 4:35:02 PM VET
-- SFAndroid Contribution
UPDATE AD_Tab SET AD_Process_ID=53454,Updated=TO_TIMESTAMP('2013-09-10 16:35:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53735
;

-- Sep 10, 2013 4:38:01 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=13, IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-09-10 16:38:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67691
;

-- Sep 10, 2013 4:45:11 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,67711,2266,0,14,53583,'BPTaxID',TO_TIMESTAMP('2013-09-10 16:45:10','YYYY-MM-DD HH24:MI:SS'),100,'Tax ID of the Business Partner','ECA02',2147483647,'Y','N','N','N','N','N','N','N','N','N','Partner Tax ID',TO_TIMESTAMP('2013-09-10 16:45:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 10, 2013 4:45:12 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67711 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 10, 2013 4:45:12 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,67712,1841,0,10,53583,'DocumentType',TO_TIMESTAMP('2013-09-10 16:45:12','YYYY-MM-DD HH24:MI:SS'),100,'Document Type','ECA02',60,'Y','N','N','N','N','N','N','N','N','N','Document Type',TO_TIMESTAMP('2013-09-10 16:45:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 10, 2013 4:45:12 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67712 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 10, 2013 4:45:13 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,67713,1874,0,19,53583,'Org_Location_ID',TO_TIMESTAMP('2013-09-10 16:45:12','YYYY-MM-DD HH24:MI:SS'),100,'Organization Location/Address','ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Org Address',TO_TIMESTAMP('2013-09-10 16:45:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 10, 2013 4:45:13 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67713 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 10, 2013 4:45:13 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56333,0,'FTA_RV_Liquidation_ID',TO_TIMESTAMP('2013-09-10 16:45:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','View Liquidation','View Liquidation',TO_TIMESTAMP('2013-09-10 16:45:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 10, 2013 4:45:13 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56333 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 10, 2013 4:45:14 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,67714,56333,0,13,53583,'FTA_RV_Liquidation_ID',TO_TIMESTAMP('2013-09-10 16:45:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','Y','N','N','N','N','N','View Liquidation',TO_TIMESTAMP('2013-09-10 16:45:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 10, 2013 4:45:14 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67714 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 10, 2013 4:45:44 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=67688
;

-- Sep 10, 2013 4:45:44 PM VET
-- SFAndroid Contribution
DELETE FROM AD_Column WHERE AD_Column_ID=67688
;

-- Sep 10, 2013 4:45:50 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=19,Updated=TO_TIMESTAMP('2013-09-10 16:45:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67668
;

-- Sep 10, 2013 4:46:00 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=19, AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2013-09-10 16:46:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67669
;

-- Sep 10, 2013 4:46:07 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2013-09-10 16:46:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67668
;

-- Sep 10, 2013 4:50:30 PM VET
-- SFAndroid Contribution
UPDATE AD_Column SET AD_Reference_ID=21,Updated=TO_TIMESTAMP('2013-09-10 16:50:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67713
;

