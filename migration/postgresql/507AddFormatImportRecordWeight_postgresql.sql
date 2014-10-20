-- Oct 19, 2013 2:11:23 PM VET
-- LVE-Import
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,287,0,53498,54177,17,219,'DocAction',TO_TIMESTAMP('2013-10-19 14:11:15','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02',2,'You find the current status in the Document Status field. The options are listed in a popup','Y','Y','N','N','Document Action',40,TO_TIMESTAMP('2013-10-19 14:11:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:11:24 PM VET
-- LVE-Import
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54177 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 19, 2013 2:13:13 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat (AD_Client_ID,AD_ImpFormat_ID,AD_Org_ID,AD_Table_ID,Created,CreatedBy,FormatType,IsActive,Name,Processing,SeparatorChar,Updated,UpdatedBy) VALUES (0,50032,0,53627,TO_TIMESTAMP('2013-10-19 14:13:10','YYYY-MM-DD HH24:MI:SS'),100,'C','Y','Import Record Weight','N',',',TO_TIMESTAMP('2013-10-19 14:13:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:14:40 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68968,50032,50491,0,TO_TIMESTAMP('2013-10-19 14:14:39','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','GuideDocumentNo',10,1,TO_TIMESTAMP('2013-10-19 14:14:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:18:14 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68970,50032,50492,0,TO_TIMESTAMP('2013-10-19 14:18:10','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','Ext_Guide',20,2,TO_TIMESTAMP('2013-10-19 14:18:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:18:44 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68974,50032,50493,0,TO_TIMESTAMP('2013-10-19 14:18:42','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','Entry Doc Type Name',30,3,TO_TIMESTAMP('2013-10-19 14:18:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:19:50 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68975,50032,50494,0,TO_TIMESTAMP('2013-10-19 14:19:48','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','BPartnerValue',40,4,TO_TIMESTAMP('2013-10-19 14:19:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:20:24 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataFormat,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68977,50032,50495,0,TO_TIMESTAMP('2013-10-19 14:20:22','YYYY-MM-DD HH24:MI:SS'),100,'dd/MM/yyyy','D','.','N',0,'Y','DateDoc',50,5,TO_TIMESTAMP('2013-10-19 14:20:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:20:49 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68978,50032,50496,0,TO_TIMESTAMP('2013-10-19 14:20:48','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','ReferenceNo',60,6,TO_TIMESTAMP('2013-10-19 14:20:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:21:12 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68980,50032,50497,0,TO_TIMESTAMP('2013-10-19 14:21:10','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','ShipperName',70,7,TO_TIMESTAMP('2013-10-19 14:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:21:31 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68982,50032,50498,0,TO_TIMESTAMP('2013-10-19 14:21:30','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','DriverValue',80,8,TO_TIMESTAMP('2013-10-19 14:21:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:22:14 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68983,50032,50499,0,TO_TIMESTAMP('2013-10-19 14:22:06','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','DriverName',90,9,TO_TIMESTAMP('2013-10-19 14:22:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:22:44 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68986,50032,50500,0,TO_TIMESTAMP('2013-10-19 14:22:42','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','VehicleType',100,10,TO_TIMESTAMP('2013-10-19 14:22:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:23:45 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69030,50032,50501,0,TO_TIMESTAMP('2013-10-19 14:23:40','YYYY-MM-DD HH24:MI:SS'),100,'N','.','N',0,'Y','LoadCapacity',110,11,TO_TIMESTAMP('2013-10-19 14:23:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:24:23 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69023,50032,50502,0,TO_TIMESTAMP('2013-10-19 14:24:22','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','VehiclePlate',120,12,TO_TIMESTAMP('2013-10-19 14:24:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:24:38 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69024,50032,50503,0,TO_TIMESTAMP('2013-10-19 14:24:37','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','VehicleName',130,13,TO_TIMESTAMP('2013-10-19 14:24:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:29:42 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68989,50032,50504,0,TO_TIMESTAMP('2013-10-19 14:29:40','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','QA Doc Type Name',140,14,TO_TIMESTAMP('2013-10-19 14:29:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:32:04 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69026,50032,50505,0,TO_TIMESTAMP('2013-10-19 14:32:03','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','ProductValue',150,15,TO_TIMESTAMP('2013-10-19 14:32:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:32:40 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69014,50032,50506,0,TO_TIMESTAMP('2013-10-19 14:32:38','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','RW Doc Type Name',160,16,TO_TIMESTAMP('2013-10-19 14:32:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:33:47 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69033,50032,50507,0,TO_TIMESTAMP('2013-10-19 14:33:46','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','UOM Code',170,17,TO_TIMESTAMP('2013-10-19 14:33:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:34:19 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69018,50032,50508,0,TO_TIMESTAMP('2013-10-19 14:34:18','YYYY-MM-DD HH24:MI:SS'),100,'N','.','N',0,'Y','GrossWeight',180,18,TO_TIMESTAMP('2013-10-19 14:34:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:35:05 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69019,50032,50509,0,TO_TIMESTAMP('2013-10-19 14:35:03','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','TareWeight',190,19,TO_TIMESTAMP('2013-10-19 14:35:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:35:35 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69020,50032,50510,0,TO_TIMESTAMP('2013-10-19 14:35:33','YYYY-MM-DD HH24:MI:SS'),100,'N','.','N',0,'Y','NetWeight',200,20,TO_TIMESTAMP('2013-10-19 14:35:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:36:02 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataFormat,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69027,50032,50511,0,TO_TIMESTAMP('2013-10-19 14:36:01','YYYY-MM-DD HH24:MI:SS'),100,'dd/MM/yyyy','D','.','N',0,'Y','InDate',210,21,TO_TIMESTAMP('2013-10-19 14:36:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:36:33 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69021,50032,50512,0,TO_TIMESTAMP('2013-10-19 14:36:31','YYYY-MM-DD HH24:MI:SS'),100,'D','.','N',0,'Y','OutDate',220,22,TO_TIMESTAMP('2013-10-19 14:36:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:37:10 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69003,50032,50513,0,TO_TIMESTAMP('2013-10-19 14:37:09','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','Val_0',230,23,TO_TIMESTAMP('2013-10-19 14:37:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:37:24 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69004,50032,50514,0,TO_TIMESTAMP('2013-10-19 14:37:23','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','Val_1',240,24,TO_TIMESTAMP('2013-10-19 14:37:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:38:29 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,ConstantValue,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68991,50032,50515,0,'QA',TO_TIMESTAMP('2013-10-19 14:38:28','YYYY-MM-DD HH24:MI:SS'),100,'C','.','N',0,'Y','AnalysisType',250,0,TO_TIMESTAMP('2013-10-19 14:38:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:40:04 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,ConstantValue,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68992,50032,50516,0,'A',TO_TIMESTAMP('2013-10-19 14:40:02','YYYY-MM-DD HH24:MI:SS'),100,'C','.','N',0,'Y','ProductStatus',260,0,TO_TIMESTAMP('2013-10-19 14:40:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:42:37 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,ConstantValue,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,69022,50032,50517,0,'C',TO_TIMESTAMP('2013-10-19 14:42:36','YYYY-MM-DD HH24:MI:SS'),100,'C','.','N',0,'Y','WeightStatus',270,0,TO_TIMESTAMP('2013-10-19 14:42:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:43:49 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,ConstantValue,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68993,50032,50518,0,'Humedad',TO_TIMESTAMP('2013-10-19 14:43:48','YYYY-MM-DD HH24:MI:SS'),100,'C','.','N',0,'Y','Col_0',280,0,TO_TIMESTAMP('2013-10-19 14:43:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:44:10 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,ConstantValue,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68994,50032,50519,0,'Impureza',TO_TIMESTAMP('2013-10-19 14:44:09','YYYY-MM-DD HH24:MI:SS'),100,'C','.','N',0,'Y','Col_1',290,0,TO_TIMESTAMP('2013-10-19 14:44:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 19, 2013 2:46:19 PM VET
-- LVE-Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,68973,50032,50520,0,TO_TIMESTAMP('2013-10-19 14:46:17','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','OrgValue',300,25,TO_TIMESTAMP('2013-10-19 14:46:17','YYYY-MM-DD HH24:MI:SS'),100)
;

