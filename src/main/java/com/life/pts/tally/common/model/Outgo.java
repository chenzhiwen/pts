package com.life.pts.tally.common.model;

import java.io.Serializable;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.life.pts.account.common.model.Account;

/**
 * @Title: Outgo
 * @Description: 支出信息
 * @Copyright: Copyright 2014
 * @author wen578351314@gmail.com
 * @date 2014年4月20日
 * @since 1.0.0-SNAPSHOT
 */
@Alias("Outgo")
public class Outgo implements Serializable {

	private static final long serialVersionUID = -6641973525703567416L;

	/**
	 * 主键
	 */
	private String id;

	/**
	 * 金额
	 */
	private Double money;

	/**
	 * 消费账户
	 */
	private Account account;

	/**
	 * 商家名称
	 */
	private String tradeName;

	/**
	 * 是否晒单
	 */
	private boolean share;

	/**
	 * 消费日期
	 */
	private Date outgoDate;

	/**
	 * @return the outgoDate
	 */
	public Date getOutgoDate() {
		return outgoDate;
	}

	/**
	 * @param outgoDate
	 *            the outgoDate to set
	 */
	public void setOutgoDate(Date outgoDate) {
		this.outgoDate = outgoDate;
	}

	/**
	 * 插入时间
	 */
	private Date insertTime;

	/**
	 * 修改时间
	 */
	private Date updateTime;

	/**
	 * 备注
	 */
	private String remark;

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the money
	 */
	public Double getMoney() {
		return money;
	}

	/**
	 * @param money
	 *            the money to set
	 */
	public void setMoney(Double money) {
		this.money = money;
	}

	/**
	 * @return the account
	 */
	public Account getAccount() {
		return account;
	}

	/**
	 * @param account
	 *            the account to set
	 */
	public void setAccount(Account account) {
		this.account = account;
	}

	/**
	 * @return the tradeName
	 */
	public String getTradeName() {
		return tradeName;
	}

	/**
	 * @param tradeName
	 *            the tradeName to set
	 */
	public void setTradeName(String tradeName) {
		this.tradeName = tradeName;
	}

	/**
	 * @return the share
	 */
	public boolean isShare() {
		return share;
	}

	/**
	 * @param share
	 *            the share to set
	 */
	public void setShare(boolean share) {
		this.share = share;
	}

	/**
	 * @return the insertTime
	 */
	public Date getInsertTime() {
		return insertTime;
	}

	/**
	 * @param insertTime
	 *            the insertTime to set
	 */
	public void setInsertTime(Date insertTime) {
		this.insertTime = insertTime;
	}

	/**
	 * @return the updateTime
	 */
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * @param updateTime
	 *            the updateTime to set
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * @return the remark
	 */
	public String getRemark() {
		return remark;
	}

	/**
	 * @param remark
	 *            the remark to set
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Outgo [id=" + id + ", money=" + money + ", account=" + account
				+ ", tradeName=" + tradeName + ", share=" + share
				+ ", outgoDate=" + outgoDate + ", insertTime=" + insertTime
				+ ", updateTime=" + updateTime + ", remark=" + remark + "]";
	}

}
