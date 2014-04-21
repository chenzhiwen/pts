package com.life.pts.common.web.convert;

import java.beans.PropertyEditorSupport;
import java.util.Date;

import com.life.framework.util.DateUtil;
import com.life.pts.common.Constants;

/**
 * @Title: DateConvertEditor
 * @Description: 日期转换
 * @Copyright: Copyright 2013
 * @author wen578351314@gmail.com
 * @date 2013-9-23
 * @since 1.0.0-SNAPSHOT
 */
public class DateConvertEditor extends PropertyEditorSupport {

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		this.setValue(DateUtil.formatDate(text, Constants.DATE_FORMAT));
	}

	@Override
	public String getAsText() {
		return DateUtil.formatDate((Date) this.getValue(), Constants.DATE_FORMAT);
	}
}
