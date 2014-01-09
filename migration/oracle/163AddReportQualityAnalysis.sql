-- 16/10/2013 09:35:48 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68921,56441,0,19,53623,'FTA_Driver_ID',TO_DATE('2013-10-16 09:35:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Driver',TO_DATE('2013-10-16 09:35:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/10/2013 09:35:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68921 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/10/2013 09:35:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68922,56440,0,19,53623,'FTA_Vehicle_ID',TO_DATE('2013-10-16 09:35:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Vehicle',TO_DATE('2013-10-16 09:35:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/10/2013 09:35:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68922 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/10/2013 09:36:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53568,Updated=TO_DATE('2013-10-16 09:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68922
;

-- 16/10/2013 09:38:17 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53567,Updated=TO_DATE('2013-10-16 09:38:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68921
;

-- 16/10/2013 09:39:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,Name,Updated,UpdatedBy) VALUES (1000000,1000000,100,130,50161,100,53076,53623,TO_DATE('2013-10-16 09:39:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y','Quality Analysis',TO_DATE('2013-10-16 09:39:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 09:39:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68839,1000000,50161,55579,0,TO_DATE('2013-10-16 09:39:02','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Active','C','F','Active',0,'N',0,TO_DATE('2013-10-16 09:39:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55579 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68839) WHERE AD_PrintFormatItem_ID = 55579 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68839 AND trl.AD_PrintFormatItem_ID = 55579) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68842,1000000,50161,55580,0,TO_DATE('2013-10-16 09:39:04','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Analysis Type','C','F','Analysis Type',2,'N',0,TO_DATE('2013-10-16 09:39:04','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55580 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:06 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68842) WHERE AD_PrintFormatItem_ID = 55580 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68842 AND trl.AD_PrintFormatItem_ID = 55580) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68850,1000000,50161,55581,0,TO_DATE('2013-10-16 09:39:06','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Approved','C','F','Approved',3,'N',0,TO_DATE('2013-10-16 09:39:06','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55581 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:08 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68850) WHERE AD_PrintFormatItem_ID = 55581 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68850 AND trl.AD_PrintFormatItem_ID = 55581) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68835,1000000,50161,55582,0,TO_DATE('2013-10-16 09:39:08','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Client','C','F','Client',0,'N',0,TO_DATE('2013-10-16 09:39:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55582 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:10 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68835) WHERE AD_PrintFormatItem_ID = 55582 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68835 AND trl.AD_PrintFormatItem_ID = 55582) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68837,1000000,50161,55583,0,TO_DATE('2013-10-16 09:39:10','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created','C','F','Created',0,'N',0,TO_DATE('2013-10-16 09:39:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55583 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:12 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68837) WHERE AD_PrintFormatItem_ID = 55583 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68837 AND trl.AD_PrintFormatItem_ID = 55583) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68838,1000000,50161,55584,0,TO_DATE('2013-10-16 09:39:12','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created By','C','F','Created By',0,'N',0,TO_DATE('2013-10-16 09:39:12','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55584 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:14 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68838) WHERE AD_PrintFormatItem_ID = 55584 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68838 AND trl.AD_PrintFormatItem_ID = 55584) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68845,1000000,50161,55585,0,TO_DATE('2013-10-16 09:39:14','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Description','C','F','Description',7,'N',0,TO_DATE('2013-10-16 09:39:14','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55585 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:16 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68845) WHERE AD_PrintFormatItem_ID = 55585 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68845 AND trl.AD_PrintFormatItem_ID = 55585) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:18 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68844,1000000,50161,55586,0,TO_DATE('2013-10-16 09:39:16','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Date','C','F','Doc date',8,'N',0,TO_DATE('2013-10-16 09:39:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:18 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55586 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:18 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68844) WHERE AD_PrintFormatItem_ID = 55586 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68844 AND trl.AD_PrintFormatItem_ID = 55586) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68847,1000000,50161,55587,0,TO_DATE('2013-10-16 09:39:18','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document No','C','F','Document No',9,'N',0,TO_DATE('2013-10-16 09:39:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55587 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:19 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68847) WHERE AD_PrintFormatItem_ID = 55587 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68847 AND trl.AD_PrintFormatItem_ID = 55587) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68846,1000000,50161,55588,0,TO_DATE('2013-10-16 09:39:19','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Status','C','F','Doc Status',10,'N',0,TO_DATE('2013-10-16 09:39:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:21 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55588 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:21 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68846) WHERE AD_PrintFormatItem_ID = 55588 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68846 AND trl.AD_PrintFormatItem_ID = 55588) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68843,1000000,50161,55589,0,TO_DATE('2013-10-16 09:39:21','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Type','C','F','Doc Type',11,'N',0,TO_DATE('2013-10-16 09:39:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55589 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68843) WHERE AD_PrintFormatItem_ID = 55589 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68843 AND trl.AD_PrintFormatItem_ID = 55589) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68921,1000000,50161,55590,0,TO_DATE('2013-10-16 09:39:24','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Driver','C','F','Driver',12,'N',0,TO_DATE('2013-10-16 09:39:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55590 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:26 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68921) WHERE AD_PrintFormatItem_ID = 55590 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68921 AND trl.AD_PrintFormatItem_ID = 55590) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68848,1000000,50161,55591,0,TO_DATE('2013-10-16 09:39:26','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Entry Ticket','C','F','Entry Ticket',13,'N',0,TO_DATE('2013-10-16 09:39:26','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55591 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:28 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68848) WHERE AD_PrintFormatItem_ID = 55591 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68848 AND trl.AD_PrintFormatItem_ID = 55591) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68910,1000000,50161,55592,0,TO_DATE('2013-10-16 09:39:28','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Org Address','C','F','Org Address',14,'N',0,TO_DATE('2013-10-16 09:39:28','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55592 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:30 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68910) WHERE AD_PrintFormatItem_ID = 55592 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68910 AND trl.AD_PrintFormatItem_ID = 55592) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68836,1000000,50161,55593,0,TO_DATE('2013-10-16 09:39:30','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Organization','C','F','Organization',0,'N',0,TO_DATE('2013-10-16 09:39:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:32 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55593 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:32 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68836) WHERE AD_PrintFormatItem_ID = 55593 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68836 AND trl.AD_PrintFormatItem_ID = 55593) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68852,1000000,50161,55594,0,TO_DATE('2013-10-16 09:39:32','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Original Quality Analysis','C','F','Original Quality Analysis',16,'N',0,TO_DATE('2013-10-16 09:39:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:34 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55594 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68852) WHERE AD_PrintFormatItem_ID = 55594 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68852 AND trl.AD_PrintFormatItem_ID = 55594) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68851,1000000,50161,55595,0,TO_DATE('2013-10-16 09:39:34','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Product','C','F','Product',17,'N',0,TO_DATE('2013-10-16 09:39:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55595 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:36 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68851) WHERE AD_PrintFormatItem_ID = 55595 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68851 AND trl.AD_PrintFormatItem_ID = 55595) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68853,1000000,50161,55596,0,TO_DATE('2013-10-16 09:39:36','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Product Status','C','F','Product Status',18,'N',0,TO_DATE('2013-10-16 09:39:36','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55596 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:38 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68853) WHERE AD_PrintFormatItem_ID = 55596 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68853 AND trl.AD_PrintFormatItem_ID = 55596) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:40 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68849,1000000,50161,55597,0,TO_DATE('2013-10-16 09:39:38','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Quality Analysis','C','F','Quality Analysis',19,'N',0,TO_DATE('2013-10-16 09:39:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:40 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55597 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:40 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68849) WHERE AD_PrintFormatItem_ID = 55597 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68849 AND trl.AD_PrintFormatItem_ID = 55597) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68854,1000000,50161,55598,0,TO_DATE('2013-10-16 09:39:40','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Quality Analysis','C','F','Quality Analysis',20,'N',0,TO_DATE('2013-10-16 09:39:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55598 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68854) WHERE AD_PrintFormatItem_ID = 55598 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68854 AND trl.AD_PrintFormatItem_ID = 55598) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68911,1000000,50161,55599,0,TO_DATE('2013-10-16 09:39:42','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Tax ID','C','F','Tax ID',21,'N',0,TO_DATE('2013-10-16 09:39:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:44 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55599 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:44 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68911) WHERE AD_PrintFormatItem_ID = 55599 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68911 AND trl.AD_PrintFormatItem_ID = 55599) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68840,1000000,50161,55600,0,TO_DATE('2013-10-16 09:39:44','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated','C','F','Updated',0,'N',0,TO_DATE('2013-10-16 09:39:44','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:46 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55600 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:46 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68840) WHERE AD_PrintFormatItem_ID = 55600 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68840 AND trl.AD_PrintFormatItem_ID = 55600) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68841,1000000,50161,55601,0,TO_DATE('2013-10-16 09:39:46','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated By','C','F','Updated By',0,'N',0,TO_DATE('2013-10-16 09:39:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:49 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55601 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:49 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68841) WHERE AD_PrintFormatItem_ID = 55601 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68841 AND trl.AD_PrintFormatItem_ID = 55601) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:39:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68922,1000000,50161,55602,0,TO_DATE('2013-10-16 09:39:49','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Vehicle','C','F','Vehicle',24,'N',0,TO_DATE('2013-10-16 09:39:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 09:39:52 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55602 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 09:39:52 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68922) WHERE AD_PrintFormatItem_ID = 55602 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68922 AND trl.AD_PrintFormatItem_ID = 55602) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 09:46:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=19, AD_Reference_Value_ID=NULL,Updated=TO_DATE('2013-10-16 09:46:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68921
;

-- 16/10/2013 09:46:10 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=19, AD_Reference_Value_ID=NULL,Updated=TO_DATE('2013-10-16 09:46:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68922
;

-- 16/10/2013 09:47:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=10, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55580
;

-- 16/10/2013 09:47:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55581
;

-- 16/10/2013 09:47:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55585
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55586
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55587
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55588
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55589
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55590
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55591
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55592
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55594
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55595
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55596
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55597
;

-- 16/10/2013 09:47:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55598
;

-- 16/10/2013 09:47:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=160, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55599
;

-- 16/10/2013 09:47:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=170, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55602
;

-- 16/10/2013 09:47:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=180, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55579
;

-- 16/10/2013 09:47:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=190, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55582
;

-- 16/10/2013 09:47:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=200, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55583
;

-- 16/10/2013 09:47:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=210, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55584
;

-- 16/10/2013 09:47:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=220, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55593
;

-- 16/10/2013 09:47:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=230, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55600
;

-- 16/10/2013 09:47:26 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=240, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 09:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55601
;

-- 16/10/2013 10:09:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55579
;

-- 16/10/2013 10:09:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55580
;

-- 16/10/2013 10:09:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55581
;

-- 16/10/2013 10:09:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55583
;

-- 16/10/2013 10:09:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55584
;

-- 16/10/2013 10:09:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55585
;

-- 16/10/2013 10:09:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55586
;

-- 16/10/2013 10:09:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55587
;

-- 16/10/2013 10:09:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55588
;

-- 16/10/2013 10:09:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55589
;

-- 16/10/2013 10:09:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55590
;

-- 16/10/2013 10:09:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55591
;

-- 16/10/2013 10:09:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55594
;

-- 16/10/2013 10:09:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55595
;

-- 16/10/2013 10:09:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55596
;

-- 16/10/2013 10:09:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55598
;

-- 16/10/2013 10:09:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55597
;

-- 16/10/2013 10:09:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55600
;

-- 16/10/2013 10:09:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55601
;

-- 16/10/2013 10:09:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55602
;

-- 16/10/2013 10:09:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=10, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55582
;

-- 16/10/2013 10:09:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55593
;

-- 16/10/2013 10:09:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55599
;

-- 16/10/2013 10:09:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:09:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55592
;

-- 16/10/2013 10:10:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=116, FooterMargin=40, HeaderMargin=380, IsForm='Y', IsStandardHeaderFooter='N',Updated=TO_DATE('2013-10-16 10:10:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50161
;

-- 16/10/2013 10:11:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50161,55605,0,0,TO_DATE('2013-10-16 10:11:00','YYYY-MM-DD HH24:MI:SS'),100,'D','Y','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','N','N','N','N','N','N','N','X',1,0,45,'Logo','H','I',20,50,'N',0,TO_DATE('2013-10-16 10:11:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 10:11:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55605 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 10:19:22 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-16 10:19:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55606
;

-- 16/10/2013 10:19:22 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:19:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55582
;

-- 16/10/2013 10:19:22 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:19:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55593
;

-- 16/10/2013 10:19:22 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:19:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55599
;

-- 16/10/2013 10:19:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:19:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55592
;

-- 16/10/2013 10:20:00 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', PrintAreaType='H', PrintName=NULL, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:20:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55582
;

-- 16/10/2013 10:20:00 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55582
;

-- 16/10/2013 10:20:03 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-16 10:20:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55582 AND AD_Language='es_MX'
;

-- 16/10/2013 10:20:15 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', PrintName=NULL, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:20:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55593
;

-- 16/10/2013 10:20:15 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55593
;

-- 16/10/2013 10:20:20 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-16 10:20:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55593 AND AD_Language='es_MX'
;

-- 16/10/2013 10:20:40 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', PrintName=NULL, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:20:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55599
;

-- 16/10/2013 10:20:40 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55599
;

-- 16/10/2013 10:20:43 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-16 10:20:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55599 AND AD_Language='es_MX'
;

-- 16/10/2013 10:20:49 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName=NULL, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:20:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55592
;

-- 16/10/2013 10:20:49 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55592
;

-- 16/10/2013 10:20:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-16 10:20:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55592 AND AD_Language='es_MX'
;

-- 16/10/2013 10:21:06 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='B', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:21:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55592
;

-- 16/10/2013 10:21:27 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintPaper_ID=101,Updated=TO_DATE('2013-10-16 10:21:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50161
;

-- 16/10/2013 10:22:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:22:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55587
;

-- 16/10/2013 10:22:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:22:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55597
;

-- 16/10/2013 10:22:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:22:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55598
;

-- 16/10/2013 10:22:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:22:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55588
;

-- 16/10/2013 10:22:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:22:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55586
;

-- 16/10/2013 10:22:58 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:22:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55591
;

-- 16/10/2013 10:22:58 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:22:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55589
;

-- 16/10/2013 10:23:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', IsSetNLPosition='Y', PrintAreaType='H', SortNo=0, XPosition=390, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-16 10:23:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55587
;

-- 16/10/2013 10:23:41 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='No°:',Updated=TO_DATE('2013-10-16 10:23:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55587 AND AD_Language='es_MX'
;

-- 16/10/2013 10:24:10 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:24:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55597
;

-- 16/10/2013 10:24:17 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:24:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55597
;

-- 16/10/2013 10:24:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Análisis N°:',Updated=TO_DATE('2013-10-16 10:24:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55597 AND AD_Language='es_MX'
;

-- 16/10/2013 10:24:47 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:24:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55598
;

-- 16/10/2013 10:25:22 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:25:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55588
;

-- 16/10/2013 10:25:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Estatus:',Updated=TO_DATE('2013-10-16 10:25:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55588 AND AD_Language='es_MX'
;

-- 16/10/2013 10:25:37 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:25:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55586
;

-- 16/10/2013 10:25:44 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Fecha:',Updated=TO_DATE('2013-10-16 10:25:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55586 AND AD_Language='es_MX'
;

-- 16/10/2013 10:26:56 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:26:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55591
;

-- 16/10/2013 10:27:02 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:27:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55591
;

-- 16/10/2013 10:27:12 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:27:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55524
;

-- 16/10/2013 10:27:21 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='T. Entrada:',Updated=TO_DATE('2013-10-16 10:27:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55591 AND AD_Language='es_MX'
;

-- 16/10/2013 10:28:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET AD_PrintFont_ID=129, IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsSetNLPosition='Y', LineAlignmentType='C', PrintAreaType='H', PrintName=NULL, SortNo=0, XPosition=0, YPosition=0, YSpace=30,Updated=TO_DATE('2013-10-16 10:28:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55589
;

-- 16/10/2013 10:28:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55589
;

-- 16/10/2013 10:28:50 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55598
;

-- 16/10/2013 10:28:50 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55588
;

-- 16/10/2013 10:28:50 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55586
;

-- 16/10/2013 10:28:50 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55591
;

-- 16/10/2013 10:28:50 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55589
;

-- 16/10/2013 10:29:07 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-16 10:29:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55589 AND AD_Language='es_MX'
;

-- 16/10/2013 10:29:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50161,55607,0,0,TO_DATE('2013-10-16 10:29:55','YYYY-MM-DD HH24:MI:SS'),100,'C','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','C',1,0,535,'Linea1','F','L',20,130,'N',0,TO_DATE('2013-10-16 10:29:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,10)
;

-- 16/10/2013 10:29:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55607 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 10:30:26 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:30:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55607
;

-- 16/10/2013 10:30:56 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55590
;

-- 16/10/2013 10:30:56 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55602
;

-- 16/10/2013 10:30:57 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=160, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:30:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55595
;

-- 16/10/2013 10:31:21 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0, YSpace=10,Updated=TO_DATE('2013-10-16 10:31:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55590
;

-- 16/10/2013 10:31:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:31:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55590
;

-- 16/10/2013 10:31:27 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Conductor:',Updated=TO_DATE('2013-10-16 10:31:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55590 AND AD_Language='es_MX'
;

-- 16/10/2013 10:31:37 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:31:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55602
;

-- 16/10/2013 10:31:41 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Vehículo:',Updated=TO_DATE('2013-10-16 10:31:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55602 AND AD_Language='es_MX'
;

-- 16/10/2013 10:32:10 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:32:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55595
;

-- 16/10/2013 10:32:14 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Producto:',Updated=TO_DATE('2013-10-16 10:32:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55595 AND AD_Language='es_MX'
;

-- 16/10/2013 10:32:17 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55595
;

-- 16/10/2013 10:32:37 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Vehículo: ',Updated=TO_DATE('2013-10-16 10:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55602 AND AD_Language='es_MX'
;

-- 16/10/2013 10:32:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Producto: ',Updated=TO_DATE('2013-10-16 10:32:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55595 AND AD_Language='es_MX'
;

-- 16/10/2013 10:35:11 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=170, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55585
;

-- 16/10/2013 10:35:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55580
;

-- 16/10/2013 10:35:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55607
;

-- 16/10/2013 10:35:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55590
;

-- 16/10/2013 10:35:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=160, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55602
;

-- 16/10/2013 10:35:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=170, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55595
;

-- 16/10/2013 10:35:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=180, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:35:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55585
;

-- 16/10/2013 10:36:14 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:36:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55580
;

-- 16/10/2013 10:36:21 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='T. Análisis',Updated=TO_DATE('2013-10-16 10:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55580 AND AD_Language='es_MX'
;

-- 16/10/2013 10:36:35 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50161,55608,0,0,TO_DATE('2013-10-16 10:36:32','YYYY-MM-DD HH24:MI:SS'),100,'C','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','C',1,0,535,'Linea2','H','L',20,140,'N',0,TO_DATE('2013-10-16 10:36:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,10)
;

-- 16/10/2013 10:36:35 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55608 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 10:36:40 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=180, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:36:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55608
;

-- 16/10/2013 10:36:41 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=190, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:36:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55585
;

-- 16/10/2013 10:37:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:37:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55580
;

-- 16/10/2013 10:37:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:37:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55589
;

-- 16/10/2013 10:37:38 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='T. Análisis:',Updated=TO_DATE('2013-10-16 10:37:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55580 AND AD_Language='es_MX'
;

-- 16/10/2013 10:37:47 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:37:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55580
;

-- 16/10/2013 10:38:15 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:38:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55589
;

-- 16/10/2013 10:38:15 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:38:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55607
;

-- 16/10/2013 10:38:15 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:38:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55590
;

-- 16/10/2013 10:38:15 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:38:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55602
;

-- 16/10/2013 10:38:15 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=160, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:38:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55595
;

-- 16/10/2013 10:38:15 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=170, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:38:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55580
;

-- 16/10/2013 10:39:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormatChild_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68854,1000000,100,130,50160,50161,55609,0,0,TO_DATE('2013-10-16 10:39:49','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Quality Analysis','H','P','Quality Analysis',20,200,'N',0,TO_DATE('2013-10-16 10:39:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 10:39:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55609 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 10:39:51 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68854) WHERE AD_PrintFormatItem_ID = 55609 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68854 AND trl.AD_PrintFormatItem_ID = 55609) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 10:40:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:40:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55609
;

-- 16/10/2013 10:41:34 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET HeaderMargin=280,Updated=TO_DATE('2013-10-16 10:41:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50161
;

-- 16/10/2013 10:41:41 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET HeaderMargin=220,Updated=TO_DATE('2013-10-16 10:41:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50161
;

-- 16/10/2013 10:41:57 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55585
;

-- 16/10/2013 10:42:07 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Observacion:',Updated=TO_DATE('2013-10-16 10:42:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55585 AND AD_Language='es_MX'
;

-- 16/10/2013 10:43:16 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55585
;

-- 16/10/2013 10:43:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=10,Updated=TO_DATE('2013-10-16 10:43:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55585
;

-- 16/10/2013 10:43:36 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=10,Updated=TO_DATE('2013-10-16 10:43:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55609
;

-- 16/10/2013 10:44:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50161,55610,0,0,TO_DATE('2013-10-16 10:44:02','YYYY-MM-DD HH24:MI:SS'),100,'C','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','C',1,0,535,'Linea3','H','L',20,180,'N',0,TO_DATE('2013-10-16 10:44:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,10)
;

-- 16/10/2013 10:44:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55610 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 10:44:10 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=200, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:44:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55610
;

-- 16/10/2013 10:44:10 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=210, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:44:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55609
;

-- 16/10/2013 10:44:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=20,Updated=TO_DATE('2013-10-16 10:44:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55609
;

-- 16/10/2013 10:48:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56493,0,'FTA_RV_QualityAnalisys_ID',TO_DATE('2013-10-16 10:48:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Quality Analisys View','Quality Analisys View',TO_DATE('2013-10-16 10:48:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2013 10:48:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56493 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 16/10/2013 10:48:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68926,56493,0,13,53623,'FTA_RV_QualityAnalisys_ID',TO_DATE('2013-10-16 10:48:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','Y','N','N','N','N','N','Quality Analisys View',TO_DATE('2013-10-16 10:48:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/10/2013 10:48:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68926 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/10/2013 10:49:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68927,55979,0,19,53623,'FTA_MobilizationGuide_ID',TO_DATE('2013-10-16 10:49:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Mobilization Guide',TO_DATE('2013-10-16 10:49:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/10/2013 10:49:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68927 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/10/2013 10:50:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET Name='FTA_MobilizationGuide',Updated=TO_DATE('2013-10-16 10:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53516
;

-- 16/10/2013 10:50:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53516
;

-- 16/10/2013 10:50:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET Name='FTA_MobilizationGuide',Updated=TO_DATE('2013-10-16 10:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53516 AND AD_Language='es_MX'
;

-- 16/10/2013 10:51:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68927,1000000,50161,55611,0,0,TO_DATE('2013-10-16 10:51:47','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','L',1,0,0,'Mobilization Guide','H','F','Mobilization Guide',20,220,'N',0,TO_DATE('2013-10-16 10:51:47','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 10:51:50 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55611 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 10:51:50 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68927) WHERE AD_PrintFormatItem_ID = 55611 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68927 AND trl.AD_PrintFormatItem_ID = 55611) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 10:51:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Guía de Movilización:',Updated=TO_DATE('2013-10-16 10:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55611 AND AD_Language='es_MX'
;

-- 16/10/2013 10:52:00 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:52:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55611
;

-- 16/10/2013 10:52:33 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53516,Updated=TO_DATE('2013-10-16 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68927
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55611
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55589
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55607
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55590
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=160, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55602
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=170, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55595
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=180, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55580
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=190, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55608
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=200, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55585
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=210, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55610
;

-- 16/10/2013 10:53:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=220, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55609
;

-- 16/10/2013 10:53:22 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Guía N°:',Updated=TO_DATE('2013-10-16 10:53:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55611 AND AD_Language='es_MX'
;

-- 16/10/2013 10:53:51 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET Name='Análisis de la Calidad',Updated=TO_DATE('2013-10-16 10:53:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50161
;

-- 16/10/2013 10:54:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET HeaderMargin=230,Updated=TO_DATE('2013-10-16 10:54:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50161
;

-- 16/10/2013 10:54:48 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET HeaderMargin=240,Updated=TO_DATE('2013-10-16 10:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50161
;

-- 16/10/2013 10:55:16 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET HeaderMargin=260,Updated=TO_DATE('2013-10-16 10:55:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50161
;

-- 16/10/2013 10:55:33 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=0,Updated=TO_DATE('2013-10-16 10:55:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55609
;

-- 16/10/2013 10:58:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,50161,55612,0,0,TO_DATE('2013-10-16 10:58:09','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','N','N','N','N','X',1,0,0,'Analyst','F','T','Analyst',20,230,'N',0,TO_DATE('2013-10-16 10:58:09','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 10:58:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55612 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 10:58:11 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0) WHERE AD_PrintFormatItem_ID = 55612 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0 AND trl.AD_PrintFormatItem_ID = 55612) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 10:58:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Analista:',Updated=TO_DATE('2013-10-16 10:58:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55612 AND AD_Language='es_MX'
;

-- 16/10/2013 10:58:30 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Analista:___________________________',Updated=TO_DATE('2013-10-16 10:58:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55612 AND AD_Language='es_MX'
;

-- 16/10/2013 10:58:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Laboratorista:___________________________',Updated=TO_DATE('2013-10-16 10:58:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55612 AND AD_Language='es_MX'
;

-- 16/10/2013 10:59:18 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,50161,55613,0,0,TO_DATE('2013-10-16 10:59:15','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','N','N','N','N','X',1,0,0,'Signature','F','T','Signature',20,230,'N',0,TO_DATE('2013-10-16 10:59:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 16/10/2013 10:59:18 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55613 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 10:59:18 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0) WHERE AD_PrintFormatItem_ID = 55613 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0 AND trl.AD_PrintFormatItem_ID = 55613) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 16/10/2013 10:59:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='Y', LineAlignmentType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:59:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55613
;

-- 16/10/2013 10:59:41 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Firma:___________________________',Updated=TO_DATE('2013-10-16 10:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55613 AND AD_Language='es_MX'
;

-- 16/10/2013 10:59:53 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 10:59:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55613
;

-- 16/10/2013 11:00:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='C', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:00:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55613
;

-- 16/10/2013 11:00:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='T', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:00:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55613
;

-- 16/10/2013 11:00:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:00:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55613
;

-- 16/10/2013 11:00:49 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Laboratorista:___________________________          ',Updated=TO_DATE('2013-10-16 11:00:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55612 AND AD_Language='es_MX'
;

-- 16/10/2013 11:01:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Laboratorista:___________________________',Updated=TO_DATE('2013-10-16 11:01:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55612 AND AD_Language='es_MX'
;

-- 16/10/2013 11:01:12 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Laboratorista:___________________________           ',Updated=TO_DATE('2013-10-16 11:01:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55612 AND AD_Language='es_MX'
;

-- 16/10/2013 11:01:22 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Firma:_____________________',Updated=TO_DATE('2013-10-16 11:01:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55613 AND AD_Language='es_MX'
;

-- 16/10/2013 11:03:52 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=130,Updated=TO_DATE('2013-10-16 11:03:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50161
;

-- 16/10/2013 11:06:22 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsActive='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55610
;

-- 16/10/2013 11:07:16 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsActive='Y', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:07:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55610
;

-- 16/10/2013 11:07:30 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=15,Updated=TO_DATE('2013-10-16 11:07:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55610
;

-- 16/10/2013 11:07:37 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=20,Updated=TO_DATE('2013-10-16 11:07:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55610
;

-- 16/10/2013 11:09:58 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=130,Updated=TO_DATE('2013-10-16 11:09:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 16/10/2013 11:13:36 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=340, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:13:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55518
;

-- 16/10/2013 11:13:36 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=350, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:13:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 16/10/2013 11:13:36 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=360, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:13:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 16/10/2013 11:13:36 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=370, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:13:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 16/10/2013 11:13:36 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=380, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:13:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 16/10/2013 11:13:36 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=390, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:13:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55564
;

-- 16/10/2013 11:13:53 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50159,55614,0,0,TO_DATE('2013-10-16 11:13:51','YYYY-MM-DD HH24:MI:SS'),100,'C','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','Y','N','N','N','N','C',1,0,530,'Linea5','H','L',20,310,'N',0,TO_DATE('2013-10-16 11:13:51','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,10)
;

-- 16/10/2013 11:13:53 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55614 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 11:14:01 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=340, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55614
;

-- 16/10/2013 11:14:01 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=350, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55518
;

-- 16/10/2013 11:14:01 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=360, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 16/10/2013 11:14:01 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=370, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 16/10/2013 11:14:02 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=380, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 16/10/2013 11:14:02 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=390, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 16/10/2013 11:14:02 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=400, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55564
;

-- 16/10/2013 11:14:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50159,55615,0,0,TO_DATE('2013-10-16 11:14:15','YYYY-MM-DD HH24:MI:SS'),100,'C','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','Y','N','N','N','N','C',1,0,530,'Linea6','H','L',20,340,'N',0,TO_DATE('2013-10-16 11:14:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,10)
;

-- 16/10/2013 11:14:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55615 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 16/10/2013 11:14:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=360, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55615
;

-- 16/10/2013 11:14:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=370, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 16/10/2013 11:14:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=380, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 16/10/2013 11:14:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=390, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 16/10/2013 11:14:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=400, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 16/10/2013 11:14:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=410, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55564
;

-- 16/10/2013 11:14:38 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-16 11:14:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55518
;

-- 16/10/2013 11:14:46 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Observación:',Updated=TO_DATE('2013-10-16 11:14:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55518 AND AD_Language='es_MX'
;

-- 16/10/2013 11:15:15 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=10,Updated=TO_DATE('2013-10-16 11:15:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55518
;

-- 16/10/2013 11:15:26 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET HeaderMargin=390,Updated=TO_DATE('2013-10-16 11:15:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

