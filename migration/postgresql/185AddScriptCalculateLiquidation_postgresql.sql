-- Oct 23, 2013 1:14:28 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,193,0,53456,54190,19,'C_Currency_ID',TO_TIMESTAMP('2013-10-23 01:14:26','YYYY-MM-DD HH24:MI:SS'),100,'The Currency for this record','ECA02',22,'Indicates the Currency to be used when processing or reporting on this record','Y','Y','Y','N','Currency',40,TO_TIMESTAMP('2013-10-23 01:14:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2013 1:14:28 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54190 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 23, 2013 1:15:29 AM VET
-- SFAndroid Contribution
UPDATE AD_Process_Para SET DefaultValue='@#Date@',Updated=TO_TIMESTAMP('2013-10-23 01:15:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53989
;

-- Oct 23, 2013 1:17:42 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Rule (AD_Client_ID,AD_Org_ID,AD_Rule_ID,Created,CreatedBy,EntityType,EventType,IsActive,Name,RuleType,Script,Updated,UpdatedBy,Value) VALUES (0,0,50019,TO_TIMESTAMP('2013-10-23 01:17:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','P','Y','groovy:Liquidation','S','"BigDecimal payWeight = Env.ZERO;
BigDecimal HumWeight = Env.ZERO;
BigDecimal ImpWeight = Env.ZERO;
//Get MAttributeSet
MAttributeSet mas = _AttrSetInstance.getMAttributeSet();

//Get Attibutes
MAttribute[] attr = mas.getMAttributes(true);

//Calculate Humidity
for (int i=0;i<attr.length;i++){
   if (attr[i].getName().equals("Humedad")){
      BigDecimal m_Humidity = DB.getSQLValueBD(null, "Select Coalesce(ValueNumber,0) from M_AttributeInstance Where M_AttributeSetInstance_ID=? AND M_Attribute_ID=?",new Object[]{_AttrSetInstance.getM_AttributeSetInstance_ID(),attr[i].getM_Attribute_ID()});
      HumWeight= _NetWeight.multiply(m_Humidity.subtract(new BigDecimal(12)).divide(new BigDecimal(88), MathContext.DECIMAL128));
   }
}

//Calculate Impurity
for (int i=0;i<attr.length;i++){
   if (attr[i].getName().equals("Impureza")){
      BigDecimal m_Impurity = DB.getSQLValueBD(null, "Select Coalesce(ValueNumber,0) from M_AttributeInstance Where M_AttributeSetInstance_ID=? AND M_Attribute_ID=?",new Object[]{_AttrSetInstance.getM_AttributeSetInstance_ID(),attr[i].getM_Attribute_ID()});
      ImpWeight= _NetWeight.subtract(HumWeight).multiply(m_Impurity.divide(new BigDecimal(100), MathContext.DECIMAL128));
   }
}

//Calculate Pay Weight
payWeight=_NetWeight.subtract(HumWeight).subtract(ImpWeight);

result=payWeight;"',TO_TIMESTAMP('2013-10-23 01:17:40','YYYY-MM-DD HH24:MI:SS'),100,'groovy:Liquidation')
;

-- Oct 23, 2013 1:20:49 AM VET
-- SFAndroid Contribution
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
      BigDecimal m_Humidity = DB.getSQLValueBD(null, "Select Coalesce(ValueNumber,0) from M_AttributeInstance Where M_AttributeSetInstance_ID=? AND M_Attribute_ID=?",new Object[]{_AttrSetInstance.getM_AttributeSetInstance_ID(),attr[i].getM_Attribute_ID()});
      HumWeight= _NetWeight.multiply(m_Humidity.subtract(new BigDecimal(12)).divide(new BigDecimal(88), MathContext.DECIMAL128));
   }
}

//Calculate Impurity
for (int i=0;i<attr.length;i++){
   if (attr[i].getName().equals("Impureza")){
      BigDecimal m_Impurity = DB.getSQLValueBD(null, "Select Coalesce(ValueNumber,0) from M_AttributeInstance Where M_AttributeSetInstance_ID=? AND M_Attribute_ID=?",new Object[]{_AttrSetInstance.getM_AttributeSetInstance_ID(),attr[i].getM_Attribute_ID()});
      ImpWeight= _NetWeight.subtract(HumWeight).multiply(m_Impurity.divide(new BigDecimal(100), MathContext.DECIMAL128));
   }
}

//Calculate Pay Weight
payWeight=_NetWeight.subtract(HumWeight).subtract(ImpWeight);

result=payWeight;',Updated=TO_TIMESTAMP('2013-10-23 01:20:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Rule_ID=50019
;

-- Oct 23, 2013 1:21:08 AM VET
-- SFAndroid Contribution
UPDATE AD_Browse_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-10-23 01:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53377
;

