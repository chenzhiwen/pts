package com.life.pts.common.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.life.framework.um.common.Constants;

/**
 * @Title: LoginInterceptor
 * @Description: 用户登录拦截器
 * @Copyright: Copyright 2013
 * @author wen578351314@gmail.com
 * @date 2013-7-19
 * @since 1.0.0-SNAPSHOT
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String requestUrl = request.getRequestURI();
		if ((requestUrl.indexOf("login") != -1) || (requestUrl.indexOf("index") != -1)
				|| (requestUrl.indexOf("logout") != -1) || (requestUrl.indexOf("main.action") != -1)
				|| (requestUrl.indexOf("j_spring_security_check") != -1)
				|| (requestUrl.indexOf("user_authSuccess.action") != -1)) {
			return true;
		}
		if (request.getSession().getAttribute(Constants.USER) == null) {
			String requestedWith = request.getHeader("x-requested-with");

			if ((requestedWith != null) && ("XMLHttpRequest".equals(requestedWith))) {
				response.setHeader("session-status", "timeout");
			} else {
				response.sendRedirect(request.getContextPath() + "/");
			}
			return false;
		}
		return true;
	}
}