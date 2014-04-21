package com.life.pts.account.web.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.life.framework.core.exception.WebException;
import com.life.framework.core.mybatis.Criteria;
import com.life.pts.account.common.model.Account;
import com.life.pts.account.service.AccountService;
import com.life.pts.common.Constants;
import com.life.pts.common.web.convert.DateConvertEditor;

/**
 * @Title: BankAccountController
 * @Description: BankAccountController
 * @Copyright: Copyright 2013
 * @author wen578351314@gmail.com
 * @date 2013-9-10
 * @since 1.0.0-SNAPSHOT
 */
@Controller
public class AccountController {
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new DateConvertEditor());
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
	}

	@Resource
	private AccountService accountService;

	@RequestMapping("account_list.action")
	public @ResponseBody
	Map<String, Object> listBankAccount(Criteria accountCriteria, Account account) throws WebException {
		Map<String, Object> model = new HashMap<String, Object>();
		accountCriteria.put(Constants.ACCOUNT, account);
		accountCriteria.setOrderByClause(" LAST_MODIFY_DATE DESC ");
		try {
			List<Map<String,Object>> bankAccountList = this.accountService.listAccount(accountCriteria.getCondition());
			Long total = this.accountService.countAccount(accountCriteria.getCondition());

			model .put(Constants.ACCOUNT_LIST, bankAccountList);
			model .put(Constants.TOTAL, total);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
}
