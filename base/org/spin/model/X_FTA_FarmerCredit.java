/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.spin.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for FTA_FarmerCredit
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_FTA_FarmerCredit extends PO implements I_FTA_FarmerCredit, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140120L;

    /** Standard Constructor */
    public X_FTA_FarmerCredit (Properties ctx, int FTA_FarmerCredit_ID, String trxName)
    {
      super (ctx, FTA_FarmerCredit_ID, trxName);
      /** if (FTA_FarmerCredit_ID == 0)
        {
			setAmt (Env.ZERO);
			setC_BPartner_ID (0);
			setC_DocType_ID (0);
			setCreditType (null);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
// @#Date@
			setDocAction (null);
// CO
			setDocStatus (null);
// DR
			setFTA_FarmerCredit_ID (0);
			setIsApproved (false);
			setQty (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_FTA_FarmerCredit (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_FTA_FarmerCredit[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amt 
		Amount
	  */
	public void setAmt (BigDecimal Amt)
	{
		set_Value (COLUMNNAME_Amt, Amt);
	}

	/** Get Amount.
		@return Amount
	  */
	public BigDecimal getAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Amt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Approved Amount.
		@param ApprovedAmt Approved Amount	  */
	public void setApprovedAmt (BigDecimal ApprovedAmt)
	{
		set_Value (COLUMNNAME_ApprovedAmt, ApprovedAmt);
	}

	/** Get Approved Amount.
		@return Approved Amount	  */
	public BigDecimal getApprovedAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ApprovedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Approved Quantity.
		@param ApprovedQty Approved Quantity	  */
	public void setApprovedQty (BigDecimal ApprovedQty)
	{
		set_Value (COLUMNNAME_ApprovedQty, ApprovedQty);
	}

	/** Get Approved Quantity.
		@return Approved Quantity	  */
	public BigDecimal getApprovedQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ApprovedQty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_C_BPartner getBeneficiary() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getBeneficiary_ID(), get_TrxName());	}

	/** Set Beneficiary.
		@param Beneficiary_ID 
		Business Partner to whom payment is made
	  */
	public void setBeneficiary_ID (int Beneficiary_ID)
	{
		if (Beneficiary_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_Beneficiary_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_Beneficiary_ID, Integer.valueOf(Beneficiary_ID));
	}

	/** Get Beneficiary.
		@return Business Partner to whom payment is made
	  */
	public int getBeneficiary_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Beneficiary_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Charge getC_Charge() throws RuntimeException
    {
		return (I_C_Charge)MTable.get(getCtx(), I_C_Charge.Table_Name)
			.getPO(getC_Charge_ID(), get_TrxName());	}

	/** Set Charge.
		@param C_Charge_ID 
		Additional document charges
	  */
	public void setC_Charge_ID (int C_Charge_ID)
	{
		if (C_Charge_ID < 1) 
			set_Value (COLUMNNAME_C_Charge_ID, null);
		else 
			set_Value (COLUMNNAME_C_Charge_ID, Integer.valueOf(C_Charge_ID));
	}

	/** Get Charge.
		@return Additional document charges
	  */
	public int getC_Charge_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Charge_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_DocType getC_DocType() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getC_DocType_ID(), get_TrxName());	}

	/** Set Document Type.
		@param C_DocType_ID 
		Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID)
	{
		if (C_DocType_ID < 0) 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
	}

	/** Get Document Type.
		@return Document type or rules
	  */
	public int getC_DocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** CreditType AD_Reference_ID=53549 */
	public static final int CREDITTYPE_AD_Reference_ID=53549;
	/** Credit = C */
	public static final String CREDITTYPE_Credit = "C";
	/** Loan = L */
	public static final String CREDITTYPE_Loan = "L";
	/** Reception Agreement = R */
	public static final String CREDITTYPE_ReceptionAgreement = "R";
	/** Extension = E */
	public static final String CREDITTYPE_Extension = "E";
	/** Set Credit Type.
		@param CreditType 
		If is Credit, Loan and other
	  */
	public void setCreditType (String CreditType)
	{

		set_Value (COLUMNNAME_CreditType, CreditType);
	}

	/** Get Credit Type.
		@return If is Credit, Loan and other
	  */
	public String getCreditType () 
	{
		return (String)get_Value(COLUMNNAME_CreditType);
	}

	public I_C_UOM getC_UOM() throws RuntimeException
    {
		return (I_C_UOM)MTable.get(getCtx(), I_C_UOM.Table_Name)
			.getPO(getC_UOM_ID(), get_TrxName());	}

	/** Set UOM.
		@param C_UOM_ID 
		Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID < 1) 
			set_Value (COLUMNNAME_C_UOM_ID, null);
		else 
			set_Value (COLUMNNAME_C_UOM_ID, Integer.valueOf(C_UOM_ID));
	}

	/** Get UOM.
		@return Unit of Measure
	  */
	public int getC_UOM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_UOM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** DocAction AD_Reference_ID=135 */
	public static final int DOCACTION_AD_Reference_ID=135;
	/** Complete = CO */
	public static final String DOCACTION_Complete = "CO";
	/** Approve = AP */
	public static final String DOCACTION_Approve = "AP";
	/** Reject = RJ */
	public static final String DOCACTION_Reject = "RJ";
	/** Post = PO */
	public static final String DOCACTION_Post = "PO";
	/** Void = VO */
	public static final String DOCACTION_Void = "VO";
	/** Close = CL */
	public static final String DOCACTION_Close = "CL";
	/** Reverse - Correct = RC */
	public static final String DOCACTION_Reverse_Correct = "RC";
	/** Reverse - Accrual = RA */
	public static final String DOCACTION_Reverse_Accrual = "RA";
	/** Invalidate = IN */
	public static final String DOCACTION_Invalidate = "IN";
	/** Re-activate = RE */
	public static final String DOCACTION_Re_Activate = "RE";
	/** <None> = -- */
	public static final String DOCACTION_None = "--";
	/** Prepare = PR */
	public static final String DOCACTION_Prepare = "PR";
	/** Unlock = XL */
	public static final String DOCACTION_Unlock = "XL";
	/** Wait Complete = WC */
	public static final String DOCACTION_WaitComplete = "WC";
	/** Set Document Action.
		@param DocAction 
		The targeted status of the document
	  */
	public void setDocAction (String DocAction)
	{

		set_Value (COLUMNNAME_DocAction, DocAction);
	}

	/** Get Document Action.
		@return The targeted status of the document
	  */
	public String getDocAction () 
	{
		return (String)get_Value(COLUMNNAME_DocAction);
	}

	/** DocStatus AD_Reference_ID=131 */
	public static final int DOCSTATUS_AD_Reference_ID=131;
	/** Drafted = DR */
	public static final String DOCSTATUS_Drafted = "DR";
	/** Completed = CO */
	public static final String DOCSTATUS_Completed = "CO";
	/** Approved = AP */
	public static final String DOCSTATUS_Approved = "AP";
	/** Not Approved = NA */
	public static final String DOCSTATUS_NotApproved = "NA";
	/** Voided = VO */
	public static final String DOCSTATUS_Voided = "VO";
	/** Invalid = IN */
	public static final String DOCSTATUS_Invalid = "IN";
	/** Reversed = RE */
	public static final String DOCSTATUS_Reversed = "RE";
	/** Closed = CL */
	public static final String DOCSTATUS_Closed = "CL";
	/** Unknown = ?? */
	public static final String DOCSTATUS_Unknown = "??";
	/** In Progress = IP */
	public static final String DOCSTATUS_InProgress = "IP";
	/** Waiting Payment = WP */
	public static final String DOCSTATUS_WaitingPayment = "WP";
	/** Waiting Confirmation = WC */
	public static final String DOCSTATUS_WaitingConfirmation = "WC";
	/** Set Document Status.
		@param DocStatus 
		The current status of the document
	  */
	public void setDocStatus (String DocStatus)
	{

		set_Value (COLUMNNAME_DocStatus, DocStatus);
	}

	/** Get Document Status.
		@return The current status of the document
	  */
	public String getDocStatus () 
	{
		return (String)get_Value(COLUMNNAME_DocStatus);
	}

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_Value (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set Farming Allocation.
		@param FarmingAlloc 
		Farming Allocation
	  */
	public void setFarmingAlloc (String FarmingAlloc)
	{
		set_Value (COLUMNNAME_FarmingAlloc, FarmingAlloc);
	}

	/** Get Farming Allocation.
		@return Farming Allocation
	  */
	public String getFarmingAlloc () 
	{
		return (String)get_Value(COLUMNNAME_FarmingAlloc);
	}

	public org.spin.model.I_FTA_CreditAct getFTA_CreditAct() throws RuntimeException
    {
		return (org.spin.model.I_FTA_CreditAct)MTable.get(getCtx(), org.spin.model.I_FTA_CreditAct.Table_Name)
			.getPO(getFTA_CreditAct_ID(), get_TrxName());	}

	/** Set Credit Act.
		@param FTA_CreditAct_ID Credit Act	  */
	public void setFTA_CreditAct_ID (int FTA_CreditAct_ID)
	{
		if (FTA_CreditAct_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_CreditAct_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_CreditAct_ID, Integer.valueOf(FTA_CreditAct_ID));
	}

	/** Get Credit Act.
		@return Credit Act	  */
	public int getFTA_CreditAct_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CreditAct_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_CreditDefinition getFTA_CreditDefinition() throws RuntimeException
    {
		return (org.spin.model.I_FTA_CreditDefinition)MTable.get(getCtx(), org.spin.model.I_FTA_CreditDefinition.Table_Name)
			.getPO(getFTA_CreditDefinition_ID(), get_TrxName());	}

	/** Set Credit Definition.
		@param FTA_CreditDefinition_ID Credit Definition	  */
	public void setFTA_CreditDefinition_ID (int FTA_CreditDefinition_ID)
	{
		if (FTA_CreditDefinition_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_CreditDefinition_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_CreditDefinition_ID, Integer.valueOf(FTA_CreditDefinition_ID));
	}

	/** Get Credit Definition.
		@return Credit Definition	  */
	public int getFTA_CreditDefinition_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_CreditDefinition_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Credit/Loan.
		@param FTA_FarmerCredit_ID 
		Farmer Credit or Loan
	  */
	public void setFTA_FarmerCredit_ID (int FTA_FarmerCredit_ID)
	{
		if (FTA_FarmerCredit_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_FarmerCredit_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_FarmerCredit_ID, Integer.valueOf(FTA_FarmerCredit_ID));
	}

	/** Get Credit/Loan.
		@return Farmer Credit or Loan
	  */
	public int getFTA_FarmerCredit_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_FarmerCredit_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Generate Bill of Exchange.
		@param GenerateBillOfEx Generate Bill of Exchange	  */
	public void setGenerateBillOfEx (String GenerateBillOfEx)
	{
		set_Value (COLUMNNAME_GenerateBillOfEx, GenerateBillOfEx);
	}

	/** Get Generate Bill of Exchange.
		@return Generate Bill of Exchange	  */
	public String getGenerateBillOfEx () 
	{
		return (String)get_Value(COLUMNNAME_GenerateBillOfEx);
	}

	/** Set Generate Order.
		@param GenerateOrder 
		Generate Order
	  */
	public void setGenerateOrder (String GenerateOrder)
	{
		set_Value (COLUMNNAME_GenerateOrder, GenerateOrder);
	}

	/** Get Generate Order.
		@return Generate Order
	  */
	public String getGenerateOrder () 
	{
		return (String)get_Value(COLUMNNAME_GenerateOrder);
	}

	/** Set Approved.
		@param IsApproved 
		Indicates if this document requires approval
	  */
	public void setIsApproved (boolean IsApproved)
	{
		set_Value (COLUMNNAME_IsApproved, Boolean.valueOf(IsApproved));
	}

	/** Get Approved.
		@return Indicates if this document requires approval
	  */
	public boolean isApproved () 
	{
		Object oo = get_Value(COLUMNNAME_IsApproved);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public I_M_Product getM_Product() throws RuntimeException
    {
		return (I_M_Product)MTable.get(getCtx(), I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_FarmerCredit getParent_FarmerCredit() throws RuntimeException
    {
		return (org.spin.model.I_FTA_FarmerCredit)MTable.get(getCtx(), org.spin.model.I_FTA_FarmerCredit.Table_Name)
			.getPO(getParent_FarmerCredit_ID(), get_TrxName());	}

	/** Set Parent Credit/Loan.
		@param Parent_FarmerCredit_ID 
		Parent Farmer Credit or Loan
	  */
	public void setParent_FarmerCredit_ID (int Parent_FarmerCredit_ID)
	{
		if (Parent_FarmerCredit_ID < 1) 
			set_Value (COLUMNNAME_Parent_FarmerCredit_ID, null);
		else 
			set_Value (COLUMNNAME_Parent_FarmerCredit_ID, Integer.valueOf(Parent_FarmerCredit_ID));
	}

	/** Get Parent Credit/Loan.
		@return Parent Farmer Credit or Loan
	  */
	public int getParent_FarmerCredit_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Parent_FarmerCredit_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}