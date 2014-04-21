package com.life.pts.account.model;

import java.io.Serializable;
import java.util.Date;

/**
 * @Title: Account
 * @Description: 个人账户
 * @Copyright: Copyright 2014
 * @author wen578351314@gmail.com
 * @date 2014年4月20日
 * @since 1.0.0-SNAPSHOT
 */
public class Account implements Serializable {

	private static final long serialVersionUID = 4469225489462464580L;

	/**
	 * 账户主键
	 */
	private String id;

	/**
	 * 名称
	 */
	private String name;

	/**
	 * 金额
	 */
	private Double money;

	/**
	 * 插入时间
	 */
	private Date insertTime;

	/**
	 * 修改日期
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
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
		return "Account [id=" + id + ", name=" + name + ", money=" + money
				+ ", insertTime=" + insertTime + ", updateTime=" + updateTime
				+ ", remark=" + remark + "]";
	}

}
