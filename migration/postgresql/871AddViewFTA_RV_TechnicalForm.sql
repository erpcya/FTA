-- DROP VIEW FTA_RV_TechnicalForm;
CREATE OR REPLACE VIEW FTA_RV_TechnicalForm AS
SELECT 
	tf.AD_Client_ID, 
	tf.AD_Org_ID, 
	tf.Created, 
	tf.CreatedBy, 
	tf.Updated, 
	tf.UpdatedBy, 
	tf.IsActive, 
	tf.C_BPartner_ID, 
	tf.C_DocType_ID, 
	tf.Comments, 
	tf.DateDoc, 
	tf.Description, 
	tf.DocStatus, 
	tf.DocumentNo,  
	tf.FTA_TechnicalForm_ID, 	
	tf.IsApproved, 
	tf.Processed, 
	tf.SalesRep_ID,
	tf.FTA_Farm_ID,
	oi.C_Location_ID Org_Location_ID,
	oi.TaxID,
	COALESCE(bp.Value, bp.TaxID) BPTaxID,
	bp.Name || COALESCE(bp.Name2,'') BPName,
	bpl.C_BPartner_Location_ID,
	tf.FTA_TechnicalForm_ID FTA_RV_TechnicalForm_ID
FROM FTA_TechnicalForm tf
INNER JOIN C_DocType dt ON (dt.C_DocType_ID = tf.C_DocType_ID)
INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID = tf.C_BPartner_ID)
INNER JOIN AD_User u ON (u.AD_User_ID = tf.SalesRep_ID)
INNER JOIN AD_OrgInfo oi ON (tf.AD_Org_ID = oi.AD_Org_ID)
LEFT JOIN FTA_Farm f ON (f.FTA_Farm_ID = tf.FTA_Farm_ID)
LEFT JOIN C_BPartner_Location bpl ON (bpl.C_BPartner_Location_ID = f.C_BPartner_Location_ID )
;