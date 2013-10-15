-- DROP VIEW FTA_RV_RecordWeight
CREATE OR REPLACE VIEW FTA_RV_RecordWeight AS
SELECT rw.AD_Client_ID, rw.AD_Org_ID, rw.Created, rw.CreatedBy, rw.IsActive, rw.Updated, rw.UpdatedBy, 
rw.C_DocType_ID, rw.C_UOM_ID, rw.DateDoc, rw.Description, 
rw.DocStatus, rw.DocumentNo, rw.FTA_EntryTicket_ID, rw.FTA_QualityAnalysis_ID, 
rw.FTA_RecordWeight_ID, rw.GrossWeight, rw.InDate, rw.IsSOTrx, rw.NetWeight, rw.OutDate, 
rw.TareWeight, rw.WeightStatus, dr.FTA_Driver_ID, dr.Value TaxID, vh.FTA_Vehicle_ID, vh.VehiclePlate, 
cp.C_BPartner_ID, cp.Value, cp.Name, et.FTA_MobilizationGuide_ID
FROM FTA_RecordWeight rw
INNER JOIN FTA_EntryTicket et ON(et.FTA_EntryTicket_ID = rw.FTA_EntryTicket_ID)
INNER JOIN FTA_Driver dr ON(dr.FTA_Driver_ID = et.FTA_Driver_ID)
INNER JOIN FTA_Vehicle vh ON(vh.FTA_Vehicle_ID = et.FTA_Vehicle_ID)
INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = et.C_BPartner_ID)