/**
 * 
 */
package com.life.pts.tally.web.controller;

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
import org.springframework.web.servlet.ModelAndView;

import com.life.framework.core.exception.ServiceException;
import com.life.pts.common.web.convert.DateConvertEditor;
import com.life.pts.tally.biz.service.OutgoService;
import com.life.pts.tally.common.model.Outgo;

/**
 * @Title: OutgoController
 * @Description: OutgoController
 * @Copyright: Copyright 2014
 * @author wen578351314@gmail.com
 * @date 2014年4月20日
 * @since 1.0.0-SNAPSHOT
 */
@Controller
public class OutgoController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new DateConvertEditor());
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
	}
	
	@Resource
	private OutgoService outgoService;
	
	@RequestMapping("outgo_add.action")
	public ModelAndView addOutgo(Outgo outgo) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			this.outgoService.addOutgo(outgo);
			model.put("success", true);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return new ModelAndView("/record/addRecord", model);
	}
	
	@RequestMapping("outgo_list.action")
	public ModelAndView listOutgo() {
		Map<String, Object> model = new HashMap<String, Object >();
		try {
			List<Outgo> outgoList = this.outgoService.listOutgo(new HashMap<String, Object>());
			model.put("outgoList", outgoList);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return new ModelAndView("/record/listRecord", model);
	}
}
