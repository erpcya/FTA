-- Nov 7, 2014 8:15:19 AM VET
-- FTA
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74728,1026,0,19,53887,'M_InOutLine_ID',TO_DATE('2014-11-07 08:15:17','YYYY-MM-DD HH24:MI:SS'),100,'Line on Shipment or Receipt document','ECA02',10,'The Shipment/Receipt Line indicates a unique line in a Shipment/Receipt document','Y','N','N','N','N','N','N','N','N','N','Shipment/Receipt Line',TO_DATE('2014-11-07 08:15:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 7, 2014 8:15:19 AM VET
-- FTA
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74728 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 7, 2014 8:19:00 AM VET
-- FTA
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value) VALUES ('3',50043,0,0,50034,TO_DATE('2014-11-07 08:18:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','Generate Shipment of Load Order','N',TO_DATE('2014-11-07 08:18:54','YYYY-MM-DD HH24:MI:SS'),100,'FTA_LoadOrderGenerateShipment')
;

-- Nov 7, 2014 8:19:00 AM VET
-- FTA
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50043 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- Nov 7, 2014 8:19:09 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53950,50043,0,102,0,19,52708,TO_DATE('2014-11-07 08:19:08','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',10,TO_DATE('2014-11-07 08:19:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:09 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53950 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:10 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53951,50043,0,113,0,19,52709,TO_DATE('2014-11-07 08:19:09','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',11,TO_DATE('2014-11-07 08:19:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:10 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53951 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:11 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53952,50043,0,187,0,19,52710,TO_DATE('2014-11-07 08:19:10','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',12,TO_DATE('2014-11-07 08:19:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:11 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53952 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:12 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53953,50043,0,196,0,19,52711,TO_DATE('2014-11-07 08:19:11','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','Document Type',13,TO_DATE('2014-11-07 08:19:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:12 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53953 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:13 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53954,50043,0,558,0,19,52712,TO_DATE('2014-11-07 08:19:12','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','Order',14,TO_DATE('2014-11-07 08:19:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:13 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53954 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:14 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53955,50043,0,245,0,16,52713,TO_DATE('2014-11-07 08:19:13','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',15,TO_DATE('2014-11-07 08:19:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:14 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53955 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:16 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53956,50043,0,246,0,18,110,52714,TO_DATE('2014-11-07 08:19:14','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',16,TO_DATE('2014-11-07 08:19:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:16 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53956 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:17 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53957,50043,0,210,0,19,52715,TO_DATE('2014-11-07 08:19:16','YYYY-MM-DD HH24:MI:SS'),100,'Sales coverage region','ECA02','The Sales Region indicates a specific area of sales coverage.','Y','N','N','N','N','N','N','Sales Region',17,TO_DATE('2014-11-07 08:19:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:17 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53957 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:19 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53958,50043,0,213,0,19,52716,TO_DATE('2014-11-07 08:19:17','YYYY-MM-DD HH24:MI:SS'),100,'Tax identifier','ECA02','The Tax indicates the type of tax used in document line.','Y','N','N','N','N','N','N','Tax',18,TO_DATE('2014-11-07 08:19:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:19 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53958 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:20 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53959,50043,0,215,0,19,52717,TO_DATE('2014-11-07 08:19:19','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','ECA02','The UOM defines a unique non monetary Unit of Measure','Y','N','N','N','N','N','N','UOM',19,TO_DATE('2014-11-07 08:19:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:20 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53959 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:22 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53960,50043,0,265,0,16,52718,TO_DATE('2014-11-07 08:19:20','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','N','N','N','N','N','N','Document Date',20,TO_DATE('2014-11-07 08:19:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:22 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53960 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:23 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53961,50043,0,555,0,17,151,52719,TO_DATE('2014-11-07 08:19:22','YYYY-MM-DD HH24:MI:SS'),100,'Defines the timing of Delivery','ECA02','The Delivery Rule indicates when an order should be delivered. For example should the order be delivered when the entire order is complete, when a line is complete or as the products become available.','Y','N','N','N','N','N','N','Delivery Rule',21,TO_DATE('2014-11-07 08:19:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:23 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53961 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:24 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53962,50043,0,56441,0,19,52720,TO_DATE('2014-11-07 08:19:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Driver',22,TO_DATE('2014-11-07 08:19:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:24 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53962 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:26 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53963,50043,0,56129,0,19,52721,TO_DATE('2014-11-07 08:19:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Entry Ticket',23,TO_DATE('2014-11-07 08:19:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:26 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53963 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:27 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53964,50043,0,56440,0,19,52722,TO_DATE('2014-11-07 08:19:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Vehicle',24,TO_DATE('2014-11-07 08:19:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:27 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53964 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:28 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53965,50043,0,56074,0,19,52723,TO_DATE('2014-11-07 08:19:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Vehicle Type',25,TO_DATE('2014-11-07 08:19:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:28 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53965 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:30 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53966,50043,0,559,0,17,150,52724,TO_DATE('2014-11-07 08:19:28','YYYY-MM-DD HH24:MI:SS'),100,'Frequency and method of invoicing ','ECA02','The Invoice Rule defines how a Business Partner is invoiced and the frequency of invoicing.','Y','N','N','N','N','N','N','Invoice Rule',26,TO_DATE('2014-11-07 08:19:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:30 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53966 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:33 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53967,50043,0,348,0,20,52725,TO_DATE('2014-11-07 08:19:30','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',27,TO_DATE('2014-11-07 08:19:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:33 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53967 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:36 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53968,50043,0,441,0,12,52726,TO_DATE('2014-11-07 08:19:33','YYYY-MM-DD HH24:MI:SS'),100,'Line Extended Amount (Quantity * Actual Price) without Freight and Charges','ECA02','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.','Y','N','N','N','N','N','N','Line Amount',28,TO_DATE('2014-11-07 08:19:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:36 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53968 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:38 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53969,50043,0,454,0,19,52727,TO_DATE('2014-11-07 08:19:36','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','Product',29,TO_DATE('2014-11-07 08:19:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:38 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53969 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:41 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53970,50043,0,455,0,19,52728,TO_DATE('2014-11-07 08:19:38','YYYY-MM-DD HH24:MI:SS'),100,'Method or manner of product delivery','ECA02','The Shipper indicates the method of delivering product','Y','N','N','N','N','N','N','Shipper',30,TO_DATE('2014-11-07 08:19:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:41 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53970 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:43 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53971,50043,0,459,0,19,52729,TO_DATE('2014-11-07 08:19:41','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','N','N','N','N','N','N','Warehouse',31,TO_DATE('2014-11-07 08:19:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:43 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53971 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:45 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53972,50043,0,56607,0,17,53597,52730,TO_DATE('2014-11-07 08:19:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Operation Type',32,TO_DATE('2014-11-07 08:19:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:45 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53972 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:48 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53973,50043,0,519,0,22,52731,TO_DATE('2014-11-07 08:19:45','YYYY-MM-DD HH24:MI:SS'),100,'Actual Price ','ECA02','The Actual or Unit Price indicates the Price for a product in source currency.','Y','N','N','N','N','N','N','Unit Price',33,TO_DATE('2014-11-07 08:19:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:48 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53973 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:50 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53974,50043,0,2588,0,22,52732,TO_DATE('2014-11-07 08:19:48','YYYY-MM-DD HH24:MI:SS'),100,'Price Entered - the price based on the selected/base UoM','ECA02','The price entered is converted to the actual price based on the UoM conversion','Y','N','N','N','N','N','N','Price',34,TO_DATE('2014-11-07 08:19:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:50 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53974 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:53 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53975,50043,0,520,0,22,52733,TO_DATE('2014-11-07 08:19:50','YYYY-MM-DD HH24:MI:SS'),100,'List Price','ECA02','The List Price is the official List Price in the document currency.','Y','N','N','N','N','N','N','List Price',35,TO_DATE('2014-11-07 08:19:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:53 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53975 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:55 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53976,50043,0,526,0,29,52734,TO_DATE('2014-11-07 08:19:53','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','N','N','N','N','N','N','Quantity',36,TO_DATE('2014-11-07 08:19:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:55 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53976 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:19:57 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53977,50043,0,1063,0,18,190,52735,TO_DATE('2014-11-07 08:19:55','YYYY-MM-DD HH24:MI:SS'),100,'Sales Representative or Company Agent','ECA02','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.','Y','N','N','N','N','N','N','Sales Representative',37,TO_DATE('2014-11-07 08:19:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:19:57 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53977 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:20:00 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53978,50043,0,2123,0,16,52736,TO_DATE('2014-11-07 08:19:57','YYYY-MM-DD HH24:MI:SS'),100,'Shipment Date/Time','ECA02','Actual Date/Time of Shipment (pick up)','Y','N','N','N','N','N','N','Ship Date',38,TO_DATE('2014-11-07 08:19:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:20:00 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53978 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:20:02 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53979,50043,0,607,0,16,52737,TO_DATE('2014-11-07 08:20:00','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','Updated',39,TO_DATE('2014-11-07 08:20:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:20:02 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53979 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:20:09 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53980,50043,0,608,0,18,110,52738,TO_DATE('2014-11-07 08:20:02','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','Updated By',40,TO_DATE('2014-11-07 08:20:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:20:09 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53980 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:20:12 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53981,50043,0,56599,0,19,52739,TO_DATE('2014-11-07 08:20:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Load Order',41,TO_DATE('2014-11-07 08:20:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:20:12 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53981 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:20:14 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53982,50043,0,56609,0,19,52740,TO_DATE('2014-11-07 08:20:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Load Order Line',42,TO_DATE('2014-11-07 08:20:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:20:14 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53982 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:20:17 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53983,50043,0,289,0,17,131,52741,TO_DATE('2014-11-07 08:20:14','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',43,TO_DATE('2014-11-07 08:20:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:20:17 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53983 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:20:20 AM VET
-- FTA
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53984,50043,0,1076,0,19,52742,TO_DATE('2014-11-07 08:20:17','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Detail Line','ECA02','The Invoice Line uniquely identifies a single line of an Invoice.','Y','N','N','N','N','N','N','Invoice Line',44,TO_DATE('2014-11-07 08:20:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:20:20 AM VET
-- FTA
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53984 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 7, 2014 8:23:20 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 08:23:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53950
;

-- Nov 7, 2014 8:23:20 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 08:23:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53984
;

-- Nov 7, 2014 8:23:20 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 08:23:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53959
;

-- Nov 7, 2014 8:23:20 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 08:23:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53956
;

-- Nov 7, 2014 8:23:20 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 08:23:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53955
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53983
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53967
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53968
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53980
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53979
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53963
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53962
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53965
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53964
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53953
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53957
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53977
;

-- Nov 7, 2014 8:23:21 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-11-07 08:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53971
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53970
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53961
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53966
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53972
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53978
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53951
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53982
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53952
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53954
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53960
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53981
;

-- Nov 7, 2014 8:23:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2014-11-07 08:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53969
;

-- Nov 7, 2014 8:23:23 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2014-11-07 08:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53976
;

-- Nov 7, 2014 8:23:23 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2014-11-07 08:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53973
;

-- Nov 7, 2014 8:23:23 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2014-11-07 08:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53974
;

-- Nov 7, 2014 8:23:23 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2014-11-07 08:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53975
;

-- Nov 7, 2014 8:23:23 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2014-11-07 08:23:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53958
;

-- Nov 7, 2014 8:23:50 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:23:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53963
;

-- Nov 7, 2014 8:24:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:24:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53962
;

-- Nov 7, 2014 8:24:29 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:24:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53965
;

-- Nov 7, 2014 8:24:32 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:24:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53964
;

-- Nov 7, 2014 8:24:41 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:24:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53953
;

-- Nov 7, 2014 8:24:50 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:24:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53957
;

-- Nov 7, 2014 8:24:53 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:24:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53977
;

-- Nov 7, 2014 8:25:01 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:25:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53971
;

-- Nov 7, 2014 8:25:05 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:25:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53970
;

-- Nov 7, 2014 8:25:08 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:25:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53961
;

-- Nov 7, 2014 8:25:16 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:25:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53966
;

-- Nov 7, 2014 8:25:27 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:25:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53972
;

-- Nov 7, 2014 8:25:30 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:25:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53978
;

-- Nov 7, 2014 8:25:37 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:25:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53951
;

-- Nov 7, 2014 8:25:45 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsKey='Y',Updated=TO_DATE('2014-11-07 08:25:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53982
;

-- Nov 7, 2014 8:25:53 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:25:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53952
;

-- Nov 7, 2014 8:26:00 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:26:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53954
;

-- Nov 7, 2014 8:26:06 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:26:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53960
;

-- Nov 7, 2014 8:26:12 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:26:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53981
;

-- Nov 7, 2014 8:26:18 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsQueryCriteria='Y',Updated=TO_DATE('2014-11-07 08:26:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53969
;

-- Nov 7, 2014 8:26:22 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_DATE('2014-11-07 08:26:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53976
;

-- Nov 7, 2014 8:26:28 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_DATE('2014-11-07 08:26:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53973
;

-- Nov 7, 2014 8:26:38 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_DATE('2014-11-07 08:26:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53974
;

-- Nov 7, 2014 8:26:40 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_DATE('2014-11-07 08:26:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53975
;

-- Nov 7, 2014 8:26:45 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_DATE('2014-11-07 08:26:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53958
;

-- Nov 7, 2014 8:27:06 AM VET
-- FTA
UPDATE AD_Browse_Trl SET Name='Generar Entrega desde Orden de Carga',Updated=TO_DATE('2014-11-07 08:27:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50043 AND AD_Language='es_MX'
;

-- Nov 7, 2014 8:27:46 AM VET
-- FTA
INSERT INTO AD_Menu (Action,AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',50043,0,53888,0,TO_DATE('2014-11-07 08:27:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Generar Entrega desde Orden de Carga',TO_DATE('2014-11-07 08:27:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:27:46 AM VET
-- FTA
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53888 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Nov 7, 2014 8:27:46 AM VET
-- FTA
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-11-07 08:27:46','YYYY-MM-DD HH24:MI:SS'),100,'Y',53888,0,999,TO_DATE('2014-11-07 08:27:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:27:54 AM VET
-- FTA
UPDATE AD_Menu SET Name='Generate Shipment of Load Order',Updated=TO_DATE('2014-11-07 08:27:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53888
;

-- Nov 7, 2014 8:27:54 AM VET
-- FTA
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53888
;

-- Nov 7, 2014 8:28:07 AM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=0,Updated=TO_DATE('2014-11-07 08:28:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53785
;

-- Nov 7, 2014 8:28:07 AM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=1,Updated=TO_DATE('2014-11-07 08:28:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53745
;

-- Nov 7, 2014 8:28:07 AM VET
-- FTA
UPDATE AD_TreeNodeMM SET Parent_ID=53684, SeqNo=2,Updated=TO_DATE('2014-11-07 08:28:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53888
;

-- Nov 7, 2014 8:41:09 AM VET
-- FTA
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53713,'org.spin.process.GenerateInvoiceLoadOrder','N',TO_DATE('2014-11-07 08:41:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Generate Shipment of Load Order','Y',0,0,TO_DATE('2014-11-07 08:41:07','YYYY-MM-DD HH24:MI:SS'),100,'FTA_LoadOrderGenerateShipment')
;

-- Nov 7, 2014 8:41:09 AM VET
-- FTA
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53713 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Nov 7, 2014 8:41:09 AM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53713,0,TO_DATE('2014-11-07 08:41:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-11-07 08:41:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:41:09 AM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53713,102,TO_DATE('2014-11-07 08:41:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-11-07 08:41:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:41:09 AM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53713,103,TO_DATE('2014-11-07 08:41:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-11-07 08:41:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:41:09 AM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53713,50001,TO_DATE('2014-11-07 08:41:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-11-07 08:41:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:41:10 AM VET
-- FTA
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53713,50002,TO_DATE('2014-11-07 08:41:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-11-07 08:41:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:41:20 AM VET
-- FTA
UPDATE AD_Process_Trl SET Name='Generar Entrega desde Orden de Carga',Updated=TO_DATE('2014-11-07 08:41:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53713 AND AD_Language='es_MX'
;

-- Nov 7, 2014 8:41:43 AM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53713,55016,19,'AD_Org_ID',TO_DATE('2014-11-07 08:41:41','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_DATE('2014-11-07 08:41:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:41:43 AM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55016 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 7, 2014 8:42:25 AM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53713,55017,18,170,52053,'C_DocTypeTarget_ID',TO_DATE('2014-11-07 08:42:24','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02',22,'You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','Y','N','N','Target Document Type',20,TO_DATE('2014-11-07 08:42:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:42:25 AM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55017 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 7, 2014 8:42:38 AM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53713,55018,15,'DateDoc',TO_DATE('2014-11-07 08:42:37','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','Document Date',30,TO_DATE('2014-11-07 08:42:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:42:38 AM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55018 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 7, 2014 8:42:51 AM VET
-- FTA
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,263,0,53713,55019,15,'DateAcct',TO_DATE('2014-11-07 08:42:50','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02',7,'The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Y','N','N','Account Date',40,TO_DATE('2014-11-07 08:42:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2014 8:42:51 AM VET
-- FTA
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55019 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 7, 2014 8:43:15 AM VET
-- FTA
UPDATE AD_Browse SET AD_Process_ID=53713,Updated=TO_DATE('2014-11-07 08:43:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50043
;

-- Nov 7, 2014 8:44:19 AM VET
-- FTA
UPDATE AD_Process_Para SET AD_Element_ID=1037, ColumnName='MovementDate', Description='Date a product was moved in or out of inventory', Help='The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.', Name='Movement Date',Updated=TO_DATE('2014-11-07 08:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55018
;

-- Nov 7, 2014 8:44:19 AM VET
-- FTA
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=55018
;

-- Nov 7, 2014 8:45:11 AM VET
-- FTA
UPDATE AD_Browse SET WhereClause='GI.DocStatus = ''CO'' AND GI.M_InOutline_ID IS NULL',Updated=TO_DATE('2014-11-07 08:45:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50043
;

-- Nov 7, 2014 9:03:38 AM VET
-- FTA
UPDATE AD_Process SET Classname='org.spin.process.GenerateShipmentLoadOrder',Updated=TO_DATE('2014-11-07 09:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53713
;

-- Nov 7, 2014 9:06:14 AM VET
-- FTA
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-11-07 09:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55016
;

-- Nov 7, 2014 9:06:17 AM VET
-- FTA
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-11-07 09:06:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55017
;

-- Nov 7, 2014 10:23:34 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_DATE('2014-11-07 10:23:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53972
;

-- Nov 7, 2014 11:47:21 AM VET
-- FTA
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-11-07 11:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55019
;

-- Nov 7, 2014 11:47:44 AM VET
-- FTA
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2014-11-07 11:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54997
;

-- Nov 7, 2014 11:57:32 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y',Updated=TO_DATE('2014-11-07 11:57:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53972
;

-- Nov 7, 2014 11:57:54 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53951
;

-- Nov 7, 2014 11:57:54 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53953
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53957
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53961
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53962
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53963
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53965
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53964
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53966
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53970
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53971
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53977
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53978
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53982
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53952
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53954
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53960
;

-- Nov 7, 2014 11:57:55 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53972
;

-- Nov 7, 2014 11:57:56 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-11-07 11:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53981
;

-- Nov 7, 2014 11:57:56 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-11-07 11:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53969
;

-- Nov 7, 2014 11:57:56 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-11-07 11:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53976
;

-- Nov 7, 2014 11:57:56 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-11-07 11:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53973
;

-- Nov 7, 2014 11:57:56 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-11-07 11:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53974
;

-- Nov 7, 2014 11:57:56 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2014-11-07 11:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53975
;

-- Nov 7, 2014 11:57:56 AM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2014-11-07 11:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53958
;

-- Nov 7, 2014 2:32:52 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', IsIdentifier='Y',Updated=TO_DATE('2014-11-07 14:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53906
;

-- Nov 7, 2014 2:33:00 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-11-07 14:33:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53906
;

-- Nov 7, 2014 2:33:00 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-11-07 14:33:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53915
;

-- Nov 7, 2014 2:33:01 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-11-07 14:33:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53903
;

-- Nov 7, 2014 2:33:01 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-11-07 14:33:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53910
;

-- Nov 7, 2014 2:33:01 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-11-07 14:33:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53907
;

-- Nov 7, 2014 2:33:01 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-11-07 14:33:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53908
;

-- Nov 7, 2014 2:33:01 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2014-11-07 14:33:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53909
;

-- Nov 7, 2014 2:33:01 PM VET
-- FTA
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2014-11-07 14:33:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53892
;

-- Nov 7, 2014 3:49:20 PM VET
-- FTA
UPDATE AD_Browse SET WhereClause='GI.DocStatus = ''CO'' AND GI.M_InOutline_ID IS NULL AND GI.OperationType = ''DFP''',Updated=TO_DATE('2014-11-07 15:49:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50043
;

