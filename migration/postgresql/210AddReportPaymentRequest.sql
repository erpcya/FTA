-- Oct 25, 2013 9:51:01 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,Name,Updated,UpdatedBy) VALUES (11,11,100,130,50176,100,53083,53651,TO_TIMESTAMP('2013-10-25 09:50:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y','Report Payment Request',TO_TIMESTAMP('2013-10-25 09:50:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 25, 2013 9:51:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69406,11,50176,55959,0,TO_TIMESTAMP('2013-10-25 09:51:01','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','Y','Y','N','N','N','N','N','X',1,0,0,'Name','C','F','Name',1,'N',1,TO_TIMESTAMP('2013-10-25 09:51:01','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:02 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55959 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:02 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69406) WHERE AD_PrintFormatItem_ID = 55959 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69406 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55959) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69389,11,50176,55960,0,TO_TIMESTAMP('2013-10-25 09:51:02','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Active','C','F','Active',0,'N',0,TO_TIMESTAMP('2013-10-25 09:51:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:04 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55960 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69389) WHERE AD_PrintFormatItem_ID = 55960 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69389 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55960) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69405,11,50176,55961,0,TO_TIMESTAMP('2013-10-25 09:51:04','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Approved','C','F','Approved',3,'N',0,TO_TIMESTAMP('2013-10-25 09:51:04','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55961 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:05 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69405) WHERE AD_PrintFormatItem_ID = 55961 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69405 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55961) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69392,11,50176,55962,0,TO_TIMESTAMP('2013-10-25 09:51:05','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'BP Name','C','F','BP Name',4,'N',0,TO_TIMESTAMP('2013-10-25 09:51:05','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:05 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55962 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:05 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69392) WHERE AD_PrintFormatItem_ID = 55962 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69392 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55962) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69390,11,50176,55963,0,TO_TIMESTAMP('2013-10-25 09:51:05','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Business Partner ','C','F','Business Partner ',5,'N',0,TO_TIMESTAMP('2013-10-25 09:51:05','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:06 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55963 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:06 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69390) WHERE AD_PrintFormatItem_ID = 55963 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69390 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55963) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69395,11,50176,55964,0,TO_TIMESTAMP('2013-10-25 09:51:06','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Charge','C','F','Charge',6,'N',0,TO_TIMESTAMP('2013-10-25 09:51:06','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:07 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55964 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:07 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69395) WHERE AD_PrintFormatItem_ID = 55964 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69395 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55964) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69383,11,50176,55965,0,TO_TIMESTAMP('2013-10-25 09:51:07','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Client','C','F','Client',0,'N',0,TO_TIMESTAMP('2013-10-25 09:51:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:08 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55965 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:08 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69383) WHERE AD_PrintFormatItem_ID = 55965 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69383 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55965) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69385,11,50176,55966,0,TO_TIMESTAMP('2013-10-25 09:51:09','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created','C','F','Created',0,'N',0,TO_TIMESTAMP('2013-10-25 09:51:09','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:10 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55966 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:10 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69385) WHERE AD_PrintFormatItem_ID = 55966 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69385 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55966) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:11 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69386,11,50176,55967,0,TO_TIMESTAMP('2013-10-25 09:51:10','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created By','C','F','Created By',0,'N',0,TO_TIMESTAMP('2013-10-25 09:51:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:12 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55967 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:12 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69386) WHERE AD_PrintFormatItem_ID = 55967 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69386 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55967) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69402,11,50176,55968,0,TO_TIMESTAMP('2013-10-25 09:51:12','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Credit/Loan','C','F','Credit/Loan',10,'N',0,TO_TIMESTAMP('2013-10-25 09:51:12','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:13 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55968 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:13 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69402) WHERE AD_PrintFormatItem_ID = 55968 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69402 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55968) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:14 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69397,11,50176,55969,0,TO_TIMESTAMP('2013-10-25 09:51:13','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Description','C','F','Description',11,'N',0,TO_TIMESTAMP('2013-10-25 09:51:13','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55969 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:15 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69397) WHERE AD_PrintFormatItem_ID = 55969 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69397 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55969) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69399,11,50176,55970,0,TO_TIMESTAMP('2013-10-25 09:51:15','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Date','C','F','Doc date',12,'N',0,TO_TIMESTAMP('2013-10-25 09:51:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:16 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55970 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:16 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69399) WHERE AD_PrintFormatItem_ID = 55970 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69399 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55970) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69401,11,50176,55971,0,TO_TIMESTAMP('2013-10-25 09:51:16','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document No','C','F','Document No',13,'N',0,TO_TIMESTAMP('2013-10-25 09:51:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:17 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55971 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:17 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69401) WHERE AD_PrintFormatItem_ID = 55971 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69401 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55971) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:18 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69400,11,50176,55972,0,TO_TIMESTAMP('2013-10-25 09:51:17','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Status','C','F','Doc Status',14,'N',0,TO_TIMESTAMP('2013-10-25 09:51:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:18 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55972 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:18 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69400) WHERE AD_PrintFormatItem_ID = 55972 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69400 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55972) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69398,11,50176,55973,0,TO_TIMESTAMP('2013-10-25 09:51:18','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Type','C','F','Doc Type',15,'N',0,TO_TIMESTAMP('2013-10-25 09:51:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55973 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:19 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69398) WHERE AD_PrintFormatItem_ID = 55973 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69398 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55973) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69403,11,50176,55974,0,TO_TIMESTAMP('2013-10-25 09:51:19','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Farmer Liquidation','C','F','Farmer Liquidation',16,'N',0,TO_TIMESTAMP('2013-10-25 09:51:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:19 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55974 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:19 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69403) WHERE AD_PrintFormatItem_ID = 55974 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69403 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55974) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69396,11,50176,55975,0,TO_TIMESTAMP('2013-10-25 09:51:19','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Item','C','F','Item',17,'N',0,TO_TIMESTAMP('2013-10-25 09:51:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:20 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55975 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:20 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69396) WHERE AD_PrintFormatItem_ID = 55975 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69396 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55975) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69410,11,50176,55976,0,TO_TIMESTAMP('2013-10-25 09:51:20','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Org Address','C','F','Org Address',18,'N',0,TO_TIMESTAMP('2013-10-25 09:51:20','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55976 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:22 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69410) WHERE AD_PrintFormatItem_ID = 55976 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69410 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55976) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:23 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69384,11,50176,55977,0,TO_TIMESTAMP('2013-10-25 09:51:22','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Organization','C','F','Organization',0,'N',0,TO_TIMESTAMP('2013-10-25 09:51:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:23 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55977 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69384) WHERE AD_PrintFormatItem_ID = 55977 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69384 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55977) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:23 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69393,11,50176,55978,0,TO_TIMESTAMP('2013-10-25 09:51:23','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Partner Location','C','F','Partner Location',20,'N',0,TO_TIMESTAMP('2013-10-25 09:51:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:24 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55978 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:24 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69393) WHERE AD_PrintFormatItem_ID = 55978 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69393 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55978) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69391,11,50176,55979,0,TO_TIMESTAMP('2013-10-25 09:51:24','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Partner Tax ID','C','F','BP Tax TD',21,'N',0,TO_TIMESTAMP('2013-10-25 09:51:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55979 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:26 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69391) WHERE AD_PrintFormatItem_ID = 55979 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69391 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55979) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69407,11,50176,55980,0,TO_TIMESTAMP('2013-10-25 09:51:26','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Payment amount','C','F','Payment Amt',22,'N',0,TO_TIMESTAMP('2013-10-25 09:51:26','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:27 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55980 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:27 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69407) WHERE AD_PrintFormatItem_ID = 55980 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69407 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55980) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69404,11,50176,55981,0,TO_TIMESTAMP('2013-10-25 09:51:27','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Payment Request','C','F','Payment Request',23,'N',0,TO_TIMESTAMP('2013-10-25 09:51:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55981 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:28 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69404) WHERE AD_PrintFormatItem_ID = 55981 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69404 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55981) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69394,11,50176,55982,0,TO_TIMESTAMP('2013-10-25 09:51:28','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Product','C','F','Product',24,'N',0,TO_TIMESTAMP('2013-10-25 09:51:28','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:29 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55982 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:29 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69394) WHERE AD_PrintFormatItem_ID = 55982 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69394 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55982) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69409,11,50176,55983,0,TO_TIMESTAMP('2013-10-25 09:51:29','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Tax ID','C','F','Tax ID',25,'N',0,TO_TIMESTAMP('2013-10-25 09:51:29','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55983 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:30 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69409) WHERE AD_PrintFormatItem_ID = 55983 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69409 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55983) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69387,11,50176,55984,0,TO_TIMESTAMP('2013-10-25 09:51:30','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated','C','F','Updated',0,'N',0,TO_TIMESTAMP('2013-10-25 09:51:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:31 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55984 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:31 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69387) WHERE AD_PrintFormatItem_ID = 55984 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69387 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55984) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69388,11,50176,55985,0,TO_TIMESTAMP('2013-10-25 09:51:31','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated By','C','F','Updated By',0,'N',0,TO_TIMESTAMP('2013-10-25 09:51:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55985 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:37 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69388) WHERE AD_PrintFormatItem_ID = 55985 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69388 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55985) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:51:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69408,11,50176,55986,0,TO_TIMESTAMP('2013-10-25 09:51:37','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'View Payment Request','C','F','View Payment Request',0,'N',0,TO_TIMESTAMP('2013-10-25 09:51:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 9:51:38 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55986 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 9:51:38 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69408) WHERE AD_PrintFormatItem_ID = 55986 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69408 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 55986) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 25, 2013 9:58:25 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET AD_PrintFont_ID=133, AD_PrintPaper_ID=101, IsForm='Y', IsStandardHeaderFooter='N',Updated=TO_TIMESTAMP('2013-10-25 09:58:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50176
;

-- Oct 25, 2013 9:59:53 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55961
;

-- Oct 25, 2013 9:59:53 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55963
;

-- Oct 25, 2013 9:59:53 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55964
;

-- Oct 25, 2013 9:59:53 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55968
;

-- Oct 25, 2013 9:59:53 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55969
;

-- Oct 25, 2013 9:59:53 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55974
;

-- Oct 25, 2013 9:59:53 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55975
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55959
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55981
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55980
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55982
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=10,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55965
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=20,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55977
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=30,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55983
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=40,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55976
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55962
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=60,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55978
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=70,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55979
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=80,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55973
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=90,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55971
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=100,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55970
;

-- Oct 25, 2013 9:59:54 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=110,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55972
;

-- Oct 25, 2013 10:00:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,11,100,130,50176,55987,0,0,TO_TIMESTAMP('2013-10-25 10:00:23','YYYY-MM-DD HH24:MI:SS'),100,'D','Y','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','Y','N','N','N','N','X',1,0,90,'Logo','H','I',20,120,'N',0,TO_TIMESTAMP('2013-10-25 10:00:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 25, 2013 10:00:30 AM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55987 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=10,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55987
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=20,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=1000000
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=30,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55965
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=40,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55977
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55983
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=60,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55976
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=80,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55962
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=90,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55978
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=100,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55973
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=110,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55971
;

-- Oct 25, 2013 10:16:42 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=120,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55970
;

-- Oct 25, 2013 10:16:43 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=130,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55972
;

-- Oct 25, 2013 10:20:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=140,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55964
;

-- Oct 25, 2013 10:20:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=150,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55968
;

-- Oct 25, 2013 10:20:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=160,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55969
;

-- Oct 25, 2013 10:20:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=170,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55974
;

-- Oct 25, 2013 10:20:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=180,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55975
;

-- Oct 25, 2013 10:20:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=190,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55980
;

-- Oct 25, 2013 10:20:55 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=200,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55959
;

-- Oct 25, 2013 10:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=55964
;

-- Oct 25, 2013 10:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=100,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55968
;

-- Oct 25, 2013 10:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=110,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55974
;

-- Oct 25, 2013 10:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=120,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55973
;

-- Oct 25, 2013 10:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=130,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55971
;

-- Oct 25, 2013 10:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=140,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55970
;

-- Oct 25, 2013 10:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=150,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55972
;

-- Oct 25, 2013 10:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=160,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55959
;

-- Oct 25, 2013 10:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=170,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55975
;

-- Oct 25, 2013 10:23:35 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=180,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55969
;

-- Oct 25, 2013 10:24:04 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsRelativePosition='N', IsSetNLPosition='Y', PrintAreaType='H', XPosition=100, XSpace=0, YSpace=0,Updated=TO_TIMESTAMP('2013-10-25 10:24:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55959
;

-- Oct 25, 2013 10:24:21 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 10:24:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55975
;

-- Oct 25, 2013 10:24:30 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 10:24:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55969
;

-- Oct 25, 2013 10:24:47 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 10:24:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55980
;

-- Oct 25, 2013 10:26:57 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', IsSetNLPosition='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 10:26:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55962
;

-- Oct 25, 2013 10:27:09 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='N', IsPageBreak='N', IsRelativePosition='N', IsSetNLPosition='Y', SortNo=0, XSpace=0, YPosition=100, YSpace=0,Updated=TO_TIMESTAMP('2013-10-25 10:27:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55979
;

-- Oct 25, 2013 10:27:18 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 10:27:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55968
;

-- Oct 25, 2013 10:27:29 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='L', PrintAreaType='H', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 10:27:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55974
;

-- Oct 25, 2013 10:27:48 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET XPosition=0, XSpace=0, YPosition=200, YSpace=0,Updated=TO_TIMESTAMP('2013-10-25 10:27:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55959
;

-- Oct 25, 2013 10:30:45 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=19, AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2013-10-25 10:30:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69383
;

-- Oct 25, 2013 10:32:26 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormat SET HeaderMargin=300,Updated=TO_TIMESTAMP('2013-10-25 10:32:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50176
;

-- Oct 25, 2013 10:34:12 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSetNLPosition='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_TIMESTAMP('2013-10-25 10:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55987
;

-- Oct 25, 2013 10:34:31 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 10:34:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55977
;

-- Oct 25, 2013 10:34:48 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 10:34:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55962
;

-- Oct 25, 2013 11:09:50 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=200,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55966
;

-- Oct 25, 2013 11:09:50 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SeqNo=210,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=55967
;

-- Oct 25, 2013 11:10:09 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='C', IsGroupBy='N', IsPageBreak='N', LineAlignmentType='C', PrintAreaType='F', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 11:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55966
;

-- Oct 25, 2013 11:10:23 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET FieldAlignmentType='C', IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', LineAlignmentType='C', PrintAreaType='F', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 11:10:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55967
;

-- Oct 25, 2013 11:11:07 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-10-25 11:11:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55968
;

-- Oct 25, 2013 11:12:01 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=20,Updated=TO_TIMESTAMP('2013-10-25 11:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55975
;

-- Oct 25, 2013 11:12:05 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=20,Updated=TO_TIMESTAMP('2013-10-25 11:12:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55969
;

-- Oct 25, 2013 11:12:17 AM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0, YSpace=20,Updated=TO_TIMESTAMP('2013-10-25 11:12:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55980
;

UPDATE AD_PrintFormat SET AD_Client_ID = 0, AD_Org_ID = 0 WHERE AD_PrintFormat_ID = 50176;
UPDATE AD_PrintFormatItem SET AD_Client_ID = 0, AD_Org_ID = 0 WHERE AD_PrintFormat_ID = 50176;
UPDATE AD_PrintFormatItem_Trl SET AD_Client_ID = 0, AD_Org_ID = 0 WHERE AD_PrintFormatItem_ID IN(
SELECT pfi.AD_PrintFormatItem_ID FROM 
AD_PrintFormatItem pfi WHERE pfi.AD_PrintFormat_ID = 50176);