/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttributeSetInstance;
import org.compiere.model.MRule;
import org.compiere.model.Query;
import org.compiere.model.Scriptlet;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTACategoryCalc extends X_FTA_CategoryCalc {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9212561478275479175L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/08/2013, 14:42:35
	 * @param ctx
	 * @param FTA_CategoryCalc_ID
	 * @param trxName
	 */
	public MFTACategoryCalc(Properties ctx, int FTA_CategoryCalc_ID,
			String trxName) {
		super(ctx, FTA_CategoryCalc_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/08/2013, 14:42:35
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTACategoryCalc(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Execute the script
	 * @param AD_Rule_ID
	 * @param string Column Type
	 * @return Object
	 */
	private Object executeScript(int AD_Rule_ID, String resultType,String defValue)
	{
		MRule rulee = MRule.get(getCtx(), AD_Rule_ID);
		Object result = null;
		m_description = null;
		try
		{
			String text = "";
			if (rulee.getScript() != null)
			{
				text = rulee.getScript().trim().replaceAll("\\bget", "process.get")
				.replace(".process.get", ".get");
			}
			
			final String script =
				s_scriptImport.toString()
				+" " + resultType + " result = "+ defValue +";"
				+" String description = null;"
				+ text;
			Scriptlet engine = new Scriptlet (Scriptlet.VARIABLE, script, m_scriptCtx);	
			Exception ex = engine.execute();
			if (ex != null)
			{
				throw ex;
			}
			result = engine.getResult(false);
			m_description = engine.getDescription();
		}
		catch (Exception e)
		{
			throw new AdempiereException("Execution error - @AD_Rule_ID@="+rulee.getValue());
		}
		return result;
	}//executeScript
	
	/**
	 * 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 22/10/2013, 22:26:36
	 * @param packageName
	 * @return void
	 */
	public static void addScriptImportPackage(String packageName)
	{
		s_scriptImport.append(" import ").append(packageName).append(";");
	}//addScriptImportPackage
	
	public BigDecimal getPaidWeight(BigDecimal NetWeigh,MAttributeSetInstance Attr)
	{
		m_scriptCtx.remove("_NetWeight");
		m_scriptCtx.remove("_AttrSetInstance");
		
		m_scriptCtx.put("_NetWeight", NetWeigh);
		m_scriptCtx.put("_AttrSetInstance",Attr);
		BigDecimal result;
		result = (BigDecimal)executeScript(getAD_Rule_ID(), "BigDecimal","new BigDecimal(0)");
		
		return result;
	}
	private static StringBuffer s_scriptImport = new StringBuffer(	 " import org.spin.model.*;" 
			+" import org.eevolution.model.*;"
			+" import org.compiere.model.*;"
			+" import org.adempiere.model.*;"
			+" import org.compiere.util.*;"
			+" import java.math.*;"
			+" import java.sql.*;" 
			+" import java.util.*;");

	
	/** the context for rules */
	HashMap<String, Object> m_scriptCtx = new HashMap<String, Object>();
	
	Object m_description = null;
	
	/**
	 * Get Category Calc from Category and Event Type
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/10/2013, 10:17:06
	 * @param ctx
	 * @param p_Category_ID
	 * @param p_EventType
	 * @param trxName
	 * @return
	 * @return MFTACategoryCalc
	 */
	public static MFTACategoryCalc get(Properties ctx, int p_Category_ID, String p_EventType, String trxName){
		MFTACategoryCalc categoryCalc = new Query(ctx, I_FTA_CategoryCalc.Table_Name, 
				" M_Product_ID=? AND EventType=?"
				, trxName)
			.setOnlyActiveRecords(true)
			.setParameters(p_Category_ID, p_EventType)
			.first();
		//	
		return categoryCalc;
	}
}
