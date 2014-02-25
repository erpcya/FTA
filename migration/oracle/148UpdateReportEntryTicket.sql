-- Oct 14, 2013 5:43:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68778,56441,0,19,53585,'FTA_Driver_ID',TO_DATE('2013-10-14 17:43:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Driver',TO_DATE('2013-10-14 17:43:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 5:43:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68778 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 5:43:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68779,56440,0,19,53585,'FTA_Vehicle_ID',TO_DATE('2013-10-14 17:43:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Vehicle',TO_DATE('2013-10-14 17:43:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 5:43:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68779 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 5:43:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68780,455,0,19,53585,'M_Shipper_ID',TO_DATE('2013-10-14 17:43:57','YYYY-MM-DD HH24:MI:SS'),100,'Method or manner of product delivery','ECA02',10,'The Shipper indicates the method of delivering product','Y','N','N','N','N','N','N','N','N','N','Shipper',TO_DATE('2013-10-14 17:43:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 5:43:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68780 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 5:44:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68781,540,0,10,53585,'ReferenceNo',TO_DATE('2013-10-14 17:43:59','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site','ECA02',60,'The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','N','N','N','N','N','N','N','N','N','Reference No',TO_DATE('2013-10-14 17:43:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2013 5:44:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68781 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2013 5:45:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET AD_Column_ID=68780, IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-14 17:45:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54320
;

-- Oct 14, 2013 5:46:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET AD_Column_ID=68779, IsGroupBy='N', IsPageBreak='N', PrintFormatType='F', PrintName='Vehiculo: ', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-14 17:46:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54342
;

-- Oct 14, 2013 5:46:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Vehiculo: ',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54342
;

-- Oct 14, 2013 5:46:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET AD_Column_ID=68778, IsGroupBy='N', IsPageBreak='N', PrintFormatType='F', PrintName='Conductor: ', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-14 17:46:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54344
;

-- Oct 14, 2013 5:46:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Conductor: ',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54344
;

-- Oct 14, 2013 5:47:21 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintName='No.:', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-14 17:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54331
;

-- Oct 14, 2013 5:47:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='No.:',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54331
;

-- Oct 14, 2013 5:48:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET AD_PrintFont_ID=160, IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-14 17:48:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54333
;

-- Oct 14, 2013 5:48:58 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET AD_PrintFont_ID=160, IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-14 17:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54332
;

-- Oct 14, 2013 5:49:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='R.I.F. :',Updated=TO_DATE('2013-10-14 17:49:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54336 AND AD_Language='es_MX'
;

-- Oct 14, 2013 5:49:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='R.I.F.:',Updated=TO_DATE('2013-10-14 17:49:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54336 AND AD_Language='es_MX'
;

-- Oct 14, 2013 5:50:24 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='Y', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-14 17:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54320
;

-- Oct 14, 2013 5:50:28 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='Y', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-14 17:50:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54342
;

-- Oct 14, 2013 5:50:33 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='Y', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-14 17:50:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54344
;

