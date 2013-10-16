--SELECT * FROM AD_PrintFormat 
--SELECT  * FROM AD_ModelValidator 
--UPDATE AD_ModelValidator SET IsActive = 'N' WHERE AD_ModelValidator_ID =3000204

SELECT * FROM AD_PrintFormat WHERE AD_PrintFormat_ID IN (50155,
50159,
50160 );

UPDATE AD_PrintFormat SET AD_Client_ID= 0,AD_Org_ID = 0 WHERE AD_PrintFormat_ID IN (50155,
50159,
50160);

SELECT * FROM AD_PrintFormatItem WHERE AD_PrintFormat_ID IN (
	SELECT AD_PrintFormat_ID FROM AD_PrintFormat WHERE AD_PrintFormat_ID IN (50155,
50159,
50160)
);


UPDATE AD_PrintFormatItem SET AD_Client_ID= 0,AD_Org_ID = 0 WHERE AD_PrintFormat_ID IN (
	SELECT AD_PrintFormat_ID FROM AD_PrintFormat WHERE AD_PrintFormat_ID IN (50155,
50159,
50160)
);

SELECT * FROM AD_PrintFormatItem_Trl WHERE AD_PrintFormatItem_ID IN (
	SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem WHERE AD_PrintFormat_ID IN (
		SELECT AD_PrintFormat_ID FROM AD_PrintFormat WHERE AD_PrintFormat_ID IN (50155,
50159,
50160)
	)
);


UPDATE AD_PrintFormatItem_Trl SET AD_Client_ID= 0,AD_Org_ID = 0 WHERE AD_PrintFormatItem_ID IN (
	SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem WHERE AD_PrintFormat_ID IN (
		SELECT AD_PrintFormat_ID FROM AD_PrintFormat WHERE AD_PrintFormat_ID IN (50155,
50159,
50160)
		)
);


