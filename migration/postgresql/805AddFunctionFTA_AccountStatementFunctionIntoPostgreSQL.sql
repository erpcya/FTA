--DROP FUNCTION LVE_AccountStatement(p_C_BPartner_ID numeric,p_FTA_FarmerCredit_ID NUMERIC)
CREATE OR REPLACE FUNCTION FTA_AccountStatementFunction(p_C_BPartner_ID numeric,p_FTA_FarmerCredit_ID NUMERIC)
  RETURNS character varying AS
$BODY$
Declare
documentn RECORD;
v_DocumentNo Varchar;
Begin
v_DocumentNo:=null;
FOR documentn IN 
		SELECT DISTINCT DocumentNo
		FROM FTA_RV_AccountStatement
		WHERE 
			FTA_RV_AccountStatement.C_BPartner_ID = p_C_BPartner_ID
			AND FTA_RV_AccountStatement.FTA_FarmerCredit_ID=p_FTA_FarmerCredit_ID
			AND FTA_RV_AccountStatement.DocStatus IN ('CO','CL')
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