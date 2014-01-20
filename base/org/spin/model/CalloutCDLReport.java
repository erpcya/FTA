package org.spin.model;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.util.DB;

public class CalloutCDLReport extends CalloutEngine
{

	/**
	 * Set Print Name of CDL Category Name
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 20/01/2014, 09:22:04
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String cdlCategory (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		//	Parsed Value to Integer
		Integer p_CDL_Category_ID = (Integer) value;
		//	Validation not null not zero
		if(p_CDL_Category_ID == null 
				|| p_CDL_Category_ID == 0)
			return "";
		
		//	Definition sql
		String sql = "SELECT Name FROM FTA_CDL_Category " +
				" WHERE FTA_CDL_Category_ID = ? ";
		
		//	Set variable name
		String name = DB.getSQLValueString(null, sql, p_CDL_Category_ID);
		
		//	Validate name not null, not spaced 
		if(name == null 
				|| name == "")
			return "";
		else
			mTab.setValue("PrintName", name); // Set Print Name with name returned of sql
		
		return "";
	}//	End cdlCategory
	
}
