/**
 * 
 */
package com.life.pts.tally.web.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	@Resource
	private OutgoService outgoService;
	
	@RequestMapping("outgo_add.action")
	public String addOutgo(Outgo outgo) {
		System.out.println(outgo);
		return "";
	}
}
