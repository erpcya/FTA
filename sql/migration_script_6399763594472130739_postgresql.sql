-- Oct 28, 2013 4:04:45 PM VET
-- Farming Technical Assistance
ALTER TABLE FTA_RecordWeight ADD COLUMN SelectionWeight CHAR(1) DEFAULT 'P' 
;

-- Oct 28, 2013 4:04:57 PM VET
-- Farming Technical Assistance
ALTER TABLE FTA_RecordWeight ADD COLUMN ImportWeight NUMERIC DEFAULT NULL 
;

-- Oct 28, 2013 4:05:11 PM VET
-- Farming Technical Assistance
ALTER TABLE FTA_RecordWeight ADD COLUMN PayWeight NUMERIC DEFAULT NULL 
;

