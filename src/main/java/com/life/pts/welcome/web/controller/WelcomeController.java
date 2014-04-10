/**
 * 
 */
package com.life.pts.welcome.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	@RequestMapping("welcome_dashboard.action")
	public String welcome() {
		return "dashboard";
	}
}
