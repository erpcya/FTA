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
package org.spin.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MOrder;
import org.compiere.model.MProduct;
import org.compiere.model.MUOMConversion;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MFTALoadOrder;
import org.spin.model.MFTALoadOrderLine;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class GenerateShipmentLoadOrder extends SvrProcess {


	/** Document Type*/
	private int p_C_DocTypeTarget_ID = 0;
	
	/** Sql*/
	private StringBuffer sql = new StringBuffer();
	
	/** DateInvoiced */
	private Timestamp p_MovementDate;
	
	/** Date Acct for Documents*/
	private Timestamp p_DateAcct;
	
	/** Organization */
	private int p_AD_Org_ID = 0;

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else if (name.equals("MovementDate"))
				p_MovementDate =  (Timestamp) para.getParameter();
			else if (name.equals("DateAcct"))
				p_DateAcct =  (Timestamp) para.getParameter();
			
		}
		
		sql.append("Select "
					+ "	ts.AD_PInstance_ID, "
					+ " ts.T_Selection_ID As FTA_LoadOrderLine_ID, "
					+ " tsb.C_BPartner_ID, "
					+ " tsb.DateDoc, "
					+ " tsb.M_Product_ID, "
					+ " tsb.Qty, "
					+ " tsb.C_Order_ID,"
					+ " tsb.FTA_LoadOrder_ID,"
					+ " tsb.PriceEntered,"
					+ " tsb.PriceList,"
					+ " tsb.PriceActual,"
					+ " tsb.C_Tax_ID,"
					+ " tsb.OperationType "
					+ " FROM T_Selection ts "
					+ " Inner Join ( "
						+ " Select  tsb.AD_PInstance_ID, tsb.T_Selection_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_C_BPartner_ID' Then tsb.Value_Number Else Null End) As C_BPartner_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_DateDoc' Then tsb.Value_Date Else Null End) As DateDoc, "
						+ " 	Max(Case When tsb.ColumnName = 'GI_M_Product_ID' Then tsb.Value_Number Else Null End) As M_Product_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_FTA_LoadOrder_ID' Then tsb.Value_Number Else Null End) As FTA_LoadOrder_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_Qty' Then tsb.Value_Number Else Null End) As Qty,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_PriceActual' Then tsb.Value_Number Else Null End) As PriceActual,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_PriceEntered' Then tsb.Value_Number Else Null End) As PriceEntered,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_PriceList' Then tsb.Value_Number Else Null End) As PriceList,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_C_Order_ID' Then tsb.Value_Number Else Null End) As C_Order_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_C_Tax_ID' Then tsb.Value_Number Else Null End) As C_Tax_ID,"
						+ " 	Max(Case When tsb.ColumnName = 'GI_OperationType' Then tsb.Value_String Else Null End) As OperationType"
						+ " From T_Selection_Browse tsb "
						+ " Group By tsb.AD_PInstance_ID, tsb.T_Selection_ID"
						+ ") tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID And ts.T_Selection_ID=tsb.T_Selection_ID "
						+ " Where ts.AD_PInstance_ID=? Order By tsb.C_Order_ID");
		log.fine(sql.toString());
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		if(p_AD_Org_ID == 0)
			throw new AdempiereUserError("@AD_Org_ID@ @NotFound@");
		
		if(p_C_DocTypeTarget_ID == 0)
			throw new AdempiereUserError("@C_DocType_ID@ @NotFound@");
		
		if (p_MovementDate == null)
			throw new AdempiereUserError("@MovementDate@ @NotFound@");
		
		if (p_DateAcct == null)
			throw new AdempiereUserError("@DateAcct@ @NotFound@");
		
		PreparedStatement ps =null;
		ResultSet rs = null;
		String msg = "";
		//MInOut shipment = null;
		try{
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			
			if(rs.next()){
				try {
					msg = createInOut(rs.getString("OperationType"),rs.getInt("FTA_LoadOrder_ID"));
					commitEx();
				}catch(Exception ex) {
					rollback();
					return ex.getMessage();
				}
			}
		}
		catch(Exception ex){
			rollback();
			return ex.getMessage();
		}
		finally{
			  DB.close(rs, ps);
		      rs = null; ps = null;
		}	
		return msg;// createShipments();
	}

	
	private String createInOut(String p_OperationType, int p_FTA_LoadOrder_ID) {
		//DocumentNo 
		String l_DocumentNo = ""; 
		//Carlos Parada 2014-01-16
		//Create Material Receipt or Shipment by Operation Type
	// Get Orders From Load Order
		MFTALoadOrder lo = null;
		//lo = (MFTALoadOrder) getFTA_LoadOrder();
		lo = new MFTALoadOrder(getCtx(), p_FTA_LoadOrder_ID, get_TrxName());
		
//			if (lo == null)
//				return "@FTA_LoadOrder_ID@ @NotFound@";
			
		// Get Lines from Load Order
		MFTALoadOrderLine[] lol = lo.getLines(true);
		
//			BigDecimal m_AcumWeight = Env.ZERO;
//			BigDecimal m_TotalWeight = Env.ZERO;
		// Create Shipments
		for (int i=0; i <lol.length;i++)
		{
			
			//if (m_AcumWeight.compareTo(m_TotalWeight) == 1)
				//break;
			//Get Order and Line
			MOrder order = null;
			MProduct product = null;
			if (lol[i].getC_OrderLine_ID()!=0){
				order =(MOrder) lol[i].getC_OrderLine().getC_Order();
				product = (MProduct)lol[i].getC_OrderLine().getM_Product();
			}
			if(order == null){
				return "@C_Order_ID@ @NotFound@";
			}
			
			if (product==null){
				throw new AdempiereException("@M_Product_ID@ @NotFound@");
			}
			
			MDocType m_DocType = MDocType.get(getCtx(), order.getC_DocType_ID());
			
			if(m_DocType.getC_DocTypeShipment_ID() == 0){
				throw new AdempiereException("@C_DocTypeShipment_ID@ @NotFound@");
			}
			
			//	Create Receipt
			MInOut m_Receipt = new MInOut (order, m_DocType.getC_DocTypeShipment_ID(), p_DateAcct);
			m_Receipt.setDateAcct(p_DateAcct);
			//	Set New Organization and warehouse
			m_Receipt.setAD_Org_ID(p_AD_Org_ID);
			m_Receipt.setAD_OrgTrx_ID(p_AD_Org_ID);
			//	Set Warehouse
			m_Receipt.setM_Warehouse_ID(order.getM_Warehouse_ID());
			//	Set Farmer Credit and Record Weight
			//m_Receipt.set_ValueOfColumn("FTA_RecordWeight_ID", getFTA_RecordWeight_ID());
			//	Save
			m_Receipt.saveEx(get_TrxName());
			//
			MInOutLine ioLine = new MInOutLine(m_Receipt);
			
			//	Rate Convert
			BigDecimal rate = MUOMConversion.getProductRateFrom(Env.getCtx(), 
					product.getM_Product_ID(), product.getC_UOM_ID());
			
			if(rate == null){
				throw new AdempiereException("@NoUOMConversion@");
			}

			/*if (m_TotalWeight == Env.ZERO)
				m_TotalWeight = getValidWeight(false).multiply(rate);
			*/	
			//BigDecimal m_MovementQty = (!getPayWeight().equals(Env.ZERO)?getPayWeight().multiply(rate):getNetWeight().multiply(rate));
			BigDecimal m_MovementQty =lol[i].getQty().multiply(rate);
			/*
			if (lol.length == 1)
				m_MovementQty = getValidWeight(false).multiply(rate);
			else{
				m_AcumWeight = m_AcumWeight.add(m_MovementQty);
				if (m_AcumWeight.compareTo(getValidWeight(false).multiply(rate)) == 1)
					m_MovementQty = m_MovementQty.subtract(m_AcumWeight.subtract(getValidWeight(false).multiply(rate)));
				else if (m_AcumWeight.compareTo(getValidWeight(false).multiply(rate)) == -1)
					m_MovementQty = m_MovementQty.add(getValidWeight(false).multiply(rate).subtract(m_AcumWeight));
			}*/
			
			//	Set Product
			ioLine.setProduct(product);
			ioLine.setM_Locator_ID(m_MovementQty);
			ioLine.setC_OrderLine_ID(lol[i].getC_OrderLine_ID());
			
			//	Set Quantity
			ioLine.setQty(lol[i].getQty());
			ioLine.saveEx(get_TrxName());
			//	Manually Process Shipment
			m_Receipt.processIt(DocAction.ACTION_Complete);
			m_Receipt.saveEx(get_TrxName());
			
			lol[i].setConfirmedQty(m_MovementQty);
			//lol[i].setConfirmedWeight(getValidWeight(false));
			lol[i].setConfirmedWeight(m_MovementQty);
			lol[i].setM_InOutLine_ID(ioLine.getM_InOutLine_ID());
			lol[i].saveEx(get_TrxName());
			
			l_DocumentNo = " - " + l_DocumentNo + "@M_InOut_ID@: " + m_Receipt.getDocumentNo();

		}// Create Shipments
		
		//Carlos Parada Set Delivered And Weight Registered
		
		lo.setIsDelivered(true);
		lo.setIsWeightRegister(true);
		lo.save(get_TrxName());
		// End Carlos Parada
		return l_DocumentNo;
	}	//	createMaterialReceipt
}
