-- Dec 12, 2013 11:52:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54341,TO_TIMESTAMP('2013-12-12 11:52:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Definition/Bill of Exchange',TO_TIMESTAMP('2013-12-12 11:52:35','YYYY-MM-DD HH24:MI:SS'),100,'Credit Definition/Bill of Exchange')
;

-- Dec 12, 2013 11:52:37 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54341 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Dec 12, 2013 11:52:47 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Definición de Crédito / Letra de Cambio',Updated=TO_TIMESTAMP('2013-12-12 11:52:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54341 AND AD_Language='es_MX'
;

-- Dec 12, 2013 11:52:54 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Definición de Crédito / Letra de Cambio',Updated=TO_TIMESTAMP('2013-12-12 11:52:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54341 AND AD_Language='es_VE'
;

-- Dec 12, 2013 11:53:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54342,TO_TIMESTAMP('2013-12-12 11:53:14','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Bill of Exchange/Credit Definition',TO_TIMESTAMP('2013-12-12 11:53:14','YYYY-MM-DD HH24:MI:SS'),100,'Bill of Exchange/Credit Definition')
;

-- Dec 12, 2013 11:53:15 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54342 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Dec 12, 2013 11:53:18 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-12-12 11:53:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54342
;

-- Dec 12, 2013 11:53:35 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Letra de Cambio/ Definición de Crédito',Updated=TO_TIMESTAMP('2013-12-12 11:53:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54342 AND AD_Language='es_MX'
;

