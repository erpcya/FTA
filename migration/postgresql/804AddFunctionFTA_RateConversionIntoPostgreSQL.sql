
CREATE OR REPLACE FUNCTION FTA_RateConversion(m_product_id numeric, c_uom_to_id numeric)
  RETURNS SETOF numeric AS
$BODY$
  DECLARE
    /*Parametros del Proceso*/
    p_M_Product_ID      Numeric := $1;
    p_C_UOM_To_ID	Numeric := $2;
    /*Variables a usar*/
    v_Rate	        Numeric := 0;
 
  BEGIN
	SELECT 
		c.MultiplyRate into v_Rate
	FROM	C_UOM_Conversion c
	INNER JOIN C_UOM uomTo ON (c.C_UOM_TO_ID=uomTo.C_UOM_ID)
	--LEFT JOIN M_Product p ON (p.M_Product_ID = c.M_Product_ID) 
	WHERE 
		c.IsActive='Y' 
		AND uomTo.C_UOM_ID=p_C_UOM_To_ID
		--AND c.C_UOM_TO_ID=p_C_UOM_To_ID
		AND c.M_Product_ID = p_M_Product_ID 
	ORDER BY 
		c.AD_Client_ID DESC, 
		c.AD_Org_ID DESC;

    /*SELECT MultiplyRate into v_Rate 
      FROM C_UOM_Conversion c
      WHERE c.M_Product_ID = p_M_Product_ID 
      AND c.C_UOM_To_ID = p_C_UOM_To_ID;*/

	
	IF v_Rate IS NULL THEN
		v_Rate := 0;
	END IF;
	
      RETURN NEXT v_Rate;
  END;
  $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;
