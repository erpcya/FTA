-- Oct 30, 2013 2:58:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69562,2678,0,12,53656,'AvailableAmt',TO_DATE('2013-10-30 14:58:36','YYYY-MM-DD HH24:MI:SS'),100,'Amount available for allocation for this document','ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Available Amount',TO_DATE('2013-10-30 14:58:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 30, 2013 2:58:39 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69562 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 30, 2013 2:59:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,69562,0,52256,50057,50020,'LFP_AvailableAmt','LFP.AvailableAmt',TO_DATE('2013-10-30 14:58:59','YYYY-MM-DD HH24:MI:SS'),100,'Amount available for allocation for this document','ECA02','Y','Available Amount',TO_DATE('2013-10-30 14:58:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 2:59:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53410,50026,0,2678,0,12,52256,TO_DATE('2013-10-30 14:59:12','YYYY-MM-DD HH24:MI:SS'),100,'Amount available for allocation for this document','ECA02','Y','N','N','N','N','N','N','Available Amount',10,TO_DATE('2013-10-30 14:59:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 2:59:13 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53410 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 30, 2013 2:59:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-10-30 14:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53410
;

-- Oct 30, 2013 3:07:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69563,1477,0,12,53656,'PayAmt',TO_DATE('2013-10-30 15:07:13','YYYY-MM-DD HH24:MI:SS'),100,'Amount being paid','ECA02',131089,'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Y','N','N','N','N','N','N','N','N','N','Payment amount',TO_DATE('2013-10-30 15:07:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 30, 2013 3:07:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69563 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 30, 2013 3:07:28 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,69563,0,52257,50057,50020,'LFP_PayAmt','LFP.PayAmt',TO_DATE('2013-10-30 15:07:27','YYYY-MM-DD HH24:MI:SS'),100,'Amount being paid','ECA02','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Y','Payment amount',TO_DATE('2013-10-30 15:07:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 3:07:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53411,50026,0,1477,0,12,52257,TO_DATE('2013-10-30 15:07:39','YYYY-MM-DD HH24:MI:SS'),100,'Amount being paid','ECA02','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Y','N','N','N','N','N','N','Payment amount',10,TO_DATE('2013-10-30 15:07:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 30, 2013 3:07:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53411 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 30, 2013 3:07:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-10-30 15:07:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53411
;

-- Oct 30, 2013 3:07:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-10-30 15:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53397
;

-- Oct 30, 2013 3:07:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-10-30 15:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53410
;

-- Oct 30, 2013 3:08:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_DATE('2013-10-30 15:08:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53410
;

-- Oct 30, 2013 3:08:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsReadOnly='Y',Updated=TO_DATE('2013-10-30 15:08:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53397
;

-- Oct 30, 2013 3:08:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_DATE('2013-10-30 15:08:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53411
;

-- Oct 30, 2013 3:10:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET Callout=NULL,Updated=TO_DATE('2013-10-30 15:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53397
;

-- Oct 30, 2013 3:11:00 PM VET
-- Farming Technical Assistance
UPDATE AD_Browse_Field SET Callout='org.spin.model.BrowseCallOutFTAPayment.evaluatePayAmt',Updated=TO_DATE('2013-10-30 15:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53411
;

