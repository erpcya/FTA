-- Sep 10, 2013 5:19:30 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET SeqNo=170,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54273
;

-- Sep 10, 2013 5:19:30 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET SeqNo=180,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54274
;

-- Sep 10, 2013 5:19:41 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', PrintAreaType='F', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-09-10 17:19:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54273
;

-- Sep 10, 2013 5:19:49 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', PrintAreaType='F', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-09-10 17:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54274
;

-- Sep 10, 2013 5:20:56 PM VET
-- SFAndroid Contribution
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,50001,100,130,50125,54317,0,0,TO_DATE('2013-09-10 17:20:45','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','X',1,0,200,'Line','F','L',20,190,'N',0,TO_DATE('2013-09-10 17:20:45','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Sep 10, 2013 5:20:56 PM VET
-- SFAndroid Contribution
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54317 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Sep 10, 2013 5:21:08 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET SeqNo=170,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54317
;

-- Sep 10, 2013 5:21:08 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET SeqNo=180,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54273
;

-- Sep 10, 2013 5:21:08 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET SeqNo=190,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54274
;

-- Sep 10, 2013 5:21:58 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-10 17:21:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54273
;

-- Sep 10, 2013 5:22:04 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', IsRelativePosition='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-10 17:22:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54274
;

-- Sep 10, 2013 5:22:20 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-10 17:22:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54274
;

-- Sep 10, 2013 5:22:23 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='L', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-10 17:22:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54273
;

-- Sep 10, 2013 5:22:26 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSetNLPosition='Y', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-09-10 17:22:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54317
;

-- Sep 10, 2013 5:22:39 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', MaxWidth=220, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-09-10 17:22:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54317
;

-- Sep 10, 2013 5:23:53 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=100, XSpace=0, YSpace=0,Updated=TO_DATE('2013-09-10 17:23:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54317
;

-- Sep 10, 2013 5:24:02 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=200, XSpace=0, YSpace=0,Updated=TO_DATE('2013-09-10 17:24:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54317
;

-- Sep 10, 2013 5:24:14 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=180, XSpace=0, YSpace=0,Updated=TO_DATE('2013-09-10 17:24:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54317
;

-- Sep 10, 2013 5:24:41 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='N', IsPageBreak='N', IsRelativePosition='N', IsSetNLPosition='Y', SortNo=0, XPosition=185, XSpace=0, YPosition=10, YSpace=0,Updated=TO_DATE('2013-09-10 17:24:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54273
;

-- Sep 10, 2013 5:25:19 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, XSpace=10, YPosition=0,Updated=TO_DATE('2013-09-10 17:25:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54274
;

-- Sep 10, 2013 5:25:43 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, XSpace=25, YPosition=0, YSpace=10,Updated=TO_DATE('2013-09-10 17:25:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54274
;

-- Sep 10, 2013 5:26:48 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='Y', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-10 17:26:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54270
;

-- Sep 10, 2013 5:27:36 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET AD_PrintFont_ID=155, IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-10 17:27:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54270
;

-- Sep 10, 2013 5:27:46 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintName='Amount to pay:', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-10 17:27:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54270
;

-- Sep 10, 2013 5:27:46 PM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem_Trl SET PrintName='Amount to pay:',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54270
;

