package com.human.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter{
	//인터셉터 기능을 활용하기 위해 상속받음
//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//			throws Exception {
//		// TODO Auto-generated method stub
//		//클라이언트마나 세션이있다. 클라이언트가 보낸 쿠키의 아이디와 일치하는 세션의 객체를 가져와롸.
//		HttpSession session = request.getSession();
//		//가져온 세션에서 login 변수를 찾아서 리턴받아라. 리턴타입을 모르니 오브젝트 타입으로 받는다.
//		Object obj = session.getAttribute("login");
//		
//		if(obj==null) {//로그인을 하지 않은 경우
//			response.sendRedirect(request.getContextPath()+"/");
//			return false;
//		}
//		return true;
//	}
//
//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//			ModelAndView modelAndView) throws Exception {
//		// TODO Auto-generated method stub
//		System.out.println("PostHandle start");
//		System.out.println("PostHandle end");
//		super.postHandle(request, response, handler, modelAndView);
//	}
	
	
	
}
