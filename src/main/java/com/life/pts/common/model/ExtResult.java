package com.life.pts.common.model;

/**
 * @Title: ExtResult
 * @Description: Ext结果集
 * @Copyright: Copyright 2013
 * @author wen578351314@gmail.com
 * @date 2013-7-19
 * @since 1.0.0-SNAPSHOT
 */
public class ExtResult {

	/**
	 * 是否成功
	 */
	private Boolean success;

	/**
	 * 消息
	 */
	private String msg;

	/**
	 * 消息
	 */
	private Object result;

	public ExtResult(Boolean success, String msg) {
		this.success = success;
		this.msg = msg;
	}

	public ExtResult(Boolean success, String msg, Object result) {
		this.success = success;
		this.msg = msg;
		this.result = result;
	}

	public ExtResult(Boolean success, Object result) {
		this.success = success;
		this.result = result;
	}

	public ExtResult(Object object) {
		this.result = object;
	}

	public ExtResult() {
	}

	public Boolean getSuccess() {
		return this.success;
	}

	public void setSuccess(Boolean success) {
		this.success = success;
	}

	public String getMsg() {
		return this.msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getResult() {
		return this.result;
	}

	public void setResult(Object result) {
		this.result = result;
	}

	public String toString() {
		return "ExtResult [success=" + this.success + ", msg=" + this.msg
				+ ", result=" + this.result + "]";
	}
}