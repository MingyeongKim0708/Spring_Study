package com.ssafy.mvc.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Component
public class AdminInterceptor implements HandlerInterceptor {

	// 로그인 들어가기전에 낚아채야해서 preHandle
	// admin 페이지로 바로 접근하려고 할 떄 admin 계정인지 아닌지 확인한다
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		if(!"admin".equals(session.getAttribute("loginUser"))) {
			response.sendRedirect("list");
			return false;
		}
		return true;
	}
}
