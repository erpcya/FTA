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
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MCurrency;
import org.compiere.model.MPaySchedule;
import org.compiere.model.MPaymentTerm;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;

/**
 * @author  <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class MFTAFCPaySchedule extends X_FTA_FC_PaySchedule {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1195778732226685569L;

	/**	Parent								*/
	private MFTAFarmerCredit m_parent 		= null;

	/** Static Logger						*/
	private static CLogger s_log 			= CLogger.getCLogger (MFTAFCPaySchedule.class);

	/**	Payment Schedule children			*/
	private MPaySchedule[] m_schedule		= null;


	/**	Payment Term 						*/
	MPaymentTerm m_PayTerm  				= null;

	/**
	 * *** Constructor ***
	 * @author  <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 18:45:20
	 * @param ctx
	 * @param FTA_FC_PaySchedule_ID
	 * @param trxName
	 */
	public MFTAFCPaySchedule(Properties ctx, int FTA_FC_PaySchedule_ID,
			String trxName) {
		super(ctx, FTA_FC_PaySchedule_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author  <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 18:45:20
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAFCPaySchedule(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author  <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 18:45:20
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAFCPaySchedule(Properties ctx, int FTA_FC_PaySchedule_ID, int c_PaymentTerm_ID,
			String get_TrxName) {
		super(ctx, FTA_FC_PaySchedule_ID, get_TrxName);
		m_PayTerm = new MPaymentTerm(ctx, 
				c_PaymentTerm_ID, get_TrxName());
		
	}

	/**
	 * 	Parent Constructor
	 *	@param order invoice
	 *	@param paySchedule payment schedule
	 */
	public MFTAFCPaySchedule (MFTAFarmerCredit m_FTA_FarmerCredit, MPaySchedule paySchedule)
	{
		super (m_FTA_FarmerCredit.getCtx(), 0, m_FTA_FarmerCredit.get_TrxName());
		m_parent = m_FTA_FarmerCredit;
		setClientOrg(m_FTA_FarmerCredit);
		setFTA_FarmerCredit_ID(m_FTA_FarmerCredit.getFTA_FarmerCredit_ID());
		setC_PaySchedule_ID(paySchedule.getC_PaySchedule_ID());

		//	Amounts
		int scale = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "C_Currency_ID"));
		BigDecimal due = m_FTA_FarmerCredit.getAmt();
		if (due.compareTo(Env.ZERO) == 0)
		{
			setDueAmt (Env.ZERO);
			setDiscountAmt (Env.ZERO);
			setIsValid(false);
		}
		else
		{
			due = due.multiply(paySchedule.getPercentage())
					.divide(Env.ONEHUNDRED, scale, BigDecimal.ROUND_HALF_UP);
			setDueAmt (due);
			BigDecimal discount = due.multiply(paySchedule.getDiscount())
					.divide(Env.ONEHUNDRED, scale, BigDecimal.ROUND_HALF_UP);
			setDiscountAmt (discount);
			setIsValid(true);
		}

		//	Dates		
		Timestamp dueDate = TimeUtil.addDays(m_FTA_FarmerCredit.getDateDoc(), paySchedule.getNetDays());
		setDueDate (dueDate);
		Timestamp discountDate = TimeUtil.addDays(m_FTA_FarmerCredit.getDateDoc(), paySchedule.getDiscountDays());
		setDiscountDate (discountDate);
	}	//	MFTAFCPaySchedule 

	/**
	 * Get Payment Schedule of the Farmer Credit
	 * @author   <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 19:37:17
	 * @param requery
	 * @param whereClause
	 * @return
	 * @return MFTAFCPaySchedule[]
	 */
	public static MFTAFCPaySchedule[] getFCPaySchedule(Properties ctx, 
			int FTA_FarmerCredit_ID , int FTA_FC_PaySchedule_ID, String trxName) {

		String sql = "SELECT * FROM FTA_FC_PaySchedule fcp ";
		if(FTA_FarmerCredit_ID != 0)
			sql+=" WHERE FTA_FarmerCredit_ID = ?";
		else{
			sql+=" WHERE EXISTS ( SELECT * FROM FTA_FC_PaySchedule fci "
					+ " WHERE fci.FTA_FC_PaySchedule_ID = ? AND fcp.FTA_FarmerCredit_ID = fci.FTA_FarmerCredit_ID)";
		}
		sql+=" ORDER BY fcp.DueDate";

		ArrayList<MFTAFCPaySchedule> list = new ArrayList<MFTAFCPaySchedule>();
		PreparedStatement pstmt = null;
		try {
			pstmt = DB.prepareStatement(sql, trxName);
			if (FTA_FarmerCredit_ID != 0)
				pstmt.setInt(1, FTA_FarmerCredit_ID);
			else
				pstmt.setInt(1, FTA_FC_PaySchedule_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add (new MFTAFCPaySchedule(ctx, rs, trxName));				
			}

			rs.close();
			pstmt.close();
			pstmt = null;
			
		} catch (Exception e) {
			s_log.log(Level.SEVERE, "getFCPaySchedule ", e);
		}
		
		try {
			if (pstmt != null)
				pstmt.close();
			pstmt = null;
		} catch (Exception e) {
			pstmt = null;
		}
		
		MFTAFCPaySchedule[] retValue = new MFTAFCPaySchedule[list.size()];
		list.toArray(retValue);
		return retValue;
	}//	getFCPaySchedule

	/**
	 * Validate Farmer Credit Pay Schedule
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 21:22:01
	 * @return
	 * @return boolean
	 */
	public boolean validatePaySchedule() {

		MFTAFCPaySchedule[] schedule = MFTAFCPaySchedule.getFCPaySchedule(getCtx(), m_parent.getFTA_FarmerCredit_ID()
				, 0, get_TrxName());

		log.fine("#" + schedule.length);
		if (schedule.length == 0){
			m_parent.setIsPayScheduleValid(false);
			return false;
		}
		//	Add up due amounts
		BigDecimal total = Env.ZERO;
		for (int i = 0; i < schedule.length; i++){
			schedule[i].setParent(m_parent);
			BigDecimal due = schedule[i].getDueAmt();
			if (due != null)
				total = total.add(due);
		}
		boolean valid = m_parent.getAmt().compareTo(total) == 0;
		m_parent.setIsPayScheduleValid(valid);

		//	Update Schedule Lines
		for (int i = 0; i < schedule.length; i++){
			if (schedule[i].isValid() != valid){
				schedule[i].setIsValid(valid);
				schedule[i].saveEx(get_TrxName());
			}
		}
		return valid;	
	}//	validatePaySchedule


	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 22:02:31
	 * @param parent
	 * @return void
	 */
	public void setParent (MFTAFarmerCredit parent){
		m_parent = parent;
	}	//	setParent

	/**
	 * @return Returns the parent.
	 */
	public MFTAFarmerCredit getParent ()
	{
		if (m_parent == null)
			m_parent = new MFTAFarmerCredit(getCtx(), getFTA_FarmerCredit_ID(), get_TrxName()); 
		return m_parent;
	}	//	getParent

	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString()
	{
		StringBuffer sb = new StringBuffer("MFTAFCPaySchedule[");
		sb.append(get_ID()).append("-Due=" + getDueDate() + "/" + getDueAmt())
		.append(";Discount=").append(getDiscountDate() + "/" + getDiscountAmt())
		.append("]");
		return sb.toString();
	}	//	toString



	/**
	 * 	Before Save
	 *	@param newRecord new
	 *	@return true
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (is_ValueChanged("DueAmt"))
		{
			log.fine("beforeSave");
			setIsValid(false);
		}
		return true;
	}	//	beforeSave

	/**
	 * 	After Save
	 *	@param newRecord new
	 *	@param success success
	 *	@return success
	 */
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (is_ValueChanged("DueAmt"))
		{
			log.fine("afterSave");
			getParent();
			validatePaySchedule();
			m_parent.save();
		}
		return success;
	}	//	afterSave


	/**
	 * Add Support to Farmer Credit
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 20:30:53
	 * @param FTA_FarmerCredit_ID
	 * @return
	 * @return boolean
	 */
	public boolean applyToFarmerCredit(int FTA_FarmerCredit_ID){
		MFTAFarmerCredit m_FTA_FarmerCredit = 
				new MFTAFarmerCredit(getCtx(), FTA_FarmerCredit_ID, get_TrxName());
		if(m_FTA_FarmerCredit == null
				|| m_FTA_FarmerCredit.get_ID() == 0){
			log.log(Level.SEVERE, "apply - Not valid FTA_FarmerCredit_ID=" + FTA_FarmerCredit_ID);
			return false;
		}
			
		return applyToFarmerCredit(m_FTA_FarmerCredit);
	}

	/**
	 * Apply Pay Schedule to Farmer Credit
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 20:44:51
	 * @param m_FTA_FarmerCredit
	 * @return
	 * @return boolean
	 */
	public boolean applyToFarmerCredit(MFTAFarmerCredit m_FTA_FarmerCredit) {
		if(m_FTA_FarmerCredit == null
				|| m_FTA_FarmerCredit.get_ID() == 0){
			log.log(Level.SEVERE, "apply - Not valid FTA_FarmerCredit_ID=" + m_FTA_FarmerCredit);
			return false;
		}
		if (!m_PayTerm.isValid())
			return applyNoSchedule (m_FTA_FarmerCredit);
		//
		m_schedule = m_PayTerm.getSchedule(true);
		
		if (m_schedule.length <= 1)
			return applyNoSchedule (m_FTA_FarmerCredit);
		else	//	only if valid
			return applySchedule(m_FTA_FarmerCredit);
	}


	/**
	 * Add Support to Farmer Credit
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 21:06:39
	 * @param m_FTA_FarmerCredit
	 * @return
	 * @return boolean
	 */
	private boolean applySchedule(MFTAFarmerCredit m_FTA_FarmerCredit) {
		deleteFCPaySchedule(m_FTA_FarmerCredit.getFTA_FarmerCredit_ID(), m_FTA_FarmerCredit.get_TrxName());
		
		//	Create Schedule
		MFTAFCPaySchedule m_FTA_FC_PaySchedule = null;

		BigDecimal remainder =  m_FTA_FarmerCredit.getAmt();
		
		for (int i = 0; i < m_schedule.length; i++) {
			m_FTA_FC_PaySchedule = new MFTAFCPaySchedule(m_FTA_FarmerCredit, m_schedule[i]);
			m_FTA_FC_PaySchedule.saveEx(m_FTA_FC_PaySchedule.get_TrxName());
			log.fine(m_FTA_FC_PaySchedule.toString());
			remainder = remainder.subtract(m_FTA_FC_PaySchedule.getDueAmt());
		}	//	for all schedules

		//	Remainder - update last
		if(remainder.compareTo(Env.ZERO) != 0
				&& m_FTA_FC_PaySchedule != null){
			m_FTA_FC_PaySchedule.setDueAmt(m_FTA_FC_PaySchedule.getDueAmt().add(remainder));
			m_FTA_FC_PaySchedule.saveEx(m_FTA_FC_PaySchedule.get_TrxName());
			log.fine("Remainder=" + remainder + " - " + m_FTA_FC_PaySchedule);
		}
		
		//	Update Farmer Credit
		if (m_FTA_FarmerCredit.getC_PaymentTerm_ID() != m_PayTerm.getC_PaymentTerm_ID())
			m_FTA_FarmerCredit.setC_PaymentTerm_ID(m_PayTerm.getC_PaymentTerm_ID());
		
		return m_FTA_FC_PaySchedule.validatePaySchedule();
	}
		

	/**
	 * Support to Farmer Credit
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 20:48:31
	 * @param m_FTA_FarmerCredit
	 * @return
	 * @return boolean
	 */
	private boolean applyNoSchedule(MFTAFarmerCredit m_FTA_FarmerCredit) {
		deleteFCPaySchedule(m_FTA_FarmerCredit.getFTA_FarmerCredit_ID(),m_FTA_FarmerCredit.get_TrxName());
		
		//	update Farmer Credit
		if(m_FTA_FarmerCredit.getC_PaymentTerm_ID() != m_PayTerm.getC_PaymentTerm_ID())
			m_FTA_FarmerCredit.setC_PaymentTerm_ID(m_PayTerm.getC_PaymentTerm_ID());
		if(m_FTA_FarmerCredit.isPayScheduleValid())
			m_FTA_FarmerCredit.setIsPayScheduleValid(false);
		
		return false;
	}

	/**
	 * Delete existing Farmer Credit Payment Schedule
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 26/03/2014, 20:50:53
	 * @param FTA_FarmerCredit_ID
	 * @param trxName
	 * @return void
	 */
	private void deleteFCPaySchedule(int FTA_FarmerCredit_ID,
			String trxName) {
		String sql = "DELETE FTA_FC_PaySchedule WHERE FTA_FarmerCredit_ID=" + FTA_FarmerCredit_ID;
		int no = DB.executeUpdate(sql, trxName);
		log.fine("FTA_FarmerCredit_ID=" + FTA_FarmerCredit_ID + " - #" + no);
	}

	
		
}
