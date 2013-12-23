-- Dec 19, 2013 10:38:23 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutLoadOrder.shiper',Updated=TO_DATE('2013-12-19 10:38:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69852
;

-- Dec 19, 2013 10:39:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutLoadOrder.shipper',Updated=TO_DATE('2013-12-19 10:39:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69852
;

-- Dec 19, 2013 10:40:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout=NULL,Updated=TO_DATE('2013-12-19 10:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69852
;

-- Dec 19, 2013 10:43:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='@FTA_VehicleType_ID@ = 0 OR FTA_Vehicle.FTA_VehicleType_ID = @FTA_VehicleType_ID@ ',Updated=TO_DATE('2013-12-19 10:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52289
;

-- Dec 19, 2013 10:44:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='@FTA_VehicleType_ID@ IS NULL OR FTA_Vehicle.FTA_VehicleType_ID = @FTA_VehicleType_ID@ ',Updated=TO_DATE('2013-12-19 10:44:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52289
;

-- Dec 19, 2013 10:46:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='@FTA_VehicleType_ID@ IS NOT NULL OR FTA_Vehicle.FTA_VehicleType_ID = @FTA_VehicleType_ID@ ',Updated=TO_DATE('2013-12-19 10:46:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52289
;

-- Dec 19, 2013 10:48:34 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Vehicle.FTA_VehicleType_ID IS NOT NULL OR FTA_Vehicle.FTA_VehicleType_ID = @FTA_VehicleType_ID@ ',Updated=TO_DATE('2013-12-19 10:48:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52289
;

-- Dec 19, 2013 10:49:22 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='FTA_Vehicle.FTA_VehicleType_ID = @FTA_VehicleType_ID@ OR @FTA_VehicleType_ID@ = 0',Updated=TO_DATE('2013-12-19 10:49:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52289
;

-- Dec 19, 2013 10:53:56 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2013-12-19 10:53:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71903
;

-- Dec 19, 2013 10:54:06 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2013-12-19 10:54:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71875
;

-- Dec 19, 2013 11:34:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_OrderLine.QtyOrdered > C_OrderLine.QtyDelivered 
	AND C_OrderLine.M_Product_ID IS NOT NULL 
	AND EXISTS(
			SELECT 1 
			FROM M_Product p
			INNER JOIN FTA_LoadOrderLine lol ON (lol.M_Product_ID = p.M_Product_ID)
			INNER JOIN FTA_LoadOrder lo ON (lo.FTA_LoadOrder_ID = lol.FTA_LoadOrderLine_ID)
			WHERE 
				p.M_Product_ID = C_OrderLine.M_Product_ID 
				--AND M_Product.IsBulk = ''@IsBulk@''
				AND ((p.IsBulk = ''Y'' AND lo.OperationType IN (''DBM'',''PBR'')) OR ((p.IsBulk = ''N''  AND lo.OperationType IN (''DFP'',''MOM'',''ORW''))))
		
		) 
	AND EXISTS(
			SELECT 1 
			FROM C_Order 
			WHERE 
				C_Order.DocStatus IN (''CO'',''CL'') 
				AND C_Order.C_Order_ID = C_OrderLine.C_Order_ID
		)',Updated=TO_DATE('2013-12-19 11:34:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52247
;

-- Dec 19, 2013 11:45:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='((M_Product.IsBulk = ''Y'' AND ''@OperationType@'' IN (''DBM'',''PBR'')) OR ((M_Product.IsBulk = ''N''  AND ''@OperationType@'' IN (''DFP'',''MOM'',''ORW''))))',Updated=TO_DATE('2013-12-19 11:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52249
;

-- Dec 19, 2013 11:52:24 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='C_OrderLine.QtyOrdered > C_OrderLine.QtyDelivered 
	AND C_OrderLine.M_Product_ID IS NOT NULL 
	AND EXISTS(
			SELECT 1 
			FROM M_Product p
			WHERE 
				p.M_Product_ID = C_OrderLine.M_Product_ID 
				AND ((p.IsBulk = ''Y'' AND ''@OperationType@'' IN (''DBM'',''PBR'')) OR ((p.IsBulk = ''N''  AND ''@OperationType@'' IN (''DFP'',''MOM'',''ORW''))))
		
		) 
	AND EXISTS(
			SELECT 1 
			FROM C_Order 
			WHERE 
				C_Order.DocStatus IN (''CO'',''CL'') 
				AND C_Order.C_Order_ID = C_OrderLine.C_Order_ID
		)',Updated=TO_DATE('2013-12-19 11:52:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52247
;

-- Dec 19, 2013 11:56:27 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='DD_OrderLine.QtyEntered > DD_OrderLine.QtyDelivered 
	AND DD_OrderLine.M_Product_ID IS NOT NULL 
	AND EXISTS(
			SELECT 1 
			FROM M_Product 
			WHERE M_Product.M_Product_ID = DD_OrderLine.M_Product_ID 
			AND ((p.IsBulk = ''Y'' AND ''@OperationType@'' IN (''DBM'',''PBR'')) OR ((p.IsBulk = ''N''  AND ''@OperationType@'' IN (''DFP'',''MOM'',''ORW''))))
		)  
	AND EXISTS(
			SELECT 1 
			FROM DD_Order 
			WHERE DD_Order.DocStatus IN (''CO'',''CL'') 
			AND DD_Order.DD_Order_ID = DD_OrderLine.DD_Order_ID
		)',Updated=TO_DATE('2013-12-19 11:56:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52248
;

-- Dec 19, 2013 11:57:26 AM VET
-- Farming Technical Assistance
UPDATE AD_Val_Rule SET Code='DD_OrderLine.QtyEntered > DD_OrderLine.QtyDelivered 
	AND DD_OrderLine.M_Product_ID IS NOT NULL 
	AND EXISTS(
			SELECT 1 
			FROM M_Product p
			WHERE p.M_Product_ID = DD_OrderLine.M_Product_ID 
			AND ((p.IsBulk = ''Y'' AND ''@OperationType@'' IN (''DBM'',''PBR'')) OR ((p.IsBulk = ''N''  AND ''@OperationType@'' IN (''DFP'',''MOM'',''ORW''))))
		)  
	AND EXISTS(
			SELECT 1 
			FROM DD_Order 
			WHERE DD_Order.DocStatus IN (''CO'',''CL'') 
			AND DD_Order.DD_Order_ID = DD_OrderLine.DD_Order_ID
		)',Updated=TO_DATE('2013-12-19 11:57:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52248
;

-- Dec 19, 2013 3:09:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory=NULL,Updated=TO_DATE('2013-12-19 15:09:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71462
;

-- Dec 19, 2013 3:20:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2013-12-19 15:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71462
;

-- Dec 19, 2013 3:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Element_ID=221, AD_Reference_Value_ID=114, ColumnName='C_UOM_Weight_ID', Description='Standard Unit of Measure for Weight', Help='The Standard UOM for Weight indicates the UOM to use for products referenced by weight in a document.', Name='UOM for Weight',Updated=TO_DATE('2013-12-19 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69899
;

-- Dec 19, 2013 3:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=69899
;

-- Dec 19, 2013 3:32:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET Name='UOM for Weight', Description='Standard Unit of Measure for Weight', Help='The Standard UOM for Weight indicates the UOM to use for products referenced by weight in a document.' WHERE AD_Column_ID=69899 AND IsCentrallyMaintained='Y'
;

-- Dec 19, 2013 3:33:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70814,220,0,19,114,53667,'C_UOM_Volume_ID',TO_DATE('2013-12-19 15:33:38','YYYY-MM-DD HH24:MI:SS'),100,'@SQL=SELECT C_UOM_Volume_ID FROM AD_ClientInfo WHERE AD_Client_ID = @#AD_Client_ID@','Standard Unit of Measure for Volume','ECA02',22,'The Standard UOM for Volume indicates the UOM to use for products referenced by volume in a document.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','UOM for Volume',0,TO_DATE('2013-12-19 15:33:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 19, 2013 3:33:40 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70814 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 19, 2013 3:38:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70814,71904,0,53801,TO_DATE('2013-12-19 15:38:31','YYYY-MM-DD HH24:MI:SS'),100,'Standard Unit of Measure for Volume',22,'ECA02','The Standard UOM for Volume indicates the UOM to use for products referenced by volume in a document.','Y','Y','Y','N','N','N','N','N','UOM for Volume',TO_DATE('2013-12-19 15:38:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 19, 2013 3:38:35 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71904 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 19, 2013 3:39:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-12-19 15:39:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71904
;

-- Dec 19, 2013 3:39:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-12-19 15:39:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70319
;

-- Dec 19, 2013 3:39:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-12-19 15:39:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70290
;

-- Dec 19, 2013 3:39:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-12-19 15:39:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70292
;

-- Dec 19, 2013 3:39:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-12-19 15:39:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70291
;

-- Dec 19, 2013 3:39:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-12-19 15:39:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70304
;

-- Dec 19, 2013 3:39:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-12-19 15:39:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70303
;

-- Dec 19, 2013 3:39:06 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-12-19 15:39:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70312
;

-- Dec 19, 2013 3:39:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-12-19 15:39:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70307
;

-- Dec 19, 2013 3:39:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-12-19 15:39:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71458
;

-- Dec 19, 2013 3:39:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-12-19 15:39:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70316
;

-- Dec 19, 2013 3:39:07 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-12-19 15:39:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70320
;

-- Dec 19, 2013 3:39:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-12-19 15:39:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70293
;

-- Dec 19, 2013 3:39:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2013-12-19 15:39:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70315
;

-- Dec 19, 2013 3:39:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2013-12-19 15:39:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71873
;

-- Dec 19, 2013 3:39:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2013-12-19 15:39:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70301
;

-- Dec 19, 2013 3:39:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2013-12-19 15:39:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70311
;

-- Dec 19, 2013 3:39:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2013-12-19 15:39:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70299
;

-- Dec 19, 2013 3:39:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2013-12-19 15:39:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70313
;

-- Dec 19, 2013 3:39:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2013-12-19 15:39:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70305
;

-- Dec 19, 2013 3:39:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2013-12-19 15:39:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71902
;

-- Dec 19, 2013 3:39:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2013-12-19 15:39:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70297
;

-- Dec 19, 2013 3:39:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2013-12-19 15:39:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70294
;

-- Dec 19, 2013 3:39:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2013-12-19 15:39:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70309
;

-- Dec 19, 2013 3:39:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2013-12-19 15:39:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70287
;

-- Dec 19, 2013 3:40:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-12-19 15:40:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70361
;

-- Dec 19, 2013 3:40:40 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-19 15:40:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71904
;

-- Dec 19, 2013 3:50:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_DATE('2013-12-19 15:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70814
;

-- Dec 19, 2013 3:50:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_DATE('2013-12-19 15:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=69899
;

-- Dec 19, 2013 3:51:34 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-12-19 15:51:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71904
;

-- Dec 19, 2013 3:53:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53256,0,TO_DATE('2013-12-19 15:53:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Difference Weight','I',TO_DATE('2013-12-19 15:53:09','YYYY-MM-DD HH24:MI:SS'),100,'DiffWeight')
;

-- Dec 19, 2013 3:53:10 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53256 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Dec 19, 2013 3:53:22 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Diferencia de Peso',Updated=TO_DATE('2013-12-19 15:53:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53256 AND AD_Language='es_MX'
;

-- Dec 19, 2013 3:53:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Diferencia de Peso',Updated=TO_DATE('2013-12-19 15:53:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53256 AND AD_Language='es_VE'
;

-- Dec 19, 2013 3:53:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53257,0,TO_DATE('2013-12-19 15:53:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Difference Volume','I',TO_DATE('2013-12-19 15:53:51','YYYY-MM-DD HH24:MI:SS'),100,'DiffVolume')
;

-- Dec 19, 2013 3:53:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53257 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Dec 19, 2013 3:53:59 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Diferencia de Volumen',Updated=TO_DATE('2013-12-19 15:53:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53257 AND AD_Language='es_MX'
;

-- Dec 19, 2013 3:54:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Message_Trl SET MsgText='Diferencia de Volumen',Updated=TO_DATE('2013-12-19 15:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53257 AND AD_Language='es_VE'
;

-- Dec 19, 2013 4:18:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70815,1047,0,20,53668,'Processed',TO_DATE('2013-12-19 16:18:25','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02',1,'The Processed checkbox indicates that a document has been processed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Processed','N',0,TO_DATE('2013-12-19 16:18:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 19, 2013 4:18:29 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70815 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 19, 2013 4:19:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70815,71905,0,53802,TO_DATE('2013-12-19 16:18:54','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA02','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_DATE('2013-12-19 16:18:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 19, 2013 4:19:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71905 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 19, 2013 4:20:58 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-12-19 16:20:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71905
;

-- Dec 19, 2013 4:21:19 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='N', ReadOnlyLogic=NULL,Updated=TO_DATE('2013-12-19 16:21:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70815
;

