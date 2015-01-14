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

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Checkbox;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.Panel;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.Textbox;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.editor.WDateEditor;
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
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.TrxRunnable;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zkex.zul.Borderlayout;
import org.zkoss.zkex.zul.Center;
import org.zkoss.zkex.zul.North;
import org.zkoss.zkex.zul.South;
import org.zkoss.zul.Space;

public class WFarmerCreditAllocation extends FarmerCreditAllocation
	implements IFormController, ValueChangeListener, EventListener, WTableModelListener
{
	/**
	 * 
	 * *** Constructor ***
	 * @author <a href="mailto:raulmunozn@gmail.com">Raul Muñoz</a> 14/01/2015, 08:57:51
	 */
	public WFarmerCreditAllocation() {
		trxName	= Trx.createTrxName(null);
		Env.setContext(Env.getCtx(), form.getWindowNo(), "IsSOTrx", "Y");   //  defaults to no
		Trx.get(trxName, true);
		try	{
			super.dynInit();
			dynInit();
			zkInit();
			calculate();
		}
		catch(Exception e) {
		}
	}

	/**	Window No				*/
	private int         		m_WindowNo = 0;
	private String				trxName	= null;
	/**	Custom Form				*/
	private CustomForm 			form = new CustomForm();
	/**	Panels					*/
	private Borderlayout 		mainLayout = new Borderlayout();
	private Panel				parameterPanel = new Panel();
	private Panel				allocationPanel = new Panel();
	private Grid 				parameterLayout = GridFactory.newGridLayout();
	private Borderlayout 		infoPanel = new Borderlayout();
	private Panel 				liquidationPanel = new Panel();
	private Panel 				invoicePanel = new Panel();
	private Borderlayout 		liquidationLayout = new Borderlayout();
	private Borderlayout 		invoiceLayout = new Borderlayout();
	private Grid 				allocationLayout = GridFactory.newGridLayout();
	private Panel 				southPanel = new Panel();
	/**	BPartner				*/
	private Label 				bpartnerLabel = new Label();
	private WSearchEditor 		bpartnerSearch = null;
	/**	Invoice					*/
	private WListbox 			invoiceTable = ListboxFactory.newDataTable();
	private Label 				invoiceLabel = new Label();
	private Label 				invoiceInfo = new Label();
	/**	Liquidation				*/
	private WListbox 			liquidationTable = ListboxFactory.newDataTable();
	private Label 				liquidationLabel = new Label();
	private Label 				liquidationInfo = new Label();
	/**	Diference				*/
	private Label 				differenceLabel = new Label();
	private Textbox 			differenceField = new Textbox();
	/**	Currency				*/
	private Label 				currencyLabel = new Label();
	private WTableDirEditor		currencyPick = null;
	private Checkbox 			multiCurrency = new Checkbox();
	private Label 				allocCurrencyLabel = new Label();
	/**	Date					*/
	private Label 				dateLabel = new Label();
	private WDateEditor 		dateField = new WDateEditor();
	/**	Auto Write				*/
	private Checkbox 			autoWriteOff = new Checkbox();
	/**	Organization			*/
	private Label 				organizationLabel = new Label();
	private WTableDirEditor 	organizationPick = null;
	/**	Farmer Credit			*/
	private Label				farmerCreditLabel = new Label();
	private Listbox				farmerCreditSearch = ListboxFactory.newDropdownListbox();
	/**	Allocate				*/
	private Button 			   	allocateButton = new Button();
	
	/**
	 *  Static Init
	 *  @throws Exception
	 */
	private void zkInit() throws Exception
	{
		form.appendChild(mainLayout);
		mainLayout.setWidth("99%");
		mainLayout.setHeight("100%");
		
		dateLabel.setText(Msg.getMsg(Env.getCtx(), "Date"));
		dateLabel.setTooltiptext(Msg.getMsg(Env.getCtx(), "AllocDate", false));
		autoWriteOff.setSelected(false);
		autoWriteOff.setText(Msg.getMsg(Env.getCtx(), "AutoWriteOff", true));
		autoWriteOff.setTooltiptext(Msg.getMsg(Env.getCtx(), "AutoWriteOff", false));
		farmerCreditLabel.setText(Msg.translate(Env.getCtx(), "FTA_FarmerCredit_ID"));
		parameterPanel.appendChild(parameterLayout);
		allocationPanel.appendChild(allocationLayout);
		bpartnerLabel.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		liquidationLabel.setFocus(false);
		liquidationLabel.setText(" " + Msg.translate(Env.getCtx(), "FTA_FarmerLiquidation_ID"));
		invoiceLabel.setFocus(false);
		invoiceLabel.setText(" " + Msg.translate(Env.getCtx(), "C_Invoice_ID"));
		liquidationPanel.appendChild(liquidationLayout);
		invoicePanel.appendChild(invoiceLayout);
		invoiceInfo.setText(".");
		liquidationInfo.setText(".");
		differenceLabel.setText(Msg.getMsg(Env.getCtx(), "Difference"));
		differenceField.setDisabled(true);
		differenceField.setText("0");
		allocateButton.setLabel(Msg.getMsg(Env.getCtx(), "Process"));
		allocateButton.addActionListener(this);
		currencyLabel.setText(Msg.translate(Env.getCtx(), "C_Currency_ID"));
		multiCurrency.setText(Msg.getMsg(Env.getCtx(), "MultiCurrency"));
		multiCurrency.addActionListener(this);
		allocCurrencyLabel.setText(".");
		//Org filter
		organizationLabel.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		
		North north = new North();
		north.setStyle("border: none");
		mainLayout.appendChild(north);
		north.appendChild(parameterPanel);
		
		Rows rows = null;
		Row row = null;
		
		parameterLayout.setWidth("800px");
		rows = parameterLayout.newRows();
		row = rows.newRow();
		row.appendChild(organizationLabel.rightAlign());
		row.appendChild(organizationPick.getComponent());
		//	Date
		row.appendChild(dateLabel.rightAlign());
		row.appendChild(dateField.getComponent());
		//	Farmer
		row = rows.newRow();
		row.appendChild(bpartnerLabel.rightAlign());
		row.appendChild(bpartnerSearch.getComponent());
		//	Farmer Credit
		row.appendChild(farmerCreditLabel.rightAlign());
		row.appendChild(farmerCreditSearch);
		//	Currency
		row = rows.newRow();
		row.appendChild(currencyLabel.rightAlign());
		row.appendChild(currencyPick.getComponent());
		//	MultiCurrency
		row.appendChild(new Space());
		row.appendChild(multiCurrency);

		row = rows.newRow();
		row.appendChild(new Space());
		row.appendChild(autoWriteOff);
		
		South south = new South();
		south.setStyle("border: none");
		mainLayout.appendChild(south);
		south.appendChild(southPanel);
		southPanel.appendChild(allocationPanel);
		allocationPanel.appendChild(allocationLayout);
		allocationLayout.setWidth("400px");
		rows = allocationLayout.newRows();
		row = rows.newRow();
		row.appendChild(differenceLabel.rightAlign());
		row.appendChild(allocCurrencyLabel);
		row.appendChild(differenceField);
		row.appendChild(allocateButton);
		
		liquidationPanel.appendChild(liquidationLayout);
		liquidationPanel.setWidth("100%");
		liquidationPanel.setHeight("100%");
		liquidationLayout.setWidth("100%");
		liquidationLayout.setHeight("100%");
		liquidationLayout.setStyle("border: none");
		
		invoicePanel.appendChild(invoiceLayout);
		invoicePanel.setWidth("100%");
		invoicePanel.setHeight("100%");
		invoiceLayout.setWidth("100%");
		invoiceLayout.setHeight("100%");
		invoiceLayout.setStyle("border: none");
		
		north = new North();
		north.setStyle("border: none");
		liquidationLayout.appendChild(north);
		north.appendChild(liquidationLabel);
		south = new South();
		south.setStyle("border: none");
		liquidationLayout.appendChild(south);
		south.appendChild(liquidationInfo.rightAlign());
		Center center = new Center();
		liquidationLayout.appendChild(center);
		center.appendChild(liquidationTable);
		liquidationTable.setWidth("99%");
		liquidationTable.setHeight("99%");
		center.setStyle("border: none");
		
		north = new North();
		north.setStyle("border: none");
		invoiceLayout.appendChild(north);
		north.appendChild(invoiceLabel);
		south = new South();
		south.setStyle("border: none");
		invoiceLayout.appendChild(south);
		south.appendChild(invoiceInfo.rightAlign());
		center = new Center();
		invoiceLayout.appendChild(center);
		center.appendChild(invoiceTable);
		invoiceTable.setWidth("99%");
		invoiceTable.setHeight("99%");
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
		north.appendChild(liquidationPanel);
		north.setSplittable(true);
		center = new Center();
		center.setStyle("border: none");
		center.setFlex(true);
		infoPanel.appendChild(center);
		center.appendChild(invoicePanel);
	}   //  jbInit

	/**
	 *  Dynamic Init (prepare dynamic fields)
	 *  @throws Exception if Lookups cannot be initialized
	 */
	public void dynInit() throws Exception
	{
		//  Currency
		int AD_Column_ID = 3505;    //  C_Invoice.C_Currency_ID
		MLookup lookupCur = MLookupFactory.get (Env.getCtx(), form.getWindowNo(), 0, AD_Column_ID, DisplayType.TableDir);
		currencyPick = new WTableDirEditor("C_Currency_ID", true, false, true, lookupCur);
		currencyPick.setValue(new Integer(m_C_Currency_ID));
		currencyPick.addValueChangeListener(this);

		// Organization filter selection
		AD_Column_ID = 839; //C_Period.AD_Org_ID (needed to allow org 0)
		MLookup lookupOrg = MLookupFactory.get(Env.getCtx(), form.getWindowNo(), 0, AD_Column_ID, DisplayType.TableDir);
		organizationPick = new WTableDirEditor("AD_Org_ID", true, false, true, lookupOrg);
		organizationPick.setValue(Env.getAD_Org_ID(Env.getCtx()));
		organizationPick.addValueChangeListener(this);
			
		//  BPartner
		AD_Column_ID = 3499;        //  C_Invoice.C_BPartner_ID
		MLookup lookupBP = MLookupFactory.get (Env.getCtx(), form.getWindowNo(), 0, AD_Column_ID, DisplayType.Search);
		bpartnerSearch = new WSearchEditor("C_BPartner_ID", true, false, true, lookupBP);
		bpartnerSearch.addValueChangeListener(this);

		//  Date set to Login Date
		dateField.setValue(Env.getContextAsDate(Env.getCtx(), "#Date"));
		dateField.addValueChangeListener(this);
		//	
		farmerCreditSearch.addEventListener("onChange", this);
	}   //  dynInit
	
	/**
	 * Load BPartner
	 * @author <a href="mailto:raulmunozn@gmail.com">Raul Muñoz</a> 14/01/2015, 09:10:40
	 * @return void
	 */
	public void loadBPartner()
	{
		Vector<Vector<Object>> data = getLiquidationData(multiCurrency.isSelected(), dateField.getValue(), liquidationTable);
		Vector<String> columnNames = getLiquidationColumnNames(multiCurrency.isSelected());
		
		//  Remove previous listeners
		liquidationTable.getModel().removeTableModelListener(this);
		
		//  Set Model
		ListModelTable modelP = new ListModelTable(data);
		modelP.addTableModelListener(this);
		liquidationTable.setData(modelP,columnNames);
		setLiquidationColumnClass(liquidationTable, multiCurrency.isSelected());
		
		//	Get Data
		data = getInvoiceData(multiCurrency.isSelected(), dateField.getValue(), invoiceTable);
		columnNames = getInvoiceColumnNames(multiCurrency.isSelected());
		
		//  Remove previous listeners
		invoiceTable.getModel().removeTableModelListener(this);

		//  Set Model
		ListModelTable modelI = new ListModelTable(data);
		modelI.addTableModelListener(this);
		invoiceTable.setData(modelI,columnNames);
		setInvoiceColumnClass(invoiceTable, multiCurrency.isSelected());
		
		calculate(multiCurrency.isSelected());
		
		//  Calculate Totals
		calculate();
	}
	
	/**
	 * Calculate Diference
	 * @author <a href="mailto:raulmunozn@gmail.com">Raul Muñoz</a> 14/01/2015, 09:12:30
	 * @return void
	 */
	public void calculate()
	{
		allocDate = null;
		
		liquidationInfo.setText(calculateLiquidation(liquidationTable, multiCurrency.isSelected()));
		invoiceInfo.setText(calculateInvoice(invoiceTable, multiCurrency.isSelected()));
		
		//  Set Allocation Currency
		allocCurrencyLabel.setText(currencyPick.getDisplay());
		//  Difference
		totalDiff = totalPay.subtract(totalInv);
		differenceField.setText(format.format(totalDiff));
		
		if (totalDiff.compareTo(new BigDecimal(0.0)) == 0){
			allocateButton.setEnabled(true);
			allocateButton.addActionListener(this);
		}
		else
			allocateButton.setEnabled(false);
	}
	
	/**
	 * Save Data
	 * @author <a href="mailto:raulmunozn@gmail.com">Raul Muñoz</a> 14/01/2015, 09:13:27
	 * @return void
	 */
	public void saveData()
	{
		if (m_AD_Org_ID > 0)
			Env.setContext(Env.getCtx(), m_WindowNo, "AD_Org_ID", m_AD_Org_ID);
		else
			Env.setContext(Env.getCtx(), m_WindowNo, "AD_Org_ID", "");
		final String[] success = new String[] { "a" };
		final TrxRunnable r = new TrxRunnable() {

			public void run(String trxName) {
				success[0] = saveData(m_WindowNo, dateField.getValue(), liquidationTable, invoiceTable, trxName);
				FDialog.info(m_WindowNo, parameterPanel, null, success[0]);
			}
		};
		try
		{
			Trx.run(r);
				
		}
		catch (Throwable e)
		{
			FDialog.error(m_WindowNo, parameterPanel, "Error", e.getLocalizedMessage());
			return;
		}
	}   //  saveData

	/**
	 * Load Data from Farmer Credit
	 * @author <a href="mailto:Raulmunozn@gmail.com">Raul Muñoz</a> 07/01/2014, 15:56:12
	 * @param comboSearch
	 * @param p_C_BPartner_ID
	 * @return
	 * @return int
	 */
	protected ArrayList<KeyNamePair> w_loadFarmerData(int p_C_BPartner_ID) {
		log.config("getData");
		ArrayList<KeyNamePair> pp = new ArrayList<KeyNamePair>();
		String sql = "SELECT cr.FTA_FarmerCredit_ID, "
				//+ "l.Name || ' - ' || "
				+ "cr.DocumentNo  || CASE WHEN cd.Description IS NOT NULL THEN  '_' || COALESCE(cd.Description,'') ELSE '' END " +
				"FROM FTA_FarmerCredit cr " +
				"INNER JOIN FTA_CreditDefinition cd ON(cd.FTA_CreditDefinition_ID = cr.FTA_CreditDefinition_ID) " +
				//"INNER JOIN M_Lot l ON(l.M_Lot_ID = cd.PlantingCycle_ID) " +
				"WHERE cr.C_BPartner_ID = ? " +
				//	Dixon Martinez 20-05-2014 
				//	Add support for Parent Farmer Credit
				//	"AND cr.Parent_FarmerCredit_ID IS NULL " +					
				//	End Dixon Martinez
				"AND cr.DocStatus = 'CO'";
		try	{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, p_C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				pp.add(new KeyNamePair(rs.getInt(1), rs.getString(2)));
			}
			DB.close(rs, pstmt);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pp;
	}
	public int w_loadFarmerSearh(Listbox comboSearch){
		int m_ID = 0;
		comboSearch.removeAllItems();
		
		ArrayList<KeyNamePair> list = w_loadFarmerData(m_C_BPartner_ID);
		for(KeyNamePair pp : list)
			farmerCreditSearch.addItem(pp);
		if (comboSearch.getItemCount() != 0) {
			comboSearch.setSelectedIndex(0);
			KeyNamePair pp = farmerCreditSearch.getSelectedItem().toKeyNamePair();
				m_ID = pp.getKey();
		}
		return m_ID;
	}

	@Override
	public ADForm getForm() {
		return form;
	}
	@Override
	public void onEvent(Event arg0) throws Exception {
		log.config("");
		if (arg0.getTarget().equals(multiCurrency))
			loadBPartner();
		//	Allocate
		else if (arg0.getTarget().equals(allocateButton))
		{
			allocateButton.setEnabled(false);
			saveData();
			loadBPartner();
			allocateButton.setEnabled(true);
		}
		else if(arg0.getTarget().equals(farmerCreditSearch)){
			m_FTA_FarmerCredit_ID = w_loadFarmerSearh(farmerCreditSearch);
			loadBPartner();
		}		
	}
	
	@Override
	public void valueChange(ValueChangeEvent e) {
		String name = e.getPropertyName();
		Object value = e.getNewValue();
		log.config(name + "=" + value);
		
		if (value == null)
			return;
		
		// Organization
		if (name.equals("AD_Org_ID"))
		{
			m_AD_Org_ID = ((Integer) value).intValue();
			loadBPartner();
		}

		//  BPartner
		if (name.equals("C_BPartner_ID"))
		{
			bpartnerSearch.setValue(value);
			m_C_BPartner_ID = ((Integer)value).intValue();
			
			m_FTA_FarmerCredit_ID =w_loadFarmerSearh(farmerCreditSearch); 
			loadBPartner();
		}
		//	Currency
		else if (name.equals("C_Currency_ID"))
		{
			m_C_Currency_ID = ((Integer)value).intValue();
			loadBPartner();
		}
		//	Date for Multi-Currency
		else if (name.equals("Date") && multiCurrency.isSelected())
			loadBPartner();		
	}

	@Override
	public void tableChanged(WTableModelEvent e) {
		boolean isUpdate = (e.getType() == WTableModelEvent.CONTENTS_CHANGED);
		//  Not a table update
		if (!isUpdate)
		{
			calculate();
			return;
		}
		
		int row = e.getFirstRow();
		int col = e.getColumn();
		boolean isInvoice = (e.getModel().equals(invoiceTable.getModel()));
		boolean isAutoWriteOff = autoWriteOff.isSelected();
		
		String msg = writeOff(row, col, isInvoice, liquidationTable, invoiceTable, isAutoWriteOff);
		if(msg != null && msg.length() > 0)
			FDialog.warn(m_WindowNo, "AllocationWriteOffWarn");
		
		calculate();
		
	}
}