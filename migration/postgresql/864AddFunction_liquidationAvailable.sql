-- Function: liquidationAvailable(numeric)

-- DROP FUNCTION liquidationAvailable(numeric);
CREATE OR REPLACE FUNCTION liquidationAvailable(p_FTA_FarmerLiquidation_id numeric)
  RETURNS numeric AS
$BODY$
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *
 * converted to postgreSQL by Karsten Thiemann (Schaeffer AG), 
 * kthiemann@adempiere.org
 *************************************************************************
 * Title:	Calculate Available Payment Amount in Payment Currency
 * Description:
 *		similar to C_Invoice_Open
 ************************************************************************/
DECLARE
	v_Currency_ID		NUMERIC(10);
	v_AvailableAmt		NUMERIC := 0;
    	v_Amt               	NUMERIC := 0;
    	v_PayRequestAmt		NUMERIC := 0;
    	r   			RECORD;

BEGIN
    --	Get Currency
	SELECT	C_Currency_ID, Amt
	  INTO	v_Currency_ID, v_AvailableAmt
	FROM	FTA_FarmerLiquidation     -- corrected for AP/AR
	WHERE	FTA_FarmerLiquidation_ID = p_FTA_FarmerLiquidation_ID;
--  DBMS_OUTPUT.PUT_LINE('== FTA_FarmerLiquidation_ID=' || p_FTA_FarmerLiquidation_ID || ', Amt=' || v_AvailableAmt);

	--	Calculate Allocated Amount
	FOR r IN
		SELECT	a.AD_Client_ID, a.AD_Org_ID, al.Amount, a.C_Currency_ID, a.DateDoc
		FROM	FTA_AllocationLine al
	        INNER JOIN FTA_Allocation a ON (al.FTA_Allocation_ID=a.FTA_Allocation_ID)
		WHERE	al.FTA_FarmerLiquidation_ID = p_FTA_FarmerLiquidation_ID
          	AND   a.IsActive='Y'
	LOOP
        v_Amt := currencyConvert(r.Amount, r.C_Currency_ID, v_Currency_ID, r.DateDoc, null, r.AD_Client_ID, r.AD_Org_ID);
	    v_AvailableAmt := v_AvailableAmt - v_Amt;
--      DBMS_OUTPUT.PUT_LINE('  Allocation=' || a.Amount || ' - Available=' || v_AvailableAmt);
	END LOOP;
	--Add Payment Request For liquidation
	Select Sum(pr.PayAmt) PayAmt INTO v_PayRequestAmt From FTA_PaymentRequest pr 
	Where pr.DocStatus IN ('CO','CL') AND C_PaySelectionCheck_ID IS NULL AND pr.FTA_FarmerLiquidation_ID = p_FTA_FarmerLiquidation_ID
	GROUP BY pr.FTA_FarmerLiquidation_ID;

	v_AvailableAmt = v_AvailableAmt - Coalesce(v_PayRequestAmt,0);
	
	--	Ignore Rounding
	IF (v_AvailableAmt BETWEEN -0.00999 AND 0.00999) THEN
		v_AvailableAmt := 0;
	END IF;
	--	Round to penny
	v_AvailableAmt := ROUND(COALESCE(v_AvailableAmt,0), 2);
	RETURN	v_AvailableAmt;
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;