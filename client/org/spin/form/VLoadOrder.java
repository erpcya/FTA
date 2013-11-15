/******************************************************************************
 * Copyright (C) 2009 Low Heng Sin                                            *
 * Copyright (C) 2009 Idalica Corporation                                     *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JCheckBox;
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
import org.compiere.minigrid.MiniTable;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MUOMConversion;
import org.compiere.model.X_C_Order;
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
	private VLookup 		salesRegion = null;
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
	private VDate 			fieldDateDoc = new VDate();
	/**	Shipment Date			*/
	private CLabel 			labelShipDate = new CLabel();
	private VDate 			fieldShipDate = new VDate();
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
	/**	Capacity				*/
	private JLabel 			capacityLabel = new JLabel();
	private VNumber 		capacityField = null;
	/**	UOM						*/
	private JLabel 			uomWorkLabel = new JLabel();
	private VLookup 		uomWorkPick = null;
	/**	Bulk				*/
	private JCheckBox 		isBulkCheck = new JCheckBox();
	
	/**/
	private MiniTable 		orderLineTable = new MiniTable();
	private MiniTable 		orderTable = new MiniTable();
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
	private JLabel 			differenceLabel = new JLabel();
	private VNumber 		differenceField = null;
	private JButton 		gLoadOrderButton = new JButton();

	private CPanel 			stockInfoPanel = new CPanel();
	private BorderLayout 	orderLineStockInfoLayout = new BorderLayout();
	private StatusBar 		statusBar = new StatusBar();
	
	private CButton 		selectAllButton =  new CButton(Env.getImageIcon2("SelectAll24"));
	/**	Search				*/
	private CButton 		bSearch = new CButton();
	
	private String 			uomWorkValue = null;
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
		capacityLabel.setText(Msg.translate(Env.getCtx(), "Capacity"));
		vehicleTypeLabel.setText(Msg.translate(Env.getCtx(), "FTA_VehicleType_ID"));
		entryTicketLabel.setText(Msg.translate(Env.getCtx(), "FTA_EntryTicket_ID"));
		//	Unit Measure
		uomWorkLabel.setText(Msg.translate(Env.getCtx(), "C_UOM_ID"));
		
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
		
		isBulkCheck.setText(Msg.getMsg(Env.getCtx(), "IsBulk"));
		
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
		gLoadOrderButton.setText(Msg.getMsg(Env.getCtx(), "GenerateLoadOrder"));
		gLoadOrderButton.addActionListener(this);
		differenceLabel.setText(Msg.getMsg(Env.getCtx(), "DiffWeight"));
		differenceField = new VNumber("Difference", true, true, true, DisplayType.Number, "Difference");
		differenceField.setValue(Env.ZERO);
		capacityField = new VNumber("Capacity", true, true, true, DisplayType.Number, "Capacity");
		capacityField.setValue(Env.ZERO);
		//capacityField.addActionListener(this);
		
		orderLineScrollPane.setPreferredSize(new Dimension(200, 200));
		orderScrollPane.setPreferredSize(new Dimension(200, 200));
		stockScrollPane.setPreferredSize(new Dimension(200, 200));
		
		parameterCollapsiblePanel.add(parameterPanel);
		parameterCollapsiblePanel.setTitle(Msg.translate(Env.getCtx(), "Parameters"));
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
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0));
		parameterPanel.add(salesRegionLabel, new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		parameterPanel.add(salesRegion, new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		parameterPanel.add(salesRepLabel, new GridBagConstraints(4, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		parameterPanel.add(salesRepSearch, new GridBagConstraints(5, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Storage
		parameterPanel.add(warehouseLabel, new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(warehouseSearch, new GridBagConstraints(1, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Operation Type
		parameterPanel.add(operationTypeLabel, new GridBagConstraints(2, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(operationTypePick, new GridBagConstraints(3, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Document Type
		parameterPanel.add(docTypeLabel, new GridBagConstraints(4, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(docTypeSearch, new GridBagConstraints(5, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Document Type Target
		parameterPanel.add(docTypeTargetLabel, new GridBagConstraints(0, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(docTypeTargetPick, new GridBagConstraints(1, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Invoice Rule
		parameterPanel.add(invoiceRuleLabel, new GridBagConstraints(2, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(invoiceRulePick, new GridBagConstraints(3, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Delivery Rule
		parameterPanel.add(deliveryRuleLabel, new GridBagConstraints(4, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(deliveryRulePick, new GridBagConstraints(5, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Vehicle Type
		parameterPanel.add(vehicleTypeLabel, new GridBagConstraints(0, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(vehicleTypePick, new GridBagConstraints(1, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Document Date
		parameterPanel.add(labelDateDoc, new GridBagConstraints(2, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(fieldDateDoc, new GridBagConstraints(3, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Shipment Date
		parameterPanel.add(labelShipDate, new GridBagConstraints(4, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(fieldShipDate, new GridBagConstraints(5, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Entry Ticket
		parameterPanel.add(entryTicketLabel, new GridBagConstraints(0, 4, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(entryTicketPick, new GridBagConstraints(1, 4, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Shipper
		parameterPanel.add(shipperLabel, new GridBagConstraints(2, 4, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(shipperPick, new GridBagConstraints(3, 4, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Driver
		parameterPanel.add(driverLabel, new GridBagConstraints(4, 4, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(driverSearch, new GridBagConstraints(5, 4, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Vehicle
		parameterPanel.add(vehicleLabel, new GridBagConstraints(0, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(vehicleSearch, new GridBagConstraints(1, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Capacity
		parameterPanel.add(capacityLabel, new GridBagConstraints(2, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(capacityField, new GridBagConstraints(3, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Unit Measure
		parameterPanel.add(uomWorkLabel, new GridBagConstraints(4, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(uomWorkPick, new GridBagConstraints(5, 5, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//	Search
		parameterPanel.add(bSearch, new GridBagConstraints(1, 7, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		//mainPanel.add(stockCollapsiblePanel, BorderLayout.SOUTH);
		mainPanel.add(stockInfoPanel, BorderLayout.SOUTH);
		
		//	Botton Panel
		loadOrderPanel.add(selectAllButton, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 5, 5, 5), 0, 0));
		loadOrderPanel.add(differenceLabel, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 0), 0, 0));
		loadOrderPanel.add(differenceField, new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		loadOrderPanel.add(gLoadOrderButton, new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		orderPanel.add(orderLabel, BorderLayout.NORTH);
		orderPanel.add(orderInfo, BorderLayout.SOUTH);
		orderPanel.add(orderScrollPane, BorderLayout.CENTER);
		orderScrollPane.getViewport().add(orderTable, null);
		orderLinePanel.add(orderLineLabel, BorderLayout.NORTH);
		
		// Panel de Informacion y del Stock del Producto
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
			
		// Organization filter selection
		int AD_Column_ID = 69835;		//	FTA_LoadOrer.AD_Org_ID
		MLookup lookupOrg = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		organizationPick = new VLookup("AD_Org_ID", true, false, true, lookupOrg);
		//organizationPick.setValue(Env.getAD_Org_ID(Env.getCtx()));
		organizationPick.addVetoableChangeListener(this);
		
		AD_Column_ID = 1823;		//	C_SalesRegion.C_SalesRegion_ID
		MLookup lookupWar = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		salesRegion = new VLookup("C_SalesRegion_ID", false, false, true, lookupWar);
		//salesRegion.setValue(Env.getAD_Org_ID(Env.getCtx()));
		salesRegion.addVetoableChangeListener(this);
		
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
		invoiceRulePick = new VLookup("InvoiceRule", true, false, true, lookupIR);
		invoiceRulePick.setValue(X_C_Order.INVOICERULE_Immediate);
		invoiceRulePick.addVetoableChangeListener(this);
		
		//	Entry Ticket
		AD_Column_ID = 69874;		//  FTA_LoadOrder.FTA_EntryTicket_ID
		MLookup lookupET = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Search);
		entryTicketPick = new VLookup("FTA_EntryTicket_ID", false, false, true, lookupET);
		entryTicketPick.addVetoableChangeListener(this);
		
		//  Shipper
		AD_Column_ID = 69852;		//  FTA_LoadOrder.M_Shipper_ID
		MLookup lookupSP = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.TableDir);
		shipperPick = new VLookup("M_Shipper_ID", false, false, true, lookupSP);
		//shipperPick.setValue(Env.getAD_Org_ID(Env.getCtx()));
		shipperPick.addVetoableChangeListener(this);
		
		AD_Column_ID = 69873;		//  FTA_LoadOrder.DeliveryRule
		MLookup lookupDR = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.List);
		deliveryRulePick = new VLookup("DeliveryRule", true, false, true, lookupDR);
		deliveryRulePick.setValue(X_C_Order.DELIVERYRULE_Availability);
		deliveryRulePick.addVetoableChangeListener(this);
		
		//  Vehicle Type
		AD_Column_ID = 69851;		//  FTA_LoadOrder.FTA_VehicleType_ID
		MLookup lookupVT = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Table);
		vehicleTypePick = new VLookup("FTA_VehicleType_ID", false, false, true, lookupVT);
		vehicleTypePick.addVetoableChangeListener(this);
		
		//  Working Unit Measure
		AD_Column_ID = 2348;		//  AD_ClientInfo.C_UOM_Weight_ID
		MLookup lookupUV = MLookupFactory.get(Env.getCtx(), m_WindowNo, 0, AD_Column_ID, DisplayType.Table);
		uomWorkPick = new VLookup("C_UOM_ID", true, true, true, lookupUV);
		uomWorkPick.addVetoableChangeListener(this);	
		
		
		//  Translation
		statusBar.setStatusLine(Msg.getMsg(Env.getCtx(), "FTA_LoadOrder_ID"));
		statusBar.setStatusDB("");
		
		//	Conductor
		driverSearch.addActionListener(this);
		
		//	Vehiculo
		vehicleSearch.addActionListener(this);
		
		//	Document Type Order
		docTypeSearch.addActionListener(this);
		
		//	Warehouse
		warehouseSearch.addActionListener(this);
		//	Bulk
		isBulkCheck.addActionListener(this);
		
		//	Search
		bSearch.addActionListener(this);
		
		//	Select All Items
		selectAllButton.addActionListener(this);
		
		
		//	Date
		fieldDateDoc.setMandatory(true);
		fieldDateDoc.setValue(new Timestamp(System.currentTimeMillis()));
		fieldShipDate.setMandatory(true);
		fieldShipDate.setValue(new Timestamp(System.currentTimeMillis()));
		
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
		if(e.getSource().equals(vehicleSearch)){
			KeyNamePair pp = (KeyNamePair) vehicleSearch.getSelectedItem();
			int v_FTA_Vehicle_ID = (pp != null? pp.getKey(): 0);
			if(v_FTA_Vehicle_ID != 0) {
				/*MXXVehiculo vehiculo = new MXXVehiculo(Env.getCtx(), v_FTA_Vehicle_ID, null);
				capacityField.setValue(vehiculo.getCapacity());
				m_XX_Vehicle_UOM_ID = vehiculo.getC_UOM_ID();
				uomVehiclePick.setValue(m_XX_Vehicle_UOM_ID);
				calculate();*/
			} else {
				//capacityField.setReadWrite(false);
				capacityField.setValue(Env.ZERO);
			}
		} else if(e.getSource().equals(selectAllButton)) {
			int rows = orderLineTable.getRowCount();
			for (int i = 0; i < rows; i++) {
				orderLineTable.setValueAt(true, i, SELECT);
			}			
		} else if(e.getSource().equals(docTypeSearch)){
			KeyNamePair pp = (KeyNamePair) docTypeSearch.getSelectedItem();
			m_C_DocType_ID = (pp != null? pp.getKey(): 0);
			setValueDocType(trxName);
			
			//loadOrder();
			//calculate();
			clearData();
		} else if(e.getSource().equals(warehouseSearch)){
			KeyNamePair pp = (KeyNamePair) warehouseSearch.getSelectedItem();
			m_M_Warehouse_ID = (pp != null? pp.getKey(): 0);
			clearData();
		} /*else if(e.getSource().equals(warehouseSearch_To)){
			KeyNamePair pp = (KeyNamePair) warehouseSearch_To.getSelectedItem();
			m_M_Locator_ID = (pp != null? pp.getKey(): 0);
			clearData();
		} else if(e.getSource().equals(locatorToSearch)){
			KeyNamePair pp = (KeyNamePair) locatorToSearch.getSelectedItem();
			m_M_LocatorTo_ID = (pp != null? pp.getKey(): 0);
		}*/ else if(e.getSource().equals(gLoadOrderButton)){
			if(validData()){
				if (ADialog.ask(m_WindowNo, panel, "SaveQLoadOrder")){
					saveData();
				}
			}
		} else if (e.getSource() == bSearch)
			cmd_search();
	}   //  actionPerformed
	
	/**
	 * Limpia los datos de las tablas
	 * @author Yamel Senih 10/12/2012, 11:53:39
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
		//selectAllAction.setPressed(false);
	}

	/**
	 * Busca los datos segun los parametros
	 */
	private void cmd_search(){
		getPanelValues();
		if(m_C_UOM_ID != 0){
			//if(m_XX_Vehicle_UOM_ID != 0){
				if(m_C_DocType_ID != 0){
					//rateCapacity = MUOMConversion.getRate(Env.getCtx(), m_XX_Vehicle_UOM_ID, m_C_UOM_ID);
					if(rateCapacity != null){
						loadOrder();
						//	Add Automatic Collapsed
						parameterCollapsiblePanel.setCollapsed(true);
					} else {
						/*ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotConversion") + " " 
								+ Msg.translate(Env.getCtx(), "of") + " "
								+ uomVehiclePick.getDisplay() + " " 
								+ Msg.translate(Env.getCtx(), "to") + " " 
								+ uomWorkPick.getDisplay()
								);*/
					}
				} else {
					ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotDocTypeOrder"));
					//loadOrder();
					calculate();
				}
			} else {
				ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotVehicleUOM"));
				//loadOrder();
				calculate();
			}
		//} else {
			//ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotWorkUOM"));
			//loadOrder();
			//calculate();
		//}
	}
	
	/**
	 * Obtiene los datos del Panel
	 * @author Yamel Senih 10/12/2012, 11:50:18
	 * @return void
	 */
	private void getPanelValues(){
		Object value = shipperPick.getValue();
		m_M_Shipper_ID = ((Integer)(value != null? value: 0)).intValue();
		//value = uomVehiclePick.getValue();
		//m_XX_Vehicle_UOM_ID = ((Integer)(value != null? value: 0)).intValue();
		//value = uomWorkPick.getValue();
		m_C_UOM_ID = ((Integer)(value != null? value: 0)).intValue();
		String display = uomWorkPick.getDisplay();
		uomWorkValue = (display != null? " " + Msg.translate(Env.getCtx(), "In") + " " + display: "");
		KeyNamePair pp = (KeyNamePair) driverSearch.getSelectedItem();
		m_FTA_Driver_ID = (pp != null? pp.getKey(): 0);
		pp = (KeyNamePair) vehicleSearch.getSelectedItem();
		m_FTA_Vehicle_ID = (pp != null? pp.getKey(): 0);
		pp = (KeyNamePair) docTypeSearch.getSelectedItem();
		m_C_DocType_ID = (pp != null? pp.getKey(): 0);
		pp = (KeyNamePair) warehouseSearch.getSelectedItem();
		m_M_Warehouse_ID = (pp != null? pp.getKey(): 0);
		pp = (KeyNamePair) warehouseSearch.getSelectedItem();
		setValueDocType(trxName);
	}
	
	/**
	 * Valida los datos antes de generar la orden de carga
	 * @author Yamel Senih 03/04/2012, 18:26:08
	 * @return boolean
	 */
	private boolean validData(){
		getPanelValues();
		/*if(m_AD_Org_ID != 0){
			if(m_M_Shipper_ID != 0){
				if(m_FTA_Driver_ID != 0){
					if(m_FTA_Vehicle_ID != 0){
						if(m_C_UOM_ID != 0){
							if(m_C_DocType_ID != 0){
								if(m_M_Warehouse_ID != 0){
									if(m_M_Locator_ID != 0){
										if(m_M_Locator_ID != m_M_LocatorTo_ID){
											if(totalWeight.doubleValue() > 0){
												BigDecimal difference = (BigDecimal) (differenceField.getValue() != null? differenceField.getValue(): Env.ZERO);
												if(difference.compareTo(Env.ZERO) >= 0){
													if(m_XXIsInternalLoad){
														if(m_M_LocatorTo_ID != 0){
															return true;
														} else {
															ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotLocatorTo"));
														}
													} else {
														return true;
													}
												} else {
													ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "CarNotCapacity"));
												}	
											} else {
												ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "SumZero"));
											}
										} else {
											ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "LocatorsWheight"));
										}
									} else {
										ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotWarehouse"));
									}
								} else {
									ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotLocator"));
								}
							} else {
								ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotDocTypeOrder"));
							}
						} else {
							ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotWorkUOM"));
						}
					} else {
						ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotCar"));
					}
				} else {
					ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotBPartner"));
				}
			} else {
				ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotShipper"));
			}	
		} else {
			ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotOrg"));
		}*/
		return false;
	}
	
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
			if(m_C_UOM_ID != 0){
				if(0 != 0){
					if(m_C_DocType_ID != 0){
						if(m_IsBulk && moreOneSelect(orderTable)){
							ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "IsBulkMaxOne"));
							orderTable.setValueAt(false, row, SELECT);
							//loadOrder();
							//calculate();
						} else {
							//rateCapacity = MUOMConversion.getRate(Env.getCtx(), m_XX_Vehicle_UOM_ID, m_C_UOM_ID);
							if(rateCapacity != null){
								StringBuffer sql = getQueryLine(orderTable);
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
								ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotConversion") + " " 
										+ Msg.translate(Env.getCtx(), "of") + " "
										//+ uomVehiclePick.getDisplay() + " " 
										+ Msg.translate(Env.getCtx(), "to") + " " 
										+ uomWorkPick.getDisplay()
										);
								//loadOrder();
								calculate();
							}
						}
					} else {
						ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotDocTypeOrder"));
						//loadOrder();
						calculate();
					}
				} else {
					ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotVehicleUOM"));
					//loadOrder();
					calculate();
				}
			} else {
				ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "NotWorkUOM"));
				//loadOrder();
				calculate();
			}
			
		}else if(isOrderLine){
			//int row = e.getFirstRow();
			//int col = e.getColumn();
			if(col == OL_QTY_SET){	//Qty
				BigDecimal qty = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY);
				BigDecimal qtySet = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_SET);
				BigDecimal qtyOrdered = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_ORDERED);
				BigDecimal qtyOrderLine = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_LOAD_ORDER_LINE);
				BigDecimal qtyDelivered = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_DELIVERED);
				
				KeyNamePair pr = (KeyNamePair) orderLineTable.getValueAt(row, OL_PRODUCT);
				
				int m_M_Product_ID = pr.getKey();
				
				//BigDecimal weight = (BigDecimal) orderLineTable.getValueAt(row, OL_QTY_SET);
				
				BigDecimal rateQty = MUOMConversion.getProductRateFrom(Env.getCtx(), m_M_Product_ID, m_C_UOM_ID);
				BigDecimal rateQtySet = MUOMConversion.getProductRateTo(Env.getCtx(), m_M_Product_ID, m_C_UOM_ID);
				
				if(rateQty != null){
					orderLineTable.setValueAt(qtySet.multiply(rateQty).setScale(2, BigDecimal.ROUND_HALF_UP), row, OL_QTY);
					/* Old
					 * if(qtySet.multiply(rateQty).
							compareTo(qtyOrdered.
									subtract(qtyDelivered).
									subtract(qtyOrderLine)) > 0)
					 */
					
					if(qtySet.multiply(rateQty)
							.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue() 
							>
							qtyOrdered
							.subtract(qtyDelivered)
							.subtract(qtyOrderLine)
							.setScale(2, BigDecimal.ROUND_HALF_UP)
							.doubleValue()){
						
						ADialog.warn(m_WindowNo, panel, Msg.translate(Env.getCtx(), "QtyEx"));
						qty = qtyOrdered
								.subtract(qtyDelivered)
								.subtract(qtyOrderLine)
								.setScale(2, BigDecimal.ROUND_HALF_UP);
						orderLineTable.setValueAt(qty, row, OL_QTY);
						orderLineTable.setValueAt(qty
								.multiply(rateQtySet), row, OL_QTY_SET);
					} else if(qtySet.compareTo(Env.ZERO) <= 0){
						ADialog.warn(m_WindowNo, panel, Msg.translate(Env.getCtx(), "QtyLessZero"));
						qty = qtyOrdered
								.subtract(qtyDelivered)
								.subtract(qtyOrderLine)
								.setScale(2, BigDecimal.ROUND_HALF_UP);
						qtySet = qty
								.multiply(rateQty)
								.setScale(2, BigDecimal.ROUND_HALF_UP);
						orderLineTable.setValueAt(qtySet, row, OL_QTY_SET);
						orderLineTable.setValueAt(qty, row, OL_QTY);
					}
				} 
			} else if(col == SELECT){
				//	Select One
				if(m_IsBulk && moreOneSelect(orderLineTable)){
					ADialog.info(m_WindowNo, panel, Msg.translate(Env.getCtx(), "IsBulkMaxOneLine"));
					orderLineTable.setValueAt(false, row, SELECT);
				} else {
					boolean select = (Boolean) orderLineTable.getValueAt(row, col);
					if(select){
						m_MaxSeqNo += 10;
						orderLineTable.setValueAt(m_MaxSeqNo, row, OL_SEQNO);
					}
					//System.out.println("VLoadOrder.tableChanged() " + select);
					//	Agrupado de Productos
					//loadProductsStock(orderLineTable, row, select);
				}
				
				
			} else if(col == OL_SEQNO){
				int seqNo = (Integer) orderLineTable.getValueAt(row, OL_SEQNO);
				if(!exists_seqNo(orderLineTable, row, seqNo)){
					if(seqNo > m_MaxSeqNo){
						m_MaxSeqNo = seqNo;
					}
				} else {
					ADialog.warn(m_WindowNo, panel, Msg.translate(Env.getCtx(), "SeqNoEx"));
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
				name.equals("SalesRep_ID") ||
				name.equals("XX_Work_UOM_ID")) {
			//loadOrder();
			clearData();
		} else if(name.equals("AD_Org_ID")){
			m_AD_Org_ID = ((Integer)(value != null? value: 0)).intValue();
			ArrayList<KeyNamePair> data = getDataDocumentOrder();
			m_C_DocType_ID = loadCombo(docTypeSearch, data);
			if (m_C_DocType_ID != 0) {
				setValueDocType(trxName);
			} 
			data = getDataWarehouse();
			m_M_Warehouse_ID = loadCombo(warehouseSearch, data);
			if(m_M_Warehouse_ID != 0){
				data = getDataLocator();
				//m_M_Locator_ID = loadCombo(warehouseSearch, data);
			}
			
		} else if(name.equals("M_Shipper_ID")){
			m_M_Shipper_ID = ((Integer)(value != null? value: 0)).intValue();
			ArrayList<KeyNamePair> data = getDataDriver();
			m_FTA_Driver_ID = loadCombo(driverSearch, data);
			//	Vehicle
			data = getDataCar();
			m_FTA_Vehicle_ID = loadCombo(vehicleSearch, data);
			//	Unit Measure
			if(m_FTA_Vehicle_ID != 0) {//System.err.println(m_FTA_Vehicle_ID);
				/*MXXVehiculo vehiculo = new MXXVehiculo(Env.getCtx(), m_FTA_Vehicle_ID, null);
				capacityField.setValue(vehiculo.getCapacity());
				uomVehiclePick.setValue(vehiculo.getC_UOM_ID());*/
			} else {
				//capacityField.setReadWrite(false);
				capacityField.setValue(Env.ZERO);
			}
		}
		calculate();
		
	}   //  vetoableChange
	
	public void loadOrder()
	{		//System.out.println("VLoadOrder.loadOrder()");

		String name = organizationPick.getName();
		Object value = organizationPick.getValue();
		m_AD_Org_ID = ((Integer)(value != null? value: 0)).intValue();
		log.config(name + "=" + value);
		
		name = salesRegion.getName();
		value = salesRegion.getValue();
		m_C_SalesRegion_ID = ((Integer)(value != null? value: 0)).intValue();
		log.config(name + "=" + value);
		
		name = salesRepSearch.getName();
		value = salesRepSearch.getValue();
		m_SalesRep_ID = ((Integer)(value != null? value: 0)).intValue();
		log.config(name + "=" + value);
		
		name = uomWorkPick.getName();
		value = uomWorkPick.getValue();
		String display = uomWorkPick.getDisplay();
		m_C_UOM_ID = ((Integer)(value != null? value: 0)).intValue();
		uomWorkValue = (display != null? " " + Msg.translate(Env.getCtx(), "In") + " " + display: "");
		log.config(name + "=" + value);
		
		/*name = docTypeOrderPick.getName();
		value = docTypeOrderPick.getValue();
		m_C_DocTypeOrder_ID = ((Integer)(value != null? value: 0)).intValue();
		log.config(name + "=" + value);
		setValueDocType(trxName);*/
		
		//	Load Data
		Vector<Vector<Object>> data = getOrderData(m_AD_Org_ID, m_C_SalesRegion_ID, 
				m_SalesRep_ID, m_C_DocType_ID, 
				orderTable);
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
	}
	
	/**
	 * 
	 * Calcula la diferencia de pesos y el peso total
	 *
	 */
	public void calculate(){
		int rows = orderLineTable.getRowCount();
		if(rows > 0){
			m_Capacity = Env.ZERO;
			totalWeight = Env.ZERO;
			BigDecimal weight = Env.ZERO;
			BigDecimal difference = Env.ZERO;
			for (int i = 0; i < rows; i++) {
				if (((Boolean)orderLineTable.getValueAt(i, 0)).booleanValue()) {
					weight = (BigDecimal) (orderLineTable.getValueAt(i, OL_QTY_SET) != null
							? orderLineTable.getValueAt(i, OL_QTY_SET)
									: Env.ZERO);
					totalWeight = totalWeight.add(weight);
				}
			}
			if(totalWeight.compareTo(Env.ZERO) > 0){
				m_Capacity = (BigDecimal) (capacityField.getValue() != null? capacityField.getValue(): Env.ZERO);
				if(rateCapacity != null){
					difference = m_Capacity.multiply(rateCapacity).subtract(totalWeight);
				}
			}
			differenceLabel.setText(Msg.getMsg(Env.getCtx(), "DiffWeight") + uomWorkValue);
			differenceField.setValue(difference.doubleValue());
			orderLineInfo.setText(
					"(" + Msg.translate(Env.getCtx(), "OrdersSelected")
					+ " = " +  m_RowsSelected
					+ ") "
					+ Msg.translate(Env.getCtx(), "Total") 
					+ uomWorkValue
					+ " = " + totalWeight.doubleValue());
		} else {
			differenceLabel.setText(Msg.getMsg(Env.getCtx(), "DiffWeight"));
			differenceField.setValue(Env.ZERO);
			orderLineInfo.setText(Msg.translate(Env.getCtx(), "OrderLineSum") + " = " + Env.ZERO);
		}
	}
	
	/**************************************************************************
	 *  Save Data
	 */
	public void saveData()
	{
		try	{	
			String msg = generateLoatOrder(orderLineTable, fieldDateDoc.getTimestamp(), fieldShipDate.getTimestamp(), trxName);
			statusBar.setStatusLine(msg);
			trx.commit();
			ADialog.info(m_WindowNo, panel, msg);
			shipperPick.setValue(0);
			//uomVehiclePick.setValue(0);
			uomWorkPick.setValue(0);
			driverSearch.removeAllItems();
			vehicleSearch.removeAllItems();
			parameterCollapsiblePanel.setCollapsed(false);
			//locatorToSearch.removeAllItems();
			//loadOrder();
			clearData();
			calculate();
		}
		catch (Exception e)	{
			trx.rollback();
			ADialog.error(m_WindowNo, panel, "Error", e.getLocalizedMessage());
			statusBar.setStatusLine("Error" + e.getLocalizedMessage());
			e.printStackTrace();
			return;
		}
	}   //  saveData

}