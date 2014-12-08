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
package org.spin.form;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.beans.PropertyChangeEvent;
import java.beans.VetoableChangeListener;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.SwingConstants;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.plaf.ColorUIResource;
import javax.swing.table.DefaultTableModel;

import org.adempiere.plaf.AdempiereTaskPaneUI;
import org.compiere.apps.ADialog;
import org.compiere.apps.StatusBar;
import org.compiere.apps.form.FormFrame;
import org.compiere.apps.form.FormPanel;
import org.compiere.grid.ed.VDate;
import org.compiere.grid.ed.VLookup;
import org.compiere.grid.ed.VNumber;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.plaf.CompiereColor;
import org.compiere.swing.CButton;
import org.compiere.swing.CComboBox;
import org.compiere.swing.CLabel;
import org.compiere.swing.CPanel;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.jdesktop.swingx.JXTaskPane;
import org.jdesktop.swingx.plaf.basic.BasicTaskPaneUI;

public class VLoadOrder extends LoadOrder
	implements FormPanel, ActionListener, TableModelListener, VetoableChangeListener
{
	private CPanel 	panel = new CPanel();
	private Trx		trx = null;
	private String	trxName = null;

	/**
	 *	Initialize Panel
	 *  @param WindowNo window
	 *  @param frame frame
	 */
	public void init (int WindowNo, FormFrame frame)
	{
		m_WindowNo = WindowNo;
		m_frame = frame;
		Env.setContext(Env.getCtx(), m_WindowNo, "IsSOTrx", "Y");   //  defaults to yes
		//	Transaction
		trxName = Trx.createTrxName("GM");
		trx = Trx.get(trxName, true);
		
		try	{
			dynInit();
			jbInit();
			frame.getContentPane().add(mainPanel, BorderLayout.CENTER);
			frame.getContentPane().add(statusBar, BorderLayout.SOUTH);
			//	Load Default Values
			loadDefaultValues(trxName);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
	}	//	init

	MLookup lookupSPP;
	
	/**	Window No			*/
	private int         	m_WindowNo = 0;
	
	/**	FormFrame			*/
	private FormFrame 		m_frame;

	private CPanel 			mainPanel = new CPanel();
	private BorderLayout 	mainLayout = new BorderLayout();
	private CPanel 			parameterPanel = new CPanel();
	private CPanel 			loadOrderPanel = new CPanel();
	private GridBagLayout 	parameterLayout = new GridBagLayout();
	/**	Organization			*/
	private JLabel 			organizationLabel = new JLabel();
	private VLookup 		organizationPick = null;
	/**	Sales Region			*/
	private JLabel 			salesRegionLabel = new JLabel();
	private VLookup 		salesRegionPick = null;
	/**	Sales Representative	*/
	private JLabel 			salesRepLabel = new JLabel();
	private VLookup 		salesRepSearch = null;
	/**	Warehouse				*/
	private JLabel 			warehouseLabel = new JLabel();
	private CComboBox 		warehouseSearch = new CComboBox();
	/**	Operation Type			*/
	private JLabel 			operationTypeLabel = new JLabel();
	private VLookup 		operationTypePick = null;
	/**	Document Type			*/
	private JLabel 			docTypeLabel = new JLabel();
	private CComboBox 		docTypeSearch = new CComboBox();
	/**	Document Type Target	*/
	private JLabel 			docTypeTargetLabel = new JLabel();
	private VLookup 		docTypeTargetPick = null;
	/**	Invoice Rule			*/
	private JLabel 			invoiceRuleLabel = new JLabel();
	private VLookup 		invoiceRulePick = null;
	/**	Delivery Rule			*/
	private JLabel 			deliveryRuleLabel = new JLabel();
	private VLookup 		deliveryRulePick = null;
	/**	Vehicle Type			*/
	private JLabel 			vehicleTypeLabel = new JLabel();
	private VLookup 		vehicleTypePick = null;
	/**	Document Date			*/
	private CLabel 			labelDateDoc = new CLabel();
	private VDate 			dateDocField = new VDate();
	/**	Shipment Date			*/
	private CLabel 			labelShipDate = new CLabel();
	private VDate 			shipDateField = new VDate();
	/**	Entry Ticket			*/
	private JLabel 			entryTicketLabel = new JLabel();
	private VLookup 		entryTicketPick = null;
	/**	Shipper					*/
	private JLabel 			shipperLabel = new JLabel();
	private VLookup 		shipperPick = null;
	/**	Driver					*/
	private JLabel 			driverLabel = new JLabel();
	private CComboBox 		driverSearch = new CComboBox();
	/**	Vehicle					*/
	private JLabel 			vehicleLabel = new JLabel();
	private CComboBox 		vehicleSearch = new CComboBox();
	/**	Load Capacity			*/
	private JLabel 			loadCapacityLabel = new JLabel();
	private VNumber 		loadCapacityField = null;
	/**	Volume Capacity			*/
	private JLabel 			volumeCapacityLabel = new JLabel();
	private VNumber 		volumeCapacityField = null;
	/**	Bulk				*/
	//private JCheckBox 		isBulkCheck = new JCheckBox();
	/**	Product				*/
	private JLabel 			productLabel = new JLabel();
	private VLookup 		productSearch = null;
	/**	Business Partner	*/
	private JLabel 			bpartnerLabel = new JLabel();
	private VLookup 		bpartnerSearch = null;
	
	
	/**/
	private JSplitPane 		infoPanel = new JSplitPane();
	private CPanel 			orderPanel = new CPanel();
	private CPanel 			orderLinePanel = new CPanel();
	private JLabel 			orderLabel = new JLabel();
	private JLabel 			orderLineLabel = new JLabel();
	private BorderLayout 	orderLayout = new BorderLayout();
	private BorderLayout 	orderLineLayout = new BorderLayout();
	private JLabel 			orderInfo = new JLabel();
	private JLabel 			orderLineInfo = new JLabel();
	private JScrollPane 	orderScrollPane = new JScrollPane();
	private JScrollPane 	orderLineScrollPane = new JScrollPane();
	private GridBagLayout 	loadOrderLayout = new GridBagLayout();
	private JLabel 			weightDiffLabel = new JLabel();
	private VNumber 		weightDiffField = null;
	private JLabel 			volumeDiffLabel = new JLabel();
	private VNumber 		volumeDiffField = null;
	private JButton 		gLoadOrderButton = new JButton();

	private CPanel 			stockInfoPanel = new CPanel();
	private BorderLayout 	orderLineStockInfoLayout = new BorderLayout();
	private StatusBar 		statusBar = new StatusBar();
	
	private CButton 		selectAllButton =  new CButton(Env.getImageIcon2("SelectAll24"));
	/**	Search				*/
	private CButton 		bSearch = new CButton();
	
	//	Stock Info
	private JScrollPane 	stockScrollPane = new JScrollPane();
	
	/**	Collapsible Panel for Parameter		*/
	private JXTaskPane parameterCollapsiblePanel = new JXTaskPane();

	/**	Collapsible Panel for Stock			*/
	private JXTaskPane stockCollapsiblePanel = new JXTaskPane();
	
	/**
	 *  Static Init
	 *  @throws Exception
	 */
	private void jbInit() throws Exception
	{
		
		CompiereColor.setBackground(panel);
		//
		mainPanel.setLayout(mainLayout);

		//
		parameterPanel.setLayout(parameterLayout);
		loadOrderPanel.setLayout(loadOrderLayout);
		driverLabel.setText(Msg.translate(Env.getCtx(), "FTA_Driver_ID"));
		
		shipperLabel.setText(Msg.translate(Env.getCtx(), "M_Shipper_ID"));
		vehicleLabel.setText(Msg.translate(Env.getCtx(), "FTA_Vehicle_ID"));
		salesRegionLabel.setText(Msg.translate(Env.getCtx(), "C_SalesRegion_ID"));
		salesRepLabel.setText(Msg.translate(Env.getCtx(), "SalesRep_ID"));
		loadCapacityLabel.setText(Msg.translate(Env.getCtx(), "LoadCapacity"));
		volumeCapacityLabel.setText(Msg.translate(Env.getCtx(), "VolumeCapacity"));
		vehicleTypeLabel.setText(Msg.translate(Env.getCtx(), "FTA_VehicleType_ID"));
		entryTicketLabel.setText(Msg.translate(Env.getCtx(), "FTA_EntryTicket_ID"));
		
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
		//	Date
		labelDateDoc.setText(Msg.translate(Env.getCtx(), "DateDoc"));
		labelShipDate.setText(Msg.translate(Env.getCtx(), "ShipDate"));
		//	Product
		productLabel.setText(Msg.translate(Env.getCtx(), "M_Product_ID"));
		//	Business Partner
		bpartnerLabel.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		
		bSearch.setText(Msg.translate(Env.getCtx(), "Search"));
		
		orderLabel.setRequestFocusEnabled(false);
		orderLabel.setText(" " + Msg.translate(Env.getCtx(), "C_Order_ID"));
		orderLineLabel.setRequestFocusEnabled(false);
		orderLineLabel.setText(" " + Msg.translate(Env.getCtx(), "C_OrderLine_ID"));
		orderPanel.setLayout(orderLayout);
		orderLinePanel.setLayout(orderLineLayout);
		orderLineInfo.setHorizontalAlignment(SwingConstants.RIGHT);
		orderLineInfo.setHorizontalTextPosition(SwingConstants.RIGHT);
		orderInfo.setHorizontalAlignment(SwingConstants.RIGHT);
		orderInfo.setHorizontalTextPosition(SwingConstants.RIGHT);
		gLoadOrderButton.setText(Msg.translate(Env.getCtx(), "GenerateOrder"));
		gLoadOrderButton.addActionListener(this);
		//	Weight Difference
		weightDiffLabel.setText(Msg.translate(Env.getCtx(), "DiffWeight"));
		weightDiffField = new VNumber("DiffWeight", true, true, true, DisplayType.Number, "DiffWeight");
		weightDiffField.setValue(Env.ZERO);
		//	Volume Difference
		volumeDiffLabel.setText(Msg.translate(Env.getCtx(), "DiffVolume"));
		volumeDiffField = new VNumber("DiffVolume", true, true, true, DisplayType.Number, "DiffVolume");
		volumeDiffField.setValue(Env.ZERO);
		//	Load Capacity
		loadCapacityField = new VNumber("LoadCapacity", true, true, true, DisplayType.Number, "LoadCapacity");
		loadCapacityField.setValue(Env.ZERO);
		//	Load Capacity
		volumeCapacityField = new VNumber("VolumeCapacity", true, true, true, DisplayType.Number, "VolumeCapacity");
		volumeCapacityField.setValue(Env.ZERO);
		//	
		orderLineScrollPane.setPreferredSize(new Dimension(200, 200));
		orderScrollPane.setPreferredSize(new Dimension(200, 200));
		stockScrollPane.setPreferredSize(new Dimension(200, 200));
		
		parameterCollapsiblePanel.add(parameterPanel);
		parameterCollapsiblePanel.setTitle(Msg.translate(Env.getCtx(), "Parameter"));
		parameterCollapsiblePanel.setUI(new BasicTaskPaneUI());
		parameterCollapsiblePanel.getContentPane().setBackground(new ColorUIResource(251,248,241));
		parameterCollapsiblePanel.getContentPane().setForeground(new ColorUIResource(251,0,0));
		parameterCollapsiblePanel.setCollapsed(false);
		
		stockCollapsiblePanel.setCollapsed(true);
		stockCollapsiblePanel.setTitle(Msg.translate(Env.getCtx(), "WarehouseStockGroup"));
		stockCollapsiblePanel.setUI(new AdempiereTaskPaneUI());
		stockCollapsiblePanel.getContentPane().setBackground(new ColorUIResource(251,248,241));
		stockCollapsiblePanel.getContentPane().setForeground(new ColorUIResource(255,0,0));
		
		stockCollapsiblePanel.addVetoableChangeListener(this);
		
		mainPanel.add(parameterCollapsiblePanel, BorderLayout.NORTH);
		
		//mainPanel.add(parameterPanel, BorderLayout.NORTH);
		
		organizationLabel.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		parameterPanel.add(organizationLabel, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0));
		parameterPanel.add(organizationPick, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5,5,5,5), 0, 0));
		parameterPanel.add(salesRegionLabel, new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		parameterPanel.add(salesRegionPick, new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		parameterPanel.add(salesRepLabel, new GridBagConstraints(4, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		parameterPanel.add(salesRepSearch, new GridBagConstraints(5, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Storage
		parameterPanel.add(warehouseLabel, new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(warehouseSearch, new GridBagConstraints(1, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Operation Type
		parameterPanel.add(operationTypeLabel, new GridBagConstraints(2, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(operationTypePick, new GridBagConstraints(3, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Document Type
		parameterPanel.add(docTypeLabel, new GridBagConstraints(4, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(docTypeSearch, new GridBagConstraints(5, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Document Type Target
		parameterPanel.add(docTypeTargetLabel, new GridBagConstraints(0, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(docTypeTargetPick, new GridBagConstraints(1, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Invoice Rule
		parameterPanel.add(invoiceRuleLabel, new GridBagConstraints(2, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(invoiceRulePick, new GridBagConstraints(3, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Delivery Rule
		parameterPanel.add(deliveryRuleLabel, new GridBagConstraints(4, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(deliveryRulePick, new GridBagConstraints(5, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Vehicle Type
		parameterPanel.add(vehicleTypeLabel, new GridBagConstraints(0, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(vehicleTypePick, new GridBagConstraints(1, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Document Date
		parameterPanel.add(labelDateDoc, new GridBagConstraints(2, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(dateDocField, new GridBagConstraints(3, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Shipment Date
		parameterPanel.add(labelShipDate, new GridBagConstraints(4, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(shipDateField, new GridBagConstraints(5, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Entry Ticket
		parameterPanel.add(entryTicketLabel, new GridBagConstraints(0, 4, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(entryTicketPick, new GridBagConstraints(1, 4, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Shipper
		parameterPanel.add(shipperLabel, new GridBagConstraints(2, 4, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(shipperPick, new GridBagConstraints(3, 4, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Driver
		parameterPanel.add(driverLabel, new GridBagConstraints(4, 4, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(driverSearch, new GridBagConstraints(5, 4, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Vehicle
		parameterPanel.add(vehicleLabel, new GridBagConstraints(0, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(vehicleSearch, new GridBagConstraints(1, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Load Capacity
		parameterPanel.add(loadCapacityLabel, new GridBagConstraints(2, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(loadCapacityField, new GridBagConstraints(3, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Volume Capacity
		parameterPanel.add(volumeCapacityLabel, new GridBagConstraints(4, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(volumeCapacityField, new GridBagConstraints(5, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Bulk
		//parameterPanel.add(isBulkCheck, new GridBagConstraints(1, 7, 1, 1, 0.0, 0.0
				//,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		//	Product
		parameterPanel.add(productLabel, new GridBagConstraints(0, 7, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(productSearch, new GridBagConstraints(1, 7, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Business Partner
		parameterPanel.add(bpartnerLabel, new GridBagConstraints(2, 7, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(bpartnerSearch, new GridBagConstraints(3, 7, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	Search
		parameterPanel.add(bSearch, new GridBagConstraints(5, 7, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		//	
		mainPanel.add(stockInfoPanel, BorderLayout.SOUTH);
		
		//	Button Panel
		loadOrderPanel.add(selectAllButton, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 5, 5, 5), 0, 0));
		//	Weight Difference
		loadOrderPanel.add(weightDiffLabel, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 0), 0, 0));
		loadOrderPanel.add(weightDiffField, new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Volume Difference
		loadOrderPanel.add(volumeDiffLabel, new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 0), 0, 0));
		loadOrderPanel.add(volumeDiffField, new GridBagConstraints(4, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Generate Load Order
		loadOrderPanel.add(gLoadOrderButton, new GridBagConstraints(5, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		orderPanel.add(orderLabel, BorderLayout.NORTH);
		orderPanel.add(orderInfo, BorderLayout.SOUTH);
		orderPanel.add(orderScrollPane, BorderLayout.CENTER);
		orderScrollPane.getViewport().add(orderTable, null);
		orderLinePanel.add(orderLineLabel, BorderLayout.NORTH);
		
		// Product Stock Info Panel
		stockInfoPanel.setLayout(orderLineStockInfoLayout);
		
		stockInfoPanel.add(stockCollapsiblePanel, BorderLayout.NORTH);
		stockInfoPanel.add(loadOrderPanel, BorderLayout.SOUTH);
		
		orderLinePanel.add(orderLineInfo, BorderLayout.SOUTH);
		
		orderLinePanel.add(orderLineScrollPane, BorderLayout.CENTER);
		orderLineScrollPane.getViewport().add(orderLineTable, null);
		
		stockScrollPane.getViewport().add(stockTable, null);
		
		stockCollapsiblePanel.add(stockScrollPane);
		
		//
		mainPanel.add(infoPanel, BorderLayout.CENTER);
		infoPanel.setOrientation(JSplitPane.VERTICAL_SPLIT);
		infoPanel.setBorder(BorderFactory.createEtchedBorder());
		infoPanel.setTopComponent(orderPanel);
		infoPanel.setBottomComponent(orderLinePanel);
		infoPanel.add(orderPanel, JSplitPane.TOP);
		infoPanel.add(orderLinePanel, JSplitPane.BOTTOM);
		infoPanel.setContinuousLayout(true);
		infoPanel.setPreferredSize(new Dimension(800,250));
		infoPanel.setDividerLocation(150);
		orderLineInfo.setText(Msg.translate(Env.getCtx(), "total") + " = 0");
		
	}   //  jbInit

	/**
	 * 	Dispose
	 */
	public void dispose()
	{
		if (m_frame != null)
			m_frame.dispose();
		m_frame = null;
	}	//	dispose

	/**
	 *  Dynamic Init (prepare dynamic fields)
	 *  @throws Exception if Lookups cannot be initialized
	 */
	public void dynInit() throws Exception
	{
		//	Set Client
		m_AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
		
		// Organization filter selection
		int AD_Column_ID = 69835;		//	FTA_LoadOrer.AD_Org_ID
		MLookup lookupOrg = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		organizationPick = new VLookup("AD_Org_ID", true, false, true, lookupOrg);
		//organizationPick.setValue(Env.getAD_Org_ID(Env.getCtx()));
		organizationPick.addVetoableChangeListener(this);
		
		//	Sales Region
		AD_Column_ID = 1823;		//	C_SalesRegion.C_SalesRegion_ID
		MLookup lookupWar = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		salesRegionPick = new VLookup("C_SalesRegion_ID", false, false, true, lookupWar);
		//salesRegion.setValue(Env.getAD_Org_ID(Env.getCtx()));
		salesRegionPick.addVetoableChangeListener(this);
		
		//	Sales Representative
		AD_Column_ID = 2186;		//	C_Order.SalesRep_ID
		MLookup lookupSal = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		salesRepSearch = new VLookup("SalesRep_ID", false, false, true, lookupSal);
		//salesRepSearch.setValue(Env.getAD_Org_ID(Env.getCtx()));
		salesRepSearch.addVetoableChangeListener(this);
						
		//  Operation Type
		AD_Column_ID = 69870;		//  FTA_LoadOrder.OperationType
		MLookup lookupTO = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.List);
		operationTypePick = new VLookup("OperationType", true, false, true, lookupTO);
		operationTypePick.addVetoableChangeListener(this);

		//  Document Type Target
		AD_Column_ID = 69842;		//  FTA_LoadOrder.C_DocTypeTarget_ID
		MLookup lookupDTT = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Table);
		docTypeTargetPick = new VLookup("C_DocType_ID", true, false, true, lookupDTT);
		docTypeTargetPick.addVetoableChangeListener(this);
		
		AD_Column_ID = 69872;		//  FTA_LoadOrder.InvoiceRule
		MLookup lookupIR = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.List);
		invoiceRulePick = new VLookup("InvoiceRule", false, false, true, lookupIR);
		//invoiceRulePick.setValue(X_C_Order.INVOICERULE_Immediate);
		invoiceRulePick.addVetoableChangeListener(this);
		
		AD_Column_ID = 69873;		//  FTA_LoadOrder.DeliveryRule
		MLookup lookupDR = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.List);
		deliveryRulePick = new VLookup("DeliveryRule", false, false, true, lookupDR);
		//deliveryRulePick.setValue(X_C_Order.DELIVERYRULE_Availability);
		deliveryRulePick.addVetoableChangeListener(this);
		
		//	Entry Ticket
		AD_Column_ID = 69874;		//  FTA_LoadOrder.FTA_EntryTicket_ID
		MLookup lookupET = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Search);
		entryTicketPick = new VLookup("FTA_EntryTicket_ID", false, false, true, lookupET);
		entryTicketPick.addVetoableChangeListener(this);
		
		//  Shipper
		AD_Column_ID = 69852;		//  FTA_LoadOrder.M_Shipper_ID
		MLookup lookupSP = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		shipperPick = new VLookup("M_Shipper_ID", false, true, true, lookupSP);
		//shipperPick.setValue(Env.getAD_Org_ID(Env.getCtx()));
		shipperPick.addVetoableChangeListener(this);
		
		//  Vehicle Type
		AD_Column_ID = 69851;		//  FTA_LoadOrder.FTA_VehicleType_ID
		MLookup lookupVT = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Table);
		vehicleTypePick = new VLookup("FTA_VehicleType_ID", false, false, true, lookupVT);
		vehicleTypePick.addVetoableChangeListener(this);
		
		//	Product
		AD_Column_ID = 70626;		//	FTA_LoadOrer.M_Product_ID
		MLookup lookupProduct = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Search);
		productSearch = new VLookup("M_Product_ID", true, false, true, lookupProduct);
		productSearch.addVetoableChangeListener(this);
		
		//	Business Partner
		AD_Column_ID = 2762;		//	C_Order.C_BPartner_ID
		MLookup lookupBPartner = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Search);
		bpartnerSearch = new VLookup("C_BPartner_ID", true, false, true, lookupBPartner);
		bpartnerSearch.addVetoableChangeListener(this);
		
		//	Visible
		productLabel.setVisible(false);
		productSearch.setVisible(false);
		bpartnerLabel.setVisible(false);
		bpartnerSearch.setVisible(false);
		
		driverSearch.setEnabled(false);
		driverSearch.setEditable(false);		
		vehicleSearch.setEnabled(false);
		vehicleSearch.setEditable(false);
		
		//  Translation
		statusBar.setStatusLine(Msg.translate(Env.getCtx(), "FTA_LoadOrder_ID"));
		statusBar.setStatusDB("");
		
		//	Document Type Order
		docTypeSearch.addActionListener(this);
		
		//	Warehouse
		warehouseSearch.addActionListener(this);
		//	Search
		bSearch.addActionListener(this);
		
		//	Select All Items
		selectAllButton.addActionListener(this);
		
		
		//	Date
		dateDocField.setMandatory(true);
		dateDocField.setValue(Env.getContextAsDate(Env.getCtx(), "#Date"));
		shipDateField.setMandatory(true);
		shipDateField.setValue(Env.getContextAsDate(Env.getCtx(), "#Date"));
		
		/*orderLineTable.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent me) {
            	int col = ((MiniTable)me.getSource()).getSelectedColumn();
            	refresh(
            		((MiniTable)me.getSource()).getValueAt(row,2),
            		new BigDecimal(pickWarehouse.getValue().toString()).intValue(),
            		new BigDecimal(pickPriceList.getValue().toString()).intValue()
            		);
            	if(col == OL_PRODUCT){
            		stockCollapsiblePanel.setCollapsed(false);
            	}
            }
        });*/
		
		stockModel = new DefaultTableModel(null, getstockColumnNames());
		stockTable.setModel(stockModel);
		setStockColumnClass(stockTable);
		
	}   //  dynInit
	
	/**************************************************************************
	 *  Action Listener.
	 *  - MultiCurrency
	 *  - Allocate
	 *  @param e event
	 */
	public void actionPerformed(ActionEvent e)
	{
		log.config("");
		if(e.getSource().equals(selectAllButton)) {
			int rows = orderLineTable.getRowCount();
			for (int i = 0; i < rows; i++) {
				orderLineTable.setValueAt(true, i, SELECT);
			}			
		} else if(e.getSource().equals(docTypeSearch)){
			KeyNamePair pp = (KeyNamePair) docTypeSearch.getSelectedItem();
			m_C_DocType_ID = (pp != null? pp.getKey(): 0);
			clearData();
		} else if(e.getSource().equals(warehouseSearch)){
			KeyNamePair pp = (KeyNamePair) warehouseSearch.getSelectedItem();
			m_M_Warehouse_ID = (pp != null? pp.getKey(): 0);
			clearData();
		} else if(e.getSource().equals(gLoadOrderButton)){
			if(validData()){
				if (ADialog.ask(m_WindowNo, panel, null, 
						Msg.translate(Env.getCtx(), "GenerateOrder") + "?")){
					saveData();
				}
			}
		} else if (e.getSource() == bSearch)
			cmd_search();
	}   //  actionPerformed
	
	/**
	 *  Vetoable Change Listener.
	 *  
	 *  @param e event
	 */
	public void vetoableChange (PropertyChangeEvent e)
	{
		String name = e.getPropertyName();
		Object value = e.getNewValue();
		log.config(name + " = " + value);
		
		if(name.equals("C_SalesRegion_ID") || 
				name.equals("SalesRep_ID")) {
			clearData();
		} else if(name.equals("AD_Org_ID")){
			m_AD_Org_ID = ((Integer)(value != null? value: 0)).intValue();
			ArrayList<KeyNamePair> data = getDataWarehouse(trxName);
			warehouseSearch.removeActionListener(this);
			m_M_Warehouse_ID = loadComboBox(warehouseSearch, data);
			warehouseSearch.addActionListener(this);
			clearData();
		} else if(name.equals("OperationType")){
			m_OperationType = ((String)(value != null? value: 0));
			Env.setContext(Env.getCtx(), m_WindowNo, "OperationType", m_OperationType);
			//ArrayList<KeyNamePair> data = getDataDocumentType(trxName);
			//docTypeSearch.removeActionListener(this);
			//m_C_DocType_ID = loadComboBox(docTypeSearch, data);
			//docTypeSearch.addActionListener(this);
			//	Set Bulk
			m_IsBulk = isBulk();
			//	Set Product
			setIsBulk();
			clearData();
		} else if(name.equals("FTA_VehicleType_ID")){ 
			m_FTA_VehicleType_ID = ((Integer)(value != null? value: 0)).intValue();
			//	Set Capacity
			setFillCapacity();
			calculate();
		} else if(name.equals("FTA_EntryTicket_ID")){
			m_FTA_EntryTicket_ID = ((Integer)(value != null? value: 0)).intValue();
			ArrayList<KeyNamePair> data = getDataDriver(trxName);
			m_FTA_Driver_ID = loadComboBox(driverSearch, data, true);
			//	Vehicle
			data = getVehicleData(trxName);
			m_FTA_Vehicle_ID = loadComboBox(vehicleSearch, data, true);
			m_FTA_VehicleType_ID = getFTA_VehicleType_ID(m_FTA_EntryTicket_ID, trxName);
			vehicleTypePick.setValue(m_FTA_VehicleType_ID);
			vehicleTypePick.setReadWrite(!(m_FTA_EntryTicket_ID > 0));
			//	Set Capacity
			setFillCapacity();
		}
		calculate();
		
	}   //  vetoableChange
	
	/**
	 *  Table Model Listener.
	 *  - Recalculate Totals
	 *  @param e event
	 */
	public void tableChanged(TableModelEvent e)
	{
		boolean isUpdate = (e.getType() == TableModelEvent.UPDATE);
		int row = e.getFirstRow();
		int col = e.getColumn();
		//  Not a table update
		if (!isUpdate)
		{
			calculate();
			return;
		}
		
		boolean isOrder = (e.getSource().equals(orderTable.getModel()));
		boolean isOrderLine = (e.getSource().equals(orderLineTable.getModel()));
		if(isOrder){
			if(col == SELECT
					&& m_IsBulk
					&& moreOneSelect(orderTable)){
				ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "IsBulkMaxOne"));
				orderTable.setValueAt(false, row, SELECT);
				return;
			}
			//	Load Lines
			if(m_C_UOM_Weight_ID != 0){
				StringBuffer sql = getQueryLine(orderTable,m_OperationType);
				Vector<Vector<Object>> data = getOrderLineData(orderTable, sql);
				Vector<String> columnNames = getOrderLineColumnNames();
				
				loadBuffer(orderLineTable);
				//  Remove previous listeners
				orderLineTable.getModel().removeTableModelListener(this);
				
				//  Set Model
				DefaultTableModel modelP = new DefaultTableModel(data, columnNames);
				modelP.addTableModelListener(this);
				orderLineTable.setModel(modelP);
				setOrderLineColumnClass(orderLineTable);
				setValueFromBuffer(orderLineTable);	
			} else {
				ADialog.info(m_WindowNo, panel, "Error", Msg.parseTranslation(Env.getCtx(), "@C_UOM_ID@ @NotFound@"));
				//loadOrder();
				calculate();
			}
		} else if(isOrderLine){
			if(col == OL_QTY){	//Qty
				BigDecimal qty = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY);
				BigDecimal weight = (BigDecimal) orderLineTable.getValueAt(row, OL_WEIGHT);
				BigDecimal volume = (BigDecimal) orderLineTable.getValueAt(row, OL_VOLUME);
				BigDecimal qtyOnHand = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_ONDHAND);
				BigDecimal qtyOrdered = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_ORDERED);
				BigDecimal qtyOrderLine = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_LOAD_ORDER_LINE);
				BigDecimal qtyDelivered = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_DELIVERED);
				
				//	Get Precision
				KeyNamePair uom = (KeyNamePair) orderLineTable.getValueAt(row, OL_QTY_UOM);
				KeyNamePair pr = (KeyNamePair) orderLineTable.getValueAt(row, OL_PRODUCT);
				int p_C_UOM_ID = uom.getKey();
				int p_M_Product_ID = pr.getKey();
				MProduct product = MProduct.get(Env.getCtx(), p_M_Product_ID);
				int precision = MUOM.getPrecision(Env.getCtx(), p_C_UOM_ID);
				BigDecimal unitWeight = product.getWeight();
				BigDecimal unitVolume = product.getVolume();
				String validError = null;
				//	
				if(qty.setScale(precision, BigDecimal.ROUND_HALF_UP).doubleValue()
						>
						qtyOnHand.setScale(precision, BigDecimal.ROUND_HALF_UP).doubleValue()) {
					//	
					validError = "@Qty@ > @QtyOnHand@";
					//	
				} if(qty.setScale(precision, BigDecimal.ROUND_HALF_UP).doubleValue() 
						>
						qtyOrdered
						.subtract(qtyDelivered)
						.subtract(qtyOrderLine)
						.setScale(precision, BigDecimal.ROUND_HALF_UP)
						.doubleValue()){
					//	
					validError = "@Qty@ > @QtyOrdered@";
					//	
				} else if(qty.compareTo(Env.ZERO) <= 0){
					validError = "@Qty@ <= 0";
				}
				//	
				if(validError != null) {
					ADialog.warn(m_WindowNo, panel, null, Msg.parseTranslation(Env.getCtx(), validError));
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
					orderLineTable.getModel().removeTableModelListener(this);
					//	Set quantity
					orderLineTable.setValueAt(qty, row, OL_QTY);
					//	Add listener
					orderLineTable.getModel().addTableModelListener(this);
				}
				//	Calculate Weight
				weight = qty.multiply(unitWeight).setScale(m_WeightPrecision, BigDecimal.ROUND_HALF_UP);
				orderLineTable.setValueAt(weight, row, OL_WEIGHT);
				//	Calculate Volume
				volume = qty.multiply(unitVolume).setScale(m_VolumePrecision, BigDecimal.ROUND_HALF_UP);
				orderLineTable.setValueAt(volume, row, OL_VOLUME);
			} else if(col == SELECT){
				boolean select = (Boolean) orderLineTable.getValueAt(row, col);
				if(select){
					m_MaxSeqNo += 10;
					orderLineTable.setValueAt(m_MaxSeqNo, row, OL_SEQNO);
				}
			} else if(col == OL_SEQNO){
				int seqNo = (Integer) orderLineTable.getValueAt(row, OL_SEQNO);
				if(!exists_seqNo(orderLineTable, row, seqNo)){
					if(seqNo > m_MaxSeqNo){
						m_MaxSeqNo = seqNo;
					}
				} else {
					ADialog.warn(m_WindowNo, panel, null, Msg.translate(Env.getCtx(), "SeqNoEx"));
					m_MaxSeqNo += 10;
					orderLineTable.setValueAt(m_MaxSeqNo, row, OL_SEQNO);
				}
			}
			//	Load Group by Product
			loadStockWarehouse(orderLineTable);
		}
		
		calculate();
	}   //  tableChanged
	
	/**
	 * Set Capacity for Weight and Volume
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/12/2013, 14:01:37
	 * @return void
	 */
	private void setFillCapacity(){
		setCapacity();
		loadCapacityField.setValue(m_LoadCapacity);
		volumeCapacityField.setValue(m_VolumeCapacity);
	}
	
	/**
	 * Set Value on Is Bulk
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/12/2013, 17:45:23
	 * @return void
	 */
	private void setIsBulk(){
		//	Set Context
		productLabel.setVisible(m_IsBulk);
		productSearch.setVisible(m_IsBulk);
		bpartnerLabel.setVisible(m_IsBulk);
		bpartnerSearch.setVisible(m_IsBulk);
	}
	
	/**
	 * Clear Data of Table
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/11/2013, 15:39:31
	 * @return void
	 */
	private void clearData(){
		orderTable.getModel().removeTableModelListener(this);
		DefaultTableModel modelP = new DefaultTableModel();
		modelP.addTableModelListener(this);
		orderTable.setModel(modelP);
		
		orderLineTable.getModel().removeTableModelListener(this);
		
		//  Set Model Line
		DefaultTableModel modelLine = new DefaultTableModel();
		orderLineTable.setModel(modelLine);
		//	Set Stock Model
		stockModel = new DefaultTableModel(null, getstockColumnNames());
		stockTable.setModel(stockModel);
		setStockColumnClass(stockTable);
		//	Parameters
		salesRegionPick.setValue(null);
		salesRepSearch.setValue(null);
		//warehouseSearch.setValue(null);
		//operationTypePick.setValue(null);
		//docTypeSearch.setValue(null);
		//docTypeTargetPick.setValue(null);
		invoiceRulePick.setValue(null);
		deliveryRulePick.setValue(null);
		dateDocField.setValue(Env.getContextAsDate(Env.getCtx(), "#Date"));
		shipDateField.setValue(Env.getContextAsDate(Env.getCtx(), "#Date"));
		entryTicketPick.setValue(null);
		shipperPick.setValue(null);
		vehicleTypePick.setValue(null);
		driverSearch.removeAllItems();
		//docTypeSearch.removeAllItems();
		//docTypeSearch.removeAllItems();
		loadCapacityField.setValue(0);
		volumeCapacityField.setValue(0);
		productSearch.setValue(null);
		bpartnerSearch.setValue(null);
	}

	/**
	 * Search Data
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/12/2013, 11:51:44
	 * @return void
	 */
	private void cmd_search(){
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
		else if(m_IsBulk){
			if(m_M_Product_ID == 0)
				msg = "@M_Product_ID@ @NotFound@";
			else if(m_C_BPartner_ID == 0)
				msg = "@C_BPartner_ID@ @NotFound@";
		}
		//	
		if(msg != null){
			ADialog.info(m_WindowNo, panel, null, Msg.parseTranslation(Env.getCtx(), msg));
			calculate();
			return;
		}
		//	Load Data
		if(loadDataOrder())
			parameterCollapsiblePanel.setCollapsed(true);
	}
	
	/**
	 * Get Values from Panel, refresh values
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/11/2013, 17:58:59
	 * @return void
	 */
	private void getPanelValues(){
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
		KeyNamePair pp = (KeyNamePair) warehouseSearch.getSelectedItem();
		m_M_Warehouse_ID = (pp != null? pp.getKey(): 0);
		//	Operation Type
		value = operationTypePick.getValue();
		m_OperationType = (String)value;
		//	Document Type
		pp = (KeyNamePair) docTypeSearch.getSelectedItem();
		m_C_DocType_ID = (pp != null? pp.getKey(): 0);
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
		m_DateDoc = dateDocField.getTimestamp();
		//	Shipment Date
		m_ShipDate = shipDateField.getTimestamp();
		//	Entry Ticket
		value = entryTicketPick.getValue();
		m_FTA_EntryTicket_ID = ((Integer)(value != null? value: 0)).intValue();
		//	Shipper
		value = shipperPick.getValue();
		m_M_Shipper_ID = ((Integer)(value != null? value: 0)).intValue();
		//	Driver
		pp = (KeyNamePair) driverSearch.getSelectedItem();
		m_FTA_Driver_ID = (pp != null? pp.getKey(): 0);
		pp = (KeyNamePair) vehicleSearch.getSelectedItem();
		//	Vehicle
		m_FTA_Vehicle_ID = (pp != null? pp.getKey(): 0);
		pp = (KeyNamePair) docTypeSearch.getSelectedItem();
		m_C_DocType_ID = (pp != null? pp.getKey(): 0);
		//	Capacity
		m_LoadCapacity = (BigDecimal) loadCapacityField.getValue();
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
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/12/2013, 16:17:41
	 * @return
	 * @return boolean
	 */
	private boolean validData(){
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
		else if(totalWeight.doubleValue() > 0){
			BigDecimal difference = (BigDecimal) (weightDiffField.getValue() != null
														? weightDiffField.getValue()
																: Env.ZERO);
			if(difference.compareTo(Env.ZERO) < 0)
				msg = "@Weight@ > @LoadCapacity@";
		} else if(totalVolume.doubleValue() > 0){
			BigDecimal difference = (BigDecimal) (volumeDiffField.getValue() != null
														? volumeDiffField.getValue()
																: Env.ZERO);
			if(difference.compareTo(Env.ZERO) < 0)
				msg = "@Volume@ > @VolumeCapacity@";
		}
		//	
		if(msg != null){
			ADialog.info(m_WindowNo, panel, null, Msg.parseTranslation(Env.getCtx(), msg));
			calculate();
			return false;
		}
		return true;
	}
	
	/**
	 * Load Order Data
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/12/2013, 11:26:11
	 * @return
	 * @return boolean
	 */
	public boolean loadDataOrder()
	{		String name = organizationPick.getName();
		Object value = organizationPick.getValue();
		m_AD_Org_ID = ((Integer)(value != null? value: 0)).intValue();
		log.config(name + "=" + value);
		
		name = salesRegionPick.getName();
		value = salesRegionPick.getValue();
		m_C_SalesRegion_ID = ((Integer)(value != null? value: 0)).intValue();
		log.config(name + "=" + value);
		
		name = salesRepSearch.getName();
		value = salesRepSearch.getValue();
		m_SalesRep_ID = ((Integer)(value != null? value: 0)).intValue();
		log.config(name + "=" + value);
		
		//	Load Data
		Vector<Vector<Object>> data = getOrderData(orderTable,m_OperationType);
		Vector<String> columnNames = getOrderColumnNames();
		
		//  Remove previous listeners
		orderTable.getModel().removeTableModelListener(this);
		
		
		//  Set Model
		DefaultTableModel modelP = new DefaultTableModel(data, columnNames);
		modelP.addTableModelListener(this);
		orderTable.setModel(modelP);
		setOrderColumnClass(orderTable);
		
		orderLineTable.getModel().removeTableModelListener(this);
		
		//  Set Model Line
		DefaultTableModel modelLine = new DefaultTableModel();
		orderLineTable.setModel(modelLine);
		//
		return !data.isEmpty();
	}
	
	/**
	 * Calculate difference
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 12/12/2013, 11:52:15
	 * @return void
	 */
	public void calculate(){
		int rows = orderLineTable.getRowCount();
		if(rows > 0){
			m_LoadCapacity = Env.ZERO;
			m_VolumeCapacity = Env.ZERO;
			totalWeight = Env.ZERO;
			totalVolume = Env.ZERO;
			BigDecimal weight = Env.ZERO;
			BigDecimal diffWeight = Env.ZERO;
			BigDecimal volume = Env.ZERO;
			BigDecimal diffVolume = Env.ZERO;
			for (int i = 0; i < rows; i++) {
				if (((Boolean)orderLineTable.getValueAt(i, 0)).booleanValue()) {
					//	Weight
					weight = (BigDecimal) (orderLineTable.getValueAt(i, OL_WEIGHT) != null
							? orderLineTable.getValueAt(i, OL_WEIGHT)
									: Env.ZERO);
					//	Add Weight
					totalWeight = totalWeight.add(weight);
					//	Volume
					volume = (BigDecimal) (orderLineTable.getValueAt(i, OL_VOLUME) != null
							? orderLineTable.getValueAt(i, OL_VOLUME)
									: Env.ZERO);
					//	Add Volume
					totalVolume = totalVolume.add(volume);
				}
			}
			//	Weight
			if(totalWeight.compareTo(Env.ZERO) > 0){
				m_LoadCapacity = (BigDecimal) (loadCapacityField.getValue() != null? loadCapacityField.getValue(): Env.ZERO);
				//	Calculate Difference
				diffWeight = m_LoadCapacity.subtract(totalWeight);
			}
			//	Volume
			if(totalVolume.compareTo(Env.ZERO) > 0){
				m_VolumeCapacity = (BigDecimal) (volumeCapacityField.getValue() != null? volumeCapacityField.getValue(): Env.ZERO);
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
	
	/**************************************************************************
	 *  Save Data
	 */
	private void saveData()
	{
		try	{	
			String msg = generateLoadOrder(trxName);
			statusBar.setStatusLine(msg);
			trx.commit();
			ADialog.info(m_WindowNo, panel, null, msg);
			shipperPick.setValue(0);
			driverSearch.removeAllItems();
			vehicleSearch.removeAllItems();
			parameterCollapsiblePanel.setCollapsed(false);
			//	Clear Data
			clearData();
			calculate();
		}
		catch (Exception e)	{
			trx.rollback();
			ADialog.error(m_WindowNo, panel, "Error", e.getLocalizedMessage());
			statusBar.setStatusLine("Error: " + e.getLocalizedMessage());
			e.printStackTrace();
			return;
		}
	}   //  saveData

}