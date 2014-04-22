/**
 * 
 */
package com.life.pts.common.model;

import java.io.Serializable;
import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * @Title: Attachment
 * @Description: Attachment
 * @Copyright: Copyright 2013
 * @author wen578351314@gmail.com
 * @date 2014-4-22
 * @since 1.0.0-SNAPSHOT
 */
@Alias("Attachment")
public class Attachment implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4930762805169328832L;

	/**
	 * 主键
	 */
	private String id;

	/**
	 * 文件绝对路径
	 */
	private String absolutePath;

	/**
	 * 插入日期
	 */
	private Date insertTime;

	/**
	 * 对应的消费记录主键
	 */
	private String recordId;

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
	 * @return the absolutePath
	 */
	public String getAbsolutePath() {
		return absolutePath;
	}

	/**
	 * @param absolutePath
	 *            the absolutePath to set
	 */
	public void setAbsolutePath(String absolutePath) {
		this.absolutePath = absolutePath;
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
	 * @return the recordId
	 */
	public String getRecordId() {
		return recordId;
	}

	/**
	 * @param recordId
	 *            the recordId to set
	 */
	public void setRecordId(String recordId) {
		this.recordId = recordId;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Attachment [id=" + id + ", absolutePath=" + absolutePath
				+ ", insertTime=" + insertTime + ", recordId=" + recordId + "]";
	}

}
