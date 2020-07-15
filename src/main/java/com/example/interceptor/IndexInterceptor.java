package com.example.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.example.pojo.User;

public class IndexInterceptor implements HandlerInterceptor{
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String url = request.getRequestURI();
		if(url.indexOf("/findIdleItems.action") >=0 ||
				url.indexOf("/findUser.action")>=0 ||
				url.indexOf("/jumpIdle.action")>=0 ||
				url.indexOf("/jumpLoveHeart.action")>=0 ||
				url.indexOf("/index.action")>=0 ||
				url.indexOf("/jumpRegister.action")>=0 ||
				url.indexOf("/register.action")>=0) {
			return true;
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if(user != null) {
			return true;
		}
		request.setAttribute("error", "您还没有登陆，请先登录!");
		request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
		return false;
	}
}
