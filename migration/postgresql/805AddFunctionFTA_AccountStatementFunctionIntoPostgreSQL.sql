--DROP FUNCTION FTA_AllocationsFunction(p_C_BPartner_ID numeric,p_FTA_FarmerCredit_ID NUMERIC)
CREATE OR REPLACE FUNCTION FTA_AllocationsFunction(p_C_BPartner_ID numeric,p_FTA_FarmerCredit_ID NUMERIC)
  RETURNS character varying AS
$BODY$
Declare
documentn RECORD;
v_DocumentNo Varchar;
Begin
v_DocumentNo:=null;
FOR documentn IN 
		SELECT DISTINCT FTA_Allocation.DocumentNo
		FROM FTA_Allocation
		INNER JOIN FTA_FarmerCredit ON (FTA_Allocation.FTA_FarmerCredit_ID = FTA_FarmerCredit.FTA_FarmerCredit_ID )
		WHERE 
			FTA_FarmerCredit.C_BPartner_ID = p_C_BPartner_ID
			AND FTA_Allocation.FTA_FarmerCredit_ID=p_FTA_FarmerCredit_ID
			AND FTA_Allocation.DocStatus IN ('CO','CL')
LOOP

	IF(v_DocumentNo IS NOT NULL) THEN
		v_DocumentNo := v_DocumentNo||'' ||CAST('('||documentn.DocumentNo||')' AS VARCHAR(30));
	ELSE
		v_DocumentNo := CAST('('||documentn.DocumentNo||')' AS VARCHAR(30));
	END IF;
END LOOP;

RETURN v_DocumentNo;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;