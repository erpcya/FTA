-- Oct 2, 2013 2:01:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-10-02 14:01:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67766
;

-- Oct 2, 2013 2:48:09 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-10-02 14:48:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66316
;

-- Oct 2, 2013 2:48:17 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-10-02 14:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65835
;

-- Oct 2, 2013 2:48:24 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-10-02 14:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65831
;

-- Oct 2, 2013 2:51:35 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=210,Updated=TO_DATE('2013-10-02 14:51:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65962
;

-- Oct 2, 2013 2:52:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu SET Description='Farmer Credit/Loan',Updated=TO_DATE('2013-10-02 14:52:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53592
;

-- Oct 2, 2013 2:52:47 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53592
;

-- Oct 2, 2013 2:53:10 PM VET
-- Farming Technical Assistance
UPDATE AD_Menu_Trl SET Name='Crédito/Préstamo del Productor',Description='Crédito/Préstamo del Productor',Updated=TO_DATE('2013-10-02 14:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53592 AND AD_Language='es_MX'
;

-- Oct 2, 2013 2:58:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET AD_Val_Rule_ID=210,Updated=TO_DATE('2013-10-02 14:58:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=65965
;

-- Oct 2, 2013 3:18:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='0',Updated=TO_DATE('2013-10-02 15:18:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54114
;

-- Oct 2, 2013 3:19:55 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=133,Updated=TO_DATE('2013-10-02 15:19:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54114
;

-- Oct 2, 2013 3:26:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68427,55968,0,19,259,'FTA_TechnicalForm_ID',TO_DATE('2013-10-02 15:26:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Technical Form',0,TO_DATE('2013-10-02 15:26:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 2, 2013 3:26:48 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68427 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 2, 2013 3:27:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,68427,69721,0,186,TO_DATE('2013-10-02 15:27:46','YYYY-MM-DD HH24:MI:SS'),100,0,'@FTA_TechnicalForm_ID@!0','ECA02','Y','Y','Y','N','N','N','Y','N','Technical Form',550,0,TO_DATE('2013-10-02 15:27:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2013 3:27:46 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69721 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=69721
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=2877
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1110
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1114
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=10124
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=55410
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=55411
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=55412
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1108
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1109
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=2878
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=56446
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1107
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1104
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1077
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1103
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=8653
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1098
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=3272
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=2112
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=2109
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=3113
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1099
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=56906
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=2593
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=2589
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1324
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=7038
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=7826
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=7825
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1112
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1113
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1082
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1084
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=6560
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1083
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=3660
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=52014
;

-- Oct 2, 2013 3:28:13 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=58037
;

-- Oct 2, 2013 3:28:26 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-10-02 15:28:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69721
;

-- Oct 2, 2013 4:04:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET DefaultValue='N', ReadOnlyLogic='@GenerateOrder@=''Y''',Updated=TO_DATE('2013-10-02 16:04:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66321
;

-- Oct 2, 2013 4:26:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,449,0,53481,54118,19,'M_PriceList_ID',TO_DATE('2013-10-02 16:26:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Price List',40,TO_DATE('2013-10-02 16:26:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2013 4:26:30 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54118 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 2, 2013 4:31:28 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET AD_Val_Rule_ID=271,Updated=TO_DATE('2013-10-02 16:31:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54118
;

-- Oct 2, 2013 4:32:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Process_Para SET DefaultValue='0',Updated=TO_DATE('2013-10-02 16:32:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54118
;

-- Oct 2, 2013 4:38:42 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='@GenerateOrder@=Y',Updated=TO_DATE('2013-10-02 16:38:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66321
;

-- Oct 2, 2013 4:44:08 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_DATE('2013-10-02 16:44:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66321
;

