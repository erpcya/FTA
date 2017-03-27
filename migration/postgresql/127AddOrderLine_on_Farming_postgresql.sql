-- Oct 5, 2013 11:05:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Driver.M_Shipper_ID = @M_Shipper_ID@ OR FTA_Driver.M_Shipper_ID = 0',Updated=TO_TIMESTAMP('2013-10-05 11:05:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52220
;

-- Oct 5, 2013 11:05:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Vehicle.M_Shipper_ID = @M_Shipper_ID@ OR FTA_Vehicle.M_Shipper_ID = 0',Updated=TO_TIMESTAMP('2013-10-05 11:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52221
;

-- Oct 5, 2013 11:10:39 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Vehicle.M_Shipper_ID = @M_Shipper_ID@ OR FTA_Vehicle.M_Shipper_ID = -1',Updated=TO_TIMESTAMP('2013-10-05 11:10:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52221
;

-- Oct 5, 2013 11:17:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Vehicle.M_Shipper_ID = @M_Shipper_ID@ OR @M_Shipper_ID@ = -1',Updated=TO_TIMESTAMP('2013-10-05 11:17:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52221
;

-- Oct 5, 2013 11:18:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Vehicle.M_Shipper_ID = @M_Shipper_ID@ OR @M_Shipper_ID@ = 0',Updated=TO_TIMESTAMP('2013-10-05 11:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52221
;

-- Oct 5, 2013 11:20:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Driver.M_Shipper_ID = @M_Shipper_ID@ OR @M_Shipper_ID@ = 0',Updated=TO_TIMESTAMP('2013-10-05 11:20:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52220
;

