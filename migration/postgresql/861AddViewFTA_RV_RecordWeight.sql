--DROP VIEW fta_rv_recordweight
 CREATE OR REPLACE VIEW fta_rv_recordweight AS 
SELECT 
	rw.ad_client_id, rw.created, rw.createdby, rw.isactive, rw.updated, 
	rw.updatedby, rw.c_doctype_id, rw.c_uom_id, mg.datedoc, rw.description, 
	rw.docstatus, rw.documentno, rw.fta_entryticket_id, 
	COALESCE(rw.fta_qualityanalysis_id, qa.fta_qualityanalysis_id) AS fta_qualityanalysis_id, 
	rw.fta_recordweight_id, rw.grossweight, rw.indate, rw.issotrx, rw.netweight, 
	rw.outdate, rw.tareweight, rw.weightstatus, dr.fta_driver_id, dr.value, 
	vh.fta_vehicle_id, vh.vehicleplate, 
	COALESCE(cp.c_bpartner_id, --o.c_bpartner_id, 
	et.c_bpartner_id) AS c_bpartner_id, 
	et.fta_mobilizationguide_id, 
	--COALESCE(lol.m_product_id, lo.m_product_id, ol.m_product_id, qaa.m_product_id, qa.m_product_id) AS m_product_id, 
	--COALESCE(qaa.qualityanalysis_id, qa.qualityanalysis_id) AS qualityanalysis_id, 
	oi.c_location_id AS org_location_id, oi.taxid, 
	--io.m_warehouse_id, 
	rw.fta_recordweight_id AS fta_rv_recordweight_id, rw.indate AS intime, 
	rw.outdate AS outtime, qa.analysistype, rw.selectionweight, 
	CASE
	    WHEN rw.selectionweight = 'I'::bpchar THEN rw.importweight
	    ELSE rw.payweight
	END AS payweight, 
	rw.importweight, et.ext_guide, COALESCE(cp.value, cp.taxid) AS bptaxid, 
	(cp.name::text || ' '::text) || COALESCE(cp.name2, ''::character varying)::text AS name, 
	qa.datedoc AS qualytidate, NULL::text AS copy, mg.c_city_id, 
	--lol.c_orderline_id, o.c_order_id, lo.fta_loadorder_id, 
-- 	lol.fta_loadorderline_id, 
	et.trailerplate, rw.operationtype, 
	vh.fta_vehiclebrand_id, vh.loadcapacity, vh.volumecapacity, mg.qtytodeliver, 
	mg.c_doctype_id AS c_doctypemobilizationguide_id, 
	mg.ext_guide AS guide_sada, rw.ad_org_id, 
	--lol.qty, 
	--lol.weight, 
	ml.m_locator_id, ml.m_locatorto_id
-- 	COUNT(*)
FROM fta_recordweight rw
LEFT JOIN m_movement m ON m.fta_recordweight_id = rw.fta_recordweight_id AND (m.docstatus = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar]))
LEFT JOIN m_movementline ml ON ml.m_movement_id = m.m_movement_id
LEFT JOIN fta_entryticket et ON et.fta_entryticket_id = rw.fta_entryticket_id
LEFT JOIN fta_driver dr ON dr.fta_driver_id = et.fta_driver_id
LEFT JOIN fta_vehicle vh ON vh.fta_vehicle_id = et.fta_vehicle_id
LEFT JOIN ad_orginfo oi ON oi.ad_org_id = rw.ad_org_id
LEFT JOIN fta_rv_mobilizationguide mg ON mg.fta_mobilizationguide_id = et.fta_mobilizationguide_id
LEFT JOIN c_bpartner cp ON cp.c_bpartner_id = mg.c_bpartner_id
LEFT JOIN fta_loadorder lo ON rw.fta_loadorder_id = lo.fta_loadorder_id
LEFT JOIN fta_qualityanalysis qa ON qa.fta_recordweight_id = rw.fta_recordweight_id AND (qa.docstatus::text = ANY (ARRAY['CO'::character varying::text, 'CL'::character varying::text]))
/*LEFT JOIN ( SELECT qa.fta_qualityanalysis_id, qa.m_product_id, 
qa.qualityanalysis_id, qa.docstatus
FROM fta_qualityanalysis qa
WHERE qa.docstatus::text = ANY (ARRAY['CO'::character varying::text, 'CL'::character varying::text])) qaa ON qaa.fta_qualityanalysis_id = rw.fta_qualityanalysis_id
LEFT JOIN m_product p ON lol.m_product_id = p.m_product_id*/

/*LEFT JOIN (
	SELECT mio.FTA_RecordWeight_ID, mio.DocStatus
	FROM M_InOut mio
	
    ) io ON io.fta_recordweight_id = rw.fta_recordweight_id AND (io.docstatus = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar]))*/
--    LEFT JOIN fta_loadorderline lol ON lol.fta_loadorder_id = lo.fta_loadorder_id
--    LEFT JOIN c_orderline ol ON ol.c_orderline_id = lol.c_orderline_id
--    LEFT JOIN c_order o ON o.c_order_id = ol.c_order_id



--WHERE rw.FTA_RecordWeight_ID=1000043