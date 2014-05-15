-- Mar 13, 2014 5:38:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,Name,Updated,UpdatedBy) VALUES (11,11,100,130,50213,100,53081,53636,TO_TIMESTAMP('2014-03-13 17:38:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y','Detalle Letra de Cambio (Giro)',TO_TIMESTAMP('2014-03-13 17:38:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 5:38:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69187,11,50213,57183,0,TO_TIMESTAMP('2014-03-13 17:38:52','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','Y','Y','N','N','N','N','N','X',1,0,0,'Name','C','F','Name',1,'N',1,TO_TIMESTAMP('2014-03-13 17:38:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:38:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57183 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:38:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69187) WHERE AD_PrintFormatItem_ID = 57183 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69187 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57183) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:38:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69163,11,50213,57184,0,TO_TIMESTAMP('2014-03-13 17:38:55','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Active','C','F','Active',0,'N',0,TO_TIMESTAMP('2014-03-13 17:38:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:38:58 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57184 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:38:58 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69163) WHERE AD_PrintFormatItem_ID = 57184 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69163 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57184) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69170,11,50213,57185,0,TO_TIMESTAMP('2014-03-13 17:38:58','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Amount','C','F','Amt',3,'N',0,TO_TIMESTAMP('2014-03-13 17:38:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57185 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69170) WHERE AD_PrintFormatItem_ID = 57185 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69170 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57185) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69180,11,50213,57186,0,TO_TIMESTAMP('2014-03-13 17:39:00','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Amt in Words','C','F','Amt in Words',4,'N',0,TO_TIMESTAMP('2014-03-13 17:39:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57186 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:04 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69180) WHERE AD_PrintFormatItem_ID = 57186 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69180 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57186) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69177,11,50213,57187,0,TO_TIMESTAMP('2014-03-13 17:39:04','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Approved','C','F','Approved',5,'N',0,TO_TIMESTAMP('2014-03-13 17:39:04','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57187 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:07 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69177) WHERE AD_PrintFormatItem_ID = 57187 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69177 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57187) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69164,11,50213,57188,0,TO_TIMESTAMP('2014-03-13 17:39:07','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Bill of Exchange','C','F','Bill of Exchange',6,'N',0,TO_TIMESTAMP('2014-03-13 17:39:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57188 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69164) WHERE AD_PrintFormatItem_ID = 57188 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69164 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57188) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69165,11,50213,57189,0,TO_TIMESTAMP('2014-03-13 17:39:11','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Bill of Exchange View','C','F','Bill of Exchange View',0,'N',0,TO_TIMESTAMP('2014-03-13 17:39:11','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57189 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:15 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69165) WHERE AD_PrintFormatItem_ID = 57189 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69165 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57189) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69172,11,50213,57190,0,TO_TIMESTAMP('2014-03-13 17:39:15','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Business Partner ','C','F','Business Partner ',8,'N',0,TO_TIMESTAMP('2014-03-13 17:39:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57190 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69172) WHERE AD_PrintFormatItem_ID = 57190 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69172 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57190) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,71306,11,50213,57191,0,TO_TIMESTAMP('2014-03-13 17:39:18','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'City','C','F','City',9,'N',0,TO_TIMESTAMP('2014-03-13 17:39:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57191 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=71306) WHERE AD_PrintFormatItem_ID = 57191 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=71306 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57191) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,71307,11,50213,57192,0,TO_TIMESTAMP('2014-03-13 17:39:20','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'City','C','F','City',10,'N',0,TO_TIMESTAMP('2014-03-13 17:39:20','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57192 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:23 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=71307) WHERE AD_PrintFormatItem_ID = 57192 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=71307 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57192) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69157,11,50213,57193,0,TO_TIMESTAMP('2014-03-13 17:39:23','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Client','C','F','Client',0,'N',0,TO_TIMESTAMP('2014-03-13 17:39:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:27 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57193 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69157) WHERE AD_PrintFormatItem_ID = 57193 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69157 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57193) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69159,11,50213,57194,0,TO_TIMESTAMP('2014-03-13 17:39:27','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created','C','F','Created',0,'N',0,TO_TIMESTAMP('2014-03-13 17:39:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57194 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69159) WHERE AD_PrintFormatItem_ID = 57194 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69159 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57194) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69160,11,50213,57195,0,TO_TIMESTAMP('2014-03-13 17:39:30','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created By','C','F','Created By',0,'N',0,TO_TIMESTAMP('2014-03-13 17:39:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:32 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57195 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:32 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69160) WHERE AD_PrintFormatItem_ID = 57195 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69160 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57195) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69188,11,50213,57196,0,TO_TIMESTAMP('2014-03-13 17:39:32','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Credit Act','C','F','Credit Act',14,'N',0,TO_TIMESTAMP('2014-03-13 17:39:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57196 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:35 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69188) WHERE AD_PrintFormatItem_ID = 57196 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69188 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57196) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69173,11,50213,57197,0,TO_TIMESTAMP('2014-03-13 17:39:35','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Credit/Loan','C','F','Credit/Loan',15,'N',0,TO_TIMESTAMP('2014-03-13 17:39:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:37 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57197 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69173) WHERE AD_PrintFormatItem_ID = 57197 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69173 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57197) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69174,11,50213,57198,0,TO_TIMESTAMP('2014-03-13 17:39:37','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Description','C','F','Description',16,'N',0,TO_TIMESTAMP('2014-03-13 17:39:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57198 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:40 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69174) WHERE AD_PrintFormatItem_ID = 57198 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69174 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57198) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69168,11,50213,57199,0,TO_TIMESTAMP('2014-03-13 17:39:40','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Date','C','F','Doc date',17,'N',0,TO_TIMESTAMP('2014-03-13 17:39:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57199 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:44 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69168) WHERE AD_PrintFormatItem_ID = 57199 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69168 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57199) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69167,11,50213,57200,0,TO_TIMESTAMP('2014-03-13 17:39:44','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document No','C','F','Document No',18,'N',0,TO_TIMESTAMP('2014-03-13 17:39:44','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57200 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:46 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69167) WHERE AD_PrintFormatItem_ID = 57200 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69167 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57200) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:39:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69175,11,50213,57201,0,TO_TIMESTAMP('2014-03-13 17:39:46','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Status','C','F','Doc Status',19,'N',0,TO_TIMESTAMP('2014-03-13 17:39:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:39:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57201 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:39:53 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69175) WHERE AD_PrintFormatItem_ID = 57201 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69175 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57201) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:40:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69166,11,50213,57202,0,TO_TIMESTAMP('2014-03-13 17:39:53','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document Type','C','F','Doc Type',20,'N',0,TO_TIMESTAMP('2014-03-13 17:39:53','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:40:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57202 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:40:00 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69166) WHERE AD_PrintFormatItem_ID = 57202 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69166 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57202) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:40:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69158,11,50213,57203,0,TO_TIMESTAMP('2014-03-13 17:40:00','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Organization','C','F','Organization',0,'N',0,TO_TIMESTAMP('2014-03-13 17:40:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:40:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57203 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:40:04 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69158) WHERE AD_PrintFormatItem_ID = 57203 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69158 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57203) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:40:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69184,11,50213,57204,0,TO_TIMESTAMP('2014-03-13 17:40:04','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Partner Location','C','F','Partner Location',22,'N',0,TO_TIMESTAMP('2014-03-13 17:40:04','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:40:06 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57204 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:40:06 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69184) WHERE AD_PrintFormatItem_ID = 57204 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69184 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57204) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:40:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69178,11,50213,57205,0,TO_TIMESTAMP('2014-03-13 17:40:06','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Processed','C','F','Processed',23,'N',0,TO_TIMESTAMP('2014-03-13 17:40:06','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:40:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57205 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:40:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69178) WHERE AD_PrintFormatItem_ID = 57205 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69178 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57205) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:40:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69183,11,50213,57206,0,TO_TIMESTAMP('2014-03-13 17:40:10','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Region','C','F','Region',24,'N',0,TO_TIMESTAMP('2014-03-13 17:40:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:40:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57206 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:40:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69183) WHERE AD_PrintFormatItem_ID = 57206 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69183 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57206) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:40:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69179,11,50213,57207,0,TO_TIMESTAMP('2014-03-13 17:40:13','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Status','C','F','Status',25,'N',0,TO_TIMESTAMP('2014-03-13 17:40:13','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:40:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57207 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:40:16 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69179) WHERE AD_PrintFormatItem_ID = 57207 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69179 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57207) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:40:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69161,11,50213,57208,0,TO_TIMESTAMP('2014-03-13 17:40:16','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated','C','F','Updated',0,'N',0,TO_TIMESTAMP('2014-03-13 17:40:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:40:18 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57208 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:40:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69161) WHERE AD_PrintFormatItem_ID = 57208 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69161 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57208) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:40:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69162,11,50213,57209,0,TO_TIMESTAMP('2014-03-13 17:40:18','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated By','C','F','Updated By',0,'N',0,TO_TIMESTAMP('2014-03-13 17:40:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:40:20 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57209 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:40:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69162) WHERE AD_PrintFormatItem_ID = 57209 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69162 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57209) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:40:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69169,11,50213,57210,0,TO_TIMESTAMP('2014-03-13 17:40:20','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Valid to','C','F','Valid to',28,'N',0,TO_TIMESTAMP('2014-03-13 17:40:20','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Mar 13, 2014 5:40:23 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=57210 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Mar 13, 2014 5:40:23 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69169) WHERE AD_PrintFormatItem_ID = 57210 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69169 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 57210) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Mar 13, 2014 5:41:35 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57204
;

-- Mar 13, 2014 5:41:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57205
;

-- Mar 13, 2014 5:41:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57206
;

-- Mar 13, 2014 5:41:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57207
;

-- Mar 13, 2014 5:41:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=10, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 5:41:36 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57200
;

-- Mar 13, 2014 5:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57199
;

-- Mar 13, 2014 5:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57188
;

-- Mar 13, 2014 5:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57202
;

-- Mar 13, 2014 5:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57190
;

-- Mar 13, 2014 5:41:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=70, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57183
;

-- Mar 13, 2014 5:41:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57185
;

-- Mar 13, 2014 5:41:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57186
;

-- Mar 13, 2014 5:41:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57187
;

-- Mar 13, 2014 5:41:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57191
;

-- Mar 13, 2014 5:41:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57192
;

-- Mar 13, 2014 5:41:38 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57196
;

-- Mar 13, 2014 5:41:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57198
;

-- Mar 13, 2014 5:41:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57201
;

-- Mar 13, 2014 5:41:39 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=160, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57210
;

-- Mar 13, 2014 5:41:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57191
;

-- Mar 13, 2014 5:41:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57192
;

-- Mar 13, 2014 5:41:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57210
;

-- Mar 13, 2014 5:41:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57196
;

-- Mar 13, 2014 5:41:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57188
;

-- Mar 13, 2014 5:41:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57202
;

-- Mar 13, 2014 5:41:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57190
;

-- Mar 13, 2014 5:41:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=80, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57183
;

-- Mar 13, 2014 5:41:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57185
;

-- Mar 13, 2014 5:41:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57186
;

-- Mar 13, 2014 5:41:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57187
;

-- Mar 13, 2014 5:41:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57198
;

-- Mar 13, 2014 5:41:58 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:41:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57201
;

-- Mar 13, 2014 5:42:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=10, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57202
;

-- Mar 13, 2014 5:42:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57188
;

-- Mar 13, 2014 5:42:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 5:42:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57200
;

-- Mar 13, 2014 5:42:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57199
;

-- Mar 13, 2014 5:42:12 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57196
;

-- Mar 13, 2014 5:42:27 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='Y', IsOrderBy='Y', MaxWidth=60, SortNo=1, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57202
;

-- Mar 13, 2014 5:42:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 5:42:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57188
;

-- Mar 13, 2014 5:42:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57196
;

-- Mar 13, 2014 5:42:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57200
;

-- Mar 13, 2014 5:42:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57199
;

-- Mar 13, 2014 5:43:04 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='Y', IsOrderBy='Y', SortNo=2, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:43:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 5:43:26 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', MaxWidth=60, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 5:43:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57188
;

-- Mar 13, 2014 5:43:35 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:43:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57196
;

-- Mar 13, 2014 5:44:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:44:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57190
;

-- Mar 13, 2014 5:44:22 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', MaxWidth=50, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:44:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57183
;

-- Mar 13, 2014 5:47:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57191
;

-- Mar 13, 2014 5:47:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 17:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57192
;

-- Mar 13, 2014 5:58:24 PM VET
-- Farming Technical Assistance
DELETE FROM AD_PrintFormat WHERE AD_PrintFormat_ID=50172
;

-- Mar 13, 2014 6:02:31 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsSuppressRepeats='Y', XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:02:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57202
;

-- Mar 13, 2014 6:02:35 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsSuppressRepeats='Y', XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:02:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 6:04:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:04:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57188
;

-- Mar 13, 2014 6:04:11 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=30, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:04:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 6:04:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='Y', IsOrderBy='Y', SortNo=2, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:04:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57188
;

-- Mar 13, 2014 6:04:25 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET SortNo=3, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 6:05:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:05:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57196
;

-- Mar 13, 2014 6:05:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=30, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:05:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57188
;

-- Mar 13, 2014 6:05:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=40, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:05:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 6:05:30 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='Y', IsOrderBy='Y', IsSuppressRepeats='Y', SortNo=2, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:05:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57196
;

-- Mar 13, 2014 6:05:37 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsOrderBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:05:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57188
;

-- Mar 13, 2014 6:05:40 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsOrderBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:05:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 6:06:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:06:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 6:06:57 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:06:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57188
;

-- Mar 13, 2014 6:07:09 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='Y', IsOrderBy='Y', SortNo=3, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:07:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 6:08:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57200
;

-- Mar 13, 2014 6:08:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57199
;

-- Mar 13, 2014 6:08:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57190
;

-- Mar 13, 2014 6:08:18 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=70, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57183
;

-- Mar 13, 2014 6:08:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57185
;

-- Mar 13, 2014 6:08:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57186
;

-- Mar 13, 2014 6:08:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57187
;

-- Mar 13, 2014 6:08:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57198
;

-- Mar 13, 2014 6:08:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57201
;

-- Mar 13, 2014 6:08:19 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57191
;

-- Mar 13, 2014 6:08:20 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:08:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57192
;

-- Mar 13, 2014 6:10:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsOrderBy='Y', SortNo=10, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:10:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57202
;

-- Mar 13, 2014 6:10:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsOrderBy='Y', SortNo=20, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:10:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57183
;

-- Mar 13, 2014 6:10:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsOrderBy='Y', SortNo=30, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:10:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57196
;

-- Mar 13, 2014 6:10:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsOrderBy='Y', SortNo=40, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:10:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57197
;

-- Mar 13, 2014 6:10:15 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsOrderBy='Y', SortNo=50, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:10:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57199
;

-- Mar 13, 2014 6:10:25 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSuppressRepeats='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:10:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57190
;

-- Mar 13, 2014 6:11:17 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET BelowColumn=4, IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57198
;

-- Mar 13, 2014 6:12:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:12:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57192
;

-- Mar 13, 2014 6:12:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:12:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57191
;

-- Mar 13, 2014 6:12:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsPrinted='N', SeqNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:12:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57183
;

-- Mar 13, 2014 6:12:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:12:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57185
;

-- Mar 13, 2014 6:12:55 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:12:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57186
;

-- Mar 13, 2014 6:12:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:12:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57187
;

-- Mar 13, 2014 6:12:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:12:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57198
;

-- Mar 13, 2014 6:12:56 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=110, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:12:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57201
;

-- Mar 13, 2014 6:15:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Letra de Cambio (Giro)',Updated=TO_TIMESTAMP('2014-03-13 18:15:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53636 AND AD_Language='es_MX'
;

-- Mar 13, 2014 6:15:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Table_Trl SET Name='Letra de Cambio (Giro)',Updated=TO_TIMESTAMP('2014-03-13 18:15:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53636 AND AD_Language='es_VE'
;

-- Mar 13, 2014 6:16:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53671,TO_TIMESTAMP('2014-03-13 18:16:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','FTA_BillOfExchange',TO_TIMESTAMP('2014-03-13 18:16:25','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Mar 13, 2014 6:16:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53671 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Mar 13, 2014 6:16:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference SET Name='FTA_BillOfExchange Reference',Updated=TO_TIMESTAMP('2014-03-13 18:16:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53671
;

-- Mar 13, 2014 6:16:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53671
;

-- Mar 13, 2014 6:17:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,69130,69136,0,53671,53634,TO_TIMESTAMP('2014-03-13 18:17:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2014-03-13 18:17:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 13, 2014 6:17:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53671,Updated=TO_TIMESTAMP('2014-03-13 18:17:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69164
;

-- Mar 13, 2014 6:18:10 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSuppressNull='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:18:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57198
;

-- Mar 13, 2014 6:19:23 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:19:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57201
;

-- Mar 13, 2014 6:20:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:20:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57186
;

-- Mar 13, 2014 6:20:13 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:20:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57187
;

-- Mar 13, 2014 6:20:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=90, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:20:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57198
;

-- Mar 13, 2014 6:20:14 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=100, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2014-03-13 18:20:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=57201
;

UPDATE AD_PrintFormat SET AD_Client_ID = 0, AD_Org_ID = 0 WHERE AD_PrintFormat_ID = 50213;
UPDATE AD_PrintFormatItem SET AD_Client_ID =0, AD_Org_ID = 0 WHERE AD_PrintFormat_ID = 50213;
UPDATE AD_PrintFormatItem_Trl SET AD_Client_ID = 0, AD_Org_ID = 0 WHERE AD_PrintFormatItem_ID IN(
SELECT pfi.AD_PrintFormatItem_ID FROM 
AD_PrintFormatItem pfi WHERE pfi.AD_PrintFormat_ID = 50213);
