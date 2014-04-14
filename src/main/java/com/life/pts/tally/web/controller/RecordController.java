/**
 * 
 */
package com.life.pts.tally.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Title: TallyController
 * @Description: TallyController
 * @Copyright: Copyright 2013
 * @author wen578351314@gmail.com
 * @date 2014-4-11
 * @since 1.0.0-SNAPSHOT
 */
@Controller
public class RecordController {

	/**
	 * 转发到记账页面
	 * 
	 * @return
	 */
	@RequestMapping("record_forwardAdd.action")
	public String forwardAddRecord() {
		return "addRecord";
	}
}
