-- Oct 29, 2013 7:51:29 AM VET
-- Farming Technical Assistance
UPDATE AD_Rule SET Script='BigDecimal payWeight = Env.ZERO;
BigDecimal HumWeight = Env.ZERO;
BigDecimal ImpWeight = Env.ZERO;
//Get MAttributeSet
MAttributeSet mas = _AttrSetInstance.getMAttributeSet();

//Get Attibutes
MAttribute[] attr = mas.getMAttributes(true);

//Calculate Humidity
for (int i=0;i<attr.length;i++){
   if (attr[i].getName().equals("Humedad")){
      BigDecimal m_Humidity = DB.getSQLValueBD(_trxName, "Select Coalesce(ValueNumber,0) from M_AttributeInstance Where M_AttributeSetInstance_ID=? AND M_Attribute_ID=?",new Object[]{_AttrSetInstance.getM_AttributeSetInstance_ID(),attr[i].getM_Attribute_ID()});
      HumWeight= _NetWeight.multiply(m_Humidity.subtract(new BigDecimal(12)).divide(new BigDecimal(88), MathContext.DECIMAL128));
   }
}

//Calculate Impurity
for (int i=0;i<attr.length;i++){
   if (attr[i].getName().equals("Impureza")){
      BigDecimal m_Impurity = DB.getSQLValueBD(_trxName, "Select Coalesce(ValueNumber,0) from M_AttributeInstance Where M_AttributeSetInstance_ID=? AND M_Attribute_ID=?",new Object[]{_AttrSetInstance.getM_AttributeSetInstance_ID(),attr[i].getM_Attribute_ID()});
      ImpWeight= _NetWeight.subtract(HumWeight).multiply(m_Impurity.divide(new BigDecimal(100), MathContext.DECIMAL128));
   }
}

//Calculate Pay Weight
payWeight=_NetWeight.subtract(HumWeight).subtract(ImpWeight);

result=payWeight;',Updated=TO_DATE('2013-10-29 07:51:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Rule_ID=50019
;

-- Oct 29, 2013 7:53:58 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69435,913,0,20,53559,'I_IsImported',TO_DATE('2013-10-29 07:53:51','YYYY-MM-DD HH24:MI:SS'),100,'Has this import been processed','ECA02',1,'The Imported check box indicates if this import has been processed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Imported',0,TO_DATE('2013-10-29 07:53:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 29, 2013 7:53:58 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69435 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 29, 2013 7:55:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69436,913,0,20,53561,'I_IsImported',TO_DATE('2013-10-29 07:54:51','YYYY-MM-DD HH24:MI:SS'),100,'Has this import been processed','ECA02',1,'The Imported check box indicates if this import has been processed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Imported',0,TO_DATE('2013-10-29 07:54:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 29, 2013 7:55:03 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69436 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 29, 2013 7:55:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,69437,913,0,20,53560,'I_IsImported',TO_DATE('2013-10-29 07:55:38','YYYY-MM-DD HH24:MI:SS'),100,'Has this import been processed','ECA02',1,'The Imported check box indicates if this import has been processed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Imported',0,TO_DATE('2013-10-29 07:55:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 29, 2013 7:55:43 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69437 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 29, 2013 7:56:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69437,70192,0,53730,TO_DATE('2013-10-29 07:56:22','YYYY-MM-DD HH24:MI:SS'),100,'Has this import been processed',1,'ECA02','The Imported check box indicates if this import has been processed.','Y','Y','Y','N','N','N','N','N','Imported',TO_DATE('2013-10-29 07:56:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 29, 2013 7:56:25 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70192 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 29, 2013 7:56:55 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-10-29 07:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70192
;

-- Oct 29, 2013 7:57:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69436,70193,0,53731,TO_DATE('2013-10-29 07:57:20','YYYY-MM-DD HH24:MI:SS'),100,'Has this import been processed',1,'ECA02','The Imported check box indicates if this import has been processed.','Y','Y','Y','N','N','N','N','N','Imported',TO_DATE('2013-10-29 07:57:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 29, 2013 7:57:22 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70193 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 29, 2013 7:57:42 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-10-29 07:57:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70193
;

-- Oct 29, 2013 7:58:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69435,70194,0,53729,TO_DATE('2013-10-29 07:58:24','YYYY-MM-DD HH24:MI:SS'),100,'Has this import been processed',1,'ECA02','The Imported check box indicates if this import has been processed.','Y','Y','Y','N','N','N','N','N','Imported',TO_DATE('2013-10-29 07:58:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 29, 2013 7:58:28 AM VET
-- Farming Technical Assistance
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70194 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 29, 2013 7:58:40 AM VET
-- Farming Technical Assistance
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-10-29 07:58:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70194
;

