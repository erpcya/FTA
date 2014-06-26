-- Oct 9, 2013 4:19:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=13,Updated=TO_DATE('2013-10-09 16:19:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68216
;

-- Oct 10, 2013 9:06:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68679,56335,0,29,53509,'MaxQty',TO_DATE('2013-10-10 21:06:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Max Quantity',0,TO_DATE('2013-10-10 21:06:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 10, 2013 9:06:51 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68679 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 10, 2013 9:09:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68679,69826,0,53725,TO_DATE('2013-10-10 21:09:20','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Max Quantity',TO_DATE('2013-10-10 21:09:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 10, 2013 9:09:21 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69826 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 10, 2013 9:14:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56459,0,'Re_EstimatedQty',TO_DATE('2013-10-10 21:14:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Re-Estimated Qty','Re-Estimated Qty',TO_DATE('2013-10-10 21:14:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 10, 2013 9:14:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56459 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 10, 2013 9:14:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Element_Trl SET Name='Cantidad Re-Estimada',PrintName='Cantidad Re-Estimada',Updated=TO_DATE('2013-10-10 21:14:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56459 AND AD_Language='es_MX'
;

-- Oct 10, 2013 9:15:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Callout,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68680,56459,0,29,53509,NULL,'Re_EstimatedQty',TO_DATE('2013-10-10 21:15:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Re-Estimated Qty',NULL,0,TO_DATE('2013-10-10 21:15:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 10, 2013 9:15:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68680 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 10, 2013 9:16:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Reference_ID=29,Updated=TO_DATE('2013-10-10 21:16:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65871
;

-- Oct 10, 2013 9:19:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68680,69827,0,53725,TO_DATE('2013-10-10 21:19:44','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Re-Estimated Qty',TO_DATE('2013-10-10 21:19:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 10, 2013 9:19:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69827 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 10, 2013 9:20:01 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68189
;

-- Oct 10, 2013 9:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=68190
;

-- Oct 10, 2013 9:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68191
;

-- Oct 10, 2013 9:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68192
;

-- Oct 10, 2013 9:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=68193
;

-- Oct 10, 2013 9:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=69827
;

-- Oct 10, 2013 9:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=69826
;

-- Oct 10, 2013 9:20:02 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=69784
;

-- Oct 10, 2013 9:20:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-10 21:20:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69826
;

-- Oct 10, 2013 9:28:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53648,0,TO_DATE('2013-10-10 21:28:56','YYYY-MM-DD HH24:MI:SS'),100,'Farmer Credit Control','ECA02','Y','Y','N','N','Y','Farmer Credit Control',TO_DATE('2013-10-10 21:28:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 10, 2013 9:28:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53648 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Oct 10, 2013 9:28:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53648, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53648)
;

-- Oct 10, 2013 9:29:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Control de Credito a Productor',Description='Control de Credito a Productor',Updated=TO_DATE('2013-10-10 21:29:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53648 AND AD_Language='es_MX'
;

-- Oct 10, 2013 9:30:05 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Gestión de Crédito a Productor',Description='Gestión de Crédito a Productor',Updated=TO_DATE('2013-10-10 21:30:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53648 AND AD_Language='es_MX'
;

-- Oct 10, 2013 9:30:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53580
;

-- Oct 10, 2013 9:30:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53643
;

-- Oct 10, 2013 9:30:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53644
;

-- Oct 10, 2013 9:30:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53646, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53645
;

-- Oct 10, 2013 9:31:15 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53591
;

-- Oct 10, 2013 9:31:15 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53636
;

-- Oct 10, 2013 9:31:15 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53589
;

-- Oct 10, 2013 9:31:15 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53592
;

-- Oct 10, 2013 9:31:18 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53570, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53563
;

-- Oct 10, 2013 9:31:18 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53570, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53590
;

-- Oct 10, 2013 9:31:18 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53570
;

-- Oct 10, 2013 9:31:18 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53592
;

-- Oct 10, 2013 9:31:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description='Farmer Credit Management', Name='Farmer Credit Management',Updated=TO_DATE('2013-10-10 21:31:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53648
;

-- Oct 10, 2013 9:31:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53648
;

-- Oct 10, 2013 9:33:04 PM VET
-- Farming Technical Assistance
UPDATE AD_Window_Trl SET Name='Movimiento de Crédito',Description='Movimiento de Crédito',Updated=TO_DATE('2013-10-10 21:33:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53282 AND AD_Language='es_MX'
;

-- Oct 10, 2013 9:33:31 PM VET
-- Farming Technical Assistance
UPDATE AD_Tab_Trl SET Name='Movimiento',Description='Movimiento de Crédito',Updated=TO_DATE('2013-10-10 21:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53774 AND AD_Language='es_MX'
;

-- Oct 10, 2013 9:33:50 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Movimiento de Crédito',Description='Movimiento de Crédito',Updated=TO_DATE('2013-10-10 21:33:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53637 AND AD_Language='es_MX'
;

-- Oct 10, 2013 9:34:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53570, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53563
;

-- Oct 10, 2013 9:34:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53570, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53590
;

-- Oct 10, 2013 9:34:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53570
;

-- Oct 10, 2013 9:34:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53561
;

-- Oct 10, 2013 9:34:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53565
;

-- Oct 10, 2013 9:34:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53633
;

-- Oct 10, 2013 9:34:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53571
;

-- Oct 10, 2013 9:34:42 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53604
;

-- Oct 10, 2013 9:34:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53591
;

-- Oct 10, 2013 9:34:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53636
;

-- Oct 10, 2013 9:34:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53589
;

-- Oct 10, 2013 9:34:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53592
;

-- Oct 10, 2013 9:34:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53570
;

-- Oct 10, 2013 9:34:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53561
;

-- Oct 10, 2013 9:34:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53565
;

-- Oct 10, 2013 9:34:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53633
;

-- Oct 10, 2013 9:34:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53571
;

-- Oct 10, 2013 9:34:44 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53569, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53604
;

-- Oct 10, 2013 9:34:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53637
;

-- Oct 10, 2013 9:34:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53620
;

-- Oct 10, 2013 9:34:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53605
;

-- Oct 10, 2013 9:34:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53604, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53603
;

-- Oct 10, 2013 9:34:48 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53604
;

-- Oct 10, 2013 9:34:54 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53591
;

-- Oct 10, 2013 9:34:54 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53636
;

-- Oct 10, 2013 9:34:54 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53592, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53589
;

-- Oct 10, 2013 9:34:54 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53592
;

-- Oct 10, 2013 9:34:54 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53604
;

-- Oct 10, 2013 9:34:56 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53570, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53563
;

-- Oct 10, 2013 9:34:56 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53570, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53590
;

-- Oct 10, 2013 9:34:56 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53570
;

-- Oct 10, 2013 9:34:56 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53592
;

-- Oct 10, 2013 9:34:56 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=53648, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53604
;

-- Oct 10, 2013 9:35:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description='Record Weight', Name='Record Weight',Updated=TO_DATE('2013-10-10 21:35:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53602
;

-- Oct 10, 2013 9:35:25 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53602
;

-- Oct 10, 2013 9:36:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Configuración de Asistencia Técnica',Description='Configuración de Asistencia Técnica',Updated=TO_DATE('2013-10-10 21:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53571 AND AD_Language='es_MX'
;

-- Oct 10, 2013 9:36:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Name='Technical Assistance Setup',Updated=TO_DATE('2013-10-10 21:36:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53571
;

-- Oct 10, 2013 9:36:43 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53571
;

-- Oct 10, 2013 11:18:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53486,'org.spin.process.FarmerCreditOrderGenerate','N',TO_DATE('2013-10-10 23:18:03','YYYY-MM-DD HH24:MI:SS'),100,'Generate a Purchase Order from Estimate Quantity','ECA02','Y','N','N','N','N','Purchase Order Generate','Y',0,0,TO_DATE('2013-10-10 23:18:03','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmerCredit OrderGenerate')
;

-- Oct 10, 2013 11:18:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53486 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 10, 2013 11:19:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Trl SET Name='Generar Orden de Compra',Description='Genera una Orden de Compra en Base a la Cantidad Estimada de los Cultivos',Help='Al Generar la Orden de Compra ya se Puede Comenzar a Recibir el Producto',Updated=TO_DATE('2013-10-10 23:19:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53486 AND AD_Language='es_MX'
;

-- Oct 10, 2013 11:20:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68681,2042,0,53486,28,53544,'GenerateOrder',TO_DATE('2013-10-10 23:20:34','YYYY-MM-DD HH24:MI:SS'),100,'Generate Order','U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Generate Order',0,TO_DATE('2013-10-10 23:20:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 10, 2013 11:20:36 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68681 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 10, 2013 11:58:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53486,54126,19,'AD_Org_ID',TO_DATE('2013-10-10 23:58:45','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02',0,'Y','Y','N','N','AD_Org_ID',10,TO_DATE('2013-10-10 23:58:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 10, 2013 11:58:47 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54126 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 11, 2013 12:00:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52222,'C_BPartner.IsFarmer=''Y''',TO_DATE('2013-10-11 00:00:41','YYYY-MM-DD HH24:MI:SS'),100,'Just Farmer','ECA02','Y','C_BPartner Farmer','S',TO_DATE('2013-10-11 00:00:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 12:00:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53486,54127,30,52222,'C_BPartner_ID',TO_DATE('2013-10-11 00:00:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','C_BPartner_ID',20,TO_DATE('2013-10-11 00:00:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 12:00:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54127 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 11, 2013 12:01:01 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_DATE('2013-10-11 00:01:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54127
;

-- Oct 11, 2013 12:01:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56084,0,53486,54128,19,52207,'FTA_FarmerCredit_ID',TO_DATE('2013-10-11 00:01:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','FTA_FarmerCredit_ID',30,TO_DATE('2013-10-11 00:01:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 12:01:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54128 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 11, 2013 12:01:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_DATE('2013-10-11 00:01:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54128
;

-- Oct 11, 2013 12:01:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='Y', IsMandatory='Y',Updated=TO_DATE('2013-10-11 00:01:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54127
;

-- Oct 11, 2013 12:01:49 AM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_DATE('2013-10-11 00:01:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54127
;

-- Oct 11, 2013 12:02:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53486,54129,15,'DateDoc',TO_DATE('2013-10-11 00:02:38','YYYY-MM-DD HH24:MI:SS'),100,'@#Date@','ECA02',0,'Y','Y','Y','N','DateDoc',40,TO_DATE('2013-10-11 00:02:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 12:02:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54129 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 11, 2013 12:04:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53486,54130,19,206,'C_DocTypeTarget_ID',TO_DATE('2013-10-11 00:04:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','C_DocTypeTarget_ID',50,TO_DATE('2013-10-11 00:04:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 12:04:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54130 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 11, 2013 12:08:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,449,0,53486,54131,19,271,'M_PriceList_ID',TO_DATE('2013-10-11 00:06:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','M_PriceList_ID',60,TO_DATE('2013-10-11 00:06:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 12:08:26 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54131 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 11, 2013 12:14:52 AM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2013-10-11 00:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68681
;

-- Oct 11, 2013 12:20:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68679,69828,0,53739,TO_DATE('2013-10-11 00:20:55','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Max Quantity',TO_DATE('2013-10-11 00:20:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 12:20:57 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69828 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 11, 2013 12:21:00 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68680,69829,0,53739,TO_DATE('2013-10-11 00:20:57','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Re-Estimated Qty',TO_DATE('2013-10-11 00:20:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 12:21:00 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69829 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 11, 2013 12:21:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=69805
;

-- Oct 11, 2013 12:21:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=69806
;

-- Oct 11, 2013 12:21:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=69807
;

-- Oct 11, 2013 12:21:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=69808
;

-- Oct 11, 2013 12:21:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=69809
;

-- Oct 11, 2013 12:21:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=69829
;

-- Oct 11, 2013 12:21:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=69828
;

-- Oct 11, 2013 12:21:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=69811
;

-- Oct 11, 2013 12:21:31 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-11 00:21:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69828
;

-- Oct 11, 2013 12:21:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68681,69830,0,53721,TO_DATE('2013-10-11 00:21:52','YYYY-MM-DD HH24:MI:SS'),100,'Generate Order',1,'U','Y','Y','Y','N','N','N','N','N','Generate Order',TO_DATE('2013-10-11 00:21:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 11, 2013 12:21:54 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69830 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 11, 2013 12:23:12 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C'' | @CreditType@=''R''',Updated=TO_DATE('2013-10-11 00:23:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Oct 11, 2013 12:28:14 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''C'' | @CreditType@=''R'' & @OrderGenerate@=''N''',Updated=TO_DATE('2013-10-11 00:28:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Oct 11, 2013 12:33:21 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@!''L'' & @OrderGenerate@=''N''',Updated=TO_DATE('2013-10-11 00:33:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Oct 11, 2013 12:33:41 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@!''L''',Updated=TO_DATE('2013-10-11 00:33:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69292
;

-- Oct 11, 2013 12:33:44 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@!''L''',Updated=TO_DATE('2013-10-11 00:33:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69780
;

-- Oct 11, 2013 12:35:46 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=50006,Updated=TO_DATE('2013-10-11 00:35:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Oct 11, 2013 12:36:48 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_FieldGroup_ID=122,Updated=TO_DATE('2013-10-11 00:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Oct 11, 2013 12:20:37 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2013-10-11 12:20:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68681
;

-- Oct 11, 2013 12:21:36 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET EntityType='ECA02',Updated=TO_DATE('2013-10-11 12:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Oct 11, 2013 12:29:49 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@!''L''',Updated=TO_DATE('2013-10-11 12:29:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Oct 11, 2013 12:30:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@!''L'' & @GenerateOrder@=''N''',Updated=TO_DATE('2013-10-11 12:30:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Oct 11, 2013 12:33:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@!''L'' & @GenerateOrder@=''N'' & @DocStatus@=''CO''',Updated=TO_DATE('2013-10-11 12:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69830
;

-- Oct 11, 2013 1:44:03 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsAlwaysUpdateable='Y', ReadOnlyLogic=NULL,Updated=TO_DATE('2013-10-11 13:44:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68681
;

-- Oct 11, 2013 1:47:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@CreditType@!''L''',Updated=TO_DATE('2013-10-11 13:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66657
;

-- Oct 11, 2013 1:47:33 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@CreditType@!''L''',Updated=TO_DATE('2013-10-11 13:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66661
;

-- Oct 11, 2013 1:47:53 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_DATE('2013-10-11 13:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66935
;

-- Oct 11, 2013 1:48:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET DisplayLogic='@CreditType@=''L'' & @DocStatus@=''CO''',Updated=TO_DATE('2013-10-11 13:48:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68340
;

