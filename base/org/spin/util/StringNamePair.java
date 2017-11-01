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
package org.spin.util;

import org.compiere.util.NamePair;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class StringNamePair extends NamePair {

	/**
	 * 
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/12/2014, 10:39:48
	 * @param key
	 * @param name
	 */
	public StringNamePair(String key, String name) {
		super(name);
		m_Key = key;
	}
	
	/**	Key					*/
	private String m_Key = null;

	/**
	 * Se tKey
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/12/2014, 10:41:26
	 * @param key
	 * @return void
	 */
	public void setKey(String key) {
		m_Key = key;
	}
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6329387905339792217L;

	@Override
	public String getID() {
		return m_Key;
	}

}
