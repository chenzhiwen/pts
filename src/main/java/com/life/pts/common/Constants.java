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
	
	String USER = "user";
	String SUCCESS = "success";
	String MSG = "msg";
	String TREE = "tree";
	String SESSION_USER = "sessionUser";
	String ROLE_LIST = "roleList";
	String MODULE_LIST = "moduleList";
	String DATA = "data";
	String BUTTON_LIST = "buttonList";
	String ONLINE_PEOPLE_COUNT = "onlinePeopleCount";
	String USER_LIST = "userList";
	String CHARACTER_ANSI = "ISO-8859-1";
	String CHARACTER_UTF8 = "UTF-8";
	String FILTER = "filter";
	String ID = "id";
	String COMMA = ",";
	String OUTLAYDTO = "outLayDTO";
	String BANK_ACCOUNT = "bankAccount";
	String ID_ARRAY = "idArray";
	String DATE_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
	String MSG_PROPERTIES_FILE = "web/messages_zh_CN.properties";
	String OUTLAY_LIST = "outLayList";
	String MESSAGEDTO = "message";
	String OUTLAY_TYPE_LIST = "outLayTypeList";
	String BANK_LIST = "bankList";
	String BANK_ACCOUNT_LIST = "bankAccountList";
	String USERID = "userId";
	String EMPTY = "";
	String REFERER = "referer";
	String EARNING_LIST = "earningList";
	String BASE_FIELD_LIST = "baseFieldList";
	String BASE_FIELD = "baseField";
	String MODULE_COMMODITY_LIST = "commodityList";
	String BUDGET_LIST = "budgetList";
	String MESSAGE_TITLE = "title";
	String INITIAL_PASSWORD = "initial.password";
	String CONFIG_CONFIG_APP_PROPERTIES = "config/config-app.properties";
	String INCOME = "income";
	String INCOME_LIST = "incomeList";
	String TRANSFER_LIST = "transferList";
	String BASIC_DATA_LIST = "basicDataList";
	String BASIC_DATA = "basicData";
	String SEMICOLON = ":";
	String TALLY_TASK_LIST = "tallyTaskList";
	String TASK_START_DATE = "task.startDate";
	String OFF = "off";
	String ON = "on";
	String SUM_MONEY = "sumMoney";
	String BUDGET = "budget";
	String INCOME_TOTAL = "incomeTotal";
	String TRANSFER_SUM_TOTAL = "transferTotal";
	String UIID = "uiid";
}
