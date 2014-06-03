-- 15/10/2013 03:17:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,Name,Updated,UpdatedBy) VALUES (1000000,1000000,100,130,50159,100,53077,53625,TO_DATE('2013-10-15 15:17:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y','Record Weight',TO_DATE('2013-10-15 15:17:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/10/2013 03:17:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68904,1000000,50159,55512,0,TO_DATE('2013-10-15 15:17:29','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','Y','Y','N','N','N','N','N','X',1,0,0,'Name','C','F','Name',1,'N',1,TO_DATE('2013-10-15 15:17:29','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55512 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68904) WHERE AD_PrintFormatItem_ID = 55512 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68904 AND trl.AD_PrintFormatItem_ID = 55512) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68879,1000000,50159,55513,0,TO_DATE('2013-10-15 15:17:31','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Active','C','F','Active',0,'N',0,TO_DATE('2013-10-15 15:17:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55513 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:32 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68879) WHERE AD_PrintFormatItem_ID = 55513 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68879 AND trl.AD_PrintFormatItem_ID = 55513) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68902,1000000,50159,55514,0,TO_DATE('2013-10-15 15:17:32','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Business Partner ','C','F','Business Partner ',3,'N',0,TO_DATE('2013-10-15 15:17:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55514 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:34 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68902) WHERE AD_PrintFormatItem_ID = 55514 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68902 AND trl.AD_PrintFormatItem_ID = 55514) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68875,1000000,50159,55515,0,TO_DATE('2013-10-15 15:17:34','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Client','C','F','Client',0,'N',0,TO_DATE('2013-10-15 15:17:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55515 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68875) WHERE AD_PrintFormatItem_ID = 55515 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68875 AND trl.AD_PrintFormatItem_ID = 55515) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68877,1000000,50159,55516,0,TO_DATE('2013-10-15 15:17:37','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created','C','F','Created',0,'N',0,TO_DATE('2013-10-15 15:17:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55516 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68877) WHERE AD_PrintFormatItem_ID = 55516 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68877 AND trl.AD_PrintFormatItem_ID = 55516) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68878,1000000,50159,55517,0,TO_DATE('2013-10-15 15:17:39','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created By','C','F','Created By',0,'N',0,TO_DATE('2013-10-15 15:17:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:41 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55517 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:41 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68878) WHERE AD_PrintFormatItem_ID = 55517 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68878 AND trl.AD_PrintFormatItem_ID = 55517) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68885,1000000,50159,55518,0,TO_DATE('2013-10-15 15:17:41','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Description','C','F','Description',7,'N',0,TO_DATE('2013-10-15 15:17:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:43 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55518 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68885) WHERE AD_PrintFormatItem_ID = 55518 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68885 AND trl.AD_PrintFormatItem_ID = 55518) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68884,1000000,50159,55519,0,TO_DATE('2013-10-15 15:17:43','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Date','C','F','Doc date',8,'N',0,TO_DATE('2013-10-15 15:17:43','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55519 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68884) WHERE AD_PrintFormatItem_ID = 55519 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68884 AND trl.AD_PrintFormatItem_ID = 55519) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68887,1000000,50159,55520,0,TO_DATE('2013-10-15 15:17:45','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document No','C','F','Document No',9,'N',0,TO_DATE('2013-10-15 15:17:45','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55520 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68887) WHERE AD_PrintFormatItem_ID = 55520 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68887 AND trl.AD_PrintFormatItem_ID = 55520) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68886,1000000,50159,55521,0,TO_DATE('2013-10-15 15:17:46','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Status','C','F','Doc Status',10,'N',0,TO_DATE('2013-10-15 15:17:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55521 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68886) WHERE AD_PrintFormatItem_ID = 55521 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68886 AND trl.AD_PrintFormatItem_ID = 55521) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68882,1000000,50159,55522,0,TO_DATE('2013-10-15 15:17:49','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Type','C','F','Doc Type',11,'N',0,TO_DATE('2013-10-15 15:17:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55522 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68882) WHERE AD_PrintFormatItem_ID = 55522 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68882 AND trl.AD_PrintFormatItem_ID = 55522) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68898,1000000,50159,55523,0,TO_DATE('2013-10-15 15:17:50','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Driver','C','F','Driver',12,'N',0,TO_DATE('2013-10-15 15:17:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55523 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:52 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68898) WHERE AD_PrintFormatItem_ID = 55523 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68898 AND trl.AD_PrintFormatItem_ID = 55523) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68888,1000000,50159,55524,0,TO_DATE('2013-10-15 15:17:52','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Entry Ticket','C','F','Entry Ticket',13,'N',0,TO_DATE('2013-10-15 15:17:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55524 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:54 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68888) WHERE AD_PrintFormatItem_ID = 55524 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68888 AND trl.AD_PrintFormatItem_ID = 55524) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68891,1000000,50159,55525,0,TO_DATE('2013-10-15 15:17:54','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Gross Weight','C','F','Gross Weight',14,'N',0,TO_DATE('2013-10-15 15:17:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55525 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68891) WHERE AD_PrintFormatItem_ID = 55525 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68891 AND trl.AD_PrintFormatItem_ID = 55525) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:17:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68892,1000000,50159,55526,0,TO_DATE('2013-10-15 15:17:56','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'In Date','C','F','In Date',15,'N',0,TO_DATE('2013-10-15 15:17:56','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:17:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55526 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:17:58 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68892) WHERE AD_PrintFormatItem_ID = 55526 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68892 AND trl.AD_PrintFormatItem_ID = 55526) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68905,1000000,50159,55527,0,TO_DATE('2013-10-15 15:17:58','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Mobilization Guide','C','F','Mobilization Guide',16,'N',0,TO_DATE('2013-10-15 15:17:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55527 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:01 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68905) WHERE AD_PrintFormatItem_ID = 55527 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68905 AND trl.AD_PrintFormatItem_ID = 55527) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68894,1000000,50159,55528,0,TO_DATE('2013-10-15 15:18:01','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Net Weight','C','F','Net Weight',17,'N',0,TO_DATE('2013-10-15 15:18:01','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55528 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:03 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68894) WHERE AD_PrintFormatItem_ID = 55528 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68894 AND trl.AD_PrintFormatItem_ID = 55528) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68909,1000000,50159,55529,0,TO_DATE('2013-10-15 15:18:03','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Org Address','C','F','Org Address',18,'N',0,TO_DATE('2013-10-15 15:18:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55529 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68909) WHERE AD_PrintFormatItem_ID = 55529 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68909 AND trl.AD_PrintFormatItem_ID = 55529) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68876,1000000,50159,55530,0,TO_DATE('2013-10-15 15:18:05','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Organization','C','F','Organization',0,'N',0,TO_DATE('2013-10-15 15:18:05','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55530 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68876) WHERE AD_PrintFormatItem_ID = 55530 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68876 AND trl.AD_PrintFormatItem_ID = 55530) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68895,1000000,50159,55531,0,TO_DATE('2013-10-15 15:18:07','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Out Date','C','F','Out Date',20,'N',0,TO_DATE('2013-10-15 15:18:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55531 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68895) WHERE AD_PrintFormatItem_ID = 55531 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68895 AND trl.AD_PrintFormatItem_ID = 55531) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68908,1000000,50159,55532,0,TO_DATE('2013-10-15 15:18:09','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Partner Tax ID','C','F','BP Tax TD',21,'N',0,TO_DATE('2013-10-15 15:18:09','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55532 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68908) WHERE AD_PrintFormatItem_ID = 55532 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68908 AND trl.AD_PrintFormatItem_ID = 55532) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68906,1000000,50159,55533,0,TO_DATE('2013-10-15 15:18:11','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Product','C','F','Product',22,'N',0,TO_DATE('2013-10-15 15:18:11','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55533 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68906) WHERE AD_PrintFormatItem_ID = 55533 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68906 AND trl.AD_PrintFormatItem_ID = 55533) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68907,1000000,50159,55534,0,TO_DATE('2013-10-15 15:18:13','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Quality Analysis','C','F','Quality Analysis',23,'N',0,TO_DATE('2013-10-15 15:18:13','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55534 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:15 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68907) WHERE AD_PrintFormatItem_ID = 55534 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68907 AND trl.AD_PrintFormatItem_ID = 55534) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68889,1000000,50159,55535,0,TO_DATE('2013-10-15 15:18:15','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Quality Analysis','C','F','Quality Analysis',24,'N',0,TO_DATE('2013-10-15 15:18:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:17 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55535 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68889) WHERE AD_PrintFormatItem_ID = 55535 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68889 AND trl.AD_PrintFormatItem_ID = 55535) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68890,1000000,50159,55536,0,TO_DATE('2013-10-15 15:18:17','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Record Weight','C','F','Record Weight',25,'N',0,TO_DATE('2013-10-15 15:18:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55536 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68890) WHERE AD_PrintFormatItem_ID = 55536 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68890 AND trl.AD_PrintFormatItem_ID = 55536) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68893,1000000,50159,55537,0,TO_DATE('2013-10-15 15:18:19','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Sales Transaction','C','F','Sales Transaction',26,'N',0,TO_DATE('2013-10-15 15:18:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55537 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:21 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68893) WHERE AD_PrintFormatItem_ID = 55537 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68893 AND trl.AD_PrintFormatItem_ID = 55537) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68903,1000000,50159,55538,0,TO_DATE('2013-10-15 15:18:21','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Search Key','C','F','Search Key',27,'N',0,TO_DATE('2013-10-15 15:18:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55538 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:26 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68903) WHERE AD_PrintFormatItem_ID = 55538 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68903 AND trl.AD_PrintFormatItem_ID = 55538) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68896,1000000,50159,55539,0,TO_DATE('2013-10-15 15:18:26','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Tare Weight','C','F','Tare Weight',28,'N',0,TO_DATE('2013-10-15 15:18:26','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55539 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68896) WHERE AD_PrintFormatItem_ID = 55539 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68896 AND trl.AD_PrintFormatItem_ID = 55539) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68899,1000000,50159,55540,0,TO_DATE('2013-10-15 15:18:27','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Tax ID','C','F','Tax ID',29,'N',0,TO_DATE('2013-10-15 15:18:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55540 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:29 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68899) WHERE AD_PrintFormatItem_ID = 55540 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68899 AND trl.AD_PrintFormatItem_ID = 55540) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68883,1000000,50159,55541,0,TO_DATE('2013-10-15 15:18:29','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'UOM','C','F','UOM',30,'N',0,TO_DATE('2013-10-15 15:18:29','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55541 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:32 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68883) WHERE AD_PrintFormatItem_ID = 55541 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68883 AND trl.AD_PrintFormatItem_ID = 55541) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68880,1000000,50159,55542,0,TO_DATE('2013-10-15 15:18:32','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated','C','F','Updated',0,'N',0,TO_DATE('2013-10-15 15:18:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55542 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:34 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68880) WHERE AD_PrintFormatItem_ID = 55542 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68880 AND trl.AD_PrintFormatItem_ID = 55542) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68881,1000000,50159,55543,0,TO_DATE('2013-10-15 15:18:34','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated By','C','F','Updated By',0,'N',0,TO_DATE('2013-10-15 15:18:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55543 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68881) WHERE AD_PrintFormatItem_ID = 55543 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68881 AND trl.AD_PrintFormatItem_ID = 55543) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68900,1000000,50159,55544,0,TO_DATE('2013-10-15 15:18:36','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Vehicle','C','F','Vehicle',33,'N',0,TO_DATE('2013-10-15 15:18:36','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:38 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55544 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68900) WHERE AD_PrintFormatItem_ID = 55544 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68900 AND trl.AD_PrintFormatItem_ID = 55544) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68901,1000000,50159,55545,0,TO_DATE('2013-10-15 15:18:38','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Vehicle Plate','C','F','Vehicle Plate',34,'N',0,TO_DATE('2013-10-15 15:18:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55545 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:40 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68901) WHERE AD_PrintFormatItem_ID = 55545 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68901 AND trl.AD_PrintFormatItem_ID = 55545) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:18:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68897,1000000,50159,55546,0,TO_DATE('2013-10-15 15:18:40','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Weight Status','C','F','Weight Status',35,'N',0,TO_DATE('2013-10-15 15:18:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:18:42 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55546 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:18:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68897) WHERE AD_PrintFormatItem_ID = 55546 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68897 AND trl.AD_PrintFormatItem_ID = 55546) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 03:31:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET Name='Registro de Peso',Updated=TO_DATE('2013-10-15 15:31:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 03:32:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55514
;

-- 15/10/2013 03:32:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55518
;

-- 15/10/2013 03:32:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 03:32:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55524
;

-- 15/10/2013 03:32:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55527
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsPrinted='N', SeqNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55512
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55532
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55533
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55535
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55534
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55536
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55537
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55538
;

-- 15/10/2013 03:32:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55541
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55545
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55546
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=10, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55515
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55530
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55540
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55529
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55521
;

-- 15/10/2013 03:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55519
;

-- 15/10/2013 03:38:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50159,55547,0,0,TO_DATE('2013-10-15 15:38:07','YYYY-MM-DD HH24:MI:SS'),100,'D','Y','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Logo','C','I',20,90,'N',0,TO_DATE('2013-10-15 15:38:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 03:38:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55547 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:38:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET FooterMargin=40, HeaderMargin=120, IsForm='Y', IsStandardHeaderFooter='N',Updated=TO_DATE('2013-10-15 15:38:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 03:38:26 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=10, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:38:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55547
;

-- 15/10/2013 03:38:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55515
;

-- 15/10/2013 03:38:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55530
;

-- 15/10/2013 03:38:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55540
;

-- 15/10/2013 03:38:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55529
;

-- 15/10/2013 03:38:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 03:38:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 03:38:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55521
;

-- 15/10/2013 03:38:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55519
;

-- 15/10/2013 03:38:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Attachment (AD_Attachment_ID,AD_Client_ID,AD_Org_ID,AD_Table_ID,Created,CreatedBy,IsActive,Record_ID,TextMsg,Title,Updated,UpdatedBy) VALUES (50005,1000000,1000000,489,TO_DATE('2013-10-15 15:38:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',55547,NULL,'zip',TO_DATE('2013-10-15 15:38:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/10/2013 03:39:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,50159,55548,0,0,TO_DATE('2013-10-15 15:39:03','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','N','N','N','N','N','N','N','X',1,0,0,'Whith Space','H','T',20,100,'N',0,TO_DATE('2013-10-15 15:39:03','YYYY-MM-DD HH24:MI:SS'),100,100,0,0,0)
;

-- 15/10/2013 03:39:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55548 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 03:39:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName=NULL, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55515
;

-- 15/10/2013 03:39:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55515
;

-- 15/10/2013 03:39:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName=NULL, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:39:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55530
;

-- 15/10/2013 03:39:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55530
;

-- 15/10/2013 03:39:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName=NULL, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:39:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55540
;

-- 15/10/2013 03:39:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55540
;

-- 15/10/2013 03:39:24 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName=NULL, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:39:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55529
;

-- 15/10/2013 03:39:24 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55529
;

-- 15/10/2013 03:39:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', IsSetNLPosition='Y', PrintAreaType='H', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:39:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55547
;

-- 15/10/2013 03:39:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-15 15:39:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55515 AND AD_Language='es_MX'
;

-- 15/10/2013 03:40:02 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:40:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55515
;

-- 15/10/2013 03:40:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-15 15:40:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55530 AND AD_Language='es_MX'
;

-- 15/10/2013 03:40:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:40:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55530
;

-- 15/10/2013 03:40:25 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-15 15:40:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55540 AND AD_Language='es_MX'
;

-- 15/10/2013 03:40:34 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:40:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55540
;

-- 15/10/2013 03:40:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-15 15:40:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55529 AND AD_Language='es_MX'
;

-- 15/10/2013 03:41:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintPaper_ID=101,Updated=TO_DATE('2013-10-15 15:41:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 03:41:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=133,Updated=TO_DATE('2013-10-15 15:41:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 03:42:02 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', IsSetNLPosition='Y', SortNo=0, XSpace=0, YPosition=100, YSpace=0,Updated=TO_DATE('2013-10-15 15:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55515
;

-- 15/10/2013 03:42:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=100, XSpace=0, YPosition=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:42:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55515
;

-- 15/10/2013 03:42:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', MaxWidth=90, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:42:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55547
;

-- 15/10/2013 03:42:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='B', IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55529
;

-- 15/10/2013 03:44:25 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', MaxWidth=45, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:44:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55547
;

-- 15/10/2013 03:44:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55548
;

-- 15/10/2013 03:44:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55515
;

-- 15/10/2013 03:44:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55530
;

-- 15/10/2013 03:44:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55540
;

-- 15/10/2013 03:44:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55529
;

-- 15/10/2013 03:44:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 03:44:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 03:44:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55521
;

-- 15/10/2013 03:44:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55519
;

-- 15/10/2013 03:44:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=50, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55548
;

-- 15/10/2013 03:45:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsHeightOneLine='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:45:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55548
;

-- 15/10/2013 03:45:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:45:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55515
;

-- 15/10/2013 03:45:23 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='Y', IsSetNLPosition='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55515
;

-- 15/10/2013 03:46:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:46:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55529
;

-- 15/10/2013 03:46:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSetNLPosition='Y', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55548
;

-- 15/10/2013 03:46:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', IsSetNLPosition='Y', PrintAreaType='H', SortNo=0, XSpace=0, YPosition=80, YSpace=0,Updated=TO_DATE('2013-10-15 15:46:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 03:47:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName=NULL, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:47:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 03:47:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 03:47:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-15 15:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522 AND AD_Language='es_MX'
;

-- 15/10/2013 03:47:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=150, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 03:47:34 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET AD_PrintFont_ID=129, IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 03:47:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=250, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 03:47:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=220, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 03:48:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:48:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 03:48:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='No°',Updated=TO_DATE('2013-10-15 15:48:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520 AND AD_Language='es_MX'
;

-- 15/10/2013 03:48:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', PrintAreaType='H', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:48:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 03:48:53 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=100, XSpace=0, YPosition=200, YSpace=0,Updated=TO_DATE('2013-10-15 15:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 03:49:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=40, YSpace=0,Updated=TO_DATE('2013-10-15 15:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 03:49:08 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=100, YSpace=0,Updated=TO_DATE('2013-10-15 15:49:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 03:49:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=400, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:49:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 03:49:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55519
;

-- 15/10/2013 03:49:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55521
;

-- 15/10/2013 03:49:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55535
;

-- 15/10/2013 03:49:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55534
;

-- 15/10/2013 03:49:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:49:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55534
;

-- 15/10/2013 03:50:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:50:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55535
;

-- 15/10/2013 03:50:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSetNLPosition='Y', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 15:50:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 03:50:32 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Análisis N°:',Updated=TO_DATE('2013-10-15 15:50:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55535 AND AD_Language='es_MX'
;

-- 15/10/2013 03:50:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='No°:',Updated=TO_DATE('2013-10-15 15:50:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520 AND AD_Language='es_MX'
;

-- 15/10/2013 03:50:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55535
;

-- 15/10/2013 03:50:58 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:50:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55521
;

-- 15/10/2013 03:51:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:51:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55521
;

-- 15/10/2013 03:51:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Estatus:',Updated=TO_DATE('2013-10-15 15:51:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55521 AND AD_Language='es_MX'
;

-- 15/10/2013 03:51:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55521
;

-- 15/10/2013 03:51:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:51:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55519
;

-- 15/10/2013 03:51:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:51:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55519
;

-- 15/10/2013 03:51:53 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Fecha:',Updated=TO_DATE('2013-10-15 15:51:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55519 AND AD_Language='es_MX'
;

-- 15/10/2013 03:53:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:53:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55524
;

-- 15/10/2013 03:58:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:58:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55546
;

-- 15/10/2013 03:59:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:59:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55524
;

-- 15/10/2013 03:59:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 15:59:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55546
;

-- 15/10/2013 03:59:44 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET HeaderMargin=200,Updated=TO_DATE('2013-10-15 15:59:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 04:00:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:00:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55546
;

-- 15/10/2013 04:00:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50159,55549,0,0,TO_DATE('2013-10-15 16:00:51','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','X',1,0,500,'Linea1','H','L',20,130,'N',0,TO_DATE('2013-10-15 16:00:51','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 04:00:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55549 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:01:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', MaxWidth=550, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:01:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55549
;

-- 15/10/2013 04:01:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', MaxWidth=530, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:01:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55549
;

-- 15/10/2013 04:01:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=200, YSpace=0,Updated=TO_DATE('2013-10-15 16:01:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55549
;

-- 15/10/2013 04:01:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=160, YSpace=0,Updated=TO_DATE('2013-10-15 16:01:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55549
;

-- 15/10/2013 04:02:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=140, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55512
;

-- 15/10/2013 04:02:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55532
;

-- 15/10/2013 04:02:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:02:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55512
;

-- 15/10/2013 04:02:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Productor:',Updated=TO_DATE('2013-10-15 16:02:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55512 AND AD_Language='es_MX'
;

-- 15/10/2013 04:03:01 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsNextLine='Y', PrintAreaType='H', XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:03:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55512
;

-- 15/10/2013 04:03:04 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSetNLPosition='Y', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:03:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55549
;

-- 15/10/2013 04:03:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET XPosition=0, YPosition=0, YSpace=5,Updated=TO_DATE('2013-10-15 16:03:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55512
;

-- 15/10/2013 04:03:53 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='R.I.F.:',Updated=TO_DATE('2013-10-15 16:03:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55532 AND AD_Language='es_MX'
;

-- 15/10/2013 04:04:01 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:04:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55532
;

-- 15/10/2013 04:06:41 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=160, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:06:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55533
;

-- 15/10/2013 04:06:41 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=170, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:06:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:06:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=180, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:06:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544
;

-- 15/10/2013 04:06:54 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET LineAlignmentType='L', XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55512
;

-- 15/10/2013 04:07:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:07:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55533
;

-- 15/10/2013 04:07:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:07:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55533
;

-- 15/10/2013 04:07:21 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Producto:',Updated=TO_DATE('2013-10-15 16:07:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55533 AND AD_Language='es_MX'
;

-- 15/10/2013 04:07:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', IsSetNLPosition='Y', PrintAreaType='H', SortNo=0, XPosition=300, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:07:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:08:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=400, YSpace=0,Updated=TO_DATE('2013-10-15 16:08:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:08:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=100, YSpace=0,Updated=TO_DATE('2013-10-15 16:08:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:08:25 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=130, YSpace=0,Updated=TO_DATE('2013-10-15 16:08:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:08:33 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=160, YSpace=0,Updated=TO_DATE('2013-10-15 16:08:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:08:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=165, YSpace=0,Updated=TO_DATE('2013-10-15 16:08:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:09:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:09:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544
;

-- 15/10/2013 04:09:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50159,55550,0,0,TO_DATE('2013-10-15 16:09:34','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','Y','N','N','N','N','X',1,0,530,'Linea2','H','L',20,130,'N',0,TO_DATE('2013-10-15 16:09:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,250,0)
;

-- 15/10/2013 04:09:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55550 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:09:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=150, YSpace=0,Updated=TO_DATE('2013-10-15 16:09:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 04:09:53 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=190, YSpace=0,Updated=TO_DATE('2013-10-15 16:09:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 04:10:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=200, YSpace=0,Updated=TO_DATE('2013-10-15 16:10:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 04:10:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50159,55551,0,0,TO_DATE('2013-10-15 16:10:23','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','C',1,0,0,'Entry','H','T','Entry',20,190,'N',0,TO_DATE('2013-10-15 16:10:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 04:10:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55551 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:10:26 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0) WHERE AD_PrintFormatItem_ID = 55551 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0 AND trl.AD_PrintFormatItem_ID = 55551) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 04:10:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Entrada',Updated=TO_DATE('2013-10-15 16:10:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55551 AND AD_Language='es_MX'
;

-- 15/10/2013 04:10:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=190, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:10:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 04:10:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=200, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:10:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55551
;

-- 15/10/2013 04:11:46 PM VET
-- Farming Technical Assistance
UPDATE C_DocType_Trl SET Name='Registro de Peso',PrintName='Registro de Peso',Updated=TO_DATE('2013-10-15 16:11:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000053 AND AD_Language='es_MX'
;

-- 15/10/2013 04:12:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET AD_PrintFont_ID=131, IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:12:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55551
;

-- 15/10/2013 04:12:29 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=5,Updated=TO_DATE('2013-10-15 16:12:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55551
;

-- 15/10/2013 04:12:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET HeaderMargin=400,Updated=TO_DATE('2013-10-15 16:12:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 04:13:24 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=210, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 04:13:24 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=220, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55541
;

-- 15/10/2013 04:13:24 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=230, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 04:13:35 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:13:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 04:13:40 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:13:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 04:13:52 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSetNLPosition='Y', SortNo=0, XSpace=0, YPosition=20, YSpace=0,Updated=TO_DATE('2013-10-15 16:13:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 04:14:15 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=500, YSpace=0,Updated=TO_DATE('2013-10-15 16:14:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 04:14:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=300, YSpace=0,Updated=TO_DATE('2013-10-15 16:14:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 04:14:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=200, YSpace=0,Updated=TO_DATE('2013-10-15 16:14:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 04:14:52 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=220, YSpace=0,Updated=TO_DATE('2013-10-15 16:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 04:16:54 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:16:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55541
;

-- 15/10/2013 04:17:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-15 16:17:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55541 AND AD_Language='es_MX'
;

-- 15/10/2013 04:17:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=' - ',Updated=TO_DATE('2013-10-15 16:17:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55541 AND AD_Language='es_MX'
;

-- 15/10/2013 04:17:15 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:17:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55541
;

-- 15/10/2013 04:17:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', IsSetNLPosition='Y', PrintAreaType='H', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 04:18:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=300, XSpace=0, YPosition=220, YSpace=0,Updated=TO_DATE('2013-10-15 16:18:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 04:18:33 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=400, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:18:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 04:19:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=340, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:19:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 04:19:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50159,55552,0,0,TO_DATE('2013-10-15 16:19:28','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','Y','N','N','N','N','X',1,0,530,'Linea3','H','L',20,190,'N',0,TO_DATE('2013-10-15 16:19:28','YYYY-MM-DD HH24:MI:SS'),100,0,0,200,0)
;

-- 15/10/2013 04:19:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55552 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:19:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=240, YSpace=0,Updated=TO_DATE('2013-10-15 16:19:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55552
;

-- 15/10/2013 04:19:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=230, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:19:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55552
;

-- 15/10/2013 04:19:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=240, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:19:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 04:20:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,131,50159,55553,0,0,TO_DATE('2013-10-15 16:20:45','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','C',1,0,0,'Out','H','T','Out',20,200,'N',0,TO_DATE('2013-10-15 16:20:45','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,5)
;

-- 15/10/2013 04:20:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55553 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:20:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0) WHERE AD_PrintFormatItem_ID = 55553 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0 AND trl.AD_PrintFormatItem_ID = 55553) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 04:20:52 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Salida',Updated=TO_DATE('2013-10-15 16:20:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55553 AND AD_Language='es_MX'
;

-- 15/10/2013 04:21:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=230, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 04:21:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=240, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55552
;

-- 15/10/2013 04:21:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=250, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55553
;

-- 15/10/2013 04:22:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=260, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:22:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 04:22:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=270, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:22:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 04:22:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,131,50159,55554,0,0,TO_DATE('2013-10-15 16:22:24','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','C',1,0,0,'Out2','H','T','Out',20,250,'N',0,TO_DATE('2013-10-15 16:22:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,5)
;

-- 15/10/2013 04:22:26 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55554 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:22:26 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0) WHERE AD_PrintFormatItem_ID = 55554 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0 AND trl.AD_PrintFormatItem_ID = 55554) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 04:22:44 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_PrintFormatItem_Trl WHERE AD_PrintFormatItem_ID=55554
;

-- 15/10/2013 04:22:44 PM VET
-- Farming Technical Assistance
DELETE FROM AD_PrintFormatItem WHERE AD_PrintFormatItem_ID=55554
;

-- 15/10/2013 04:22:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68883,1000000,50159,55555,0,TO_DATE('2013-10-15 16:22:56','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'UOM2','H','F','UOM',220,'N',0,TO_DATE('2013-10-15 16:22:56','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 04:22:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55555 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:22:58 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68883) WHERE AD_PrintFormatItem_ID = 55555 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68883 AND trl.AD_PrintFormatItem_ID = 55555) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 04:23:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=270, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:23:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 04:23:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=280, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:23:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 04:23:34 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', PrintAreaType='H', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:23:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 04:23:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=240, YSpace=0,Updated=TO_DATE('2013-10-15 16:23:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 04:23:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=250, YSpace=0,Updated=TO_DATE('2013-10-15 16:23:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 04:24:03 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=255, YSpace=0,Updated=TO_DATE('2013-10-15 16:24:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 04:24:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=' - ',Updated=TO_DATE('2013-10-15 16:24:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555 AND AD_Language='es_MX'
;

-- 15/10/2013 04:24:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', IsSetNLPosition='Y', PrintAreaType='H', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:24:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 04:25:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=380, XSpace=0, YPosition=240, YSpace=0,Updated=TO_DATE('2013-10-15 16:25:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 04:25:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=255, YSpace=0,Updated=TO_DATE('2013-10-15 16:25:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 04:26:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,100,130,50159,55556,0,0,TO_DATE('2013-10-15 16:26:18','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','Y','N','N','N','N','X',1,0,530,'Linea4','H','L',20,240,'N',0,TO_DATE('2013-10-15 16:26:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,280,0)
;

-- 15/10/2013 04:26:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55556 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:26:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=290, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:26:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55556
;

-- 15/10/2013 04:27:03 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=340, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:27:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 04:27:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=260, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:27:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 04:27:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=270, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:27:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 04:27:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=280, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:27:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 04:27:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=290, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:27:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 04:27:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=300, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:27:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55556
;

-- 15/10/2013 04:27:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', PrintAreaType='H', SortNo=0, XSpace=0, YPosition=255, YSpace=0,Updated=TO_DATE('2013-10-15 16:27:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 04:31:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=270, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:31:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 04:31:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=280, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:31:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 04:31:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=290, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:31:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55556
;

-- 15/10/2013 04:31:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=300, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:31:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 04:32:52 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=275, YSpace=0,Updated=TO_DATE('2013-10-15 16:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 04:33:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=285, YSpace=0,Updated=TO_DATE('2013-10-15 16:33:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 04:33:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68883,1000000,50159,55557,0,TO_DATE('2013-10-15 16:33:45','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'UOM3','H','F','UOM',270,'N',0,TO_DATE('2013-10-15 16:33:45','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 04:33:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55557 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:33:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68883) WHERE AD_PrintFormatItem_ID = 55557 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68883 AND trl.AD_PrintFormatItem_ID = 55557) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 04:33:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=310, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:33:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55557
;

-- 15/10/2013 04:34:03 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=' - ',Updated=TO_DATE('2013-10-15 16:34:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55557 AND AD_Language='es_MX'
;

-- 15/10/2013 04:35:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=320, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 04:35:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=330, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 15/10/2013 04:38:26 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='N', PrintAreaType='H', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:38:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 04:38:32 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:38:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 15/10/2013 04:38:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSetNLPosition='Y', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:38:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 04:38:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=300, YSpace=0,Updated=TO_DATE('2013-10-15 16:38:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 04:38:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=330, YSpace=0,Updated=TO_DATE('2013-10-15 16:38:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 04:40:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68898,1000000,100,130,50159,55558,0,0,TO_DATE('2013-10-15 16:39:57','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','X',1,0,0,'Signature','H','F','Signature',20,340,'N',0,TO_DATE('2013-10-15 16:39:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 04:40:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55558 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:40:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68898) WHERE AD_PrintFormatItem_ID = 55558 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68898 AND trl.AD_PrintFormatItem_ID = 55558) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 04:40:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=400, XSpace=0, YPosition=330, YSpace=0,Updated=TO_DATE('2013-10-15 16:40:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 04:40:23 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=350, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:40:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 04:40:33 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=300, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:40:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 04:40:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Firma:',Updated=TO_DATE('2013-10-15 16:40:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558 AND AD_Language='es_MX'
;

-- 15/10/2013 04:41:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68912,459,0,19,53625,'M_Warehouse_ID',TO_DATE('2013-10-15 16:41:13','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02',10,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','N','N','N','N','N','N','N','N','N','Warehouse',TO_DATE('2013-10-15 16:41:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 15/10/2013 04:41:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68912 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 15/10/2013 04:43:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=197,Updated=TO_DATE('2013-10-15 16:43:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68912
;

-- 15/10/2013 04:45:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68912,1000000,100,130,50159,55559,0,0,TO_DATE('2013-10-15 16:45:17','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','N','N','N','N','N','N','N','X',1,0,0,'Warehouse','H','F','Warehouse',20,350,'N',0,TO_DATE('2013-10-15 16:45:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 04:45:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55559 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 04:45:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68912) WHERE AD_PrintFormatItem_ID = 55559 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68912 AND trl.AD_PrintFormatItem_ID = 55559) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 04:45:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Destino:',Updated=TO_DATE('2013-10-15 16:45:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559 AND AD_Language='es_MX'
;

-- 15/10/2013 04:45:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=310, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 04:45:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=320, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55557
;

-- 15/10/2013 04:45:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=330, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 04:45:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=340, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 15/10/2013 04:45:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=350, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 04:46:03 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=300, XSpace=0, YPosition=285, YSpace=0,Updated=TO_DATE('2013-10-15 16:46:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 04:46:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=310, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55557
;

-- 15/10/2013 04:46:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=320, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 04:51:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:51:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 04:52:23 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='C', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', LineAlignmentType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:52:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 04:52:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='C', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', LineAlignmentType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:52:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55549
;

-- 15/10/2013 04:53:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 04:53:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55535
;

-- 15/10/2013 04:53:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55521
;

-- 15/10/2013 04:53:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55519
;

-- 15/10/2013 04:53:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55524
;

-- 15/10/2013 04:53:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 04:54:32 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=20,Updated=TO_DATE('2013-10-15 16:54:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 04:54:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=10,Updated=TO_DATE('2013-10-15 16:54:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55549
;

-- 15/10/2013 04:54:52 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=30,Updated=TO_DATE('2013-10-15 16:54:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55522
;

-- 15/10/2013 04:55:32 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='T', IsGroupBy='N', IsPageBreak='N', IsRelativePosition='Y', LineAlignmentType='T', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:55:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:56:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:56:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:56:53 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=300, XSpace=0, YPosition=5, YSpace=0,Updated=TO_DATE('2013-10-15 16:56:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:57:03 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=300, YSpace=0,Updated=TO_DATE('2013-10-15 16:57:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:57:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=100, YSpace=0,Updated=TO_DATE('2013-10-15 16:57:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:57:21 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=110, YSpace=0,Updated=TO_DATE('2013-10-15 16:57:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:57:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=105, YSpace=0,Updated=TO_DATE('2013-10-15 16:57:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:58:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='C', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', IsSetNLPosition='N', LineAlignmentType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:58:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 04:58:33 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:58:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 04:58:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='L', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:58:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 04:58:49 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='C', IsGroupBy='N', IsPageBreak='N', LineAlignmentType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:58:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 04:59:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=170, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:59:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 04:59:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=180, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:59:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:59:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=190, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:59:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544
;

-- 15/10/2013 04:59:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=10,Updated=TO_DATE('2013-10-15 16:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 04:59:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=180, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55551
;

-- 15/10/2013 04:59:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=190, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 04:59:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=200, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55541
;

-- 15/10/2013 04:59:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=210, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 04:59:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=220, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 16:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 04:59:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=230, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 16:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544
;

-- 15/10/2013 05:00:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=180, YSpace=0,Updated=TO_DATE('2013-10-15 17:00:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 05:00:29 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=170, YSpace=0,Updated=TO_DATE('2013-10-15 17:00:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 05:00:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=170, YSpace=0,Updated=TO_DATE('2013-10-15 17:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:01:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=220, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55552
;

-- 15/10/2013 05:01:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=230, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55553
;

-- 15/10/2013 05:01:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=240, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:01:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 05:01:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=250, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:01:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 05:01:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=260, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:01:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:01:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=270, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:01:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 05:01:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=280, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:01:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544
;

-- 15/10/2013 05:01:35 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55552
;

-- 15/10/2013 05:01:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=10,Updated=TO_DATE('2013-10-15 17:01:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55552
;

-- 15/10/2013 05:02:01 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=225, YSpace=0,Updated=TO_DATE('2013-10-15 17:02:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 05:02:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=215, YSpace=0,Updated=TO_DATE('2013-10-15 17:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 05:02:21 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=215, YSpace=0,Updated=TO_DATE('2013-10-15 17:02:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:02:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=270, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55556
;

-- 15/10/2013 05:02:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=280, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 05:02:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=290, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55557
;

-- 15/10/2013 05:02:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=300, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 05:02:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=310, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 05:02:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=320, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:02:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544
;

-- 15/10/2013 05:03:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='C', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', LineAlignmentType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:03:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55556
;

-- 15/10/2013 05:03:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=10,Updated=TO_DATE('2013-10-15 17:03:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55556
;

-- 15/10/2013 05:03:28 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=245, YSpace=0,Updated=TO_DATE('2013-10-15 17:03:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 05:03:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', SortNo=0, XPosition=300, XSpace=0, YPosition=245, YSpace=0,Updated=TO_DATE('2013-10-15 17:03:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55557
;

-- 15/10/2013 05:03:54 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:03:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55557
;

-- 15/10/2013 05:04:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=245, YSpace=0,Updated=TO_DATE('2013-10-15 17:04:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 05:04:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET AD_PrintColor_ID=NULL, AD_PrintFont_ID=NULL, IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:04:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 05:04:29 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET AD_PrintColor_ID=NULL, AD_PrintFont_ID=NULL, IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:04:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 05:04:54 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=310, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 05:04:54 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=320, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 15/10/2013 05:04:54 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=330, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 05:04:54 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=340, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 05:04:54 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=350, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544
;

-- 15/10/2013 05:05:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=300, YSpace=0,Updated=TO_DATE('2013-10-15 17:05:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 05:05:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=280, YSpace=0,Updated=TO_DATE('2013-10-15 17:05:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 05:05:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=280, YSpace=0,Updated=TO_DATE('2013-10-15 17:05:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 05:05:53 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=290, YSpace=0,Updated=TO_DATE('2013-10-15 17:05:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 05:06:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=290, YSpace=0,Updated=TO_DATE('2013-10-15 17:06:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 05:11:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:11:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:11:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Fecha y Hora:',Updated=TO_DATE('2013-10-15 17:11:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526 AND AD_Language='es_MX'
;

-- 15/10/2013 05:12:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Fecha y Hora',Updated=TO_DATE('2013-10-15 17:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531 AND AD_Language='es_MX'
;

-- 15/10/2013 05:12:28 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=151,Updated=TO_DATE('2013-10-15 17:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 05:12:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=116,Updated=TO_DATE('2013-10-15 17:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 05:12:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=148,Updated=TO_DATE('2013-10-15 17:12:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 05:13:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=151,Updated=TO_DATE('2013-10-15 17:13:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 05:20:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=110, YSpace=0,Updated=TO_DATE('2013-10-15 17:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 05:20:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=335, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:20:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:20:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=335, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:20:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:21:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=325, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:21:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:21:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=325, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:21:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:23:26 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=148,Updated=TO_DATE('2013-10-15 17:23:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 05:23:58 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=120, YSpace=0,Updated=TO_DATE('2013-10-15 17:23:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 05:24:23 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET XPosition=0, YPosition=0, YSpace=10,Updated=TO_DATE('2013-10-15 17:24:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55512
;

-- 15/10/2013 05:24:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', MaxWidth=535, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:24:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55549
;

-- 15/10/2013 05:25:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=180, YSpace=0,Updated=TO_DATE('2013-10-15 17:25:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 05:25:41 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=190, YSpace=0,Updated=TO_DATE('2013-10-15 17:25:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 05:25:51 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=190, YSpace=0,Updated=TO_DATE('2013-10-15 17:25:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:25:58 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=20,Updated=TO_DATE('2013-10-15 17:25:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55552
;

-- 15/10/2013 05:26:08 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=10,Updated=TO_DATE('2013-10-15 17:26:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55552
;

-- 15/10/2013 05:26:21 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=310, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:26:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:26:28 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=300, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:26:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:26:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=290, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:26:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:26:53 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=235, YSpace=0,Updated=TO_DATE('2013-10-15 17:26:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 05:27:03 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=230, YSpace=0,Updated=TO_DATE('2013-10-15 17:27:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 05:27:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=230, YSpace=0,Updated=TO_DATE('2013-10-15 17:27:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:27:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=310, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:27:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:27:34 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=300, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:27:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:27:40 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=290, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:27:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:27:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=255, YSpace=0,Updated=TO_DATE('2013-10-15 17:27:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 05:28:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=255, YSpace=0,Updated=TO_DATE('2013-10-15 17:28:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 05:28:15 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=300, YSpace=0,Updated=TO_DATE('2013-10-15 17:28:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 05:28:21 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=300, YSpace=0,Updated=TO_DATE('2013-10-15 17:28:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 05:32:24 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Peso bruto:',Updated=TO_DATE('2013-10-15 17:32:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525 AND AD_Language='es_MX'
;

-- 15/10/2013 05:32:33 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:32:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 05:34:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Peso Tara:',Updated=TO_DATE('2013-10-15 17:34:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539 AND AD_Language='es_MX'
;

-- 15/10/2013 05:34:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:34:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 05:34:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Fecha y Hora:',Updated=TO_DATE('2013-10-15 17:34:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531 AND AD_Language='es_MX'
;

-- 15/10/2013 05:34:28 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Peso Neto:',Updated=TO_DATE('2013-10-15 17:34:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528 AND AD_Language='es_MX'
;

-- 15/10/2013 05:34:32 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:34:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 05:34:48 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Creado:',Updated=TO_DATE('2013-10-15 17:34:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516 AND AD_Language='es_MX'
;

-- 15/10/2013 05:34:51 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:34:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 05:34:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Creado Por:',Updated=TO_DATE('2013-10-15 17:34:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517 AND AD_Language='es_MX'
;

-- 15/10/2013 05:35:01 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:35:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 15/10/2013 05:35:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:35:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 05:35:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Conductor:',Updated=TO_DATE('2013-10-15 17:35:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523 AND AD_Language='es_MX'
;

-- 15/10/2013 05:35:15 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Vehículo:',Updated=TO_DATE('2013-10-15 17:35:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544 AND AD_Language='es_MX'
;

-- 15/10/2013 05:35:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:35:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544
;

-- 15/10/2013 05:36:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=116,Updated=TO_DATE('2013-10-15 17:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50159
;

-- 15/10/2013 05:39:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56486,0,'Hour',TO_DATE('2013-10-15 17:39:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Hour','Hour',TO_DATE('2013-10-15 17:39:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/10/2013 05:39:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56486 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 15/10/2013 05:39:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Hora',PrintName='Hora',Updated=TO_DATE('2013-10-15 17:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56486 AND AD_Language='es_MX'
;

-- 15/10/2013 05:39:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='Time', Name='Time', PrintName='Time',Updated=TO_DATE('2013-10-15 17:39:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56486
;

-- 15/10/2013 05:39:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56486
;

-- 15/10/2013 05:39:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='Time', Name='Time', Description=NULL, Help=NULL WHERE AD_Element_ID=56486
;

-- 15/10/2013 05:39:39 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='Time', Name='Time', Description=NULL, Help=NULL, AD_Element_ID=56486 WHERE UPPER(ColumnName)='TIME' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 15/10/2013 05:39:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='Time', Name='Time', Description=NULL, Help=NULL WHERE AD_Element_ID=56486 AND IsCentrallyMaintained='Y'
;

-- 15/10/2013 05:39:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Time', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56486) AND IsCentrallyMaintained='Y'
;

-- 15/10/2013 05:39:40 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Time', Name='Time' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56486)
;

-- 15/10/2013 05:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET ColumnName='OutTime', Name='Out Time', PrintName='Out Time',Updated=TO_DATE('2013-10-15 17:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56486
;

-- 15/10/2013 05:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56486
;

-- 15/10/2013 05:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ColumnName='OutTime', Name='Out Time', Description=NULL, Help=NULL WHERE AD_Element_ID=56486
;

-- 15/10/2013 05:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='OutTime', Name='Out Time', Description=NULL, Help=NULL, AD_Element_ID=56486 WHERE UPPER(ColumnName)='OUTTIME' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 15/10/2013 05:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET ColumnName='OutTime', Name='Out Time', Description=NULL, Help=NULL WHERE AD_Element_ID=56486 AND IsCentrallyMaintained='Y'
;

-- 15/10/2013 05:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Out Time', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56486) AND IsCentrallyMaintained='Y'
;

-- 15/10/2013 05:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem pi SET PrintName='Out Time', Name='Out Time' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56486)
;

-- 15/10/2013 05:41:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Hora de Salida',PrintName='Hora de Salida',Updated=TO_DATE('2013-10-15 17:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56486 AND AD_Language='es_MX'
;

-- 15/10/2013 05:42:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56487,0,'InTime',TO_DATE('2013-10-15 17:42:02','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','In Time','In Time',TO_DATE('2013-10-15 17:42:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/10/2013 05:42:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56487 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 15/10/2013 05:42:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Hora de Entrada',PrintName='Hora de Entrada',Updated=TO_DATE('2013-10-15 17:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56487 AND AD_Language='es_MX'
;

-- 15/10/2013 05:42:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Element SET EntityType='ECA02',Updated=TO_DATE('2013-10-15 17:42:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56487
;

-- 15/10/2013 05:43:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68915,56486,0,24,53625,'OutTime',TO_DATE('2013-10-15 17:43:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',7,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Out Time',0,TO_DATE('2013-10-15 17:43:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 15/10/2013 05:43:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68915 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 15/10/2013 05:43:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68916,56487,0,24,53625,'InTime',TO_DATE('2013-10-15 17:43:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',7,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','In Time',0,TO_DATE('2013-10-15 17:43:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 15/10/2013 05:43:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68916 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/10/2013 07:42:36 AM VET
-- CGI Anca
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=68915
;

-- 16/10/2013 07:42:37 AM VET
-- CGI Anca
DELETE FROM AD_Column WHERE AD_Column_ID=68915
;

-- 16/10/2013 07:42:51 AM VET
-- CGI Anca
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=56486
;

-- 16/10/2013 07:42:51 AM VET
-- CGI Anca
DELETE FROM AD_Element WHERE AD_Element_ID=56486
;

-- 16/10/2013 07:43:17 AM VET
-- CGI Anca
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=68916
;

-- 16/10/2013 07:43:17 AM VET
-- CGI Anca
DELETE FROM AD_Column WHERE AD_Column_ID=68916
;

-- 16/10/2013 07:43:23 AM VET
-- CGI Anca
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=56487
;

-- 16/10/2013 07:43:23 AM VET
-- CGI Anca
DELETE FROM AD_Element WHERE AD_Element_ID=56487
;

-- 15/10/2013 05:47:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=170, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 05:47:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=180, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55544
;

-- 15/10/2013 05:47:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=190, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55550
;

-- 15/10/2013 05:47:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=200, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55551
;

-- 15/10/2013 05:47:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=210, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 05:47:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=220, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55541
;

-- 15/10/2013 05:47:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=230, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:47:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=240, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55552
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=250, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55553
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=260, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=270, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=280, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=290, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55556
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=300, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=310, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55557
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=320, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=330, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=340, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 15/10/2013 05:47:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=350, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 17:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 05:47:33 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 05:47:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='L', IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55523
;

-- 15/10/2013 05:48:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:48:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55525
;

-- 15/10/2013 05:48:35 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='T', IsGroupBy='N', IsPageBreak='N', IsRelativePosition='Y', IsSetNLPosition='N', LineAlignmentType='T', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:48:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:49:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='C', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:49:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55553
;

-- 15/10/2013 05:49:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='L', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:49:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 05:49:26 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:49:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:49:40 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='T', IsGroupBy='N', IsNextLine='N', IsPageBreak='N', LineAlignmentType='T', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:49:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:49:51 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:49:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 05:50:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='T', IsGroupBy='N', IsPageBreak='N', IsRelativePosition='Y', LineAlignmentType='T', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:50:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 05:50:24 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 05:50:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='T', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', LineAlignmentType='T', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:50:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 05:54:01 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FormatPattern='DD/MM/YYYY', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:54:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:54:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,FormatPattern,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68892,1000000,50159,55560,0,TO_DATE('2013-10-15 17:54:04','YYYY-MM-DD HH24:MI:SS'),100,'T','DD/MM/YYYY','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','T',1,0,0,'In Date','H','F','In Date',230,'N',0,TO_DATE('2013-10-15 17:54:04','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 05:54:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55560 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 05:54:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68892) WHERE AD_PrintFormatItem_ID = 55560 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68892 AND trl.AD_PrintFormatItem_ID = 55560) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 05:54:23 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FormatPattern='HH:MM', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:54:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560
;

-- 15/10/2013 05:55:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Fecha:',Updated=TO_DATE('2013-10-15 17:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526 AND AD_Language='es_MX'
;

-- 15/10/2013 05:55:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Hora:',Updated=TO_DATE('2013-10-15 17:55:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560 AND AD_Language='es_MX'
;

-- 15/10/2013 05:56:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintName='Date', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:56:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:56:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:57:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintName='In Date', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:57:05 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:57:44 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560
;

-- 15/10/2013 05:57:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=240, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560
;

-- 15/10/2013 05:57:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=250, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55552
;

-- 15/10/2013 05:57:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=260, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55553
;

-- 15/10/2013 05:57:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=270, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 05:57:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=280, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 05:57:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=290, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 05:57:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=300, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55556
;

-- 15/10/2013 05:57:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=310, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 05:57:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=320, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55557
;

-- 15/10/2013 05:58:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=330, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:58:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 05:58:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=340, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:58:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 05:58:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=350, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:58:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 15/10/2013 05:58:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=360, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:58:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 05:58:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FormatPattern='dd/MM/yyyy', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:58:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 05:58:51 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FormatPattern='hh:mm:ss', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:58:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560
;

-- 15/10/2013 05:59:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FormatPattern='hh:mm', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 17:59:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560
;

-- 15/10/2013 06:02:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FormatPattern='h:mm:ss:SSS', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:02:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560
;

-- 15/10/2013 06:02:25 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FormatPattern='h:mm:ss', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560
;

-- 15/10/2013 06:03:35 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FormatPattern='h:mm a', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:03:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560
;

-- 15/10/2013 06:04:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName=NULL,Updated=TO_DATE('2013-10-15 18:04:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560 AND AD_Language='es_MX'
;

-- 15/10/2013 06:04:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintName=NULL, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:04:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560
;

-- 15/10/2013 06:04:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55560
;

-- 15/10/2013 06:06:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56489,0,'InTime',TO_DATE('2013-10-15 18:06:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','In Time','In Time',TO_DATE('2013-10-15 18:06:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/10/2013 06:06:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56489 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 15/10/2013 06:06:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Hora de Entrada',PrintName='Hora de Entrada',Updated=TO_DATE('2013-10-15 18:06:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56489 AND AD_Language='es_MX'
;

-- 15/10/2013 06:06:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56490,0,'OutTime',TO_DATE('2013-10-15 18:06:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Out Time','Out Time',TO_DATE('2013-10-15 18:06:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/10/2013 06:06:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56490 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 15/10/2013 06:06:57 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Hora de Salida',PrintName='Hora de Salida',Updated=TO_DATE('2013-10-15 18:06:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56490 AND AD_Language='es_MX'
;

-- 15/10/2013 06:07:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68917,56489,0,24,53625,'InTime',TO_DATE('2013-10-15 18:07:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',7,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','In Time',0,TO_DATE('2013-10-15 18:07:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 15/10/2013 06:07:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68917 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 15/10/2013 06:07:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68918,56490,0,24,53625,'OutTime',TO_DATE('2013-10-15 18:07:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',7,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Out Time',0,TO_DATE('2013-10-15 18:07:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 15/10/2013 06:07:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68918 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 15/10/2013 06:08:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-10-15 18:08:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68892
;

-- 15/10/2013 06:08:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-10-15 18:08:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68895
;

-- 15/10/2013 06:13:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', SortNo=0, XPosition=220, XSpace=0, YPosition=300, YSpace=0,Updated=TO_DATE('2013-10-15 18:13:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 06:13:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=300, XSpace=0, YPosition=220, YSpace=0,Updated=TO_DATE('2013-10-15 18:13:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 06:14:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=240, YSpace=0,Updated=TO_DATE('2013-10-15 18:14:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 06:14:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=280, YSpace=0,Updated=TO_DATE('2013-10-15 18:14:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 06:14:47 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:14:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 06:15:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='D', IsGroupBy='N', IsPageBreak='N', LineAlignmentType='X', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:15:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 06:15:23 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSetNLPosition='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:15:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 06:15:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='L', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:15:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 06:16:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Hora:',Updated=TO_DATE('2013-10-15 18:16:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560 AND AD_Language='es_MX'
;

-- 15/10/2013 06:16:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Hora  :',Updated=TO_DATE('2013-10-15 18:16:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560 AND AD_Language='es_MX'
;

-- 15/10/2013 06:16:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Hora:  ',Updated=TO_DATE('2013-10-15 18:16:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560 AND AD_Language='es_MX'
;

-- 15/10/2013 06:16:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Hora: ',Updated=TO_DATE('2013-10-15 18:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55560 AND AD_Language='es_MX'
;

-- 15/10/2013 06:17:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=320, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 18:17:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 06:17:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=350, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 18:17:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 06:17:28 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=400, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 18:17:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55526
;

-- 15/10/2013 06:18:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:18:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 06:19:04 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=400, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 18:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 06:19:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=270, YSpace=0,Updated=TO_DATE('2013-10-15 18:19:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 06:19:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSetNLPosition='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55561
;

-- 15/10/2013 06:19:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:19:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55561
;

-- 15/10/2013 06:19:40 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Hora: ',Updated=TO_DATE('2013-10-15 18:19:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55561 AND AD_Language='es_MX'
;

-- 15/10/2013 06:19:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='L', IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55561
;

-- 15/10/2013 06:20:04 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='L', IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 18:20:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 06:21:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='X', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:21:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55555
;

-- 15/10/2013 06:21:41 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_PrintFormatItem_Trl WHERE AD_PrintFormatItem_ID=55561
;

-- 15/10/2013 06:21:41 PM VET
-- Farming Technical Assistance
DELETE FROM AD_PrintFormatItem WHERE AD_PrintFormatItem_ID=55561
;

-- 15/10/2013 06:21:47 PM VET
-- Farming Technical Assistance
DELETE  FROM  AD_PrintFormatItem_Trl WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 06:21:47 PM VET
-- Farming Technical Assistance
DELETE FROM AD_PrintFormatItem WHERE AD_PrintFormatItem_ID=55531
;

-- 15/10/2013 06:23:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='T', IsGroupBy='N', IsPageBreak='N', LineAlignmentType='X', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:23:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55539
;

-- 15/10/2013 06:24:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68895,1000000,50159,55562,0,0,TO_DATE('2013-10-15 18:24:01','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','N','N','N','N','N','N','N','X',1,0,0,'Out Date','H','F','Out Date',20,370,'N',0,TO_DATE('2013-10-15 18:24:01','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 06:24:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55562 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 06:24:03 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68895) WHERE AD_PrintFormatItem_ID = 55562 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68895 AND trl.AD_PrintFormatItem_ID = 55562) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 06:24:08 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Fecha:',Updated=TO_DATE('2013-10-15 18:24:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55562 AND AD_Language='es_MX'
;

-- 15/10/2013 06:24:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68918,1000000,50159,55563,0,0,TO_DATE('2013-10-15 18:24:32','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','N','N','N','N','N','N','N','X',1,0,0,'Out Time','H','F','Out Time',20,370,'N',0,TO_DATE('2013-10-15 18:24:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 15/10/2013 06:24:34 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55563 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 15/10/2013 06:24:34 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68918) WHERE AD_PrintFormatItem_ID = 55563 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68918 AND trl.AD_PrintFormatItem_ID = 55563) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 15/10/2013 06:24:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSetNLPosition='Y', SortNo=0, XPosition=400, XSpace=0, YPosition=280, YSpace=0,Updated=TO_DATE('2013-10-15 18:24:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55562
;

-- 15/10/2013 06:25:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=260, YSpace=0,Updated=TO_DATE('2013-10-15 18:25:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55562
;

-- 15/10/2013 06:25:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XSpace=0, YPosition=270, YSpace=0,Updated=TO_DATE('2013-10-15 18:25:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55562
;

-- 15/10/2013 06:25:25 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='L', IsGroupBy='N', IsPageBreak='N', IsRelativePosition='Y', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:25:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55563
;

-- 15/10/2013 06:25:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=290, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 18:25:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55562
;

-- 15/10/2013 06:25:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=300, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:25:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55563
;

-- 15/10/2013 06:25:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=310, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:25:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55556
;

-- 15/10/2013 06:25:42 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=320, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:25:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55528
;

-- 15/10/2013 06:25:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=330, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:25:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55557
;

-- 15/10/2013 06:25:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=340, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:25:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

-- 15/10/2013 06:25:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=350, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:25:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 06:25:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=360, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:25:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55517
;

-- 15/10/2013 06:25:43 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=370, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:25:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55558
;

-- 15/10/2013 06:26:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Hora:',Updated=TO_DATE('2013-10-15 18:26:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55563 AND AD_Language='es_MX'
;

-- 15/10/2013 06:26:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Hora: ',Updated=TO_DATE('2013-10-15 18:26:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55563 AND AD_Language='es_MX'
;

-- 15/10/2013 06:26:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=390, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-15 18:26:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55520
;

-- 15/10/2013 06:27:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=30,Updated=TO_DATE('2013-10-15 18:27:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55516
;

-- 15/10/2013 06:29:59 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='T. Entrada:',Updated=TO_DATE('2013-10-15 18:29:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55524 AND AD_Language='es_MX'
;

-- 15/10/2013 06:30:33 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsActive='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-15 18:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55559
;

