-- Sep 10, 2013 11:00:31 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56332,0,'FarmingAlloc',TO_DATE('2013-09-10 11:00:29','YYYY-MM-DD HH24:MI:SS'),100,'Farming Alloction','ECA02','Allocate or deallocate Credit to Farming, while credit is not completed.','Y','Farming Alloction','Farming Alloction',TO_DATE('2013-09-10 11:00:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 10, 2013 11:00:31 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56332 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 10, 2013 11:03:12 AM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Name='Asignación de Cultivo',PrintName='Asignación de Cultivo',Description='Asignación de Cultivo',Help='Asignar o cancelar la asignación del créditos al Cultivo, mientras que el crédito no se ha completado.',Updated=TO_DATE('2013-09-10 11:03:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56332 AND AD_Language='es_MX'
;

-- Sep 10, 2013 11:03:26 AM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET Help='Asignar o cancelar la asignación del crédito al Cultivo, mientras que el crédito no se ha completado.',Updated=TO_DATE('2013-09-10 11:03:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56332 AND AD_Language='es_MX'
;

-- Sep 10, 2013 11:09:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53453,'org.spin.process.FamingAllocation',TO_DATE('2013-09-10 11:09:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Process Farming Allocation','Y',0,0,TO_DATE('2013-09-10 11:09:30','YYYY-MM-DD HH24:MI:SS'),100,'FTA_FarmingAllocation')
;

-- Sep 10, 2013 11:09:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53453 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Sep 10, 2013 11:17:55 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52206,'FTA_Farming.Category_ID In (Select CD.Category_ID From FTA_CreditDefinition CD Where FTA_CreditDefinition_ID=@FTA_CreditDefinition_ID@)',TO_DATE('2013-09-10 11:17:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','FTA_Farming Category equals to FTA_CreditDefinition Category','S',TO_DATE('2013-09-10 11:17:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 10, 2013 11:18:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,55971,0,53453,53981,19,52206,'FTA_Farming_ID',TO_DATE('2013-09-10 11:18:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','FTA_Farming_ID',10,TO_DATE('2013-09-10 11:18:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 10, 2013 11:18:24 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53981 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 10, 2013 11:20:00 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67665,56332,0,53453,28,53544,'FarmingAlloc',TO_DATE('2013-09-10 11:19:59','YYYY-MM-DD HH24:MI:SS'),100,'Farming Alloction','U',1,'Allocate or deallocate Credit to Farming, while credit is not completed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Farming Alloction',0,TO_DATE('2013-09-10 11:19:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 10, 2013 11:20:00 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67665 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 10, 2013 11:22:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67665,69292,0,53721,TO_DATE('2013-09-10 11:22:30','YYYY-MM-DD HH24:MI:SS'),100,'Farming Alloction',1,'U','Allocate or deallocate Credit to Farming, while credit is not completed.','Y','Y','Y','N','N','N','N','N','Farming Alloction',TO_DATE('2013-09-10 11:22:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 10, 2013 11:22:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69292 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 10, 2013 11:23:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=69292
;

-- Sep 10, 2013 11:23:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68341
;

-- Sep 10, 2013 11:23:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68339
;

-- Sep 10, 2013 11:23:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=68129
;

-- Sep 10, 2013 11:23:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=68130
;

-- Sep 10, 2013 11:23:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68131
;

-- Sep 10, 2013 11:23:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=68132
;

-- Sep 10, 2013 11:23:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68128
;

-- Sep 10, 2013 11:23:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68448
;

-- Sep 10, 2013 11:23:48 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET DisplayLogic='@IsCredit@=''Y''',Updated=TO_DATE('2013-09-10 11:23:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69292
;

-- Sep 10, 2013 11:24:01 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-09-10 11:24:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69292
;

-- Sep 10, 2013 11:24:42 AM VET
-- SFAndroid Contribution
UPDATE AD_Element SET Description='Farming Allocation', Name='Farming Allocation', PrintName='Farming Allocation',Updated=TO_DATE('2013-09-10 11:24:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56332
;

-- Sep 10, 2013 11:24:42 AM VET
-- SFAndroid Contribution
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56332
;

-- Sep 10, 2013 11:24:42 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET ColumnName='FarmingAlloc', Name='Farming Allocation', Description='Farming Allocation', Help='Allocate or deallocate Credit to Farming, while credit is not completed.' WHERE AD_Element_ID=56332
;

-- Sep 10, 2013 11:24:42 AM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para SET ColumnName='FarmingAlloc', Name='Farming Allocation', Description='Farming Allocation', Help='Allocate or deallocate Credit to Farming, while credit is not completed.', AD_Element_ID=56332 WHERE UPPER(ColumnName)='FARMINGALLOC' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 10, 2013 11:24:42 AM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para SET ColumnName='FarmingAlloc', Name='Farming Allocation', Description='Farming Allocation', Help='Allocate or deallocate Credit to Farming, while credit is not completed.' WHERE AD_Element_ID=56332 AND IsCentrallyMaintained='Y'
;

-- Sep 10, 2013 11:24:42 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET Name='Farming Allocation', Description='Farming Allocation', Help='Allocate or deallocate Credit to Farming, while credit is not completed.' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56332) AND IsCentrallyMaintained='Y'
;

-- Sep 10, 2013 11:24:42 AM VET
-- SFAndroid Contribution
UPDATE AD_PrintFormatItem pi SET PrintName='Farming Allocation', Name='Farming Allocation' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56332)
;

-- Sep 10, 2013 11:25:32 AM VET
-- SFAndroid Contribution
UPDATE AD_Column_Trl SET Name='Farming Allocation',Updated=TO_DATE('2013-09-10 11:25:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67665 AND AD_Language='es_MX'
;

-- Sep 10, 2013 11:26:19 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2013-09-10 11:26:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67665
;

-- Sep 10, 2013 11:26:28 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET EntityType='ECA02',Updated=TO_DATE('2013-09-10 11:26:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69292
;