-- Dec 12, 2013 11:53:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Ref_List_Trl SET Name='Letra de Cambio/ Definición de Crédito',Updated=TO_TIMESTAMP('2013-12-12 11:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54342 AND AD_Language='es_VE'
;

-- Dec 12, 2013 11:54:36 AM VET
-- Farming Technical Assistance
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,50010,TO_TIMESTAMP('2013-12-12 11:54:34','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Credit Definition<->Bill of Exchange','Credit Definition/Bill of Exchange','Bill of Exchange/Credit Definition','I',TO_TIMESTAMP('2013-12-12 11:54:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 12, 2013 11:54:38 AM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET IsDirected='Y',Updated=TO_TIMESTAMP('2013-12-12 11:54:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50010
;

-- Dec 12, 2013 11:57:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53633,TO_TIMESTAMP('2013-12-12 11:57:38','YYYY-MM-DD HH24:MI:SS'),100,'Finds FTA_BillOfExchange_IDs for a given FTA_CreditDefinition','ECA02','Y','N','RelType  Credit Definition<=Bill of Exchange',TO_TIMESTAMP('2013-12-12 11:57:38','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Dec 12, 2013 11:57:39 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53633 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Dec 12, 2013 12:05:19 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,69130,69136,0,53633,53634,TO_TIMESTAMP('2013-12-12 12:05:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2013-12-12 12:05:18','YYYY-MM-DD HH24:MI:SS'),100,'FTA_BillOfExchange_ID  in(
select fta_billofexchange_id from fta_farmercredit fc 
left join fta_creditdefinition cd on cd.fta_creditdefinition_id = fc.fta_creditdefinition
  where fc.fta_creditdefinition_ID =@FTA_CreditDefinition_ID@
)')
;

-- Dec 12, 2013 12:05:27 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET AD_Window_ID=53289,Updated=TO_TIMESTAMP('2013-12-12 12:05:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53633
;

-- Dec 12, 2013 12:05:46 PM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Source_ID=53633,Updated=TO_TIMESTAMP('2013-12-12 12:05:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50010
;

-- Dec 12, 2013 12:07:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53634,TO_TIMESTAMP('2013-12-12 12:07:08','YYYY-MM-DD HH24:MI:SS'),100,'Finds FTA_CreditDefinition_IDs for a given FTA_BillOfExchange_ID','ECA02','Y','N','RelType  Bill of Exchange <=Credit Definition',TO_TIMESTAMP('2013-12-12 12:07:08','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Dec 12, 2013 12:07:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53634 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Dec 12, 2013 12:09:31 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,67099,66672,0,53634,53549,53261,TO_TIMESTAMP('2013-12-12 12:09:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2013-12-12 12:09:30','YYYY-MM-DD HH24:MI:SS'),100,'FTA_CreditDefinition_ID = @FTA_CreditDefinition_ID@ ')
;

-- Dec 12, 2013 12:09:41 PM VET
-- Farming Technical Assistance
UPDATE AD_RelationType SET AD_Reference_Target_ID=53634,Updated=TO_TIMESTAMP('2013-12-12 12:09:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50010
;

-- Dec 12, 2013 12:13:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,53634,53633,50011,TO_TIMESTAMP('2013-12-12 12:13:51','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','Bill of Exchange<-> Credit Definition','Bill of Exchange/Credit Definition','Credit Definition/Bill of Exchange','I',TO_TIMESTAMP('2013-12-12 12:13:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 12, 2013 12:15:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_BillOfExchange_ID  in(
select fta_billofexchange_id from fta_farmercredit fc 
left join fta_creditdefinition cd on cd.fta_creditdefinition_id = fc.fta_creditdefinition_id
  where fc.fta_creditdefinition_ID =@FTA_CreditDefinition_ID@
)',Updated=TO_TIMESTAMP('2013-12-12 12:15:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53633
;

-- Dec 12, 2013 12:19:14 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_BillOfExchange_ID  in(
select fta_billofexchange_id from fta_farmercredit fc 
inner join fta_creditdefinition cd on cd.fta_creditdefinition_id = fc.fta_creditdefinition_id
  where fc.fta_creditdefinition_ID =@FTA_CreditDefinition_ID@
)',Updated=TO_TIMESTAMP('2013-12-12 12:19:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53633
;

-- Dec 12, 2013 2:08:11 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_BillOfExchange_ID  in(
select fta_billofexchange_id 
from fta_billofexchange boc 
inner join fta_farmercredit fc on boc.fta_farmercredit_id = fc.fta_farmercredit_id
inner join fta_creditdefinition cd on cd.fta_creditdefinition_id = fc.fta_creditdefinition_id
where fc.fta_creditdefinition_ID = @FTA_CreditDefinition_ID@
and boc.docstatus in (''CO'',''CL'')
)',Updated=TO_TIMESTAMP('2013-12-12 14:08:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53633
;

-- Dec 12, 2013 2:24:32 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_CreditDefinition_ID in (
select cd.fta_creditdefinition_id
from fta_creditdefinition cd 
inner join fta_farmercredit fc on (fc.fta_creditdefinition_id = cd.fta_creditdefinition_id)
where cd.fta_creditdefinition_id = @FTA_CreditDefinition_ID@
) 

',Updated=TO_TIMESTAMP('2013-12-12 14:24:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53634
;

-- Dec 12, 2013 2:28:44 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_CreditDefinition_ID in (
select cd.fta_creditdefinition_id
from fta_creditdefinition cd 
inner join fta_farmercredit fc on (fc.fta_creditdefinition_id = cd.fta_creditdefinition_id)
where cd.fta_creditdefinition_id = @FTA_CreditDefinition_ID@
) 
OR
FTA_CreditDefinition_ID in (
select fc.fta_creditdefinition_id
from fta_farmercredit fc 
where fc.fta_farmercredit_id = @FTA_FarmerCredit_ID@
)',Updated=TO_TIMESTAMP('2013-12-12 14:28:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53634
;

-- Dec 12, 2013 2:31:15 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_CreditDefinition_ID in (
select fc.fta_creditdefinition_id
from fta_farmercredit fc 
where fc.fta_farmercredit_id = @FTA_FarmerCredit_ID@
) 
OR
FTA_CreditDefinition_ID in (
select cd.fta_creditdefinition_id
from fta_creditdefinition cd 
inner join fta_farmercredit fc on (fc.fta_creditdefinition_id = cd.fta_creditdefinition_id)
where cd.fta_creditdefinition_id = @FTA_CreditDefinition_ID@
) 
',Updated=TO_TIMESTAMP('2013-12-12 14:31:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53634
;

-- Dec 12, 2013 2:33:21 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_CreditDefinition_ID in (
select fc.fta_creditdefinition_id
from fta_farmercredit fc 
where fc.fta_farmercredit_id = @FTA_FarmerCredit_ID@
) ',Updated=TO_TIMESTAMP('2013-12-12 14:33:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53634
;

-- Dec 12, 2013 2:35:20 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_CreditDefinition_ID in (
select fc.fta_creditdefinition_id
from fta_farmercredit fc 
where fc.fta_farmercredit_id = @FTA_FarmerCredit_ID@
)',Updated=TO_TIMESTAMP('2013-12-12 14:35:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53634
;

-- Dec 12, 2013 2:39:51 PM VET
-- Farming Technical Assistance
UPDATE AD_Ref_Table SET WhereClause='FTA_BillOfExchange_ID  in(
select fta_billofexchange_id 
from fta_billofexchange boc 
inner join fta_farmercredit fc on boc.fta_farmercredit_id = fc.fta_farmercredit_id
inner join fta_creditdefinition cd on cd.fta_creditdefinition_id = fc.fta_creditdefinition_id
where fc.fta_creditdefinition_ID = @FTA_CreditDefinition_ID@
)',Updated=TO_TIMESTAMP('2013-12-12 14:39:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53633
;

-- Dec 12, 2013 3:22:48 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET Callout='org.spin.model.CalloutQualityAnalysis.product',Updated=TO_TIMESTAMP('2013-12-12 15:22:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70644
;

-- Dec 12, 2013 3:58:46 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2013-12-12 15:58:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68309
;

-- Dec 12, 2013 4:07:56 PM VET
-- Farming Technical Assistance
UPDATE AD_Field SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2013-12-12 16:07:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68737
;

-- Dec 12, 2013 4:11:12 PM VET
-- Farming Technical Assistance
UPDATE AD_Column SET ReadOnlyLogic='FTA_RecordWeight.DocStatus!''DR''',Updated=TO_TIMESTAMP('2013-12-12 16:11:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66924
;

