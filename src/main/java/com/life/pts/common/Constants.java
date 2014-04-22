/**
 * 
 */
package com.life.pts.common;

import java.util.Properties;

import com.life.framework.core.common.util.PropertiesUtils;


public interface Constants {

	String DATE_FORMAT = "yyyy-MM-dd";
	String ACCOUNT = "account";
	String ACCOUNT_LIST = "accountList";
	String TOTAL = "total";
	String OUTGO_LIST = "outgoList";

	Properties CONFIG_PROPERTIES = PropertiesUtils.loadProperties("persistence/config-app.properties");
	
	String FILE_UPLOAD_PATH = "pts.file.upload";
}
