-- May 5, 2014 10:57:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=148,Updated=TO_DATE('2014-05-05 22:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66668
;

-- May 5, 2014 10:57:16 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=148,Updated=TO_DATE('2014-05-05 22:57:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66680
;

-- May 6, 2014 1:41:21 AM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=73389
;

-- May 6, 2014 1:41:22 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=73389
;

-- May 6, 2014 1:41:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2014-05-06 01:41:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73388
;

-- May 6, 2014 1:41:49 AM VET
-- Farming Technical Assistance
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=72812
;

-- May 6, 2014 1:41:50 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=72812
;

-- May 6, 2014 1:45:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72851,56147,0,19,53801,'FTA_CategoryCalc_ID',TO_DATE('2014-05-06 01:45:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Category Calc',0,TO_DATE('2014-05-06 01:45:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- May 6, 2014 1:45:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72851 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- May 6, 2014 1:46:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72852,2017,0,19,53801,'M_AttributeSet_ID',TO_DATE('2014-05-06 01:46:24','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set','ECA02',22,'Define Product Attribute Sets to add additional attributes and values to the product. You need to define a Attribute Set if you want to enable Serial and Lot Number tracking.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Attribute Set',0,TO_DATE('2014-05-06 01:46:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- May 6, 2014 1:46:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72852 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- May 6, 2014 1:46:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72853,56986,0,19,53801,'FTA_CategoryCalcGroup_ID',TO_DATE('2014-05-06 01:46:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Category Calc Group',0,TO_DATE('2014-05-06 01:46:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- May 6, 2014 1:46:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72853 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- May 6, 2014 1:48:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72852,73420,0,53954,TO_DATE('2014-05-06 01:48:46','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set',22,'ECA02','Define Product Attribute Sets to add additional attributes and values to the product. You need to define a Attribute Set if you want to enable Serial and Lot Number tracking.','Y','Y','Y','N','N','N','N','N','Attribute Set',TO_DATE('2014-05-06 01:48:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 6, 2014 1:48:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73420 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- May 6, 2014 1:48:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72851,73421,0,53954,TO_DATE('2014-05-06 01:48:51','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Category Calc',TO_DATE('2014-05-06 01:48:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 6, 2014 1:48:56 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73421 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- May 6, 2014 1:49:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72853,73422,0,53954,TO_DATE('2014-05-06 01:48:56','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Category Calc Group',TO_DATE('2014-05-06 01:48:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 6, 2014 1:49:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73422 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- May 6, 2014 1:49:22 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-05-06 01:49:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73420
;

-- May 6, 2014 1:49:22 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-05-06 01:49:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 6, 2014 1:49:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-05-06 01:49:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 6, 2014 1:49:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-05-06 01:49:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 6, 2014 1:49:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-05-06 01:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73401
;

-- May 6, 2014 1:49:43 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-05-06 01:49:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73402
;

-- May 6, 2014 1:49:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-05-06 01:49:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73395
;

-- May 6, 2014 1:51:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@!0',Updated=TO_DATE('2014-05-06 01:51:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73396
;

-- May 6, 2014 1:51:36 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@!0',Updated=TO_DATE('2014-05-06 01:51:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 6, 2014 1:52:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@!0',Updated=TO_DATE('2014-05-06 01:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 6, 2014 1:52:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@FTA_CategoryCalcGroup_ID@=0',Updated=TO_DATE('2014-05-06 01:52:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73420
;

-- May 6, 2014 1:52:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@M_AttributeSet_ID@=0',Updated=TO_DATE('2014-05-06 01:52:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73422
;

-- May 6, 2014 1:52:51 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-05-06 01:52:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73421
;

-- May 6, 2014 1:53:28 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_DATE('2014-05-06 01:53:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72822
;

-- May 6, 2014 1:53:41 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Val_Rule WHERE AD_Val_Rule_ID=52352
;

-- May 6, 2014 1:59:18 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52353,'EXISTS( 
SELECT au.M_Attribute_ID
FROM M_AttributeSet ats
INNER JOIN M_AttributeUse  au ON(au.M_AttributeSet_ID = ats.M_AttributeSet_ID) 
WHERE CASE WHEN @M_AttributeSet_ID@ = 0 THEN ats.M_AttributeSet_ID IS NOT NULL ELSE ats.M_AttributeSet_ID=@M_AttributeSet_ID@ END
AND M_Attribute.M_Attribute_ID = au.M_Attribute_ID)',TO_DATE('2014-05-06 01:59:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Attribute in M_AttributeSet','S',TO_DATE('2014-05-06 01:59:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 6, 2014 2:00:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52353,Updated=TO_DATE('2014-05-06 02:00:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72822
;

-- May 6, 2014 4:28:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2014-05-06 04:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72822
;

-- May 6, 2014 4:28:57 AM VET
-- Farming Technical Assistance
CREATE TABLE FTA_AttributesReportLine (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, FTA_AttributesReport_ID NUMBER(10) NOT NULL, FTA_AttributesReportLine_ID NUMBER(10) NOT NULL, FTA_CategoryCalcGroup_ID NUMBER(10) DEFAULT NULL , FTA_CategoryCalc_ID NUMBER(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, M_Attribute_ID NUMBER(10) DEFAULT NULL , M_AttributeSet_ID NUMBER(10) DEFAULT NULL , PrintName NVARCHAR2(60) DEFAULT NULL , SeqNo NUMBER(10) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT FTA_AttributesReportLine_Key PRIMARY KEY (FTA_AttributesReportLine_ID))
;

-- May 6, 2014 4:36:23 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52354,'FTA_CategoryCalc.FTA_CategoryCalcGroup_ID=@FTA_CategoryCalcGroup_ID@',TO_DATE('2014-05-06 04:36:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_CategoryCalc of FTA_CategoryCalcGroup','S',TO_DATE('2014-05-06 04:36:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 6, 2014 4:36:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=52354,Updated=TO_DATE('2014-05-06 04:36:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72851
;

-- May 6, 2014 5:15:15 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFTAAttributesReport.attributeSet',Updated=TO_DATE('2014-05-06 05:15:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72852
;

-- May 6, 2014 5:15:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutFTAAttributesReport.attribute',Updated=TO_DATE('2014-05-06 05:15:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72822
;

-- May 6, 2014 5:20:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout=NULL,Updated=TO_DATE('2014-05-06 05:20:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72822
;

-- May 6, 2014 5:20:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout=NULL,Updated=TO_DATE('2014-05-06 05:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72852
;

