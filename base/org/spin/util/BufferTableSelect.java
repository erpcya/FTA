/**
 * @finalidad 
 * @author Yamel Senih
 * @date 08/03/2012
 */
package org.spin.util;

import java.math.BigDecimal;

import org.compiere.util.Env;

/**
 * @author Yamel Senih 08/03/2012, 23:46:54
 *
 */
public class BufferTableSelect {
	/**
	 * 
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/11/2013, 23:25:32
	 * @param m_Record_ID
	 * @param qty
	 * @param seqNo
	 */
	public BufferTableSelect(int m_Record_ID, BigDecimal qty, Integer seqNo){
		this.m_Record_ID = m_Record_ID;
		this.qty = qty;
		this.seqNo = seqNo;
	}
	
	/**
	 * Set Record Identifier
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/11/2013, 23:25:01
	 * @param m_Record_ID
	 * @return void
	 */
	public void setRecord_ID(int m_Record_ID){
		this.m_Record_ID = m_Record_ID;
	}
	
	/**
	 * Get Record Identifier
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/11/2013, 23:25:19
	 * @return
	 * @return int
	 */
	public int getRecord_ID(){
		return this.m_Record_ID;
	}
	
	/**
	 * Set Quantity
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/11/2013, 23:25:40
	 * @param qty
	 * @return void
	 */
	public void setQty(BigDecimal qty){
		this.qty = qty;
	}
	
	/**
	 * Get Quantity
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/11/2013, 23:25:52
	 * @return
	 * @return BigDecimal
	 */
	public BigDecimal getQty(){
		return this.qty;
	}
	
	/**
	 * Set Sequence
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/11/2013, 23:26:02
	 * @param seqNo
	 * @return void
	 */
	public void setSeqNo(Integer seqNo){
		this.seqNo = seqNo;
	}
	
	/**
	 * Get Sequence
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/11/2013, 23:26:11
	 * @return
	 * @return Integer
	 */
	public Integer getSeqNo(){
		return this.seqNo;
	}
	
	public String toString(){
		return "m_Record_ID = " + m_Record_ID 
				+ " qty = " + qty 
				+ "seqNo = " + seqNo;
	}
	
	/**	Record ID	*/
	private int m_Record_ID = 0;
	/**	Quantity	*/
	private BigDecimal qty = Env.ZERO;
	/**	Sequence	*/
	private Integer seqNo = 0;
}
