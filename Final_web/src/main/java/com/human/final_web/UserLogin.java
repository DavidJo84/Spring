package com.human.final_web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserLogin {
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(HttpSession session, @RequestParam("id") String id, @RequestParam("pass") String pass) {
		System.out.println(id);
		System.out.println(pass);
		if(id.equals("ttt")) {
			//로그인 성공후 세션처리
			if(session.getAttribute("login") != null) {
				session.removeAttribute("login");
			}
			session.setAttribute("login", id);
			session.setAttribute("grade", "vip");//처리하고 싶은 변수를 선택하여 등록, 객체도 가능
		}else {
			
		}
		return "home";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}
}
