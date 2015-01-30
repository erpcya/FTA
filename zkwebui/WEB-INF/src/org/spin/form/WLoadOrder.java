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
 * Contributor(s): Raul Muñoz www.erpconsultoresyasociados.com                *
 *****************************************************************************/
package org.spin.form;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Vector;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Checkbox;
import org.adempiere.webui.component.Datebox;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.NumberBox;
import org.adempiere.webui.component.Panel;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.editor.WTableDirEditor;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.CustomForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.window.FDialog;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.model.X_C_Order;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.spin.model.MFTALoadOrder;
import org.spin.model.MFTALoadOrderLine;
import org.spin.model.MFTAWeightScale;
import org.spin.model.X_FTA_LoadOrder;
import org.spin.util.StringNamePair;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zkex.zul.Borderlayout;
import org.zkoss.zkex.zul.Center;
import org.zkoss.zkex.zul.North;
import org.zkoss.zkex.zul.South;
import org.zkoss.zul.Doublebox;
import org.zkoss.zul.Space;

public class WLoadOrder extends LoadOrder
	implements IFormController, EventListener, WTableModelListener, ValueChangeListener
{
	
	/**
	 * 
	 * *** Constructor ***
	 * @author <a href="mailto:raulmunozn@gmail.com">Raul Muñoz</a> 14/01/2015, 10:02:25
	 */
	public WLoadOrder() {
		trxName	= Trx.createTrxName(null);
		trx = Trx.get(trxName, true);
		Env.setContext(Env.getCtx(), form.getWindowNo(), "IsSOTrx", "Y");   //  defaults to no
		Trx.get(trxName, true);
		try	{
			
			dyInit();
			zkInit();
			//	Load Default Values
			loadDefaultValues(trxName);
		}
		catch(Exception e) {
		}
	}

	
	/**	Window No			*/
	private int         	m_WindowNo = 0;
	
	/**	Custom Form			*/
	private CustomForm form = new CustomForm();
	private String	trxName	= null;
	private Trx		trx = null;

	private Borderlayout mainLayout = new Borderlayout();

	private Grid 			parameterLayout		= GridFactory.newGridLayout();
	private Panel 			parameterPanel = new Panel();
	/**	Organization			*/
	private Label 			organizationLabel = new Label();
	private WTableDirEditor 		organizationPick = null;
	/**	Sales Region			*/
	private Label 			salesRegionLabel = new Label();
	private WTableDirEditor 		salesRegionPick = null;
	/**	Sales Representative	*/
	private Label 			salesRepLabel = new Label();
	private WTableDirEditor 		salesRepSearch = null;
	/**	Warehouse				*/
	private Label 			warehouseLabel = new Label();
	private Listbox 		warehouseSearch = ListboxFactory.newDropdownListbox();
	/**	Operation Type			*/
	private Label 			operationTypeLabel = new Label();
	private WTableDirEditor 		operationTypePick = null;
	/**	Document Type			*/
	private Label 			docTypeLabel = new Label();
	private Listbox 		docTypeSearch = ListboxFactory.newDropdownListbox();
	/**	Document Type Target	*/
	private Label 			docTypeTargetLabel = new Label();
	private WTableDirEditor	docTypeTargetPick = null;
	/**	Invoice Rule			*/
	private Label 			invoiceRuleLabel = new Label();
	private WTableDirEditor invoiceRulePick = null;
	/**	Delivery Rule			*/
	private Label 			deliveryRuleLabel = new Label();
	private WTableDirEditor deliveryRulePick = null;
	/**	Vehicle Type			*/
	private Label 			vehicleTypeLabel = new Label();
	private WTableDirEditor vehicleTypePick = null;
	/**	Document Date			*/
	private Label 			labelDateDoc = new Label();
	private Datebox 		dateDocField = new Datebox();
	/**	Shipment Date			*/
	private Label 			labelShipDate = new Label();
	private Datebox 		shipDateField = new Datebox();
	/**	Entry Ticket			*/
	private Label 			entryTicketLabel = new Label();
	private WSearchEditor 	entryTicketPick = null;
	/**	Shipper					*/
	private Label 			shipperLabel = new Label();
	private WTableDirEditor shipperPick = null;
	/**	Driver					*/
	private Label 			driverLabel = new Label();
	private Listbox 		driverSearch = ListboxFactory.newDropdownListbox();
	/**	Vehicle					*/
	private Label 			vehicleLabel = new Label();
	private Listbox 		vehicleSearch = ListboxFactory.newDropdownListbox();
	/**	Load Capacity			*/
	private Label 			loadCapacityLabel = new Label();
	private Doublebox 		loadCapacityField = new Doublebox();
	/**	Volume Capacity			*/
	private Label 			volumeCapacityLabel = new Label();
	private Doublebox 		volumeCapacityField = new Doublebox();
	/**	Bulk				*/
	private Checkbox 		isBulkCheck = new Checkbox();
	/**	Product				*/
	private Label 			productLabel = new Label();
	private WTableDirEditor productSearch = null;
	/**	Business Partner	*/
	private Label 			bpartnerLabel = new Label();
	private WTableDirEditor bpartnerSearch = null;

	private DateFormat 		dateFormat 		 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	/** Panels				*/
	private Borderlayout	infoPanel = new Borderlayout();
	private Panel 			orderPanel = new Panel();
	private Panel 			orderLinePanel = new Panel();
	private Label 			orderLabel = new Label();
	private Label 			orderLineLabel = new Label();
	private Borderlayout 	orderLayout = new Borderlayout();
	private Borderlayout 	orderLineLayout = new Borderlayout();
	private Panel 			southPanel = new Panel();
	private Panel 			allocationPanel = new Panel();
	private Grid 			allocationLayout = GridFactory.newGridLayout();
	/**	Collapsible Panel for Parameter		*/
	private North 			north = new North();
	private North 			north1 = new North();
	/** Order Line			*/
	private Label 			orderLineInfo = new Label();
	/** Weight Difference	*/
	private Label 			weightDiffLabel = new Label();
	private NumberBox 		weightDiffField = null;
	/** Volume Difference	*/
	private Label 			volumeDiffLabel = new Label();
	private NumberBox 		volumeDiffField = null;
	/** Generate Load Order	*/
	private Button 			gLoadOrderButton = new Button();
	/** Select all Button   */
	private Button 			selectAllButton =  new Button();
	/**	Search				*/
	private Button 			bSearch = new Button();
	/** Order Table 		*/
	private WListbox 		w_orderTable = ListboxFactory.newDataTable();
	/** Order Line Table 	*/
	private WListbox 		w_orderLineTable = ListboxFactory.newDataTable();
	private int 			count = 0;
	/**	Payment Info		*/
	private Label 			paymentInfo = new Label();
	/**	Invoice Info		*/
	private Label 			invoiceInfo = new Label();
	private Label			invoiceLabel = new Label();
	
	/**
	 *  Static zkInit
	 *  @throws Exception
	 */
	private void zkInit() throws Exception
	{
		form.appendChild(mainLayout);

		mainLayout.setWidth("99%");
		mainLayout.setHeight("100%");
		parameterPanel.appendChild(parameterLayout);
		
		Rows rows = null;
		Row row = null;
		parameterLayout.setWidth("100%");
		rows = parameterLayout.newRows();
		row = rows.newRow();
		//
		driverLabel.setText(Msg.translate(Env.getCtx(), "FTA_Driver_ID"));
		shipperLabel.setText(Msg.translate(Env.getCtx(), "M_Shipper_ID"));
		vehicleLabel.setText(Msg.translate(Env.getCtx(), "FTA_Vehicle_ID"));
		salesRegionLabel.setText(Msg.translate(Env.getCtx(), "C_SalesRegion_ID"));
		salesRepLabel.setText(Msg.translate(Env.getCtx(), "SalesRep_ID"));
		loadCapacityLabel.setText(Msg.translate(Env.getCtx(), "LoadCapacity"));
		volumeCapacityLabel.setText(Msg.translate(Env.getCtx(), "VolumeCapacity"));
		vehicleTypeLabel.setText(Msg.translate(Env.getCtx(), "FTA_VehicleType_ID"));
		entryTicketLabel.setText(Msg.translate(Env.getCtx(), "FTA_EntryTicket_ID"));
		orderPanel.appendChild(orderLayout);
		orderLinePanel.appendChild(orderLineLayout);
		//	Operation Type
		operationTypeLabel.setText(Msg.translate(Env.getCtx(), "OperationType"));
		//	Document Type
		docTypeLabel.setText(Msg.translate(Env.getCtx(), "C_DocType_ID"));
		//	Document Type Target
		docTypeTargetLabel.setText(Msg.translate(Env.getCtx(), "C_DocTypeTarget_ID"));
		//	Invoice Rule
		invoiceRuleLabel.setText(Msg.translate(Env.getCtx(), "InvoiceRule"));
		//	Delivery Rule
		deliveryRuleLabel.setText(Msg.translate(Env.getCtx(), "DeliveryRule"));
		//	Warehouse
		warehouseLabel.setText(Msg.translate(Env.getCtx(), "M_Warehouse_ID"));
		//	Product
		productLabel.setText(Msg.translate(Env.getCtx(), "M_Product_ID"));
		//	Business Partner
		bpartnerLabel.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		
		bSearch.setLabel(Msg.translate(Env.getCtx(), "Search"));
		
		orderLabel.setText(" " + Msg.translate(Env.getCtx(), "C_Order_ID"));
		orderLineLabel.setText(" " + Msg.translate(Env.getCtx(), "C_OrderLine_ID"));
		orderPanel.appendChild(orderLayout);
		orderPanel.setWidth("100%");
		orderPanel.setHeight("100%");
		orderLayout.setWidth("100%");
		orderLayout.setHeight("50%");
		orderLayout.setStyle("border: none");
		
		gLoadOrderButton.setLabel(Msg.translate(Env.getCtx(), "GenerateOrder"));
		gLoadOrderButton.addActionListener(this);
		//	Weight Difference
		weightDiffLabel.setText(Msg.translate(Env.getCtx(), "DiffWeight"));
		weightDiffField = new NumberBox(true);
		weightDiffField.setValue(Env.ZERO);
		//	Volume Difference
		volumeDiffLabel.setText(Msg.translate(Env.getCtx(), "DiffVolume"));
		volumeDiffField = new NumberBox(true);
		volumeDiffField.setValue(Env.ZERO);
		
		organizationLabel.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		row.appendChild(organizationLabel.rightAlign());
		row.appendChild(organizationPick.getComponent());
		row.appendChild(salesRegionLabel.rightAlign());
		row.appendChild(salesRegionPick.getComponent());
		row.appendChild(salesRepLabel.rightAlign());
		row.appendChild(salesRepSearch.getComponent());
		//	Storage
		row = rows.newRow();
		row.appendChild(warehouseLabel.rightAlign());
		row.appendChild(warehouseSearch);
		warehouseSearch.setWidth("200px");
		//	Operation Type
		row.appendChild(operationTypeLabel.rightAlign());
		row.appendChild(operationTypePick.getComponent());
		
		//	Document Type
		row.appendChild(docTypeLabel.rightAlign());
		row.appendChild(docTypeSearch);
		docTypeSearch.setWidth("200px");
		row = rows.newRow();
		//	Document Type Target
		row.appendChild(docTypeTargetLabel.rightAlign());
		row.appendChild(docTypeTargetPick.getComponent());
		//	Invoice Rule
		row.appendChild(invoiceRuleLabel.rightAlign());
		row.appendChild(invoiceRulePick.getComponent());
		//	Delivery Rule
		row.appendChild(deliveryRuleLabel.rightAlign());
		row.appendChild(deliveryRulePick.getComponent());
		row = rows.newRow();
		//	Vehicle Type
		row.appendChild(vehicleTypeLabel.rightAlign());
		row.appendChild(vehicleTypePick.getComponent());
		
		//	Document Date
		row.appendChild(labelDateDoc.rightAlign());
		row.appendChild(dateDocField);
		//	Shipment Date
		row.appendChild(labelShipDate.rightAlign());
		row.appendChild(shipDateField);
		//	Entry Ticket
		row = rows.newRow();
		row.appendChild(entryTicketLabel.rightAlign());
		row.appendChild(entryTicketPick.getComponent());
		//	Shipper
		row.appendChild(shipperLabel.rightAlign());
		row.appendChild(shipperPick.getComponent());
		
		//	Driver
		row.appendChild(driverLabel.rightAlign());
		row.appendChild(driverSearch);
		driverSearch.setWidth("200px");
		row = rows.newRow();
		//	Vehicle
		row.appendChild(vehicleLabel.rightAlign());
		row.appendChild(vehicleSearch);
		vehicleSearch.setWidth("200px");
		//	Load Capacity
		row.appendChild(loadCapacityLabel.rightAlign());
		row.appendChild(loadCapacityField);
		loadCapacityField.setReadonly(true);
		//	Volume Capacity
		row.appendChild(volumeCapacityLabel.rightAlign());
		row.appendChild(volumeCapacityField);
		volumeCapacityField.setReadonly(true);
		row = rows.newRow();
		//	Bulk
		isBulkCheck.setSelected(false);
		//	Product
		row.appendChild(productLabel.rightAlign());
		row.appendChild(productSearch.getComponent());
		productLabel.setVisible(false);
		productSearch.setVisible(false);
		//	Business Partner
		row.appendChild(bpartnerLabel.rightAlign());
		row.appendChild(bpartnerSearch.getComponent());
		bpartnerLabel.setVisible(false);
		bpartnerSearch.setVisible(false);
		//	Search
		row.appendChild(new Space());
		row.appendChild(bSearch);
		bSearch.addActionListener(this);
		//	
		north1 = new North();
		north1.setCollapsible(true);
		north1.setTitle("Parameter");
			
		north1.setStyle("border-style: solid; border-width: 1px; border-color: rgb(0,0,255)");
		mainLayout.appendChild(north1);
		north1.appendChild(parameterPanel);
		
		South south = new South();
		south = new South();
		south.setStyle("border: none");
		mainLayout.appendChild(south);
		south.appendChild(southPanel);
		southPanel.appendChild(allocationPanel);
		allocationPanel.appendChild(allocationLayout);
		allocationLayout.setWidth("100%");
		rows = allocationLayout.newRows();
		row = rows.newRow();
		row.appendChild(selectAllButton);
		selectAllButton.setImage("/images/SelectAll24.png");
		row.appendChild(weightDiffLabel.rightAlign());
		row.appendChild(weightDiffField);
		row.appendChild(volumeDiffLabel.rightAlign());
		row.appendChild(volumeDiffField);
		row.appendChild(gLoadOrderButton);
		volumeDiffField.setEnabled(false);
		weightDiffField.setEnabled(false);
		
		invoiceLabel.setText(" " + Msg.translate(Env.getCtx(), "C_OrderLine_ID"));
		
		invoiceInfo.setText(".");
		paymentInfo.setText(".");
		orderPanel.appendChild(orderLayout);
		orderPanel.setWidth("100%");
		orderPanel.setHeight("100%");
		orderLayout.setWidth("100%");
		orderLayout.setHeight("100%");
		orderLayout.setStyle("border: none");
		
		orderLinePanel.appendChild(orderLineLayout);
		orderLinePanel.setWidth("100%");
		orderLinePanel.setHeight("100%");
		orderLineLayout.setWidth("100%");
		orderLineLayout.setHeight("100%");
		orderLineLayout.setStyle("border: none");
		
		north = new North();
		north.setStyle("border: none");
		orderLayout.appendChild(north);
		north.appendChild(orderLabel);
		south = new South();
		south.setStyle("border: none");
		orderLayout.appendChild(south);
		south.appendChild(paymentInfo.rightAlign());
		Center center = new Center();
		orderLayout.appendChild(center);
		center.appendChild(w_orderTable);
		w_orderTable.setWidth("99%");
		w_orderTable.setHeight("99%");
		center.setStyle("border: none");
		
		north = new North();
		north.setStyle("border: none");
		orderLineLayout.appendChild(north);
		north.appendChild(invoiceLabel);
		south = new South();
		south.setStyle("border: none");
		orderLineLayout.appendChild(south);
		south.appendChild(invoiceInfo.rightAlign());
		center = new Center();
		orderLineLayout.appendChild(center);
		center.appendChild(w_orderLineTable);
		w_orderLineTable.setWidth("99%");
		w_orderLineTable.setHeight("99%");
		center.setStyle("border: none");
		
		center = new Center();
		center.setFlex(true);
		mainLayout.appendChild(center);
		center.appendChild(infoPanel);
		
		infoPanel.setStyle("border: none");
		infoPanel.setWidth("100%");
		infoPanel.setHeight("100%");
		
		north = new North();
		north.setStyle("border: none");
		north.setHeight("49%");
		infoPanel.appendChild(north);
		north.appendChild(orderPanel);
		north.setSplittable(true);
		center = new Center();
		center.setStyle("border: none");
		center.setFlex(true);
		infoPanel.appendChild(center);
		center.appendChild(orderLinePanel);
		
	}   //  jbInit

	/**
	 *  Dynamic Init (prepare dynamic fields)
	 *  @throws Exception if Lookups cannot be initialized
	 */
	public void dyInit() throws Exception
	{
		//	Set Client
		m_AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
		//  Load Default Values
		loadDefaultValues(trxName);
		// Organization filter selection
		int AD_Column_ID = 69835;		//	FTA_LoadOrer.AD_Org_ID
		MLookup lookupOrg = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		organizationPick = new WTableDirEditor("AD_Org_ID", true, false, true, lookupOrg);
		//organizationPick.setValue(Env.getAD_Org_ID(Env.getCtx()));
		organizationPick.addValueChangeListener(this);
		
		//	Sales Region
		AD_Column_ID = 1823;		//	C_SalesRegion.C_SalesRegion_ID
		MLookup lookupWar = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		salesRegionPick = new WTableDirEditor("C_SalesRegion_ID", false, false, true, lookupWar);
		//salesRegion.setValue(Env.getAD_Org_ID(Env.getCtx()));
		salesRegionPick.addValueChangeListener(this);
		
		//	Sales Representative
		AD_Column_ID = 2186;		//	C_Order.SalesRep_ID
		MLookup lookupSal = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		salesRepSearch = new WTableDirEditor("SalesRep_ID", false, false, true, lookupSal);
		//salesRepSearch.setValue(Env.getAD_Org_ID(Env.getCtx()));
		salesRepSearch.addValueChangeListener(this);
						
		//  Operation Type
		AD_Column_ID = 69870;		//  FTA_LoadOrder.OperationType
		MLookup lookupTO = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.List);
		operationTypePick = new WTableDirEditor("OperationType", true, false, true, lookupTO);
		operationTypePick.addValueChangeListener(this);

		//  Document Type Target
		AD_Column_ID = 69842;		//  FTA_LoadOrder.C_DocTypeTarget_ID
		MLookup lookupDTT = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Table);
		docTypeTargetPick = new WTableDirEditor("C_DocType_ID", true, false, true, lookupDTT);
		docTypeTargetPick.addValueChangeListener(this);
		
		AD_Column_ID = 69872;		//  FTA_LoadOrder.InvoiceRule
		MLookup lookupIR = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.List);
		invoiceRulePick = new WTableDirEditor("InvoiceRule", false, false, true, lookupIR);
		//invoiceRulePick.setValue(X_C_Order.INVOICERULE_Immediate);
		invoiceRulePick.addValueChangeListener(this);
		
		AD_Column_ID = 69873;		//  FTA_LoadOrder.DeliveryRule
		MLookup lookupDR = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.List);
		deliveryRulePick = new WTableDirEditor("DeliveryRule", false, false, true, lookupDR);
		//deliveryRulePick.setValue(X_C_Order.DELIVERYRULE_Availability);
		deliveryRulePick.addValueChangeListener(this);
		
		//	Entry Ticket
		AD_Column_ID = 69874;		//  FTA_LoadOrder.FTA_EntryTicket_ID
		MLookup lookupET = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Search);
		entryTicketPick = new WSearchEditor("FTA_EntryTicket_ID", false, false, true, lookupET);
		entryTicketPick.addValueChangeListener(this);
		
		//  Shipper
		AD_Column_ID = 69852;		//  FTA_LoadOrder.M_Shipper_ID
		MLookup lookupSP = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		shipperPick = new WTableDirEditor("M_Shipper_ID", false, true, true, lookupSP);
		//shipperPick.setValue(Env.getAD_Org_ID(Env.getCtx()));
		shipperPick.addValueChangeListener(this);
		
		//  Vehicle Type
		AD_Column_ID = 69851;		//  FTA_LoadOrder.FTA_VehicleType_ID
		MLookup lookupVT = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Table);
		vehicleTypePick = new WTableDirEditor("FTA_VehicleType_ID", false, false, true, lookupVT);
		vehicleTypePick.addValueChangeListener(this);
		
		//	Product
		AD_Column_ID = 70626;		//	FTA_LoadOrer.M_Product_ID
		MLookup lookupProduct = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Search);
		productSearch = new WTableDirEditor("M_Product_ID", true, false, true, lookupProduct);
		productSearch.addValueChangeListener(this);
		
		//	Business Partner
		AD_Column_ID = 2762;		//	C_Order.C_BPartner_ID
		MLookup lookupBPartner = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Search);
		bpartnerSearch = new WTableDirEditor("C_BPartner_ID", true, false, true, lookupBPartner);
		bpartnerSearch.addValueChangeListener(this);
		
		//	Visible
		productLabel.setVisible(false);
		productSearch.setVisible(false);
		bpartnerLabel.setVisible(false);
		bpartnerSearch.setVisible(false);
		
		driverSearch.setEnabled(false);
		vehicleSearch.setEnabled(false);

		//	Document Type Order
		docTypeSearch.addActionListener(this);
		
		//	Warehouse
		warehouseSearch.addActionListener(this);
		
		//	Select All Items
		selectAllButton.addActionListener(this);
		
	}   //  dynInit
	
	/**
	 * Set Capacity for Weight and Volume
	 * @author <a href="mailto:Raulmunozn@gmail.com">Raul Muñoz</a> 19/12/2015, 15:39:35
	 * @return void
	 */
	private void setFillCapacity() {
		setCapacity();
		loadCapacityField.setValue(m_LoadCapacity.doubleValue());
		volumeCapacityField.setValue(m_VolumeCapacity.doubleValue());
	}
	
	/**
	 * Set Value on Is Bulk
	 * @author <a href="mailto:Raulmunozn@gmail.com">Raul Muñoz</a> 19/12/2015, 15:44:14
	 * @return void
	 */
	private void setIsBulk() {
		//	Set Context
		productLabel.setVisible(m_IsBulk);
		productSearch.setVisible(m_IsBulk);
		bpartnerLabel.setVisible(m_IsBulk);
		bpartnerSearch.setVisible(m_IsBulk);
	}
	
	/**
	 * Clear Data of Table
	 * @author <a href="mailto:Raulmunozn@gmail.com">Raul Muñoz</a> 19/12/2015, 15:33:31
	 * @return void
	 */
	private void clearData() {
		w_orderTable.getModel().removeTableModelListener(this);
		ListModelTable modelP = new ListModelTable();
		w_orderTable.setModel(modelP);
		modelP = new ListModelTable();
		w_orderLineTable.getModel().removeTableModelListener(this);
		w_orderLineTable.setModel(modelP);
		count=0;
		//	Set Stock Model
		if(stockTable.getColumnCount()>1){
			stockTable.setModel(stockModel);
			setStockColumnClass(stockTable);
		}
		//	Parameters
		salesRegionPick.setValue(null);
		salesRepSearch.setValue(null);
		invoiceRulePick.setValue(null);
		deliveryRulePick.setValue(null);
		dateDocField.setValue(Env.getContextAsDate(Env.getCtx(), "#Date"));
		shipDateField.setValue(Env.getContextAsDate(Env.getCtx(), "#Date"));
		entryTicketPick.setValue(null);
		shipperPick.setValue(null);
		vehicleTypePick.setValue(null);
		driverSearch.removeAllItems();
		loadCapacityField.setValue(0);
		volumeCapacityField.setValue(0);
		productSearch.setValue(null);
		bpartnerSearch.setValue(null);
	}

	/**
	 * Search Data
	 * @author <a href="mailto:Raulmunozn@gmail.com">Raul Muñoz</a> 23/12/2015, 10:06:11
	 * @return void
	 */
	private void cmd_search() {
		getPanelValues();
		String msg = null;
		//	Valid Organization
		if(m_AD_Org_ID == -1)
			msg = "@AD_Org_ID@ @NotFound@";
		//	Valid Weight UOM
		else if(m_C_UOM_Weight_ID == 0)
			msg = "@C_UOM_Weight_ID@ @of@ @AD_Client_ID@ @NotFound@";
		//	Valid Volume UOM
		else if(m_C_UOM_Volume_ID == 0)
			msg = "@C_UOM_Volume_ID@ @of@ @AD_Client_ID@ @NotFound@";
		//	Valid Operation Type
		else if(m_OperationType == null)
			msg = "@OperationType@ @NotFound@";
		//	Vehicle Type
		else if(m_FTA_VehicleType_ID == 0)
			msg = "@FTA_VehicleType_ID@ @NotFound@";
		//	Document Type Load Order
		else if(m_C_DocTypeTarget_ID == 0)
			msg = "@C_DocTypeTarget_ID@ @NotFound@";
		else if(m_IsBulk) {
			if(m_M_Product_ID == 0)
				msg = "@M_Product_ID@ @NotFound@";
			else if(m_C_BPartner_ID == 0)
				msg = "@C_BPartner_ID@ @NotFound@";
		}
		//	
		if(msg != null) {
			FDialog.info(m_WindowNo, parameterPanel, null, Msg.parseTranslation(Env.getCtx(), msg));
			calculate();
			return;
		}
		//	Load Data
		if(loadDataOrder()){
			north1.setOpen(false);
		}
	}
	
	/**
	 * Get Values from Panel, refresh values
	 * @author <a href="mailto:raulmunozn@gmail.com">Raul Muñoz</a> 19/12/2014, 17:58:59
	 * @return void
	 */
	private void getPanelValues() {
		//	Organization
		Object value = organizationPick.getValue();
		m_AD_Org_ID = ((Integer)(value != null? value: 0)).intValue();
		//	Sales Region
		value = salesRegionPick.getValue();
		m_C_SalesRegion_ID = ((Integer)(value != null? value: 0)).intValue();

		//	Sales Representative
		value = salesRepSearch.getValue();
		m_SalesRep_ID = ((Integer)(value != null? value: 0)).intValue();
		//	Warehouse
		m_M_Warehouse_ID = warehouseSearch.getSelectedIndex();
		//	Operation Type
		value = operationTypePick.getValue();
		m_OperationType = (String)value;
		//	Document Type
		m_C_DocType_ID = docTypeSearch.getSelectedIndex();
		//	Document Type Target
		value = docTypeTargetPick.getValue();
		m_C_DocTypeTarget_ID = ((Integer)(value != null? value: 0)).intValue();
		//	Invoice Rule
		value = invoiceRulePick.getValue();
		m_InvoiceRule = (String) value;
		//	Delivery Rule
		value = deliveryRulePick.getValue();
		m_DeliveryRule = (String) value;
		//	Vehicle Type
		value = vehicleTypePick.getValue();
		m_FTA_VehicleType_ID = ((Integer)(value != null? value: 0)).intValue();
		//	Document Date
		String hourString = dateFormat.format(dateDocField.getValue());
		Timestamp hourTime = Timestamp.valueOf(hourString);
		m_DateDoc = hourTime;
		//	Shipment Date
		hourString = dateFormat.format(shipDateField.getValue());
		hourTime = Timestamp.valueOf(hourString);
		m_ShipDate = hourTime;
		//	Entry Ticket
		value = entryTicketPick.getValue();
		m_FTA_EntryTicket_ID = ((Integer)(value != null? value: 0)).intValue();
		//	Shipper
		value = shipperPick.getValue();
		m_M_Shipper_ID = ((Integer)(value != null? value: 0)).intValue();
		//	Driver
		if(driverSearch.getName() != null)
			m_FTA_Driver_ID = Integer.parseInt(driverSearch.getName());
		else
			m_FTA_Driver_ID = 0;
		//	Vehicle
		if(vehicleSearch.getName() != null)
			m_FTA_Vehicle_ID =  Integer.parseInt(vehicleSearch.getName());
		else
			m_FTA_Vehicle_ID = 0;
		if(docTypeSearch.getName() != null)
			m_C_DocType_ID = Integer.parseInt(docTypeSearch.getName());
		else
			m_C_DocType_ID = 0;
		//	Capacity
		m_LoadCapacity = new BigDecimal(loadCapacityField.getValue());
		m_VolumeCapacity = new BigDecimal(volumeCapacityField.getValue());
		//	Product
		value = productSearch.getValue();
		m_M_Product_ID = ((Integer)(value != null? value: 0)).intValue();
		//	Business Partner
		value = bpartnerSearch.getValue();
		m_C_BPartner_ID = ((Integer)(value != null? value: 0)).intValue();
		//	Weight Symbol
		if(m_C_UOM_Weight_ID != 0) {
			MUOM uom = MUOM.get(Env.getCtx(), m_C_UOM_Weight_ID);
			m_UOM_Weight_Symbol = uom.getUOMSymbol();
			weightDiffLabel.setText(Msg.parseTranslation(Env.getCtx(), "@DiffWeight@ (" + m_UOM_Weight_Symbol + ")"));
		}
		//	Volume Symbol
		if(m_C_UOM_Volume_ID != 0) {
			MUOM uom = MUOM.get(Env.getCtx(), m_C_UOM_Volume_ID);
			m_UOM_Volume_Symbol = uom.getUOMSymbol();
			volumeDiffLabel.setText(Msg.parseTranslation(Env.getCtx(), "@DiffVolume@ (" + m_UOM_Volume_Symbol + ")"));
		}
	}
	
	/**
	 * Validate data
	 * @author <a href="mailto:Raulmunozn@gmail.com">Raul Muñoz</a> 23/12/2015, 10:06:11
	 * @return
	 * @return boolean
	 */
	private boolean validData() {
		getPanelValues();
		String msg = null;
		//	Valid Organization
		if(m_AD_Org_ID == 0)
			msg = "@AD_Org_ID@ @NotFound@";
		//	Valid Weight UOM
		else if(m_C_UOM_Weight_ID == 0)
			msg = "@C_UOM_Weight_ID@ @of@ @AD_Client_ID@ @NotFound@";
		//	Valid Volume UOM
		else if(m_C_UOM_Volume_ID == 0)
			msg = "@C_UOM_Volume_ID@ @of@ @AD_Client_ID@ @NotFound@";
		//	Valid Operation Type
		else if(m_OperationType == null)
			msg = "@OperationType@ @NotFound@";
		//	Vehicle Type
		else if(m_FTA_VehicleType_ID == 0)
			msg = "@FTA_VehicleType_ID@ @NotFound@";
		//	Difference Capacity
		else if(totalWeight.doubleValue() == 0) {
			msg = "@Weight@ = @0@";
		} else if(totalVolume.doubleValue() == 0) {
			msg = "@Volume@ = @0@";
		} else if(totalWeight.doubleValue() > 0) {
			BigDecimal difference = (BigDecimal) (weightDiffField.getValue() != null
														? weightDiffField.getValue()
																: Env.ZERO);
			if(difference.compareTo(Env.ZERO) < 0)
				msg = "@Weight@ > @LoadCapacity@";
		} else if(totalVolume.doubleValue() > 0) {
			BigDecimal difference = (BigDecimal) (volumeDiffField.getValue() != null
														? volumeDiffField.getValue()
																: Env.ZERO);
			if(difference.compareTo(Env.ZERO) < 0)
				msg = "@Volume@ > @VolumeCapacity@";
		}
		//	
		if(msg != null) {
			FDialog.info(m_WindowNo, parameterPanel, null, Msg.parseTranslation(Env.getCtx(), msg));
			calculate();
			return false;
		}
		return true;
	}
	
	/**
	 * Load Order Data
	 * @author <a href="mailto:Raulmunozn@gmail.com">Raul Muñoz</a> 23/12/2015, 10:06:11
	 * @return
	 * @return boolean
	 */
	public boolean loadDataOrder() {
		String name = organizationPick.getColumnName();
		Object value = organizationPick.getValue();
		m_AD_Org_ID = ((Integer)(value != null? value: 0)).intValue();
		log.config(name + "=" + value);
		
		name = salesRegionPick.getColumnName();
		value = salesRegionPick.getValue();
		m_C_SalesRegion_ID = ((Integer)(value != null? value: 0)).intValue();
		log.config(name + "=" + value);
		
		name = salesRepSearch.getColumnName();
		value = salesRepSearch.getValue();
		m_SalesRep_ID = ((Integer)(value != null? value: 0)).intValue();
		log.config(name + "=" + value);
		w_orderTable.clear();
		//	Load Data
		Vector<Vector<Object>> data = getOrderData(w_orderTable, m_OperationType);
		Vector<String> columnNames = getOrderColumnNames();

		//  Remove previous listeners
		w_orderTable.getModel().removeTableModelListener(this);
		
		//  Set Model
		ListModelTable modelP = new ListModelTable(data);
		modelP.addTableModelListener(this);
		w_orderTable.setData(modelP, columnNames);
		setOrderColumnClass(w_orderTable);
		
		w_orderLineTable.clear();
		
		//  Remove previous listeners
		w_orderLineTable.getModel().removeTableModelListener(this);
		//  Set Model Line
		ListModelTable modelLine = new ListModelTable();
		w_orderLineTable.setData(modelLine, columnNames);
		//
		return !data.isEmpty();
	}
	
	/**
	 * Calculate difference
	 * @author <a href="mailto:Raulmunozn@gmail.com">Raul Muñoz</a> 12/01/2015, 11:52:15
	 * @return void
	 */
	public void calculate() {
		int rows = w_orderLineTable.getRowCount();
		if(rows > 0) {
			m_LoadCapacity = Env.ZERO;
			m_VolumeCapacity = Env.ZERO;
			totalWeight = Env.ZERO;
			totalVolume = Env.ZERO;
			BigDecimal weight = Env.ZERO;
			BigDecimal diffWeight = Env.ZERO;
			BigDecimal volume = Env.ZERO;
			BigDecimal diffVolume = Env.ZERO;
			for (int i = 0; i < rows; i++) {
				if (((Boolean)w_orderLineTable.getValueAt(i, 0)).booleanValue()) {
					//	Weight
					weight = (BigDecimal) (w_orderLineTable.getValueAt(i, OL_WEIGHT) != null
							? w_orderLineTable.getValueAt(i, OL_WEIGHT)
									: Env.ZERO);
					//	Add Weight
					totalWeight = totalWeight.add(weight);
					//	Volume
					volume = (BigDecimal) (w_orderLineTable.getValueAt(i, OL_VOLUME) != null
							? w_orderLineTable.getValueAt(i, OL_VOLUME)
									: Env.ZERO);
					//	Add Volume
					totalVolume = totalVolume.add(volume);
				}
			}
			//	Weight
			if(totalWeight.compareTo(Env.ZERO) > 0) {
				if(loadCapacityField.getValue()!=null)
					m_LoadCapacity = new BigDecimal(loadCapacityField.getValue());
				else 
					m_LoadCapacity = Env.ZERO;
				//	Calculate Difference
				diffWeight = m_LoadCapacity.subtract(totalWeight);
			}
			//	Volume
			if(totalVolume.compareTo(Env.ZERO) > 0) {
				if(volumeCapacityField.getValue()!=null)
					m_VolumeCapacity = new BigDecimal(volumeCapacityField.getValue());
				else
					m_VolumeCapacity = Env.ZERO;
				//	Calculate Difference
				diffVolume = m_VolumeCapacity.subtract(totalVolume);
			}
			//	Set Differences
			weightDiffField.setValue(diffWeight.doubleValue());
			volumeDiffField.setValue(diffVolume.doubleValue());
			orderLineInfo.setText(
					"(" + Msg.parseTranslation(Env.getCtx(), "@C_Order_ID@ @Selected@"
					+ " = " +  m_RowsSelected
					+ ") "
					+ "[@Weight@ (" 
					+ m_UOM_Weight_Symbol
					+ ") = " + totalWeight.doubleValue()
					+ "] | [@Volume@ (") 
					+ m_UOM_Volume_Symbol
					+ ") = " + totalVolume.doubleValue()
					+ "]");
		} else {
			//	Set Difference
			weightDiffField.setValue(Env.ZERO);
			volumeDiffField.setValue(Env.ZERO);
			//	Msg
			orderLineInfo.setText(
					"(" + Msg.parseTranslation(Env.getCtx(), "@C_Order_ID@ @Selected@"
					+ " = " +  m_RowsSelected
					+ ") "
					+ "[@Weight@ (" 
					+ (m_UOM_Weight_Symbol != null? m_UOM_Weight_Symbol: "")
					+ ") = " + Env.ZERO.doubleValue()
					+ "] | [@Volume@ (") 
					+ (m_UOM_Volume_Symbol != null? m_UOM_Volume_Symbol: "")
					+ ") = " + Env.ZERO.doubleValue()
					+ "]");
		}
	}
	
	/**
	 * Save Data
	 * @author <a href="mailto:Raulmunozn@gmail.com">Raul Muñoz</a> 14/01/2015, 12:26:57
	 * @return void
	 */
	private void saveData() {
		try	{	
			String msg = generateLoadOrder(trxName);
			trx.commit();
			FDialog.info(m_WindowNo, parameterPanel, null, msg);
			shipperPick.setValue(null);
			driverSearch.removeAllItems();
			vehicleSearch.removeAllItems();
			//	Clear Data
			clearData();
			calculate();
		} catch (Exception e) {
			trx.rollback();
			FDialog.error(m_WindowNo, parameterPanel, "Error", e.getLocalizedMessage());
			e.printStackTrace();
			return;
		}
	}   //  saveData

	@Override
	public void valueChange(ValueChangeEvent evt) {
		String name = evt.getPropertyName();
		Object value = evt.getNewValue();
		log.config(name + " = " + value);
		
		if(name.equals("C_SalesRegion_ID") || 
				name.equals("SalesRep_ID")) {
			clearData();
		} else if(name.equals("AD_Org_ID")) {
			m_AD_Org_ID = ((Integer)(value != null? value: 0)).intValue();
			ArrayList<KeyNamePair> data = getDataWarehouse(trxName);
			warehouseSearch.removeActionListener(this);
			m_M_Warehouse_ID = loadComboBoxW(warehouseSearch, data);
			warehouseSearch.addEventListener(Events.ON_SELECT, this);
			clearData();
		} else if(name.equals("OperationType")) {
			
			m_OperationType = ((String)(value != null? value: 0));
			Env.setContext(Env.getCtx(), m_WindowNo, "OperationType", m_OperationType);
			ArrayList<KeyNamePair> data = getDataDocumentType(trxName);
			docTypeSearch.removeActionListener(this);
			m_C_DocType_ID = loadComboBoxW(docTypeSearch, data);
			docTypeSearch.addActionListener(this);
			//	Set Bulk
			m_IsBulk = isBulk();
			//	Set Product
			setIsBulk();
			clearData();
		} else if(name.equals("FTA_VehicleType_ID")) { 
			m_FTA_VehicleType_ID = ((Integer)(value != null? value: 0)).intValue();
			//	Set Capacity
			setFillCapacity();
			calculate();
		} else if(name.equals("FTA_EntryTicket_ID")) {
			m_FTA_EntryTicket_ID = ((Integer)(value != null? value: 0)).intValue();
			ArrayList<KeyNamePair> data = getDataDriver(trxName);
			m_FTA_Driver_ID = loadComboBoxW(driverSearch, data, true);
			//	Vehicle
			data = getVehicleData(trxName);
			m_FTA_Vehicle_ID = loadComboBoxW(vehicleSearch, data, true);
			m_FTA_VehicleType_ID = getFTA_VehicleType_ID(m_FTA_EntryTicket_ID, trxName);
			vehicleTypePick.setValue(m_FTA_VehicleType_ID);
			vehicleTypePick.setReadWrite(!(m_FTA_EntryTicket_ID > 0));
			//	Set Capacity
			setFillCapacity();
		}
		calculate();
		
	}

	@Override
	public void onEvent(Event arg0) throws Exception {
		if (arg0.getTarget() == bSearch){
			cmd_search();
		} else if(arg0.getTarget().equals(selectAllButton)) {
			int rows = w_orderLineTable.getRowCount();
			for (int i = 0; i < rows; i++) {
				w_orderLineTable.setValueAt(true, i, SELECT);
			}	
		} else if(arg0.getTarget().equals(gLoadOrderButton)) {
			if(validData()) {
				if (FDialog.ask(m_WindowNo, parameterPanel, null, 
						Msg.translate(Env.getCtx(), "GenerateOrder") + "?")) {
					saveData();
				}
			}
		}else if(arg0.getTarget().equals(docTypeSearch)) {
			m_C_DocType_ID = docTypeSearch.getSelectedIndex();
			clearData();
		} else if(arg0.getTarget().equals(warehouseSearch)) {
			m_M_Warehouse_ID = warehouseSearch.getSelectedIndex();
			clearData();
		}
		
	}

	@Override
	public ADForm getForm() {
		return form;
	}
	
	/**
	 * Load the Combo Box from ArrayList (Web Version)
	 * @author <a href="mailto:raulmunozn@gmail.com">Raul Muñoz</a> 18/12/2015, 11:09:43
	 * @param comboSearch
	 * @param data
	 * @param mandatory
	 * @return
	 * @return int
	 */
	protected int loadComboBoxW(Listbox comboSearch, ArrayList<KeyNamePair> data, boolean mandatory) {
		comboSearch.removeAllItems();
		if(!mandatory){
			comboSearch.appendItem("", "0");
			comboSearch.setName(""+count++);
		}
		int m_ID = 0;
		for(KeyNamePair pp : data) {
			comboSearch.appendItem(String.valueOf(pp.getName()),pp.getKey());
			comboSearch.setName(String.valueOf(pp.getKey()));
		}
		//	Set Default
		if (comboSearch.getItemCount() != 0) {
			comboSearch.setSelectedIndex(0);
			m_ID =Integer.parseInt(comboSearch.getName());
		}
		return m_ID;
	}

	/**
	 * Load Combo Box from ArrayList (No Mandatory)
	 * @author <a href="mailto:raulmunozn@gmail.com">Raul Muñoz</a> 18/12/2015, 10:42:38
	 * @param comboSearch
	 * @param data
	 * @return
	 * @return int
	 */
	protected int loadComboBoxW(Listbox comboSearch, ArrayList<KeyNamePair> data) {
		return loadComboBoxW(comboSearch, data, false);
	}

	@Override
	public void tableChanged(WTableModelEvent event) {
		boolean isUpdate = (event.getType() == WTableModelEvent.CONTENTS_CHANGED);
		int row = event.getFirstRow();
		int col = event.getColumn();
		//  Not a table update
		if (!isUpdate) {
			calculate();
			return;
		}
		
		boolean isOrder = (event.getModel().equals(w_orderTable.getModel()));
		boolean isOrderLine = (event.getModel().equals(w_orderLineTable.getModel()));
		if(isOrder) {
			if(col == SELECT
					&& m_IsBulk
					&& moreOneSelect(w_orderTable)) {
				FDialog.info(m_WindowNo, parameterPanel, Msg.translate(Env.getCtx(), "IsBulkMaxOne"));
				w_orderTable.setValueAt(false, row, SELECT);
				return;
			}
			//	Load Lines
			if(m_C_UOM_Weight_ID != 0) {
				StringBuffer sql = getQueryLine(w_orderTable, m_OperationType);
				Vector<Vector<Object>> data = getOrderLineData(w_orderTable, sql);
				Vector<String> columnNames = getOrderLineColumnNames();
				
				loadBuffer(w_orderLineTable);
				//  Remove previous listeners
				w_orderLineTable.getModel().removeTableModelListener(this);
				//  Set Model
				ListModelTable modelP = new ListModelTable(data);
				modelP.addTableModelListener(this);
				w_orderLineTable.setData(modelP, columnNames);
				setOrderLineColumnClass(w_orderLineTable);
				setValueFromBuffer(w_orderLineTable);	
			} else {
				FDialog.info(m_WindowNo, parameterPanel, "Error", Msg.parseTranslation(Env.getCtx(), "@C_UOM_ID@ @NotFound@"));
				//loadOrder();
				calculate();
			}
		} else if(isOrderLine) {
			if(col == OL_QTY) {	//	Quantity
				BigDecimal qty = (BigDecimal) w_orderLineTable.getValueAt(row, OL_QTY);
				BigDecimal weight = (BigDecimal) w_orderLineTable.getValueAt(row, OL_WEIGHT);
				BigDecimal volume = (BigDecimal) w_orderLineTable.getValueAt(row, OL_VOLUME);
				BigDecimal qtyOnHand = (BigDecimal) w_orderLineTable.getValueAt(row, OL_QTY_ONDHAND);
				BigDecimal qtyOrdered = (BigDecimal) w_orderLineTable.getValueAt(row, OL_QTY_ORDERED);
				BigDecimal qtyOrderLine = (BigDecimal) w_orderLineTable.getValueAt(row, OL_QTY_LOAD_ORDER_LINE);
				BigDecimal qtyDelivered = (BigDecimal) w_orderLineTable.getValueAt(row, OL_QTY_DELIVERED);
				
				//	Get Precision
				KeyNamePair uom = (KeyNamePair) w_orderLineTable.getValueAt(row, OL_QTY_UOM);
				KeyNamePair pr = (KeyNamePair) w_orderLineTable.getValueAt(row, OL_PRODUCT);
				StringNamePair dr = (StringNamePair) w_orderLineTable.getValueAt(row, OL_DELIVERY_RULE);
				int p_C_UOM_ID = uom.getKey();
				int p_M_Product_ID = pr.getKey();
				MProduct product = MProduct.get(Env.getCtx(), p_M_Product_ID);
				int precision = MUOM.getPrecision(Env.getCtx(), p_C_UOM_ID);
				BigDecimal unitWeight = product.getWeight();
				BigDecimal unitVolume = product.getVolume();
				String validError = null;
				//	Valid Quantity
				//	Valid Quantity onHand from Swing
				if((dr.getID().equals(X_C_Order.DELIVERYRULE_Availability ) 
						&& m_IsValidateQuantity)
				//	End Yamel Senih
							&& qty.setScale(precision, BigDecimal.ROUND_HALF_UP).doubleValue()
							>
							qtyOnHand.setScale(precision, BigDecimal.ROUND_HALF_UP).doubleValue()) {
					//	
					validError = "@Qty@ > @QtyOnHand@";
					//	
				} else if(qty.setScale(precision, BigDecimal.ROUND_HALF_UP).doubleValue() 
						>
						qtyOrdered
						.subtract(qtyDelivered)
						.subtract(qtyOrderLine)
						.setScale(precision, BigDecimal.ROUND_HALF_UP)
						.doubleValue()) {
					//	
					validError = "@Qty@ > @QtyOrdered@";
					//	
				} else if(qty.compareTo(Env.ZERO) <= 0) {
					validError = "@Qty@ <= 0";
				}
				//	
				if(validError != null) {
					FDialog.warn(m_WindowNo, parameterPanel, null, Msg.parseTranslation(Env.getCtx(), validError));
					qty = qtyOrdered
							.subtract(qtyDelivered)
							.subtract(qtyOrderLine)
							.setScale(precision, BigDecimal.ROUND_HALF_UP);
					//	
					BigDecimal diff = qtyOnHand.subtract(qty).setScale(precision, BigDecimal.ROUND_HALF_UP);
					//	Set Quantity
					if(diff.doubleValue() < 0)
						qty = qty
							.subtract(diff.abs())
							.setScale(precision, BigDecimal.ROUND_HALF_UP);
					//	Remove listener
					w_orderLineTable.getModel().removeTableModelListener(this);
					//	Set quantity
					w_orderLineTable.setValueAt(qty, row, OL_QTY);
					//	Add listener
					w_orderLineTable.getModel().addTableModelListener(this);
				}
				//	Calculate Weight
				weight = qty.multiply(unitWeight).setScale(m_WeightPrecision, BigDecimal.ROUND_HALF_UP);
				w_orderLineTable.setValueAt(weight, row, OL_WEIGHT);
				//	Calculate Volume
				volume = qty.multiply(unitVolume).setScale(m_VolumePrecision, BigDecimal.ROUND_HALF_UP);
				w_orderLineTable.setValueAt(volume, row, OL_VOLUME);
			} else if(col == SELECT) {
				boolean select = (Boolean) w_orderLineTable.getValueAt(row, col);
				if(select) {
					m_MaxSeqNo += 10;
					w_orderLineTable.setValueAt(m_MaxSeqNo, row, OL_SEQNO);
				}
			} else if(col == OL_SEQNO) {
				int seqNo = (Integer) w_orderLineTable.getValueAt(row, OL_SEQNO);
				if(!exists_seqNo(w_orderLineTable, row, seqNo)) {
					if(seqNo > m_MaxSeqNo) {
						m_MaxSeqNo = seqNo;
					}
				} else {
					FDialog.warn(m_WindowNo, parameterPanel, null, Msg.translate(Env.getCtx(), "SeqNoEx"));
					m_MaxSeqNo += 10;
					w_orderLineTable.setValueAt(m_MaxSeqNo, row, OL_SEQNO);
				}
			}
			//	Load Group by Product
			loadStockWarehouse(w_orderLineTable);
		}
		
		calculate();		
	}
		
	/**
	 * Generate Load Order
	 * @author <a href="mailto:Raulmunozn@gmail.com">Raul Muñoz</a> 08/01/2015, 11:34:33
	 * @param trxName
	 * @return
	 * @return String
	 */
	protected String generateLoadOrder(String trxName) {
		int m_gen = 0;
		int rows = w_orderLineTable.getRowCount();
		MFTALoadOrder loadOrder = new MFTALoadOrder(Env.getCtx(), 0, trxName);
		MFTALoadOrderLine lorder = null;
		//	
		BigDecimal totalWeight = Env.ZERO;
		BigDecimal totalVolume = Env.ZERO;
		//	
		loadOrder.setAD_Org_ID(m_AD_Org_ID);
		loadOrder.setOperationType(m_OperationType);
		loadOrder.setFTA_VehicleType_ID(m_FTA_VehicleType_ID);
		loadOrder.setDateDoc(m_DateDoc);
		loadOrder.setShipDate(m_ShipDate);
		loadOrder.setC_DocType_ID(m_C_DocTypeTarget_ID);
		loadOrder.setLoadCapacity(m_LoadCapacity);
		loadOrder.setVolumeCapacity(m_VolumeCapacity);
		loadOrder.setC_UOM_Weight_ID(m_C_UOM_Weight_ID);
		loadOrder.setC_UOM_Volume_ID(m_C_UOM_Volume_ID);
		//	Set Is Weight Register
		loadOrder.setIsWeightRegister(MFTAWeightScale.isWeightScaleOrg(m_AD_Org_ID, trxName));
		//	Set Warehouse
		if(m_M_Warehouse_ID != 0)
			loadOrder.setM_Warehouse_ID(m_M_Warehouse_ID);
		//	Invoice Rule
		if(m_InvoiceRule != null
				&& m_InvoiceRule.trim().length() > 0)
			loadOrder.setInvoiceRule(m_InvoiceRule);
		//	Delivery Rule
		if(m_DeliveryRule != null
				&& m_DeliveryRule.trim().length() > 0)
			loadOrder.setDeliveryRule(m_DeliveryRule);
		//	Set Shipper
		if(m_M_Shipper_ID != 0)
			loadOrder.setM_Shipper_ID(m_M_Shipper_ID);
		//	Set Driver
		if(m_FTA_Driver_ID != 0)
			loadOrder.setFTA_Driver_ID(m_FTA_Driver_ID);
		//	Set Vehicle
		if(m_FTA_Vehicle_ID != 0)
			loadOrder.setFTA_Vehicle_ID(m_FTA_Vehicle_ID);
		//	Set Entry Ticket
		if(m_FTA_EntryTicket_ID != 0)
			loadOrder.setFTA_EntryTicket_ID(m_FTA_EntryTicket_ID);
		//	Set Product
		if(m_M_Product_ID != 0)
			loadOrder.setM_Product_ID(m_M_Product_ID);
		//	Save Order
		loadOrder.saveEx();
		//	Loop for add Lines
		for (int i = 0; i < rows; i++) {
			if (((Boolean)w_orderLineTable.getValueAt(i, 0)).booleanValue()) {
				int m_OrderLine_ID = ((KeyNamePair)w_orderLineTable.getValueAt(i, ORDER_LINE)).getKey();
				int m_M_Product_ID = ((KeyNamePair)w_orderLineTable.getValueAt(i, OL_PRODUCT)).getKey();
				BigDecimal qty = (BigDecimal) w_orderLineTable.getValueAt(i, OL_QTY);
				BigDecimal weight = (BigDecimal) w_orderLineTable.getValueAt(i, OL_WEIGHT);
				BigDecimal volume = (BigDecimal) w_orderLineTable.getValueAt(i, OL_VOLUME);
				Integer seqNo = (Integer) w_orderLineTable.getValueAt(i, OL_SEQNO);
				//	New Line
				lorder = new MFTALoadOrderLine(Env.getCtx(), 0, trxName);
				//	Set Values
				lorder.setAD_Org_ID(m_AD_Org_ID);
				lorder.setFTA_LoadOrder_ID(loadOrder.getFTA_LoadOrder_ID());
				/** 2014-12-02 Carlos Parada Add Support to Distribution Order*/ 
				if (m_OperationType.equals(X_FTA_LoadOrder.OPERATIONTYPE_MaterialOutputMovement))
					lorder.setDD_OrderLine_ID(m_OrderLine_ID);
				else
					lorder.setC_OrderLine_ID(m_OrderLine_ID);
				/** End Carlos Parada*/
				lorder.setM_Product_ID(m_M_Product_ID);
				lorder.setQty(qty);
				lorder.setSeqNo(seqNo);
				lorder.setWeight(weight);
				lorder.setVolume(volume);
				//	Add Weight
				totalWeight = totalWeight.add(weight);
				//	Add Volume
				totalVolume = totalVolume.add(volume);
				//	Save Line
				lorder.saveEx();
				//	Add Count
				m_gen ++;
			}
		}
		//	Set Header Weight
		loadOrder.setWeight(totalWeight);
		//	Set Header Volume
		loadOrder.setVolume(totalVolume);
		//	Save Header
		loadOrder.saveEx();
		//	Complete Order
		loadOrder.setDocAction(X_FTA_LoadOrder.DOCACTION_Complete);
		loadOrder.processIt(X_FTA_LoadOrder.DOCACTION_Complete);
		loadOrder.saveEx();
		//	Valid Error
		String errorMsg = loadOrder.getProcessMsg();
		if(errorMsg != null
				&& loadOrder.getDocStatus().equals(X_FTA_LoadOrder.DOCSTATUS_Invalid))
			throw new AdempiereException(errorMsg);
		//	Message
		return Msg.parseTranslation(Env.getCtx(), "@Created@ = [" + loadOrder.getDocumentNo() 
				+ "] || @LineNo@" + " = [" + m_gen + "]" + (errorMsg != null? "\n@Errors@:" + errorMsg: ""));
	}
}