-- Oct 5, 2013 11:31:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68509,56396,0,19,53544,'FTA_CreditAct_ID',TO_TIMESTAMP('2013-10-05 11:31:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','Y','N','N','N','Credit Act',0,TO_TIMESTAMP('2013-10-05 11:31:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 5, 2013 11:31:51 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68509 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 5, 2013 11:32:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68509,69780,0,53721,TO_TIMESTAMP('2013-10-05 11:32:41','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Credit Act',TO_TIMESTAMP('2013-10-05 11:32:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 11:32:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69780 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 11:32:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66660,69781,0,53721,TO_TIMESTAMP('2013-10-05 11:32:42','YYYY-MM-DD HH24:MI:SS'),100,'Order',10,'ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Y','Y','N','N','N','N','N','Order',TO_TIMESTAMP('2013-10-05 11:32:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 11:32:42 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69781 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 11:33:02 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=69781
;

-- Oct 5, 2013 11:33:02 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=69781
;

-- Oct 5, 2013 11:33:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68120
;

-- Oct 5, 2013 11:33:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=69780
;

-- Oct 5, 2013 11:37:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68229
;

-- Oct 5, 2013 11:37:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=69780
;

-- Oct 5, 2013 11:37:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-05 11:37:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69780
;

-- Oct 5, 2013 11:37:37 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C'' | @CreditType@=''A''',Updated=TO_TIMESTAMP('2013-10-05 11:37:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69780
;

-- Oct 5, 2013 11:39:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C'' | @CreditType@=''R''',Updated=TO_TIMESTAMP('2013-10-05 11:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69780
;

-- Oct 5, 2013 11:40:38 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-10-05 11:40:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69780
;

-- Oct 5, 2013 11:41:04 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='N',Updated=TO_TIMESTAMP('2013-10-05 11:41:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- Oct 5, 2013 11:41:11 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='N',Updated=TO_TIMESTAMP('2013-10-05 11:41:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68509
;

-- Oct 5, 2013 11:41:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_TIMESTAMP('2013-10-05 11:41:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68509
;

-- Oct 5, 2013 11:42:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_TIMESTAMP('2013-10-05 11:42:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66694
;

-- Oct 5, 2013 11:42:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68509,69782,0,53775,TO_TIMESTAMP('2013-10-05 11:42:54','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Credit Act',TO_TIMESTAMP('2013-10-05 11:42:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 11:42:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69782 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 11:42:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66660,69783,0,53775,TO_TIMESTAMP('2013-10-05 11:42:54','YYYY-MM-DD HH24:MI:SS'),100,'Order',10,'ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Y','Y','N','N','N','N','N','Order',TO_TIMESTAMP('2013-10-05 11:42:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 11:42:55 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69783 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 11:43:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=69701
;

-- Oct 5, 2013 11:43:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=69702
;

-- Oct 5, 2013 11:43:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=69782
;

-- Oct 5, 2013 11:43:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=69783
;

-- Oct 5, 2013 11:43:10 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=69783
;

-- Oct 5, 2013 11:43:10 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=69783
;

-- Oct 5, 2013 11:43:30 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-10-05 11:43:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69782
;

-- Oct 5, 2013 11:44:00 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C'' | @CreditType@=''R''',Updated=TO_TIMESTAMP('2013-10-05 11:44:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69782
;

-- Oct 5, 2013 11:44:23 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=66660
;

-- Oct 5, 2013 11:44:23 AM VET
-- Farming Technical Assistance
DELETE FROM AD_Column WHERE AD_Column_ID=66660
;

-- Oct 5, 2013 11:48:16 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_TIMESTAMP('2013-10-05 11:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68149
;

-- Oct 5, 2013 11:48:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2013-10-05 11:48:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68156
;

-- Oct 5, 2013 11:48:57 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_TIMESTAMP('2013-10-05 11:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68152
;

-- Oct 5, 2013 11:51:03 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsSelectionColumn='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-10-05 11:51:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66550
;

-- Oct 5, 2013 12:09:30 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2013-10-05 12:09:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68191
;

-- Oct 5, 2013 12:09:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2013-10-05 12:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68192
;

-- Oct 5, 2013 12:09:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-10-05 12:09:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68193
;

-- Oct 5, 2013 12:09:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsFieldOnly='N', IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-10-05 12:09:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68192
;

-- Oct 5, 2013 12:09:54 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsFieldOnly='N', IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-10-05 12:09:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68191
;

-- Oct 5, 2013 12:13:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68510,561,0,19,53509,'C_OrderLine_ID',TO_TIMESTAMP('2013-10-05 12:13:45','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line','ECA02',10,'The Sales Order Line is a unique identifier for a line in an order.','Y','Y','Y','N','N','N','N','N','N','N','N','N','Y','Sales Order Line',0,TO_TIMESTAMP('2013-10-05 12:13:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 5, 2013 12:13:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68510 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 5, 2013 12:13:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='N',Updated=TO_TIMESTAMP('2013-10-05 12:13:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68510
;

-- Oct 5, 2013 12:14:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68510,69784,0,53725,TO_TIMESTAMP('2013-10-05 12:14:11','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line',10,'ECA02','The Sales Order Line is a unique identifier for a line in an order.','Y','Y','Y','N','N','N','N','N','Sales Order Line',TO_TIMESTAMP('2013-10-05 12:14:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 12:14:11 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69784 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 12:14:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-10-05 12:14:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69784
;

-- Oct 5, 2013 12:15:29 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@C_OrderLine_ID@!0',Updated=TO_TIMESTAMP('2013-10-05 12:15:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66348
;

-- Oct 5, 2013 12:54:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56447,0,'EstimateQty',TO_TIMESTAMP('2013-10-05 12:54:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Estimate Quantity','Estimate Quantity',TO_TIMESTAMP('2013-10-05 12:54:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 12:54:08 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56447 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 5, 2013 12:54:23 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Estimar Cantidad',PrintName='Estimar Cantidad',Updated=TO_TIMESTAMP('2013-10-05 12:54:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56447 AND AD_Language='es_VE'
;

-- Oct 5, 2013 12:54:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Element_ID=56447, ColumnName='EstimateQty', Description=NULL, Help=NULL, Name='Estimate Quantity',Updated=TO_TIMESTAMP('2013-10-05 12:54:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66348
;

-- Oct 5, 2013 12:54:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=66348
;

-- Oct 5, 2013 12:54:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='Estimate Quantity', Description=NULL, Help=NULL WHERE AD_Column_ID=66348 AND IsCentrallyMaintained='Y'
;

-- Oct 5, 2013 12:55:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2013-10-05 12:55:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66348
;

-- Oct 5, 2013 12:56:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2013-10-05 12:56:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66348
;

-- Oct 5, 2013 12:56:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='N',Updated=TO_TIMESTAMP('2013-10-05 12:56:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66348
;

-- Oct 5, 2013 1:16:21 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68476
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68476
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68477
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68477
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68478
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68478
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68479
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68479
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68480
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68480
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68481
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68481
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68482
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68482
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68483
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68483
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68484
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68484
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68485
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68485
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68486
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68486
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68487
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68487
;

-- Oct 5, 2013 1:16:22 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68488
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68488
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68489
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68489
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68490
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68490
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68491
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68491
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68492
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68492
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68493
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68493
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68495
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68495
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68496
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68496
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68497
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68497
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68498
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68498
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68499
;

-- Oct 5, 2013 1:16:23 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68499
;

-- Oct 5, 2013 1:16:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=68500
;

-- Oct 5, 2013 1:16:31 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68500
;

-- Oct 5, 2013 1:16:31 PM VET
-- Farming Technical Assistance
DELETE FROM AD_Field WHERE AD_Field_ID=68500
;

-- Oct 5, 2013 1:16:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65851,69785,0,53739,TO_TIMESTAMP('2013-10-05 13:16:44','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',10,TO_TIMESTAMP('2013-10-05 13:16:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69785 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65852,69786,0,53739,TO_TIMESTAMP('2013-10-05 13:16:45','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_TIMESTAMP('2013-10-05 13:16:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69786 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65862,69787,0,53739,TO_TIMESTAMP('2013-10-05 13:16:45','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','Y','N','Farm Division',30,TO_TIMESTAMP('2013-10-05 13:16:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:45 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69787 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,67109,69788,0,53739,TO_TIMESTAMP('2013-10-05 13:16:45','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit or Loan',10,'ECA02','Y','Y','Y','N','N','N','Y','Y','Credit/Loan',40,TO_TIMESTAMP('2013-10-05 13:16:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69788 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65856,69789,0,53739,TO_TIMESTAMP('2013-10-05 13:16:46','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',50,TO_TIMESTAMP('2013-10-05 13:16:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69789 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65857,69790,0,53739,TO_TIMESTAMP('2013-10-05 13:16:46','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',60,TO_TIMESTAMP('2013-10-05 13:16:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69790 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65855,69791,0,53739,TO_TIMESTAMP('2013-10-05 13:16:47','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',70,TO_TIMESTAMP('2013-10-05 13:16:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69791 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65863,69792,0,53739,TO_TIMESTAMP('2013-10-05 13:16:47','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Category',80,TO_TIMESTAMP('2013-10-05 13:16:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69792 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66941,69793,0,53739,TO_TIMESTAMP('2013-10-05 13:16:48','YYYY-MM-DD HH24:MI:SS'),100,'Status of the currently running check',1,'ECA02','Status of the currently running check','Y','Y','Y','N','N','N','N','Y','Status',90,TO_TIMESTAMP('2013-10-05 13:16:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69793 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65865,69794,0,53739,TO_TIMESTAMP('2013-10-05 13:16:48','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)',7,'ECA02','The Start Date indicates the first or starting date','Y','Y','Y','N','N','N','N','N','Start Date',100,TO_TIMESTAMP('2013-10-05 13:16:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69794 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65864,69795,0,53739,TO_TIMESTAMP('2013-10-05 13:16:49','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','Y','Planting Cycle',110,TO_TIMESTAMP('2013-10-05 13:16:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:49 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69795 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65872,69796,0,53739,TO_TIMESTAMP('2013-10-05 13:16:49','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Area',120,TO_TIMESTAMP('2013-10-05 13:16:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69796 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66353,69797,0,53739,TO_TIMESTAMP('2013-10-05 13:16:50','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','Y','Financing Type',130,TO_TIMESTAMP('2013-10-05 13:16:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:50 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69797 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65866,69798,0,53739,TO_TIMESTAMP('2013-10-05 13:16:50','YYYY-MM-DD HH24:MI:SS'),100,7,'ECA02','Y','Y','Y','N','N','N','N','N','Planting Start Date',140,TO_TIMESTAMP('2013-10-05 13:16:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69798 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65867,69799,0,53739,TO_TIMESTAMP('2013-10-05 13:16:51','YYYY-MM-DD HH24:MI:SS'),100,7,'ECA02','Y','Y','Y','N','N','N','N','Y','Planting End Date',150,TO_TIMESTAMP('2013-10-05 13:16:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69799 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65868,69800,0,53739,TO_TIMESTAMP('2013-10-05 13:16:51','YYYY-MM-DD HH24:MI:SS'),100,7,'ECA02','Y','Y','Y','N','N','N','N','N','Harvest Start Date',160,TO_TIMESTAMP('2013-10-05 13:16:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69800 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65869,69801,0,53739,TO_TIMESTAMP('2013-10-05 13:16:52','YYYY-MM-DD HH24:MI:SS'),100,7,'ECA02','Y','Y','Y','N','N','N','N','Y','Harvest End Date',170,TO_TIMESTAMP('2013-10-05 13:16:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69801 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,68027,69802,0,53739,TO_TIMESTAMP('2013-10-05 13:16:52','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Farming Validate',180,TO_TIMESTAMP('2013-10-05 13:16:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69802 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,68026,69803,0,53739,TO_TIMESTAMP('2013-10-05 13:16:53','YYYY-MM-DD HH24:MI:SS'),100,'Element is valid',1,'ECA02','The element passed the validation check','Y','Y','Y','N','N','N','Y','Y','Valid',190,TO_TIMESTAMP('2013-10-05 13:16:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:53 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69803 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66348,128,69804,0,53739,TO_TIMESTAMP('2013-10-05 13:16:53','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Estimate Quantity',200,TO_TIMESTAMP('2013-10-05 13:16:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69804 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66537,69805,0,53739,TO_TIMESTAMP('2013-10-05 13:16:54','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','Y','Guide Generate',210,TO_TIMESTAMP('2013-10-05 13:16:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69805 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65870,50028,69806,0,53739,TO_TIMESTAMP('2013-10-05 13:16:54','YYYY-MM-DD HH24:MI:SS'),100,7,'ECA02','Y','Y','Y','N','N','N','Y','N','Estimated Date',220,TO_TIMESTAMP('2013-10-05 13:16:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69806 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,66543,69807,0,53739,TO_TIMESTAMP('2013-10-05 13:16:55','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','Y','Y','Estimated Yield',230,TO_TIMESTAMP('2013-10-05 13:16:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:55 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69807 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,65871,69808,0,53739,TO_TIMESTAMP('2013-10-05 13:16:55','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','Y','N','Estimated Qty',240,TO_TIMESTAMP('2013-10-05 13:16:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69808 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66609,69809,0,53739,TO_TIMESTAMP('2013-10-05 13:16:56','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',0,'ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','Y','Y','N','N','N','Y','Y','Quantity',250,0,TO_TIMESTAMP('2013-10-05 13:16:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:56 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69809 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,65858,69810,0,53739,TO_TIMESTAMP('2013-10-05 13:16:56','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Farming',TO_TIMESTAMP('2013-10-05 13:16:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69810 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 1:16:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68510,69811,0,53739,TO_TIMESTAMP('2013-10-05 13:16:57','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line',10,'ECA02','The Sales Order Line is a unique identifier for a line in an order.','Y','Y','Y','N','N','N','Y','N','Sales Order Line',TO_TIMESTAMP('2013-10-05 13:16:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 5, 2013 1:16:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69811 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 5, 2013 2:24:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Esperando peso Bruto',Updated=TO_TIMESTAMP('2013-10-05 14:24:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54013 AND AD_Language='es_VE'
;

-- Oct 5, 2013 2:24:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Esperando peso Tara',Updated=TO_TIMESTAMP('2013-10-05 14:24:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54012 AND AD_Language='es_VE'
;

