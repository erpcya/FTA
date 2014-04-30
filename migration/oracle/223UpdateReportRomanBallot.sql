-- Oct 28, 2013 4:13:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,69427,11,50177,56028,0,0,TO_DATE('2013-10-28 16:13:35','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Pay Weight','C','F','Pay Weight',20,70,'N',0,TO_DATE('2013-10-28 16:13:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Oct 28, 2013 4:13:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=56028 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Oct 28, 2013 4:13:50 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69427) WHERE AD_PrintFormatItem_ID = 56028 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=69427 AND trl.AD_PrintFormatItem_ID = 56028) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Oct 28, 2013 4:14:25 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem_Trl SET PrintName='Peso a Pagar',Updated=TO_DATE('2013-10-28 16:14:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=56028 AND AD_Language='es_VE'
;

-- Oct 28, 2013 4:14:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-28 16:14:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=56028
;

-- Oct 28, 2013 4:14:45 PM VET
-- Farming Technical Assistance
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-28 16:14:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=56000
;

