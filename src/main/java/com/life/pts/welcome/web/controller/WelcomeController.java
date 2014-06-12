/**
 * 
 */
package com.life.pts.welcome.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.life.framework.core.exception.ServiceException;
import com.life.pts.common.Constants;
import com.life.pts.tally.biz.service.OutgoService;
import com.life.pts.tally.common.model.Outgo;

/**
 * @Title: WelcomeController
 * @Description: WelcomeController
 * @Copyright: Copyright 2013
 * @author wen578351314@gmail.com
 * @date 2014-4-9
 * @since 1.0.0-SNAPSHOT
 */
@Controller
public class WelcomeController {

	@Resource
	private OutgoService outgoService;
	
	@RequestMapping("main.action")
	public ModelAndView main() {
		Map<String, Object> queryModel = new HashMap<String, Object>();
		try {
			List<Outgo> outgoList = this.outgoService.listOutgo(queryModel);
			
			queryModel.clear();
			queryModel.put(Constants.OUTGO_LIST, outgoList);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return new ModelAndView("main", queryModel);
	}
	

	@RequestMapping("zone.action")
	public ModelAndView zone() {
		Map<String, Object> queryModel = new HashMap<String, Object>();
		try {
			queryModel.put("share", 1);
			List<Outgo> outgoList = this.outgoService.listOutgo(queryModel);
			
			queryModel.clear();
			queryModel.put(Constants.OUTGO_LIST, outgoList);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return new ModelAndView("/main", queryModel);
	}
	
	@RequestMapping("/demo.action")
	public String forwardAddRecord() {
		return "demo";
	}
}
